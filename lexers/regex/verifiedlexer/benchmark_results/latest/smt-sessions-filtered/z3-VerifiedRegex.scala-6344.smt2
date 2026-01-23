; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!325786 () Bool)

(assert start!325786)

(declare-fun b!3504516 () Bool)

(declare-fun b_free!90537 () Bool)

(declare-fun b_next!91241 () Bool)

(assert (=> b!3504516 (= b_free!90537 (not b_next!91241))))

(declare-fun tp!1084721 () Bool)

(declare-fun b_and!248675 () Bool)

(assert (=> b!3504516 (= tp!1084721 b_and!248675)))

(declare-fun b_free!90539 () Bool)

(declare-fun b_next!91243 () Bool)

(assert (=> b!3504516 (= b_free!90539 (not b_next!91243))))

(declare-fun tp!1084723 () Bool)

(declare-fun b_and!248677 () Bool)

(assert (=> b!3504516 (= tp!1084723 b_and!248677)))

(declare-fun b!3504518 () Bool)

(declare-fun b_free!90541 () Bool)

(declare-fun b_next!91245 () Bool)

(assert (=> b!3504518 (= b_free!90541 (not b_next!91245))))

(declare-fun tp!1084722 () Bool)

(declare-fun b_and!248679 () Bool)

(assert (=> b!3504518 (= tp!1084722 b_and!248679)))

(declare-fun b_free!90543 () Bool)

(declare-fun b_next!91247 () Bool)

(assert (=> b!3504518 (= b_free!90543 (not b_next!91247))))

(declare-fun tp!1084731 () Bool)

(declare-fun b_and!248681 () Bool)

(assert (=> b!3504518 (= tp!1084731 b_and!248681)))

(declare-fun b!3504500 () Bool)

(declare-fun b_free!90545 () Bool)

(declare-fun b_next!91249 () Bool)

(assert (=> b!3504500 (= b_free!90545 (not b_next!91249))))

(declare-fun tp!1084720 () Bool)

(declare-fun b_and!248683 () Bool)

(assert (=> b!3504500 (= tp!1084720 b_and!248683)))

(declare-fun b_free!90547 () Bool)

(declare-fun b_next!91251 () Bool)

(assert (=> b!3504500 (= b_free!90547 (not b_next!91251))))

(declare-fun tp!1084724 () Bool)

(declare-fun b_and!248685 () Bool)

(assert (=> b!3504500 (= tp!1084724 b_and!248685)))

(declare-fun bs!563901 () Bool)

(declare-fun b!3504517 () Bool)

(declare-fun b!3504521 () Bool)

(assert (= bs!563901 (and b!3504517 b!3504521)))

(declare-fun lambda!122515 () Int)

(declare-fun lambda!122514 () Int)

(assert (=> bs!563901 (not (= lambda!122515 lambda!122514))))

(declare-fun b!3504546 () Bool)

(declare-fun e!2169846 () Bool)

(assert (=> b!3504546 (= e!2169846 true)))

(declare-fun b!3504545 () Bool)

(declare-fun e!2169845 () Bool)

(assert (=> b!3504545 (= e!2169845 e!2169846)))

(declare-fun b!3504544 () Bool)

(declare-fun e!2169844 () Bool)

(assert (=> b!3504544 (= e!2169844 e!2169845)))

(assert (=> b!3504517 e!2169844))

(assert (= b!3504545 b!3504546))

(assert (= b!3504544 b!3504545))

(declare-datatypes ((C!20640 0))(
  ( (C!20641 (val!12368 Int)) )
))
(declare-datatypes ((Regex!10227 0))(
  ( (ElementMatch!10227 (c!602786 C!20640)) (Concat!15925 (regOne!20966 Regex!10227) (regTwo!20966 Regex!10227)) (EmptyExpr!10227) (Star!10227 (reg!10556 Regex!10227)) (EmptyLang!10227) (Union!10227 (regOne!20967 Regex!10227) (regTwo!20967 Regex!10227)) )
))
(declare-datatypes ((List!37428 0))(
  ( (Nil!37304) (Cons!37304 (h!42724 (_ BitVec 16)) (t!279239 List!37428)) )
))
(declare-datatypes ((TokenValue!5698 0))(
  ( (FloatLiteralValue!11396 (text!40331 List!37428)) (TokenValueExt!5697 (__x!23613 Int)) (Broken!28490 (value!176272 List!37428)) (Object!5821) (End!5698) (Def!5698) (Underscore!5698) (Match!5698) (Else!5698) (Error!5698) (Case!5698) (If!5698) (Extends!5698) (Abstract!5698) (Class!5698) (Val!5698) (DelimiterValue!11396 (del!5758 List!37428)) (KeywordValue!5704 (value!176273 List!37428)) (CommentValue!11396 (value!176274 List!37428)) (WhitespaceValue!11396 (value!176275 List!37428)) (IndentationValue!5698 (value!176276 List!37428)) (String!41823) (Int32!5698) (Broken!28491 (value!176277 List!37428)) (Boolean!5699) (Unit!52869) (OperatorValue!5701 (op!5758 List!37428)) (IdentifierValue!11396 (value!176278 List!37428)) (IdentifierValue!11397 (value!176279 List!37428)) (WhitespaceValue!11397 (value!176280 List!37428)) (True!11396) (False!11396) (Broken!28492 (value!176281 List!37428)) (Broken!28493 (value!176282 List!37428)) (True!11397) (RightBrace!5698) (RightBracket!5698) (Colon!5698) (Null!5698) (Comma!5698) (LeftBracket!5698) (False!11397) (LeftBrace!5698) (ImaginaryLiteralValue!5698 (text!40332 List!37428)) (StringLiteralValue!17094 (value!176283 List!37428)) (EOFValue!5698 (value!176284 List!37428)) (IdentValue!5698 (value!176285 List!37428)) (DelimiterValue!11397 (value!176286 List!37428)) (DedentValue!5698 (value!176287 List!37428)) (NewLineValue!5698 (value!176288 List!37428)) (IntegerValue!17094 (value!176289 (_ BitVec 32)) (text!40333 List!37428)) (IntegerValue!17095 (value!176290 Int) (text!40334 List!37428)) (Times!5698) (Or!5698) (Equal!5698) (Minus!5698) (Broken!28494 (value!176291 List!37428)) (And!5698) (Div!5698) (LessEqual!5698) (Mod!5698) (Concat!15926) (Not!5698) (Plus!5698) (SpaceValue!5698 (value!176292 List!37428)) (IntegerValue!17096 (value!176293 Int) (text!40335 List!37428)) (StringLiteralValue!17095 (text!40336 List!37428)) (FloatLiteralValue!11397 (text!40337 List!37428)) (BytesLiteralValue!5698 (value!176294 List!37428)) (CommentValue!11397 (value!176295 List!37428)) (StringLiteralValue!17096 (value!176296 List!37428)) (ErrorTokenValue!5698 (msg!5759 List!37428)) )
))
(declare-datatypes ((List!37429 0))(
  ( (Nil!37305) (Cons!37305 (h!42725 C!20640) (t!279240 List!37429)) )
))
(declare-datatypes ((IArray!22627 0))(
  ( (IArray!22628 (innerList!11371 List!37429)) )
))
(declare-datatypes ((Conc!11311 0))(
  ( (Node!11311 (left!29131 Conc!11311) (right!29461 Conc!11311) (csize!22852 Int) (cheight!11522 Int)) (Leaf!17656 (xs!14497 IArray!22627) (csize!22853 Int)) (Empty!11311) )
))
(declare-datatypes ((BalanceConc!22236 0))(
  ( (BalanceConc!22237 (c!602787 Conc!11311)) )
))
(declare-datatypes ((String!41824 0))(
  ( (String!41825 (value!176297 String)) )
))
(declare-datatypes ((TokenValueInjection!10824 0))(
  ( (TokenValueInjection!10825 (toValue!7712 Int) (toChars!7571 Int)) )
))
(declare-datatypes ((Rule!10736 0))(
  ( (Rule!10737 (regex!5468 Regex!10227) (tag!6100 String!41824) (isSeparator!5468 Bool) (transformation!5468 TokenValueInjection!10824)) )
))
(declare-datatypes ((List!37430 0))(
  ( (Nil!37306) (Cons!37306 (h!42726 Rule!10736) (t!279241 List!37430)) )
))
(declare-fun rules!2135 () List!37430)

(get-info :version)

(assert (= (and b!3504517 ((_ is Cons!37306) rules!2135)) b!3504544))

(declare-fun order!20017 () Int)

(declare-fun order!20019 () Int)

(declare-fun dynLambda!15848 (Int Int) Int)

(declare-fun dynLambda!15849 (Int Int) Int)

(assert (=> b!3504546 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (h!42726 rules!2135)))) (dynLambda!15849 order!20019 lambda!122515))))

(declare-fun order!20021 () Int)

(declare-fun dynLambda!15850 (Int Int) Int)

(assert (=> b!3504546 (< (dynLambda!15850 order!20021 (toChars!7571 (transformation!5468 (h!42726 rules!2135)))) (dynLambda!15849 order!20019 lambda!122515))))

(assert (=> b!3504517 true))

(declare-fun b!3504494 () Bool)

(declare-fun e!2169832 () Bool)

(declare-datatypes ((Token!10302 0))(
  ( (Token!10303 (value!176298 TokenValue!5698) (rule!8098 Rule!10736) (size!28363 Int) (originalCharacters!6182 List!37429)) )
))
(declare-datatypes ((List!37431 0))(
  ( (Nil!37307) (Cons!37307 (h!42727 Token!10302) (t!279242 List!37431)) )
))
(declare-datatypes ((IArray!22629 0))(
  ( (IArray!22630 (innerList!11372 List!37431)) )
))
(declare-datatypes ((Conc!11312 0))(
  ( (Node!11312 (left!29132 Conc!11312) (right!29462 Conc!11312) (csize!22854 Int) (cheight!11523 Int)) (Leaf!17657 (xs!14498 IArray!22629) (csize!22855 Int)) (Empty!11312) )
))
(declare-datatypes ((BalanceConc!22238 0))(
  ( (BalanceConc!22239 (c!602788 Conc!11312)) )
))
(declare-datatypes ((tuple2!37112 0))(
  ( (tuple2!37113 (_1!21690 BalanceConc!22238) (_2!21690 BalanceConc!22236)) )
))
(declare-fun lt!1195068 () tuple2!37112)

(declare-fun isEmpty!21744 (BalanceConc!22236) Bool)

(assert (=> b!3504494 (= e!2169832 (isEmpty!21744 (_2!21690 lt!1195068)))))

(declare-fun e!2169831 () Bool)

(declare-fun e!2169828 () Bool)

(declare-fun b!3504495 () Bool)

(declare-fun tp!1084728 () Bool)

(declare-fun inv!50519 (String!41824) Bool)

(declare-fun inv!50522 (TokenValueInjection!10824) Bool)

(assert (=> b!3504495 (= e!2169831 (and tp!1084728 (inv!50519 (tag!6100 (h!42726 rules!2135))) (inv!50522 (transformation!5468 (h!42726 rules!2135))) e!2169828))))

(declare-fun b!3504496 () Bool)

(declare-fun res!1413602 () Bool)

(declare-fun e!2169810 () Bool)

(assert (=> b!3504496 (=> (not res!1413602) (not e!2169810))))

(declare-fun isEmpty!21745 (List!37430) Bool)

(assert (=> b!3504496 (= res!1413602 (not (isEmpty!21745 rules!2135)))))

(declare-fun b!3504497 () Bool)

(declare-fun res!1413608 () Bool)

(declare-fun e!2169819 () Bool)

(assert (=> b!3504497 (=> res!1413608 e!2169819)))

(declare-fun lt!1195061 () tuple2!37112)

(declare-fun tokens!494 () List!37431)

(declare-fun apply!8864 (BalanceConc!22238 Int) Token!10302)

(assert (=> b!3504497 (= res!1413608 (not (= (apply!8864 (_1!21690 lt!1195061) 0) (h!42727 (t!279242 tokens!494)))))))

(declare-fun b!3504498 () Bool)

(declare-fun e!2169808 () Bool)

(assert (=> b!3504498 (= e!2169808 false)))

(declare-fun b!3504499 () Bool)

(declare-fun e!2169834 () Bool)

(declare-fun e!2169811 () Bool)

(assert (=> b!3504499 (= e!2169834 e!2169811)))

(declare-fun res!1413623 () Bool)

(assert (=> b!3504499 (=> res!1413623 e!2169811)))

(declare-fun lt!1195052 () List!37429)

(declare-fun lt!1195077 () List!37429)

(assert (=> b!3504499 (= res!1413623 (not (= lt!1195052 lt!1195077)))))

(declare-fun lt!1195050 () List!37429)

(assert (=> b!3504499 (= lt!1195050 lt!1195077)))

(declare-fun lt!1195055 () List!37429)

(declare-fun lt!1195059 () List!37429)

(declare-fun ++!9231 (List!37429 List!37429) List!37429)

(assert (=> b!3504499 (= lt!1195077 (++!9231 lt!1195055 lt!1195059))))

(declare-fun lt!1195084 () List!37429)

(declare-datatypes ((Unit!52870 0))(
  ( (Unit!52871) )
))
(declare-fun lt!1195064 () Unit!52870)

(declare-fun lt!1195070 () List!37429)

(declare-fun lemmaConcatAssociativity!1996 (List!37429 List!37429 List!37429) Unit!52870)

(assert (=> b!3504499 (= lt!1195064 (lemmaConcatAssociativity!1996 lt!1195055 lt!1195070 lt!1195084))))

(declare-fun b!3504501 () Bool)

(declare-fun res!1413614 () Bool)

(assert (=> b!3504501 (=> (not res!1413614) (not e!2169810))))

(declare-fun separatorToken!241 () Token!10302)

(assert (=> b!3504501 (= res!1413614 (isSeparator!5468 (rule!8098 separatorToken!241)))))

(declare-fun b!3504502 () Bool)

(declare-fun e!2169807 () Bool)

(declare-fun lt!1195087 () Rule!10736)

(assert (=> b!3504502 (= e!2169807 (= (rule!8098 (h!42727 (t!279242 tokens!494))) lt!1195087))))

(declare-fun b!3504503 () Bool)

(declare-fun e!2169827 () Bool)

(declare-fun lt!1195056 () Rule!10736)

(assert (=> b!3504503 (= e!2169827 (= (rule!8098 (h!42727 tokens!494)) lt!1195056))))

(declare-fun tp!1084727 () Bool)

(declare-fun e!2169825 () Bool)

(declare-fun e!2169804 () Bool)

(declare-fun b!3504504 () Bool)

(assert (=> b!3504504 (= e!2169804 (and tp!1084727 (inv!50519 (tag!6100 (rule!8098 (h!42727 tokens!494)))) (inv!50522 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) e!2169825))))

(declare-fun b!3504505 () Bool)

(declare-fun e!2169817 () Bool)

(declare-fun lt!1195062 () List!37429)

(declare-fun isEmpty!21746 (List!37429) Bool)

(assert (=> b!3504505 (= e!2169817 (not (isEmpty!21746 lt!1195062)))))

(declare-fun b!3504506 () Bool)

(declare-fun e!2169818 () Bool)

(declare-fun e!2169837 () Bool)

(assert (=> b!3504506 (= e!2169818 e!2169837)))

(declare-fun res!1413598 () Bool)

(assert (=> b!3504506 (=> res!1413598 e!2169837)))

(declare-fun lt!1195081 () List!37429)

(declare-fun lt!1195049 () List!37429)

(assert (=> b!3504506 (= res!1413598 (or (not (= lt!1195049 lt!1195055)) (not (= lt!1195081 lt!1195055))))))

(declare-fun list!13629 (BalanceConc!22236) List!37429)

(declare-fun charsOf!3482 (Token!10302) BalanceConc!22236)

(assert (=> b!3504506 (= lt!1195055 (list!13629 (charsOf!3482 (h!42727 tokens!494))))))

(declare-fun b!3504507 () Bool)

(assert (=> b!3504507 (= e!2169819 (not (isEmpty!21744 (_2!21690 lt!1195061))))))

(declare-fun b!3504508 () Bool)

(declare-fun res!1413610 () Bool)

(assert (=> b!3504508 (=> (not res!1413610) (not e!2169810))))

(declare-datatypes ((LexerInterface!5057 0))(
  ( (LexerInterfaceExt!5054 (__x!23614 Int)) (Lexer!5055) )
))
(declare-fun thiss!18206 () LexerInterface!5057)

(declare-fun rulesProduceIndividualToken!2549 (LexerInterface!5057 List!37430 Token!10302) Bool)

(assert (=> b!3504508 (= res!1413610 (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3504509 () Bool)

(declare-fun e!2169812 () Bool)

(declare-fun e!2169835 () Bool)

(assert (=> b!3504509 (= e!2169812 e!2169835)))

(declare-fun res!1413612 () Bool)

(assert (=> b!3504509 (=> res!1413612 e!2169835)))

(declare-fun printWithSeparatorTokenList!344 (LexerInterface!5057 List!37431 Token!10302) List!37429)

(assert (=> b!3504509 (= res!1413612 (not (= lt!1195084 (++!9231 (++!9231 lt!1195062 lt!1195070) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))))

(assert (=> b!3504509 (= lt!1195062 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))))))

(assert (=> b!3504509 (= lt!1195059 (++!9231 lt!1195070 lt!1195084))))

(assert (=> b!3504509 (= lt!1195070 (list!13629 (charsOf!3482 separatorToken!241)))))

(assert (=> b!3504509 (= lt!1195084 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 tokens!494) separatorToken!241))))

(assert (=> b!3504509 (= lt!1195052 (printWithSeparatorTokenList!344 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3504510 () Bool)

(declare-fun e!2169815 () Bool)

(assert (=> b!3504510 (= e!2169815 e!2169807)))

(declare-fun res!1413624 () Bool)

(assert (=> b!3504510 (=> (not res!1413624) (not e!2169807))))

(declare-fun matchR!4811 (Regex!10227 List!37429) Bool)

(assert (=> b!3504510 (= res!1413624 (matchR!4811 (regex!5468 lt!1195087) lt!1195062))))

(declare-datatypes ((Option!7593 0))(
  ( (None!7592) (Some!7592 (v!37044 Rule!10736)) )
))
(declare-fun lt!1195072 () Option!7593)

(declare-fun get!11969 (Option!7593) Rule!10736)

(assert (=> b!3504510 (= lt!1195087 (get!11969 lt!1195072))))

(declare-fun b!3504511 () Bool)

(declare-fun e!2169820 () Bool)

(declare-fun e!2169821 () Bool)

(assert (=> b!3504511 (= e!2169820 e!2169821)))

(declare-fun res!1413625 () Bool)

(assert (=> b!3504511 (=> (not res!1413625) (not e!2169821))))

(declare-fun lt!1195076 () Rule!10736)

(assert (=> b!3504511 (= res!1413625 (matchR!4811 (regex!5468 lt!1195076) lt!1195070))))

(declare-fun lt!1195063 () Option!7593)

(assert (=> b!3504511 (= lt!1195076 (get!11969 lt!1195063))))

(declare-fun b!3504512 () Bool)

(declare-fun res!1413606 () Bool)

(assert (=> b!3504512 (=> res!1413606 e!2169837)))

(assert (=> b!3504512 (= res!1413606 (not (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 tokens!494))))))

(declare-fun b!3504513 () Bool)

(declare-fun res!1413617 () Bool)

(assert (=> b!3504513 (=> res!1413617 e!2169817)))

(assert (=> b!3504513 (= res!1413617 (not (= lt!1195062 (++!9231 lt!1195062 Nil!37305))))))

(declare-fun b!3504514 () Bool)

(declare-fun e!2169826 () Bool)

(assert (=> b!3504514 (= e!2169826 e!2169812)))

(declare-fun res!1413604 () Bool)

(assert (=> b!3504514 (=> res!1413604 e!2169812)))

(assert (=> b!3504514 (= res!1413604 (or (isSeparator!5468 (rule!8098 (h!42727 tokens!494))) (isSeparator!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))))

(declare-fun lt!1195074 () Unit!52870)

(declare-fun forallContained!1415 (List!37431 Int Token!10302) Unit!52870)

(assert (=> b!3504514 (= lt!1195074 (forallContained!1415 tokens!494 lambda!122514 (h!42727 (t!279242 tokens!494))))))

(declare-fun lt!1195071 () Unit!52870)

(assert (=> b!3504514 (= lt!1195071 (forallContained!1415 tokens!494 lambda!122514 (h!42727 tokens!494)))))

(declare-fun b!3504515 () Bool)

(assert (=> b!3504515 (= e!2169835 e!2169834)))

(declare-fun res!1413618 () Bool)

(assert (=> b!3504515 (=> res!1413618 e!2169834)))

(assert (=> b!3504515 (= res!1413618 (not (= lt!1195052 lt!1195050)))))

(assert (=> b!3504515 (= lt!1195050 (++!9231 (++!9231 lt!1195055 lt!1195070) lt!1195084))))

(assert (=> b!3504516 (= e!2169825 (and tp!1084721 tp!1084723))))

(assert (=> b!3504517 (= e!2169811 e!2169817)))

(declare-fun res!1413596 () Bool)

(assert (=> b!3504517 (=> res!1413596 e!2169817)))

(declare-fun contains!6979 (List!37430 Rule!10736) Bool)

(assert (=> b!3504517 (= res!1413596 (not (contains!6979 rules!2135 (rule!8098 (h!42727 (t!279242 tokens!494))))))))

(assert (=> b!3504517 e!2169815))

(declare-fun res!1413609 () Bool)

(assert (=> b!3504517 (=> (not res!1413609) (not e!2169815))))

(declare-fun isDefined!5854 (Option!7593) Bool)

(assert (=> b!3504517 (= res!1413609 (isDefined!5854 lt!1195072))))

(declare-fun getRuleFromTag!1111 (LexerInterface!5057 List!37430 String!41824) Option!7593)

(assert (=> b!3504517 (= lt!1195072 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))

(declare-fun lt!1195051 () Unit!52870)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1111 (LexerInterface!5057 List!37430 List!37429 Token!10302) Unit!52870)

(assert (=> b!3504517 (= lt!1195051 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1111 thiss!18206 rules!2135 lt!1195062 (h!42727 (t!279242 tokens!494))))))

(declare-fun lt!1195085 () Bool)

(assert (=> b!3504517 lt!1195085))

(declare-fun lt!1195065 () Unit!52870)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1046 (LexerInterface!5057 List!37430 List!37431 Token!10302) Unit!52870)

(assert (=> b!3504517 (= lt!1195065 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1046 thiss!18206 rules!2135 tokens!494 (h!42727 (t!279242 tokens!494))))))

(declare-datatypes ((tuple2!37114 0))(
  ( (tuple2!37115 (_1!21691 Token!10302) (_2!21691 List!37429)) )
))
(declare-datatypes ((Option!7594 0))(
  ( (None!7593) (Some!7593 (v!37045 tuple2!37114)) )
))
(declare-fun maxPrefix!2597 (LexerInterface!5057 List!37430 List!37429) Option!7594)

(assert (=> b!3504517 (= (maxPrefix!2597 thiss!18206 rules!2135 lt!1195077) (Some!7593 (tuple2!37115 (h!42727 tokens!494) lt!1195059)))))

(declare-fun lt!1195066 () Unit!52870)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!224 (LexerInterface!5057 List!37430 Token!10302 Rule!10736 List!37429 Rule!10736) Unit!52870)

(assert (=> b!3504517 (= lt!1195066 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!224 thiss!18206 rules!2135 (h!42727 tokens!494) (rule!8098 (h!42727 tokens!494)) lt!1195059 (rule!8098 separatorToken!241)))))

(declare-fun lt!1195073 () C!20640)

(declare-fun contains!6980 (List!37429 C!20640) Bool)

(declare-fun usedCharacters!702 (Regex!10227) List!37429)

(assert (=> b!3504517 (not (contains!6980 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195073))))

(declare-fun lt!1195058 () Unit!52870)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!268 (LexerInterface!5057 List!37430 List!37430 Rule!10736 Rule!10736 C!20640) Unit!52870)

(assert (=> b!3504517 (= lt!1195058 (lemmaNonSepRuleNotContainsCharContainedInASepRule!268 thiss!18206 rules!2135 rules!2135 (rule!8098 (h!42727 tokens!494)) (rule!8098 separatorToken!241) lt!1195073))))

(declare-fun lt!1195060 () Unit!52870)

(assert (=> b!3504517 (= lt!1195060 (forallContained!1415 tokens!494 lambda!122515 (h!42727 (t!279242 tokens!494))))))

(declare-fun lt!1195053 () Bool)

(assert (=> b!3504517 (= lt!1195085 (not lt!1195053))))

(assert (=> b!3504517 (= lt!1195085 (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 (t!279242 tokens!494))))))

(assert (=> b!3504517 (= lt!1195053 e!2169819)))

(declare-fun res!1413599 () Bool)

(assert (=> b!3504517 (=> res!1413599 e!2169819)))

(declare-fun size!28364 (BalanceConc!22238) Int)

(assert (=> b!3504517 (= res!1413599 (not (= (size!28364 (_1!21690 lt!1195061)) 1)))))

(declare-fun lt!1195057 () BalanceConc!22236)

(declare-fun lex!2383 (LexerInterface!5057 List!37430 BalanceConc!22236) tuple2!37112)

(assert (=> b!3504517 (= lt!1195061 (lex!2383 thiss!18206 rules!2135 lt!1195057))))

(declare-fun lt!1195078 () BalanceConc!22238)

(declare-fun printTailRec!1552 (LexerInterface!5057 BalanceConc!22238 Int BalanceConc!22236) BalanceConc!22236)

(assert (=> b!3504517 (= lt!1195057 (printTailRec!1552 thiss!18206 lt!1195078 0 (BalanceConc!22237 Empty!11311)))))

(declare-fun print!2122 (LexerInterface!5057 BalanceConc!22238) BalanceConc!22236)

(assert (=> b!3504517 (= lt!1195057 (print!2122 thiss!18206 lt!1195078))))

(declare-fun singletonSeq!2564 (Token!10302) BalanceConc!22238)

(assert (=> b!3504517 (= lt!1195078 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))))))

(assert (=> b!3504517 e!2169832))

(declare-fun res!1413622 () Bool)

(assert (=> b!3504517 (=> (not res!1413622) (not e!2169832))))

(assert (=> b!3504517 (= res!1413622 (= (size!28364 (_1!21690 lt!1195068)) 1))))

(declare-fun lt!1195075 () BalanceConc!22236)

(assert (=> b!3504517 (= lt!1195068 (lex!2383 thiss!18206 rules!2135 lt!1195075))))

(declare-fun lt!1195067 () BalanceConc!22238)

(assert (=> b!3504517 (= lt!1195075 (printTailRec!1552 thiss!18206 lt!1195067 0 (BalanceConc!22237 Empty!11311)))))

(assert (=> b!3504517 (= lt!1195075 (print!2122 thiss!18206 lt!1195067))))

(assert (=> b!3504517 (= lt!1195067 (singletonSeq!2564 separatorToken!241))))

(declare-fun lt!1195054 () Unit!52870)

(declare-fun e!2169824 () Unit!52870)

(assert (=> b!3504517 (= lt!1195054 e!2169824)))

(declare-fun c!602785 () Bool)

(assert (=> b!3504517 (= c!602785 (not (contains!6980 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241))) lt!1195073)))))

(declare-fun head!7371 (List!37429) C!20640)

(assert (=> b!3504517 (= lt!1195073 (head!7371 lt!1195070))))

(assert (=> b!3504517 e!2169820))

(declare-fun res!1413601 () Bool)

(assert (=> b!3504517 (=> (not res!1413601) (not e!2169820))))

(assert (=> b!3504517 (= res!1413601 (isDefined!5854 lt!1195063))))

(assert (=> b!3504517 (= lt!1195063 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))))))

(declare-fun lt!1195089 () Unit!52870)

(assert (=> b!3504517 (= lt!1195089 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1111 thiss!18206 rules!2135 lt!1195070 separatorToken!241))))

(declare-fun lt!1195088 () BalanceConc!22236)

(declare-fun maxPrefixOneRule!1764 (LexerInterface!5057 Rule!10736 List!37429) Option!7594)

(declare-fun apply!8865 (TokenValueInjection!10824 BalanceConc!22236) TokenValue!5698)

(declare-fun size!28365 (List!37429) Int)

(assert (=> b!3504517 (= (maxPrefixOneRule!1764 thiss!18206 (rule!8098 (h!42727 tokens!494)) lt!1195055) (Some!7593 (tuple2!37115 (Token!10303 (apply!8865 (transformation!5468 (rule!8098 (h!42727 tokens!494))) lt!1195088) (rule!8098 (h!42727 tokens!494)) (size!28365 lt!1195055) lt!1195055) Nil!37305)))))

(declare-fun lt!1195090 () Unit!52870)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!857 (LexerInterface!5057 List!37430 List!37429 List!37429 List!37429 Rule!10736) Unit!52870)

(assert (=> b!3504517 (= lt!1195090 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!857 thiss!18206 rules!2135 lt!1195055 lt!1195055 Nil!37305 (rule!8098 (h!42727 tokens!494))))))

(declare-fun e!2169830 () Bool)

(assert (=> b!3504517 e!2169830))

(declare-fun res!1413613 () Bool)

(assert (=> b!3504517 (=> (not res!1413613) (not e!2169830))))

(declare-fun lt!1195079 () Option!7593)

(assert (=> b!3504517 (= res!1413613 (isDefined!5854 lt!1195079))))

(assert (=> b!3504517 (= lt!1195079 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))))))

(declare-fun lt!1195083 () Unit!52870)

(assert (=> b!3504517 (= lt!1195083 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1111 thiss!18206 rules!2135 lt!1195055 (h!42727 tokens!494)))))

(declare-fun lt!1195086 () Unit!52870)

(assert (=> b!3504517 (= lt!1195086 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1046 thiss!18206 rules!2135 tokens!494 (h!42727 tokens!494)))))

(declare-fun e!2169806 () Bool)

(assert (=> b!3504500 (= e!2169806 (and tp!1084720 tp!1084724))))

(declare-fun res!1413621 () Bool)

(assert (=> start!325786 (=> (not res!1413621) (not e!2169810))))

(assert (=> start!325786 (= res!1413621 ((_ is Lexer!5055) thiss!18206))))

(assert (=> start!325786 e!2169810))

(assert (=> start!325786 true))

(declare-fun e!2169833 () Bool)

(assert (=> start!325786 e!2169833))

(declare-fun e!2169822 () Bool)

(assert (=> start!325786 e!2169822))

(declare-fun e!2169823 () Bool)

(declare-fun inv!50523 (Token!10302) Bool)

(assert (=> start!325786 (and (inv!50523 separatorToken!241) e!2169823)))

(assert (=> b!3504518 (= e!2169828 (and tp!1084722 tp!1084731))))

(declare-fun e!2169836 () Bool)

(declare-fun b!3504519 () Bool)

(declare-fun tp!1084730 () Bool)

(declare-fun inv!21 (TokenValue!5698) Bool)

(assert (=> b!3504519 (= e!2169836 (and (inv!21 (value!176298 (h!42727 tokens!494))) e!2169804 tp!1084730))))

(declare-fun b!3504520 () Bool)

(declare-fun res!1413607 () Bool)

(assert (=> b!3504520 (=> (not res!1413607) (not e!2169832))))

(assert (=> b!3504520 (= res!1413607 (= (apply!8864 (_1!21690 lt!1195068) 0) separatorToken!241))))

(declare-fun res!1413600 () Bool)

(assert (=> b!3504521 (=> (not res!1413600) (not e!2169810))))

(declare-fun forall!8003 (List!37431 Int) Bool)

(assert (=> b!3504521 (= res!1413600 (forall!8003 tokens!494 lambda!122514))))

(declare-fun b!3504522 () Bool)

(assert (=> b!3504522 (= e!2169810 (not e!2169818))))

(declare-fun res!1413603 () Bool)

(assert (=> b!3504522 (=> res!1413603 e!2169818)))

(assert (=> b!3504522 (= res!1413603 (not (= lt!1195081 lt!1195049)))))

(declare-fun printList!1605 (LexerInterface!5057 List!37431) List!37429)

(assert (=> b!3504522 (= lt!1195049 (printList!1605 thiss!18206 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))

(declare-fun lt!1195080 () BalanceConc!22236)

(assert (=> b!3504522 (= lt!1195081 (list!13629 lt!1195080))))

(declare-fun lt!1195069 () BalanceConc!22238)

(assert (=> b!3504522 (= lt!1195080 (printTailRec!1552 thiss!18206 lt!1195069 0 (BalanceConc!22237 Empty!11311)))))

(assert (=> b!3504522 (= lt!1195080 (print!2122 thiss!18206 lt!1195069))))

(assert (=> b!3504522 (= lt!1195069 (singletonSeq!2564 (h!42727 tokens!494)))))

(declare-fun tp!1084729 () Bool)

(declare-fun b!3504523 () Bool)

(declare-fun e!2169805 () Bool)

(assert (=> b!3504523 (= e!2169805 (and tp!1084729 (inv!50519 (tag!6100 (rule!8098 separatorToken!241))) (inv!50522 (transformation!5468 (rule!8098 separatorToken!241))) e!2169806))))

(declare-fun b!3504524 () Bool)

(declare-fun res!1413605 () Bool)

(assert (=> b!3504524 (=> (not res!1413605) (not e!2169810))))

(declare-fun rulesProduceEachTokenIndividually!1508 (LexerInterface!5057 List!37430 BalanceConc!22238) Bool)

(declare-fun seqFromList!3989 (List!37431) BalanceConc!22238)

(assert (=> b!3504524 (= res!1413605 (rulesProduceEachTokenIndividually!1508 thiss!18206 rules!2135 (seqFromList!3989 tokens!494)))))

(declare-fun b!3504525 () Bool)

(assert (=> b!3504525 (= e!2169830 e!2169827)))

(declare-fun res!1413616 () Bool)

(assert (=> b!3504525 (=> (not res!1413616) (not e!2169827))))

(assert (=> b!3504525 (= res!1413616 (matchR!4811 (regex!5468 lt!1195056) lt!1195055))))

(assert (=> b!3504525 (= lt!1195056 (get!11969 lt!1195079))))

(declare-fun b!3504526 () Bool)

(declare-fun res!1413597 () Bool)

(assert (=> b!3504526 (=> (not res!1413597) (not e!2169810))))

(declare-fun sepAndNonSepRulesDisjointChars!1662 (List!37430 List!37430) Bool)

(assert (=> b!3504526 (= res!1413597 (sepAndNonSepRulesDisjointChars!1662 rules!2135 rules!2135))))

(declare-fun b!3504527 () Bool)

(assert (=> b!3504527 (= e!2169837 e!2169826)))

(declare-fun res!1413611 () Bool)

(assert (=> b!3504527 (=> res!1413611 e!2169826)))

(declare-fun isEmpty!21747 (BalanceConc!22238) Bool)

(assert (=> b!3504527 (= res!1413611 (isEmpty!21747 (_1!21690 (lex!2383 thiss!18206 rules!2135 lt!1195088))))))

(declare-fun seqFromList!3990 (List!37429) BalanceConc!22236)

(assert (=> b!3504527 (= lt!1195088 (seqFromList!3990 lt!1195055))))

(declare-fun b!3504528 () Bool)

(declare-fun res!1413619 () Bool)

(assert (=> b!3504528 (=> (not res!1413619) (not e!2169810))))

(assert (=> b!3504528 (= res!1413619 (and (not ((_ is Nil!37307) tokens!494)) (not ((_ is Nil!37307) (t!279242 tokens!494)))))))

(declare-fun b!3504529 () Bool)

(declare-fun tp!1084725 () Bool)

(assert (=> b!3504529 (= e!2169823 (and (inv!21 (value!176298 separatorToken!241)) e!2169805 tp!1084725))))

(declare-fun b!3504530 () Bool)

(declare-fun tp!1084726 () Bool)

(assert (=> b!3504530 (= e!2169833 (and e!2169831 tp!1084726))))

(declare-fun b!3504531 () Bool)

(declare-fun Unit!52872 () Unit!52870)

(assert (=> b!3504531 (= e!2169824 Unit!52872)))

(declare-fun b!3504532 () Bool)

(declare-fun res!1413620 () Bool)

(assert (=> b!3504532 (=> (not res!1413620) (not e!2169810))))

(declare-fun rulesInvariant!4454 (LexerInterface!5057 List!37430) Bool)

(assert (=> b!3504532 (= res!1413620 (rulesInvariant!4454 thiss!18206 rules!2135))))

(declare-fun b!3504533 () Bool)

(assert (=> b!3504533 (= e!2169821 (= (rule!8098 separatorToken!241) lt!1195076))))

(declare-fun b!3504534 () Bool)

(declare-fun Unit!52873 () Unit!52870)

(assert (=> b!3504534 (= e!2169824 Unit!52873)))

(declare-fun lt!1195082 () Unit!52870)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!526 (Regex!10227 List!37429 C!20640) Unit!52870)

(assert (=> b!3504534 (= lt!1195082 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!526 (regex!5468 (rule!8098 separatorToken!241)) lt!1195070 lt!1195073))))

(declare-fun res!1413615 () Bool)

(assert (=> b!3504534 (= res!1413615 (not (matchR!4811 (regex!5468 (rule!8098 separatorToken!241)) lt!1195070)))))

(assert (=> b!3504534 (=> (not res!1413615) (not e!2169808))))

(assert (=> b!3504534 e!2169808))

(declare-fun b!3504535 () Bool)

(declare-fun tp!1084732 () Bool)

(assert (=> b!3504535 (= e!2169822 (and (inv!50523 (h!42727 tokens!494)) e!2169836 tp!1084732))))

(assert (= (and start!325786 res!1413621) b!3504496))

(assert (= (and b!3504496 res!1413602) b!3504532))

(assert (= (and b!3504532 res!1413620) b!3504524))

(assert (= (and b!3504524 res!1413605) b!3504508))

(assert (= (and b!3504508 res!1413610) b!3504501))

(assert (= (and b!3504501 res!1413614) b!3504521))

(assert (= (and b!3504521 res!1413600) b!3504526))

(assert (= (and b!3504526 res!1413597) b!3504528))

(assert (= (and b!3504528 res!1413619) b!3504522))

(assert (= (and b!3504522 (not res!1413603)) b!3504506))

(assert (= (and b!3504506 (not res!1413598)) b!3504512))

(assert (= (and b!3504512 (not res!1413606)) b!3504527))

(assert (= (and b!3504527 (not res!1413611)) b!3504514))

(assert (= (and b!3504514 (not res!1413604)) b!3504509))

(assert (= (and b!3504509 (not res!1413612)) b!3504515))

(assert (= (and b!3504515 (not res!1413618)) b!3504499))

(assert (= (and b!3504499 (not res!1413623)) b!3504517))

(assert (= (and b!3504517 res!1413613) b!3504525))

(assert (= (and b!3504525 res!1413616) b!3504503))

(assert (= (and b!3504517 res!1413601) b!3504511))

(assert (= (and b!3504511 res!1413625) b!3504533))

(assert (= (and b!3504517 c!602785) b!3504534))

(assert (= (and b!3504517 (not c!602785)) b!3504531))

(assert (= (and b!3504534 res!1413615) b!3504498))

(assert (= (and b!3504517 res!1413622) b!3504520))

(assert (= (and b!3504520 res!1413607) b!3504494))

(assert (= (and b!3504517 (not res!1413599)) b!3504497))

(assert (= (and b!3504497 (not res!1413608)) b!3504507))

(assert (= (and b!3504517 res!1413609) b!3504510))

(assert (= (and b!3504510 res!1413624) b!3504502))

(assert (= (and b!3504517 (not res!1413596)) b!3504513))

(assert (= (and b!3504513 (not res!1413617)) b!3504505))

(assert (= b!3504495 b!3504518))

(assert (= b!3504530 b!3504495))

(assert (= (and start!325786 ((_ is Cons!37306) rules!2135)) b!3504530))

(assert (= b!3504504 b!3504516))

(assert (= b!3504519 b!3504504))

(assert (= b!3504535 b!3504519))

(assert (= (and start!325786 ((_ is Cons!37307) tokens!494)) b!3504535))

(assert (= b!3504523 b!3504500))

(assert (= b!3504529 b!3504523))

(assert (= start!325786 b!3504529))

(declare-fun m!3941341 () Bool)

(assert (=> b!3504522 m!3941341))

(declare-fun m!3941343 () Bool)

(assert (=> b!3504522 m!3941343))

(declare-fun m!3941345 () Bool)

(assert (=> b!3504522 m!3941345))

(declare-fun m!3941347 () Bool)

(assert (=> b!3504522 m!3941347))

(declare-fun m!3941349 () Bool)

(assert (=> b!3504522 m!3941349))

(declare-fun m!3941351 () Bool)

(assert (=> b!3504523 m!3941351))

(declare-fun m!3941353 () Bool)

(assert (=> b!3504523 m!3941353))

(declare-fun m!3941355 () Bool)

(assert (=> b!3504497 m!3941355))

(declare-fun m!3941357 () Bool)

(assert (=> b!3504494 m!3941357))

(declare-fun m!3941359 () Bool)

(assert (=> b!3504499 m!3941359))

(declare-fun m!3941361 () Bool)

(assert (=> b!3504499 m!3941361))

(declare-fun m!3941363 () Bool)

(assert (=> b!3504525 m!3941363))

(declare-fun m!3941365 () Bool)

(assert (=> b!3504525 m!3941365))

(declare-fun m!3941367 () Bool)

(assert (=> b!3504527 m!3941367))

(declare-fun m!3941369 () Bool)

(assert (=> b!3504527 m!3941369))

(declare-fun m!3941371 () Bool)

(assert (=> b!3504527 m!3941371))

(declare-fun m!3941373 () Bool)

(assert (=> b!3504514 m!3941373))

(declare-fun m!3941375 () Bool)

(assert (=> b!3504514 m!3941375))

(declare-fun m!3941377 () Bool)

(assert (=> b!3504511 m!3941377))

(declare-fun m!3941379 () Bool)

(assert (=> b!3504511 m!3941379))

(declare-fun m!3941381 () Bool)

(assert (=> b!3504521 m!3941381))

(declare-fun m!3941383 () Bool)

(assert (=> b!3504508 m!3941383))

(declare-fun m!3941385 () Bool)

(assert (=> b!3504507 m!3941385))

(declare-fun m!3941387 () Bool)

(assert (=> b!3504506 m!3941387))

(assert (=> b!3504506 m!3941387))

(declare-fun m!3941389 () Bool)

(assert (=> b!3504506 m!3941389))

(declare-fun m!3941391 () Bool)

(assert (=> b!3504524 m!3941391))

(assert (=> b!3504524 m!3941391))

(declare-fun m!3941393 () Bool)

(assert (=> b!3504524 m!3941393))

(declare-fun m!3941395 () Bool)

(assert (=> b!3504532 m!3941395))

(declare-fun m!3941397 () Bool)

(assert (=> b!3504517 m!3941397))

(declare-fun m!3941399 () Bool)

(assert (=> b!3504517 m!3941399))

(declare-fun m!3941401 () Bool)

(assert (=> b!3504517 m!3941401))

(declare-fun m!3941403 () Bool)

(assert (=> b!3504517 m!3941403))

(declare-fun m!3941405 () Bool)

(assert (=> b!3504517 m!3941405))

(declare-fun m!3941407 () Bool)

(assert (=> b!3504517 m!3941407))

(declare-fun m!3941409 () Bool)

(assert (=> b!3504517 m!3941409))

(declare-fun m!3941411 () Bool)

(assert (=> b!3504517 m!3941411))

(declare-fun m!3941413 () Bool)

(assert (=> b!3504517 m!3941413))

(declare-fun m!3941415 () Bool)

(assert (=> b!3504517 m!3941415))

(declare-fun m!3941417 () Bool)

(assert (=> b!3504517 m!3941417))

(declare-fun m!3941419 () Bool)

(assert (=> b!3504517 m!3941419))

(declare-fun m!3941421 () Bool)

(assert (=> b!3504517 m!3941421))

(declare-fun m!3941423 () Bool)

(assert (=> b!3504517 m!3941423))

(declare-fun m!3941425 () Bool)

(assert (=> b!3504517 m!3941425))

(assert (=> b!3504517 m!3941399))

(declare-fun m!3941427 () Bool)

(assert (=> b!3504517 m!3941427))

(declare-fun m!3941429 () Bool)

(assert (=> b!3504517 m!3941429))

(declare-fun m!3941431 () Bool)

(assert (=> b!3504517 m!3941431))

(declare-fun m!3941433 () Bool)

(assert (=> b!3504517 m!3941433))

(declare-fun m!3941435 () Bool)

(assert (=> b!3504517 m!3941435))

(declare-fun m!3941437 () Bool)

(assert (=> b!3504517 m!3941437))

(declare-fun m!3941439 () Bool)

(assert (=> b!3504517 m!3941439))

(declare-fun m!3941441 () Bool)

(assert (=> b!3504517 m!3941441))

(declare-fun m!3941443 () Bool)

(assert (=> b!3504517 m!3941443))

(declare-fun m!3941445 () Bool)

(assert (=> b!3504517 m!3941445))

(declare-fun m!3941447 () Bool)

(assert (=> b!3504517 m!3941447))

(declare-fun m!3941449 () Bool)

(assert (=> b!3504517 m!3941449))

(declare-fun m!3941451 () Bool)

(assert (=> b!3504517 m!3941451))

(declare-fun m!3941453 () Bool)

(assert (=> b!3504517 m!3941453))

(declare-fun m!3941455 () Bool)

(assert (=> b!3504517 m!3941455))

(declare-fun m!3941457 () Bool)

(assert (=> b!3504517 m!3941457))

(declare-fun m!3941459 () Bool)

(assert (=> b!3504517 m!3941459))

(declare-fun m!3941461 () Bool)

(assert (=> b!3504517 m!3941461))

(declare-fun m!3941463 () Bool)

(assert (=> b!3504517 m!3941463))

(declare-fun m!3941465 () Bool)

(assert (=> b!3504517 m!3941465))

(declare-fun m!3941467 () Bool)

(assert (=> b!3504517 m!3941467))

(assert (=> b!3504517 m!3941457))

(declare-fun m!3941469 () Bool)

(assert (=> b!3504534 m!3941469))

(declare-fun m!3941471 () Bool)

(assert (=> b!3504534 m!3941471))

(declare-fun m!3941473 () Bool)

(assert (=> b!3504519 m!3941473))

(declare-fun m!3941475 () Bool)

(assert (=> b!3504512 m!3941475))

(declare-fun m!3941477 () Bool)

(assert (=> b!3504505 m!3941477))

(declare-fun m!3941479 () Bool)

(assert (=> b!3504515 m!3941479))

(assert (=> b!3504515 m!3941479))

(declare-fun m!3941481 () Bool)

(assert (=> b!3504515 m!3941481))

(declare-fun m!3941483 () Bool)

(assert (=> b!3504513 m!3941483))

(declare-fun m!3941485 () Bool)

(assert (=> b!3504509 m!3941485))

(declare-fun m!3941487 () Bool)

(assert (=> b!3504509 m!3941487))

(declare-fun m!3941489 () Bool)

(assert (=> b!3504509 m!3941489))

(assert (=> b!3504509 m!3941485))

(declare-fun m!3941491 () Bool)

(assert (=> b!3504509 m!3941491))

(declare-fun m!3941493 () Bool)

(assert (=> b!3504509 m!3941493))

(declare-fun m!3941495 () Bool)

(assert (=> b!3504509 m!3941495))

(assert (=> b!3504509 m!3941487))

(declare-fun m!3941497 () Bool)

(assert (=> b!3504509 m!3941497))

(declare-fun m!3941499 () Bool)

(assert (=> b!3504509 m!3941499))

(assert (=> b!3504509 m!3941499))

(assert (=> b!3504509 m!3941495))

(declare-fun m!3941501 () Bool)

(assert (=> b!3504509 m!3941501))

(declare-fun m!3941503 () Bool)

(assert (=> b!3504509 m!3941503))

(declare-fun m!3941505 () Bool)

(assert (=> b!3504510 m!3941505))

(declare-fun m!3941507 () Bool)

(assert (=> b!3504510 m!3941507))

(declare-fun m!3941509 () Bool)

(assert (=> start!325786 m!3941509))

(declare-fun m!3941511 () Bool)

(assert (=> b!3504526 m!3941511))

(declare-fun m!3941513 () Bool)

(assert (=> b!3504504 m!3941513))

(declare-fun m!3941515 () Bool)

(assert (=> b!3504504 m!3941515))

(declare-fun m!3941517 () Bool)

(assert (=> b!3504496 m!3941517))

(declare-fun m!3941519 () Bool)

(assert (=> b!3504495 m!3941519))

(declare-fun m!3941521 () Bool)

(assert (=> b!3504495 m!3941521))

(declare-fun m!3941523 () Bool)

(assert (=> b!3504520 m!3941523))

(declare-fun m!3941525 () Bool)

(assert (=> b!3504529 m!3941525))

(declare-fun m!3941527 () Bool)

(assert (=> b!3504535 m!3941527))

(check-sat b_and!248677 (not b_next!91243) (not b!3504497) (not b!3504527) (not b!3504517) (not b_next!91245) (not b!3504524) (not b!3504494) (not b!3504495) b_and!248675 b_and!248681 (not b!3504525) (not b!3504510) (not b_next!91247) (not b!3504508) (not b!3504544) b_and!248685 (not b!3504520) (not start!325786) (not b!3504529) (not b!3504514) (not b!3504532) (not b_next!91241) (not b!3504505) (not b!3504511) (not b!3504526) (not b_next!91249) b_and!248683 (not b!3504519) (not b!3504512) (not b!3504506) (not b!3504535) b_and!248679 (not b!3504521) (not b!3504504) (not b!3504507) (not b!3504499) (not b_next!91251) (not b!3504509) (not b!3504515) (not b!3504523) (not b!3504534) (not b!3504530) (not b!3504513) (not b!3504522) (not b!3504496))
(check-sat b_and!248677 (not b_next!91243) b_and!248685 (not b_next!91241) (not b_next!91249) b_and!248683 (not b_next!91245) b_and!248679 (not b_next!91251) b_and!248675 b_and!248681 (not b_next!91247))
(get-model)

(declare-fun d!1018311 () Bool)

(declare-fun res!1413716 () Bool)

(declare-fun e!2169933 () Bool)

(assert (=> d!1018311 (=> res!1413716 e!2169933)))

(assert (=> d!1018311 (= res!1413716 (not ((_ is Cons!37306) rules!2135)))))

(assert (=> d!1018311 (= (sepAndNonSepRulesDisjointChars!1662 rules!2135 rules!2135) e!2169933)))

(declare-fun b!3504699 () Bool)

(declare-fun e!2169934 () Bool)

(assert (=> b!3504699 (= e!2169933 e!2169934)))

(declare-fun res!1413717 () Bool)

(assert (=> b!3504699 (=> (not res!1413717) (not e!2169934))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!742 (Rule!10736 List!37430) Bool)

(assert (=> b!3504699 (= res!1413717 (ruleDisjointCharsFromAllFromOtherType!742 (h!42726 rules!2135) rules!2135))))

(declare-fun b!3504700 () Bool)

(assert (=> b!3504700 (= e!2169934 (sepAndNonSepRulesDisjointChars!1662 rules!2135 (t!279241 rules!2135)))))

(assert (= (and d!1018311 (not res!1413716)) b!3504699))

(assert (= (and b!3504699 res!1413717) b!3504700))

(declare-fun m!3941705 () Bool)

(assert (=> b!3504699 m!3941705))

(declare-fun m!3941707 () Bool)

(assert (=> b!3504700 m!3941707))

(assert (=> b!3504526 d!1018311))

(declare-fun d!1018325 () Bool)

(assert (=> d!1018325 (= (isEmpty!21746 lt!1195062) ((_ is Nil!37305) lt!1195062))))

(assert (=> b!3504505 d!1018325))

(declare-fun d!1018333 () Bool)

(assert (=> d!1018333 (= (inv!50519 (tag!6100 (rule!8098 (h!42727 tokens!494)))) (= (mod (str.len (value!176297 (tag!6100 (rule!8098 (h!42727 tokens!494))))) 2) 0))))

(assert (=> b!3504504 d!1018333))

(declare-fun d!1018335 () Bool)

(declare-fun res!1413730 () Bool)

(declare-fun e!2169954 () Bool)

(assert (=> d!1018335 (=> (not res!1413730) (not e!2169954))))

(declare-fun semiInverseModEq!2307 (Int Int) Bool)

(assert (=> d!1018335 (= res!1413730 (semiInverseModEq!2307 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))))))

(assert (=> d!1018335 (= (inv!50522 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) e!2169954)))

(declare-fun b!3504731 () Bool)

(declare-fun equivClasses!2206 (Int Int) Bool)

(assert (=> b!3504731 (= e!2169954 (equivClasses!2206 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))))))

(assert (= (and d!1018335 res!1413730) b!3504731))

(declare-fun m!3941789 () Bool)

(assert (=> d!1018335 m!3941789))

(declare-fun m!3941791 () Bool)

(assert (=> b!3504731 m!3941791))

(assert (=> b!3504504 d!1018335))

(declare-fun d!1018357 () Bool)

(declare-fun list!13632 (Conc!11311) List!37429)

(assert (=> d!1018357 (= (list!13629 (charsOf!3482 (h!42727 tokens!494))) (list!13632 (c!602787 (charsOf!3482 (h!42727 tokens!494)))))))

(declare-fun bs!563910 () Bool)

(assert (= bs!563910 d!1018357))

(declare-fun m!3941799 () Bool)

(assert (=> bs!563910 m!3941799))

(assert (=> b!3504506 d!1018357))

(declare-fun d!1018361 () Bool)

(declare-fun lt!1195155 () BalanceConc!22236)

(assert (=> d!1018361 (= (list!13629 lt!1195155) (originalCharacters!6182 (h!42727 tokens!494)))))

(declare-fun dynLambda!15853 (Int TokenValue!5698) BalanceConc!22236)

(assert (=> d!1018361 (= lt!1195155 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494))))))

(assert (=> d!1018361 (= (charsOf!3482 (h!42727 tokens!494)) lt!1195155)))

(declare-fun b_lambda!101895 () Bool)

(assert (=> (not b_lambda!101895) (not d!1018361)))

(declare-fun t!279263 () Bool)

(declare-fun tb!194361 () Bool)

(assert (=> (and b!3504516 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279263) tb!194361))

(declare-fun b!3504742 () Bool)

(declare-fun e!2169963 () Bool)

(declare-fun tp!1084740 () Bool)

(declare-fun inv!50526 (Conc!11311) Bool)

(assert (=> b!3504742 (= e!2169963 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494))))) tp!1084740))))

(declare-fun result!238632 () Bool)

(declare-fun inv!50527 (BalanceConc!22236) Bool)

(assert (=> tb!194361 (= result!238632 (and (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494)))) e!2169963))))

(assert (= tb!194361 b!3504742))

(declare-fun m!3941815 () Bool)

(assert (=> b!3504742 m!3941815))

(declare-fun m!3941817 () Bool)

(assert (=> tb!194361 m!3941817))

(assert (=> d!1018361 t!279263))

(declare-fun b_and!248705 () Bool)

(assert (= b_and!248677 (and (=> t!279263 result!238632) b_and!248705)))

(declare-fun t!279265 () Bool)

(declare-fun tb!194363 () Bool)

(assert (=> (and b!3504518 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279265) tb!194363))

(declare-fun result!238636 () Bool)

(assert (= result!238636 result!238632))

(assert (=> d!1018361 t!279265))

(declare-fun b_and!248707 () Bool)

(assert (= b_and!248681 (and (=> t!279265 result!238636) b_and!248707)))

(declare-fun tb!194365 () Bool)

(declare-fun t!279267 () Bool)

(assert (=> (and b!3504500 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279267) tb!194365))

(declare-fun result!238638 () Bool)

(assert (= result!238638 result!238632))

(assert (=> d!1018361 t!279267))

(declare-fun b_and!248709 () Bool)

(assert (= b_and!248685 (and (=> t!279267 result!238638) b_and!248709)))

(declare-fun m!3941819 () Bool)

(assert (=> d!1018361 m!3941819))

(declare-fun m!3941821 () Bool)

(assert (=> d!1018361 m!3941821))

(assert (=> b!3504506 d!1018361))

(declare-fun d!1018369 () Bool)

(declare-fun lt!1195158 () Bool)

(declare-fun isEmpty!21751 (List!37431) Bool)

(declare-fun list!13633 (BalanceConc!22238) List!37431)

(assert (=> d!1018369 (= lt!1195158 (isEmpty!21751 (list!13633 (_1!21690 (lex!2383 thiss!18206 rules!2135 lt!1195088)))))))

(declare-fun isEmpty!21752 (Conc!11312) Bool)

(assert (=> d!1018369 (= lt!1195158 (isEmpty!21752 (c!602788 (_1!21690 (lex!2383 thiss!18206 rules!2135 lt!1195088)))))))

(assert (=> d!1018369 (= (isEmpty!21747 (_1!21690 (lex!2383 thiss!18206 rules!2135 lt!1195088))) lt!1195158)))

(declare-fun bs!563913 () Bool)

(assert (= bs!563913 d!1018369))

(declare-fun m!3941823 () Bool)

(assert (=> bs!563913 m!3941823))

(assert (=> bs!563913 m!3941823))

(declare-fun m!3941825 () Bool)

(assert (=> bs!563913 m!3941825))

(declare-fun m!3941827 () Bool)

(assert (=> bs!563913 m!3941827))

(assert (=> b!3504527 d!1018369))

(declare-fun b!3504768 () Bool)

(declare-fun res!1413754 () Bool)

(declare-fun e!2169980 () Bool)

(assert (=> b!3504768 (=> (not res!1413754) (not e!2169980))))

(declare-fun lt!1195164 () tuple2!37112)

(declare-datatypes ((tuple2!37118 0))(
  ( (tuple2!37119 (_1!21693 List!37431) (_2!21693 List!37429)) )
))
(declare-fun lexList!1472 (LexerInterface!5057 List!37430 List!37429) tuple2!37118)

(assert (=> b!3504768 (= res!1413754 (= (list!13633 (_1!21690 lt!1195164)) (_1!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 lt!1195088)))))))

(declare-fun b!3504769 () Bool)

(declare-fun e!2169981 () Bool)

(assert (=> b!3504769 (= e!2169981 (= (_2!21690 lt!1195164) lt!1195088))))

(declare-fun b!3504770 () Bool)

(declare-fun e!2169979 () Bool)

(assert (=> b!3504770 (= e!2169981 e!2169979)))

(declare-fun res!1413752 () Bool)

(declare-fun size!28367 (BalanceConc!22236) Int)

(assert (=> b!3504770 (= res!1413752 (< (size!28367 (_2!21690 lt!1195164)) (size!28367 lt!1195088)))))

(assert (=> b!3504770 (=> (not res!1413752) (not e!2169979))))

(declare-fun b!3504771 () Bool)

(assert (=> b!3504771 (= e!2169980 (= (list!13629 (_2!21690 lt!1195164)) (_2!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 lt!1195088)))))))

(declare-fun b!3504772 () Bool)

(assert (=> b!3504772 (= e!2169979 (not (isEmpty!21747 (_1!21690 lt!1195164))))))

(declare-fun d!1018371 () Bool)

(assert (=> d!1018371 e!2169980))

(declare-fun res!1413753 () Bool)

(assert (=> d!1018371 (=> (not res!1413753) (not e!2169980))))

(assert (=> d!1018371 (= res!1413753 e!2169981)))

(declare-fun c!602837 () Bool)

(assert (=> d!1018371 (= c!602837 (> (size!28364 (_1!21690 lt!1195164)) 0))))

(declare-fun lexTailRecV2!1080 (LexerInterface!5057 List!37430 BalanceConc!22236 BalanceConc!22236 BalanceConc!22236 BalanceConc!22238) tuple2!37112)

(assert (=> d!1018371 (= lt!1195164 (lexTailRecV2!1080 thiss!18206 rules!2135 lt!1195088 (BalanceConc!22237 Empty!11311) lt!1195088 (BalanceConc!22239 Empty!11312)))))

(assert (=> d!1018371 (= (lex!2383 thiss!18206 rules!2135 lt!1195088) lt!1195164)))

(assert (= (and d!1018371 c!602837) b!3504770))

(assert (= (and d!1018371 (not c!602837)) b!3504769))

(assert (= (and b!3504770 res!1413752) b!3504772))

(assert (= (and d!1018371 res!1413753) b!3504768))

(assert (= (and b!3504768 res!1413754) b!3504771))

(declare-fun m!3941849 () Bool)

(assert (=> b!3504770 m!3941849))

(declare-fun m!3941851 () Bool)

(assert (=> b!3504770 m!3941851))

(declare-fun m!3941853 () Bool)

(assert (=> b!3504768 m!3941853))

(declare-fun m!3941855 () Bool)

(assert (=> b!3504768 m!3941855))

(assert (=> b!3504768 m!3941855))

(declare-fun m!3941857 () Bool)

(assert (=> b!3504768 m!3941857))

(declare-fun m!3941859 () Bool)

(assert (=> d!1018371 m!3941859))

(declare-fun m!3941861 () Bool)

(assert (=> d!1018371 m!3941861))

(declare-fun m!3941863 () Bool)

(assert (=> b!3504772 m!3941863))

(declare-fun m!3941865 () Bool)

(assert (=> b!3504771 m!3941865))

(assert (=> b!3504771 m!3941855))

(assert (=> b!3504771 m!3941855))

(assert (=> b!3504771 m!3941857))

(assert (=> b!3504527 d!1018371))

(declare-fun d!1018377 () Bool)

(declare-fun fromListB!1829 (List!37429) BalanceConc!22236)

(assert (=> d!1018377 (= (seqFromList!3990 lt!1195055) (fromListB!1829 lt!1195055))))

(declare-fun bs!563915 () Bool)

(assert (= bs!563915 d!1018377))

(declare-fun m!3941867 () Bool)

(assert (=> bs!563915 m!3941867))

(assert (=> b!3504527 d!1018377))

(declare-fun b!3504783 () Bool)

(declare-fun e!2169988 () Bool)

(declare-fun inv!15 (TokenValue!5698) Bool)

(assert (=> b!3504783 (= e!2169988 (inv!15 (value!176298 separatorToken!241)))))

(declare-fun b!3504784 () Bool)

(declare-fun res!1413757 () Bool)

(assert (=> b!3504784 (=> res!1413757 e!2169988)))

(assert (=> b!3504784 (= res!1413757 (not ((_ is IntegerValue!17096) (value!176298 separatorToken!241))))))

(declare-fun e!2169989 () Bool)

(assert (=> b!3504784 (= e!2169989 e!2169988)))

(declare-fun b!3504785 () Bool)

(declare-fun inv!17 (TokenValue!5698) Bool)

(assert (=> b!3504785 (= e!2169989 (inv!17 (value!176298 separatorToken!241)))))

(declare-fun d!1018379 () Bool)

(declare-fun c!602843 () Bool)

(assert (=> d!1018379 (= c!602843 ((_ is IntegerValue!17094) (value!176298 separatorToken!241)))))

(declare-fun e!2169990 () Bool)

(assert (=> d!1018379 (= (inv!21 (value!176298 separatorToken!241)) e!2169990)))

(declare-fun b!3504786 () Bool)

(declare-fun inv!16 (TokenValue!5698) Bool)

(assert (=> b!3504786 (= e!2169990 (inv!16 (value!176298 separatorToken!241)))))

(declare-fun b!3504787 () Bool)

(assert (=> b!3504787 (= e!2169990 e!2169989)))

(declare-fun c!602842 () Bool)

(assert (=> b!3504787 (= c!602842 ((_ is IntegerValue!17095) (value!176298 separatorToken!241)))))

(assert (= (and d!1018379 c!602843) b!3504786))

(assert (= (and d!1018379 (not c!602843)) b!3504787))

(assert (= (and b!3504787 c!602842) b!3504785))

(assert (= (and b!3504787 (not c!602842)) b!3504784))

(assert (= (and b!3504784 (not res!1413757)) b!3504783))

(declare-fun m!3941869 () Bool)

(assert (=> b!3504783 m!3941869))

(declare-fun m!3941871 () Bool)

(assert (=> b!3504785 m!3941871))

(declare-fun m!3941873 () Bool)

(assert (=> b!3504786 m!3941873))

(assert (=> b!3504529 d!1018379))

(declare-fun d!1018381 () Bool)

(declare-fun lt!1195167 () Bool)

(assert (=> d!1018381 (= lt!1195167 (isEmpty!21746 (list!13629 (_2!21690 lt!1195061))))))

(declare-fun isEmpty!21753 (Conc!11311) Bool)

(assert (=> d!1018381 (= lt!1195167 (isEmpty!21753 (c!602787 (_2!21690 lt!1195061))))))

(assert (=> d!1018381 (= (isEmpty!21744 (_2!21690 lt!1195061)) lt!1195167)))

(declare-fun bs!563916 () Bool)

(assert (= bs!563916 d!1018381))

(declare-fun m!3941875 () Bool)

(assert (=> bs!563916 m!3941875))

(assert (=> bs!563916 m!3941875))

(declare-fun m!3941877 () Bool)

(assert (=> bs!563916 m!3941877))

(declare-fun m!3941879 () Bool)

(assert (=> bs!563916 m!3941879))

(assert (=> b!3504507 d!1018381))

(declare-fun d!1018383 () Bool)

(declare-fun c!602846 () Bool)

(assert (=> d!1018383 (= c!602846 ((_ is Cons!37307) tokens!494))))

(declare-fun e!2169993 () List!37429)

(assert (=> d!1018383 (= (printWithSeparatorTokenList!344 thiss!18206 tokens!494 separatorToken!241) e!2169993)))

(declare-fun b!3504792 () Bool)

(assert (=> b!3504792 (= e!2169993 (++!9231 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) (list!13629 (charsOf!3482 separatorToken!241))) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 tokens!494) separatorToken!241)))))

(declare-fun b!3504793 () Bool)

(assert (=> b!3504793 (= e!2169993 Nil!37305)))

(assert (= (and d!1018383 c!602846) b!3504792))

(assert (= (and d!1018383 (not c!602846)) b!3504793))

(assert (=> b!3504792 m!3941487))

(declare-fun m!3941881 () Bool)

(assert (=> b!3504792 m!3941881))

(assert (=> b!3504792 m!3941503))

(declare-fun m!3941883 () Bool)

(assert (=> b!3504792 m!3941883))

(assert (=> b!3504792 m!3941389))

(assert (=> b!3504792 m!3941497))

(assert (=> b!3504792 m!3941881))

(assert (=> b!3504792 m!3941387))

(assert (=> b!3504792 m!3941487))

(assert (=> b!3504792 m!3941497))

(assert (=> b!3504792 m!3941387))

(assert (=> b!3504792 m!3941389))

(assert (=> b!3504792 m!3941503))

(assert (=> b!3504509 d!1018383))

(declare-fun d!1018385 () Bool)

(declare-fun e!2169999 () Bool)

(assert (=> d!1018385 e!2169999))

(declare-fun res!1413763 () Bool)

(assert (=> d!1018385 (=> (not res!1413763) (not e!2169999))))

(declare-fun lt!1195170 () List!37429)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5247 (List!37429) (InoxSet C!20640))

(assert (=> d!1018385 (= res!1413763 (= (content!5247 lt!1195170) ((_ map or) (content!5247 lt!1195070) (content!5247 lt!1195084))))))

(declare-fun e!2169998 () List!37429)

(assert (=> d!1018385 (= lt!1195170 e!2169998)))

(declare-fun c!602849 () Bool)

(assert (=> d!1018385 (= c!602849 ((_ is Nil!37305) lt!1195070))))

(assert (=> d!1018385 (= (++!9231 lt!1195070 lt!1195084) lt!1195170)))

(declare-fun b!3504803 () Bool)

(assert (=> b!3504803 (= e!2169998 (Cons!37305 (h!42725 lt!1195070) (++!9231 (t!279240 lt!1195070) lt!1195084)))))

(declare-fun b!3504802 () Bool)

(assert (=> b!3504802 (= e!2169998 lt!1195084)))

(declare-fun b!3504805 () Bool)

(assert (=> b!3504805 (= e!2169999 (or (not (= lt!1195084 Nil!37305)) (= lt!1195170 lt!1195070)))))

(declare-fun b!3504804 () Bool)

(declare-fun res!1413762 () Bool)

(assert (=> b!3504804 (=> (not res!1413762) (not e!2169999))))

(assert (=> b!3504804 (= res!1413762 (= (size!28365 lt!1195170) (+ (size!28365 lt!1195070) (size!28365 lt!1195084))))))

(assert (= (and d!1018385 c!602849) b!3504802))

(assert (= (and d!1018385 (not c!602849)) b!3504803))

(assert (= (and d!1018385 res!1413763) b!3504804))

(assert (= (and b!3504804 res!1413762) b!3504805))

(declare-fun m!3941885 () Bool)

(assert (=> d!1018385 m!3941885))

(declare-fun m!3941887 () Bool)

(assert (=> d!1018385 m!3941887))

(declare-fun m!3941889 () Bool)

(assert (=> d!1018385 m!3941889))

(declare-fun m!3941891 () Bool)

(assert (=> b!3504803 m!3941891))

(declare-fun m!3941893 () Bool)

(assert (=> b!3504804 m!3941893))

(declare-fun m!3941895 () Bool)

(assert (=> b!3504804 m!3941895))

(declare-fun m!3941897 () Bool)

(assert (=> b!3504804 m!3941897))

(assert (=> b!3504509 d!1018385))

(declare-fun d!1018387 () Bool)

(declare-fun e!2170001 () Bool)

(assert (=> d!1018387 e!2170001))

(declare-fun res!1413765 () Bool)

(assert (=> d!1018387 (=> (not res!1413765) (not e!2170001))))

(declare-fun lt!1195171 () List!37429)

(assert (=> d!1018387 (= res!1413765 (= (content!5247 lt!1195171) ((_ map or) (content!5247 (++!9231 lt!1195062 lt!1195070)) (content!5247 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))))

(declare-fun e!2170000 () List!37429)

(assert (=> d!1018387 (= lt!1195171 e!2170000)))

(declare-fun c!602850 () Bool)

(assert (=> d!1018387 (= c!602850 ((_ is Nil!37305) (++!9231 lt!1195062 lt!1195070)))))

(assert (=> d!1018387 (= (++!9231 (++!9231 lt!1195062 lt!1195070) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)) lt!1195171)))

(declare-fun b!3504807 () Bool)

(assert (=> b!3504807 (= e!2170000 (Cons!37305 (h!42725 (++!9231 lt!1195062 lt!1195070)) (++!9231 (t!279240 (++!9231 lt!1195062 lt!1195070)) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241))))))

(declare-fun b!3504806 () Bool)

(assert (=> b!3504806 (= e!2170000 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241))))

(declare-fun b!3504809 () Bool)

(assert (=> b!3504809 (= e!2170001 (or (not (= (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241) Nil!37305)) (= lt!1195171 (++!9231 lt!1195062 lt!1195070))))))

(declare-fun b!3504808 () Bool)

(declare-fun res!1413764 () Bool)

(assert (=> b!3504808 (=> (not res!1413764) (not e!2170001))))

(assert (=> b!3504808 (= res!1413764 (= (size!28365 lt!1195171) (+ (size!28365 (++!9231 lt!1195062 lt!1195070)) (size!28365 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))))

(assert (= (and d!1018387 c!602850) b!3504806))

(assert (= (and d!1018387 (not c!602850)) b!3504807))

(assert (= (and d!1018387 res!1413765) b!3504808))

(assert (= (and b!3504808 res!1413764) b!3504809))

(declare-fun m!3941899 () Bool)

(assert (=> d!1018387 m!3941899))

(assert (=> d!1018387 m!3941499))

(declare-fun m!3941901 () Bool)

(assert (=> d!1018387 m!3941901))

(assert (=> d!1018387 m!3941495))

(declare-fun m!3941903 () Bool)

(assert (=> d!1018387 m!3941903))

(assert (=> b!3504807 m!3941495))

(declare-fun m!3941905 () Bool)

(assert (=> b!3504807 m!3941905))

(declare-fun m!3941907 () Bool)

(assert (=> b!3504808 m!3941907))

(assert (=> b!3504808 m!3941499))

(declare-fun m!3941909 () Bool)

(assert (=> b!3504808 m!3941909))

(assert (=> b!3504808 m!3941495))

(declare-fun m!3941911 () Bool)

(assert (=> b!3504808 m!3941911))

(assert (=> b!3504509 d!1018387))

(declare-fun d!1018389 () Bool)

(declare-fun lt!1195172 () BalanceConc!22236)

(assert (=> d!1018389 (= (list!13629 lt!1195172) (originalCharacters!6182 separatorToken!241))))

(assert (=> d!1018389 (= lt!1195172 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241)))))

(assert (=> d!1018389 (= (charsOf!3482 separatorToken!241) lt!1195172)))

(declare-fun b_lambda!101897 () Bool)

(assert (=> (not b_lambda!101897) (not d!1018389)))

(declare-fun tb!194367 () Bool)

(declare-fun t!279269 () Bool)

(assert (=> (and b!3504516 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241)))) t!279269) tb!194367))

(declare-fun b!3504810 () Bool)

(declare-fun e!2170002 () Bool)

(declare-fun tp!1084741 () Bool)

(assert (=> b!3504810 (= e!2170002 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241)))) tp!1084741))))

(declare-fun result!238640 () Bool)

(assert (=> tb!194367 (= result!238640 (and (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241))) e!2170002))))

(assert (= tb!194367 b!3504810))

(declare-fun m!3941913 () Bool)

(assert (=> b!3504810 m!3941913))

(declare-fun m!3941915 () Bool)

(assert (=> tb!194367 m!3941915))

(assert (=> d!1018389 t!279269))

(declare-fun b_and!248711 () Bool)

(assert (= b_and!248705 (and (=> t!279269 result!238640) b_and!248711)))

(declare-fun t!279271 () Bool)

(declare-fun tb!194369 () Bool)

(assert (=> (and b!3504518 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241)))) t!279271) tb!194369))

(declare-fun result!238642 () Bool)

(assert (= result!238642 result!238640))

(assert (=> d!1018389 t!279271))

(declare-fun b_and!248713 () Bool)

(assert (= b_and!248707 (and (=> t!279271 result!238642) b_and!248713)))

(declare-fun t!279273 () Bool)

(declare-fun tb!194371 () Bool)

(assert (=> (and b!3504500 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241)))) t!279273) tb!194371))

(declare-fun result!238644 () Bool)

(assert (= result!238644 result!238640))

(assert (=> d!1018389 t!279273))

(declare-fun b_and!248715 () Bool)

(assert (= b_and!248709 (and (=> t!279273 result!238644) b_and!248715)))

(declare-fun m!3941917 () Bool)

(assert (=> d!1018389 m!3941917))

(declare-fun m!3941919 () Bool)

(assert (=> d!1018389 m!3941919))

(assert (=> b!3504509 d!1018389))

(declare-fun d!1018391 () Bool)

(declare-fun c!602851 () Bool)

(assert (=> d!1018391 (= c!602851 ((_ is Cons!37307) (t!279242 (t!279242 tokens!494))))))

(declare-fun e!2170003 () List!37429)

(assert (=> d!1018391 (= (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241) e!2170003)))

(declare-fun b!3504811 () Bool)

(assert (=> b!3504811 (= e!2170003 (++!9231 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494))))) (list!13629 (charsOf!3482 separatorToken!241))) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 (t!279242 tokens!494))) separatorToken!241)))))

(declare-fun b!3504812 () Bool)

(assert (=> b!3504812 (= e!2170003 Nil!37305)))

(assert (= (and d!1018391 c!602851) b!3504811))

(assert (= (and d!1018391 (not c!602851)) b!3504812))

(assert (=> b!3504811 m!3941487))

(declare-fun m!3941921 () Bool)

(assert (=> b!3504811 m!3941921))

(declare-fun m!3941923 () Bool)

(assert (=> b!3504811 m!3941923))

(declare-fun m!3941925 () Bool)

(assert (=> b!3504811 m!3941925))

(declare-fun m!3941927 () Bool)

(assert (=> b!3504811 m!3941927))

(assert (=> b!3504811 m!3941497))

(assert (=> b!3504811 m!3941921))

(declare-fun m!3941929 () Bool)

(assert (=> b!3504811 m!3941929))

(assert (=> b!3504811 m!3941487))

(assert (=> b!3504811 m!3941497))

(assert (=> b!3504811 m!3941929))

(assert (=> b!3504811 m!3941927))

(assert (=> b!3504811 m!3941923))

(assert (=> b!3504509 d!1018391))

(declare-fun d!1018393 () Bool)

(declare-fun c!602852 () Bool)

(assert (=> d!1018393 (= c!602852 ((_ is Cons!37307) (t!279242 tokens!494)))))

(declare-fun e!2170004 () List!37429)

(assert (=> d!1018393 (= (printWithSeparatorTokenList!344 thiss!18206 (t!279242 tokens!494) separatorToken!241) e!2170004)))

(declare-fun b!3504813 () Bool)

(assert (=> b!3504813 (= e!2170004 (++!9231 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))) (list!13629 (charsOf!3482 separatorToken!241))) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))

(declare-fun b!3504814 () Bool)

(assert (=> b!3504814 (= e!2170004 Nil!37305)))

(assert (= (and d!1018393 c!602852) b!3504813))

(assert (= (and d!1018393 (not c!602852)) b!3504814))

(assert (=> b!3504813 m!3941487))

(declare-fun m!3941931 () Bool)

(assert (=> b!3504813 m!3941931))

(assert (=> b!3504813 m!3941495))

(declare-fun m!3941933 () Bool)

(assert (=> b!3504813 m!3941933))

(assert (=> b!3504813 m!3941491))

(assert (=> b!3504813 m!3941497))

(assert (=> b!3504813 m!3941931))

(assert (=> b!3504813 m!3941485))

(assert (=> b!3504813 m!3941487))

(assert (=> b!3504813 m!3941497))

(assert (=> b!3504813 m!3941485))

(assert (=> b!3504813 m!3941491))

(assert (=> b!3504813 m!3941495))

(assert (=> b!3504509 d!1018393))

(declare-fun d!1018395 () Bool)

(assert (=> d!1018395 (= (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))) (list!13632 (c!602787 (charsOf!3482 (h!42727 (t!279242 tokens!494))))))))

(declare-fun bs!563917 () Bool)

(assert (= bs!563917 d!1018395))

(declare-fun m!3941935 () Bool)

(assert (=> bs!563917 m!3941935))

(assert (=> b!3504509 d!1018395))

(declare-fun d!1018397 () Bool)

(declare-fun e!2170006 () Bool)

(assert (=> d!1018397 e!2170006))

(declare-fun res!1413767 () Bool)

(assert (=> d!1018397 (=> (not res!1413767) (not e!2170006))))

(declare-fun lt!1195173 () List!37429)

(assert (=> d!1018397 (= res!1413767 (= (content!5247 lt!1195173) ((_ map or) (content!5247 lt!1195062) (content!5247 lt!1195070))))))

(declare-fun e!2170005 () List!37429)

(assert (=> d!1018397 (= lt!1195173 e!2170005)))

(declare-fun c!602853 () Bool)

(assert (=> d!1018397 (= c!602853 ((_ is Nil!37305) lt!1195062))))

(assert (=> d!1018397 (= (++!9231 lt!1195062 lt!1195070) lt!1195173)))

(declare-fun b!3504816 () Bool)

(assert (=> b!3504816 (= e!2170005 (Cons!37305 (h!42725 lt!1195062) (++!9231 (t!279240 lt!1195062) lt!1195070)))))

(declare-fun b!3504815 () Bool)

(assert (=> b!3504815 (= e!2170005 lt!1195070)))

(declare-fun b!3504818 () Bool)

(assert (=> b!3504818 (= e!2170006 (or (not (= lt!1195070 Nil!37305)) (= lt!1195173 lt!1195062)))))

(declare-fun b!3504817 () Bool)

(declare-fun res!1413766 () Bool)

(assert (=> b!3504817 (=> (not res!1413766) (not e!2170006))))

(assert (=> b!3504817 (= res!1413766 (= (size!28365 lt!1195173) (+ (size!28365 lt!1195062) (size!28365 lt!1195070))))))

(assert (= (and d!1018397 c!602853) b!3504815))

(assert (= (and d!1018397 (not c!602853)) b!3504816))

(assert (= (and d!1018397 res!1413767) b!3504817))

(assert (= (and b!3504817 res!1413766) b!3504818))

(declare-fun m!3941937 () Bool)

(assert (=> d!1018397 m!3941937))

(declare-fun m!3941939 () Bool)

(assert (=> d!1018397 m!3941939))

(assert (=> d!1018397 m!3941887))

(declare-fun m!3941941 () Bool)

(assert (=> b!3504816 m!3941941))

(declare-fun m!3941943 () Bool)

(assert (=> b!3504817 m!3941943))

(declare-fun m!3941945 () Bool)

(assert (=> b!3504817 m!3941945))

(assert (=> b!3504817 m!3941895))

(assert (=> b!3504509 d!1018397))

(declare-fun d!1018399 () Bool)

(assert (=> d!1018399 (= (list!13629 (charsOf!3482 separatorToken!241)) (list!13632 (c!602787 (charsOf!3482 separatorToken!241))))))

(declare-fun bs!563918 () Bool)

(assert (= bs!563918 d!1018399))

(declare-fun m!3941947 () Bool)

(assert (=> bs!563918 m!3941947))

(assert (=> b!3504509 d!1018399))

(declare-fun d!1018401 () Bool)

(declare-fun lt!1195174 () BalanceConc!22236)

(assert (=> d!1018401 (= (list!13629 lt!1195174) (originalCharacters!6182 (h!42727 (t!279242 tokens!494))))))

(assert (=> d!1018401 (= lt!1195174 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494)))))))

(assert (=> d!1018401 (= (charsOf!3482 (h!42727 (t!279242 tokens!494))) lt!1195174)))

(declare-fun b_lambda!101899 () Bool)

(assert (=> (not b_lambda!101899) (not d!1018401)))

(declare-fun t!279275 () Bool)

(declare-fun tb!194373 () Bool)

(assert (=> (and b!3504516 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))) t!279275) tb!194373))

(declare-fun b!3504819 () Bool)

(declare-fun e!2170007 () Bool)

(declare-fun tp!1084742 () Bool)

(assert (=> b!3504819 (= e!2170007 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494)))))) tp!1084742))))

(declare-fun result!238646 () Bool)

(assert (=> tb!194373 (= result!238646 (and (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494))))) e!2170007))))

(assert (= tb!194373 b!3504819))

(declare-fun m!3941949 () Bool)

(assert (=> b!3504819 m!3941949))

(declare-fun m!3941951 () Bool)

(assert (=> tb!194373 m!3941951))

(assert (=> d!1018401 t!279275))

(declare-fun b_and!248717 () Bool)

(assert (= b_and!248711 (and (=> t!279275 result!238646) b_and!248717)))

(declare-fun t!279277 () Bool)

(declare-fun tb!194375 () Bool)

(assert (=> (and b!3504518 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))) t!279277) tb!194375))

(declare-fun result!238648 () Bool)

(assert (= result!238648 result!238646))

(assert (=> d!1018401 t!279277))

(declare-fun b_and!248719 () Bool)

(assert (= b_and!248713 (and (=> t!279277 result!238648) b_and!248719)))

(declare-fun t!279279 () Bool)

(declare-fun tb!194377 () Bool)

(assert (=> (and b!3504500 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))) t!279279) tb!194377))

(declare-fun result!238650 () Bool)

(assert (= result!238650 result!238646))

(assert (=> d!1018401 t!279279))

(declare-fun b_and!248721 () Bool)

(assert (= b_and!248715 (and (=> t!279279 result!238650) b_and!248721)))

(declare-fun m!3941953 () Bool)

(assert (=> d!1018401 m!3941953))

(declare-fun m!3941955 () Bool)

(assert (=> d!1018401 m!3941955))

(assert (=> b!3504509 d!1018401))

(declare-fun d!1018403 () Bool)

(declare-fun lt!1195185 () Bool)

(declare-fun e!2170022 () Bool)

(assert (=> d!1018403 (= lt!1195185 e!2170022)))

(declare-fun res!1413782 () Bool)

(assert (=> d!1018403 (=> (not res!1413782) (not e!2170022))))

(assert (=> d!1018403 (= res!1413782 (= (list!13633 (_1!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241))))) (list!13633 (singletonSeq!2564 separatorToken!241))))))

(declare-fun e!2170023 () Bool)

(assert (=> d!1018403 (= lt!1195185 e!2170023)))

(declare-fun res!1413781 () Bool)

(assert (=> d!1018403 (=> (not res!1413781) (not e!2170023))))

(declare-fun lt!1195184 () tuple2!37112)

(assert (=> d!1018403 (= res!1413781 (= (size!28364 (_1!21690 lt!1195184)) 1))))

(assert (=> d!1018403 (= lt!1195184 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241))))))

(assert (=> d!1018403 (not (isEmpty!21745 rules!2135))))

(assert (=> d!1018403 (= (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 separatorToken!241) lt!1195185)))

(declare-fun b!3504840 () Bool)

(declare-fun res!1413783 () Bool)

(assert (=> b!3504840 (=> (not res!1413783) (not e!2170023))))

(assert (=> b!3504840 (= res!1413783 (= (apply!8864 (_1!21690 lt!1195184) 0) separatorToken!241))))

(declare-fun b!3504841 () Bool)

(assert (=> b!3504841 (= e!2170023 (isEmpty!21744 (_2!21690 lt!1195184)))))

(declare-fun b!3504842 () Bool)

(assert (=> b!3504842 (= e!2170022 (isEmpty!21744 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241))))))))

(assert (= (and d!1018403 res!1413781) b!3504840))

(assert (= (and b!3504840 res!1413783) b!3504841))

(assert (= (and d!1018403 res!1413782) b!3504842))

(declare-fun m!3941983 () Bool)

(assert (=> d!1018403 m!3941983))

(assert (=> d!1018403 m!3941445))

(assert (=> d!1018403 m!3941517))

(declare-fun m!3941985 () Bool)

(assert (=> d!1018403 m!3941985))

(assert (=> d!1018403 m!3941445))

(declare-fun m!3941987 () Bool)

(assert (=> d!1018403 m!3941987))

(assert (=> d!1018403 m!3941987))

(declare-fun m!3941989 () Bool)

(assert (=> d!1018403 m!3941989))

(assert (=> d!1018403 m!3941445))

(declare-fun m!3941991 () Bool)

(assert (=> d!1018403 m!3941991))

(declare-fun m!3941993 () Bool)

(assert (=> b!3504840 m!3941993))

(declare-fun m!3941995 () Bool)

(assert (=> b!3504841 m!3941995))

(assert (=> b!3504842 m!3941445))

(assert (=> b!3504842 m!3941445))

(assert (=> b!3504842 m!3941987))

(assert (=> b!3504842 m!3941987))

(assert (=> b!3504842 m!3941989))

(declare-fun m!3941997 () Bool)

(assert (=> b!3504842 m!3941997))

(assert (=> b!3504508 d!1018403))

(declare-fun b!3504871 () Bool)

(declare-fun e!2170043 () Bool)

(declare-fun lt!1195188 () Bool)

(assert (=> b!3504871 (= e!2170043 (not lt!1195188))))

(declare-fun b!3504872 () Bool)

(declare-fun res!1413806 () Bool)

(declare-fun e!2170040 () Bool)

(assert (=> b!3504872 (=> res!1413806 e!2170040)))

(declare-fun e!2170044 () Bool)

(assert (=> b!3504872 (= res!1413806 e!2170044)))

(declare-fun res!1413807 () Bool)

(assert (=> b!3504872 (=> (not res!1413807) (not e!2170044))))

(assert (=> b!3504872 (= res!1413807 lt!1195188)))

(declare-fun b!3504873 () Bool)

(declare-fun e!2170041 () Bool)

(assert (=> b!3504873 (= e!2170041 e!2170043)))

(declare-fun c!602862 () Bool)

(assert (=> b!3504873 (= c!602862 ((_ is EmptyLang!10227) (regex!5468 lt!1195087)))))

(declare-fun b!3504874 () Bool)

(assert (=> b!3504874 (= e!2170044 (= (head!7371 lt!1195062) (c!602786 (regex!5468 lt!1195087))))))

(declare-fun b!3504875 () Bool)

(declare-fun res!1413802 () Bool)

(assert (=> b!3504875 (=> res!1413802 e!2170040)))

(assert (=> b!3504875 (= res!1413802 (not ((_ is ElementMatch!10227) (regex!5468 lt!1195087))))))

(assert (=> b!3504875 (= e!2170043 e!2170040)))

(declare-fun b!3504876 () Bool)

(declare-fun e!2170039 () Bool)

(declare-fun nullable!3512 (Regex!10227) Bool)

(assert (=> b!3504876 (= e!2170039 (nullable!3512 (regex!5468 lt!1195087)))))

(declare-fun b!3504877 () Bool)

(declare-fun res!1413803 () Bool)

(assert (=> b!3504877 (=> (not res!1413803) (not e!2170044))))

(declare-fun tail!5480 (List!37429) List!37429)

(assert (=> b!3504877 (= res!1413803 (isEmpty!21746 (tail!5480 lt!1195062)))))

(declare-fun b!3504878 () Bool)

(declare-fun e!2170042 () Bool)

(assert (=> b!3504878 (= e!2170042 (not (= (head!7371 lt!1195062) (c!602786 (regex!5468 lt!1195087)))))))

(declare-fun b!3504879 () Bool)

(declare-fun e!2170038 () Bool)

(assert (=> b!3504879 (= e!2170040 e!2170038)))

(declare-fun res!1413800 () Bool)

(assert (=> b!3504879 (=> (not res!1413800) (not e!2170038))))

(assert (=> b!3504879 (= res!1413800 (not lt!1195188))))

(declare-fun b!3504880 () Bool)

(declare-fun derivativeStep!3065 (Regex!10227 C!20640) Regex!10227)

(assert (=> b!3504880 (= e!2170039 (matchR!4811 (derivativeStep!3065 (regex!5468 lt!1195087) (head!7371 lt!1195062)) (tail!5480 lt!1195062)))))

(declare-fun b!3504881 () Bool)

(assert (=> b!3504881 (= e!2170038 e!2170042)))

(declare-fun res!1413801 () Bool)

(assert (=> b!3504881 (=> res!1413801 e!2170042)))

(declare-fun call!252971 () Bool)

(assert (=> b!3504881 (= res!1413801 call!252971)))

(declare-fun d!1018413 () Bool)

(assert (=> d!1018413 e!2170041))

(declare-fun c!602863 () Bool)

(assert (=> d!1018413 (= c!602863 ((_ is EmptyExpr!10227) (regex!5468 lt!1195087)))))

(assert (=> d!1018413 (= lt!1195188 e!2170039)))

(declare-fun c!602864 () Bool)

(assert (=> d!1018413 (= c!602864 (isEmpty!21746 lt!1195062))))

(declare-fun validRegex!4668 (Regex!10227) Bool)

(assert (=> d!1018413 (validRegex!4668 (regex!5468 lt!1195087))))

(assert (=> d!1018413 (= (matchR!4811 (regex!5468 lt!1195087) lt!1195062) lt!1195188)))

(declare-fun bm!252966 () Bool)

(assert (=> bm!252966 (= call!252971 (isEmpty!21746 lt!1195062))))

(declare-fun b!3504882 () Bool)

(declare-fun res!1413804 () Bool)

(assert (=> b!3504882 (=> (not res!1413804) (not e!2170044))))

(assert (=> b!3504882 (= res!1413804 (not call!252971))))

(declare-fun b!3504883 () Bool)

(declare-fun res!1413805 () Bool)

(assert (=> b!3504883 (=> res!1413805 e!2170042)))

(assert (=> b!3504883 (= res!1413805 (not (isEmpty!21746 (tail!5480 lt!1195062))))))

(declare-fun b!3504884 () Bool)

(assert (=> b!3504884 (= e!2170041 (= lt!1195188 call!252971))))

(assert (= (and d!1018413 c!602864) b!3504876))

(assert (= (and d!1018413 (not c!602864)) b!3504880))

(assert (= (and d!1018413 c!602863) b!3504884))

(assert (= (and d!1018413 (not c!602863)) b!3504873))

(assert (= (and b!3504873 c!602862) b!3504871))

(assert (= (and b!3504873 (not c!602862)) b!3504875))

(assert (= (and b!3504875 (not res!1413802)) b!3504872))

(assert (= (and b!3504872 res!1413807) b!3504882))

(assert (= (and b!3504882 res!1413804) b!3504877))

(assert (= (and b!3504877 res!1413803) b!3504874))

(assert (= (and b!3504872 (not res!1413806)) b!3504879))

(assert (= (and b!3504879 res!1413800) b!3504881))

(assert (= (and b!3504881 (not res!1413801)) b!3504883))

(assert (= (and b!3504883 (not res!1413805)) b!3504878))

(assert (= (or b!3504884 b!3504882 b!3504881) bm!252966))

(declare-fun m!3941999 () Bool)

(assert (=> b!3504883 m!3941999))

(assert (=> b!3504883 m!3941999))

(declare-fun m!3942001 () Bool)

(assert (=> b!3504883 m!3942001))

(declare-fun m!3942003 () Bool)

(assert (=> b!3504876 m!3942003))

(declare-fun m!3942005 () Bool)

(assert (=> b!3504880 m!3942005))

(assert (=> b!3504880 m!3942005))

(declare-fun m!3942007 () Bool)

(assert (=> b!3504880 m!3942007))

(assert (=> b!3504880 m!3941999))

(assert (=> b!3504880 m!3942007))

(assert (=> b!3504880 m!3941999))

(declare-fun m!3942009 () Bool)

(assert (=> b!3504880 m!3942009))

(assert (=> bm!252966 m!3941477))

(assert (=> b!3504878 m!3942005))

(assert (=> b!3504874 m!3942005))

(assert (=> d!1018413 m!3941477))

(declare-fun m!3942011 () Bool)

(assert (=> d!1018413 m!3942011))

(assert (=> b!3504877 m!3941999))

(assert (=> b!3504877 m!3941999))

(assert (=> b!3504877 m!3942001))

(assert (=> b!3504510 d!1018413))

(declare-fun d!1018415 () Bool)

(assert (=> d!1018415 (= (get!11969 lt!1195072) (v!37044 lt!1195072))))

(assert (=> b!3504510 d!1018415))

(declare-fun d!1018417 () Bool)

(declare-fun res!1413810 () Bool)

(declare-fun e!2170047 () Bool)

(assert (=> d!1018417 (=> (not res!1413810) (not e!2170047))))

(declare-fun rulesValid!2067 (LexerInterface!5057 List!37430) Bool)

(assert (=> d!1018417 (= res!1413810 (rulesValid!2067 thiss!18206 rules!2135))))

(assert (=> d!1018417 (= (rulesInvariant!4454 thiss!18206 rules!2135) e!2170047)))

(declare-fun b!3504887 () Bool)

(declare-datatypes ((List!37433 0))(
  ( (Nil!37309) (Cons!37309 (h!42729 String!41824) (t!279338 List!37433)) )
))
(declare-fun noDuplicateTag!2063 (LexerInterface!5057 List!37430 List!37433) Bool)

(assert (=> b!3504887 (= e!2170047 (noDuplicateTag!2063 thiss!18206 rules!2135 Nil!37309))))

(assert (= (and d!1018417 res!1413810) b!3504887))

(declare-fun m!3942013 () Bool)

(assert (=> d!1018417 m!3942013))

(declare-fun m!3942015 () Bool)

(assert (=> b!3504887 m!3942015))

(assert (=> b!3504532 d!1018417))

(declare-fun d!1018419 () Bool)

(declare-fun res!1413821 () Bool)

(declare-fun e!2170054 () Bool)

(assert (=> d!1018419 (=> (not res!1413821) (not e!2170054))))

(assert (=> d!1018419 (= res!1413821 (not (isEmpty!21746 (originalCharacters!6182 separatorToken!241))))))

(assert (=> d!1018419 (= (inv!50523 separatorToken!241) e!2170054)))

(declare-fun b!3504898 () Bool)

(declare-fun res!1413822 () Bool)

(assert (=> b!3504898 (=> (not res!1413822) (not e!2170054))))

(assert (=> b!3504898 (= res!1413822 (= (originalCharacters!6182 separatorToken!241) (list!13629 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241)))))))

(declare-fun b!3504899 () Bool)

(assert (=> b!3504899 (= e!2170054 (= (size!28363 separatorToken!241) (size!28365 (originalCharacters!6182 separatorToken!241))))))

(assert (= (and d!1018419 res!1413821) b!3504898))

(assert (= (and b!3504898 res!1413822) b!3504899))

(declare-fun b_lambda!101901 () Bool)

(assert (=> (not b_lambda!101901) (not b!3504898)))

(assert (=> b!3504898 t!279269))

(declare-fun b_and!248723 () Bool)

(assert (= b_and!248717 (and (=> t!279269 result!238640) b_and!248723)))

(assert (=> b!3504898 t!279271))

(declare-fun b_and!248725 () Bool)

(assert (= b_and!248719 (and (=> t!279271 result!238642) b_and!248725)))

(assert (=> b!3504898 t!279273))

(declare-fun b_and!248727 () Bool)

(assert (= b_and!248721 (and (=> t!279273 result!238644) b_and!248727)))

(declare-fun m!3942017 () Bool)

(assert (=> d!1018419 m!3942017))

(assert (=> b!3504898 m!3941919))

(assert (=> b!3504898 m!3941919))

(declare-fun m!3942019 () Bool)

(assert (=> b!3504898 m!3942019))

(declare-fun m!3942021 () Bool)

(assert (=> b!3504899 m!3942021))

(assert (=> start!325786 d!1018419))

(declare-fun b!3504900 () Bool)

(declare-fun e!2170060 () Bool)

(declare-fun lt!1195193 () Bool)

(assert (=> b!3504900 (= e!2170060 (not lt!1195193))))

(declare-fun b!3504901 () Bool)

(declare-fun res!1413829 () Bool)

(declare-fun e!2170057 () Bool)

(assert (=> b!3504901 (=> res!1413829 e!2170057)))

(declare-fun e!2170061 () Bool)

(assert (=> b!3504901 (= res!1413829 e!2170061)))

(declare-fun res!1413830 () Bool)

(assert (=> b!3504901 (=> (not res!1413830) (not e!2170061))))

(assert (=> b!3504901 (= res!1413830 lt!1195193)))

(declare-fun b!3504902 () Bool)

(declare-fun e!2170058 () Bool)

(assert (=> b!3504902 (= e!2170058 e!2170060)))

(declare-fun c!602865 () Bool)

(assert (=> b!3504902 (= c!602865 ((_ is EmptyLang!10227) (regex!5468 lt!1195076)))))

(declare-fun b!3504903 () Bool)

(assert (=> b!3504903 (= e!2170061 (= (head!7371 lt!1195070) (c!602786 (regex!5468 lt!1195076))))))

(declare-fun b!3504904 () Bool)

(declare-fun res!1413825 () Bool)

(assert (=> b!3504904 (=> res!1413825 e!2170057)))

(assert (=> b!3504904 (= res!1413825 (not ((_ is ElementMatch!10227) (regex!5468 lt!1195076))))))

(assert (=> b!3504904 (= e!2170060 e!2170057)))

(declare-fun b!3504905 () Bool)

(declare-fun e!2170056 () Bool)

(assert (=> b!3504905 (= e!2170056 (nullable!3512 (regex!5468 lt!1195076)))))

(declare-fun b!3504906 () Bool)

(declare-fun res!1413826 () Bool)

(assert (=> b!3504906 (=> (not res!1413826) (not e!2170061))))

(assert (=> b!3504906 (= res!1413826 (isEmpty!21746 (tail!5480 lt!1195070)))))

(declare-fun b!3504907 () Bool)

(declare-fun e!2170059 () Bool)

(assert (=> b!3504907 (= e!2170059 (not (= (head!7371 lt!1195070) (c!602786 (regex!5468 lt!1195076)))))))

(declare-fun b!3504908 () Bool)

(declare-fun e!2170055 () Bool)

(assert (=> b!3504908 (= e!2170057 e!2170055)))

(declare-fun res!1413823 () Bool)

(assert (=> b!3504908 (=> (not res!1413823) (not e!2170055))))

(assert (=> b!3504908 (= res!1413823 (not lt!1195193))))

(declare-fun b!3504909 () Bool)

(assert (=> b!3504909 (= e!2170056 (matchR!4811 (derivativeStep!3065 (regex!5468 lt!1195076) (head!7371 lt!1195070)) (tail!5480 lt!1195070)))))

(declare-fun b!3504910 () Bool)

(assert (=> b!3504910 (= e!2170055 e!2170059)))

(declare-fun res!1413824 () Bool)

(assert (=> b!3504910 (=> res!1413824 e!2170059)))

(declare-fun call!252972 () Bool)

(assert (=> b!3504910 (= res!1413824 call!252972)))

(declare-fun d!1018421 () Bool)

(assert (=> d!1018421 e!2170058))

(declare-fun c!602866 () Bool)

(assert (=> d!1018421 (= c!602866 ((_ is EmptyExpr!10227) (regex!5468 lt!1195076)))))

(assert (=> d!1018421 (= lt!1195193 e!2170056)))

(declare-fun c!602867 () Bool)

(assert (=> d!1018421 (= c!602867 (isEmpty!21746 lt!1195070))))

(assert (=> d!1018421 (validRegex!4668 (regex!5468 lt!1195076))))

(assert (=> d!1018421 (= (matchR!4811 (regex!5468 lt!1195076) lt!1195070) lt!1195193)))

(declare-fun bm!252967 () Bool)

(assert (=> bm!252967 (= call!252972 (isEmpty!21746 lt!1195070))))

(declare-fun b!3504911 () Bool)

(declare-fun res!1413827 () Bool)

(assert (=> b!3504911 (=> (not res!1413827) (not e!2170061))))

(assert (=> b!3504911 (= res!1413827 (not call!252972))))

(declare-fun b!3504912 () Bool)

(declare-fun res!1413828 () Bool)

(assert (=> b!3504912 (=> res!1413828 e!2170059)))

(assert (=> b!3504912 (= res!1413828 (not (isEmpty!21746 (tail!5480 lt!1195070))))))

(declare-fun b!3504913 () Bool)

(assert (=> b!3504913 (= e!2170058 (= lt!1195193 call!252972))))

(assert (= (and d!1018421 c!602867) b!3504905))

(assert (= (and d!1018421 (not c!602867)) b!3504909))

(assert (= (and d!1018421 c!602866) b!3504913))

(assert (= (and d!1018421 (not c!602866)) b!3504902))

(assert (= (and b!3504902 c!602865) b!3504900))

(assert (= (and b!3504902 (not c!602865)) b!3504904))

(assert (= (and b!3504904 (not res!1413825)) b!3504901))

(assert (= (and b!3504901 res!1413830) b!3504911))

(assert (= (and b!3504911 res!1413827) b!3504906))

(assert (= (and b!3504906 res!1413826) b!3504903))

(assert (= (and b!3504901 (not res!1413829)) b!3504908))

(assert (= (and b!3504908 res!1413823) b!3504910))

(assert (= (and b!3504910 (not res!1413824)) b!3504912))

(assert (= (and b!3504912 (not res!1413828)) b!3504907))

(assert (= (or b!3504913 b!3504911 b!3504910) bm!252967))

(declare-fun m!3942023 () Bool)

(assert (=> b!3504912 m!3942023))

(assert (=> b!3504912 m!3942023))

(declare-fun m!3942025 () Bool)

(assert (=> b!3504912 m!3942025))

(declare-fun m!3942027 () Bool)

(assert (=> b!3504905 m!3942027))

(assert (=> b!3504909 m!3941421))

(assert (=> b!3504909 m!3941421))

(declare-fun m!3942029 () Bool)

(assert (=> b!3504909 m!3942029))

(assert (=> b!3504909 m!3942023))

(assert (=> b!3504909 m!3942029))

(assert (=> b!3504909 m!3942023))

(declare-fun m!3942031 () Bool)

(assert (=> b!3504909 m!3942031))

(declare-fun m!3942033 () Bool)

(assert (=> bm!252967 m!3942033))

(assert (=> b!3504907 m!3941421))

(assert (=> b!3504903 m!3941421))

(assert (=> d!1018421 m!3942033))

(declare-fun m!3942035 () Bool)

(assert (=> d!1018421 m!3942035))

(assert (=> b!3504906 m!3942023))

(assert (=> b!3504906 m!3942023))

(assert (=> b!3504906 m!3942025))

(assert (=> b!3504511 d!1018421))

(declare-fun d!1018423 () Bool)

(assert (=> d!1018423 (= (get!11969 lt!1195063) (v!37044 lt!1195063))))

(assert (=> b!3504511 d!1018423))

(declare-fun d!1018425 () Bool)

(assert (=> d!1018425 (not (matchR!4811 (regex!5468 (rule!8098 separatorToken!241)) lt!1195070))))

(declare-fun lt!1195198 () Unit!52870)

(declare-fun choose!20336 (Regex!10227 List!37429 C!20640) Unit!52870)

(assert (=> d!1018425 (= lt!1195198 (choose!20336 (regex!5468 (rule!8098 separatorToken!241)) lt!1195070 lt!1195073))))

(assert (=> d!1018425 (validRegex!4668 (regex!5468 (rule!8098 separatorToken!241)))))

(assert (=> d!1018425 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!526 (regex!5468 (rule!8098 separatorToken!241)) lt!1195070 lt!1195073) lt!1195198)))

(declare-fun bs!563922 () Bool)

(assert (= bs!563922 d!1018425))

(assert (=> bs!563922 m!3941471))

(declare-fun m!3942053 () Bool)

(assert (=> bs!563922 m!3942053))

(declare-fun m!3942055 () Bool)

(assert (=> bs!563922 m!3942055))

(assert (=> b!3504534 d!1018425))

(declare-fun b!3504921 () Bool)

(declare-fun e!2170071 () Bool)

(declare-fun lt!1195199 () Bool)

(assert (=> b!3504921 (= e!2170071 (not lt!1195199))))

(declare-fun b!3504922 () Bool)

(declare-fun res!1413844 () Bool)

(declare-fun e!2170068 () Bool)

(assert (=> b!3504922 (=> res!1413844 e!2170068)))

(declare-fun e!2170072 () Bool)

(assert (=> b!3504922 (= res!1413844 e!2170072)))

(declare-fun res!1413845 () Bool)

(assert (=> b!3504922 (=> (not res!1413845) (not e!2170072))))

(assert (=> b!3504922 (= res!1413845 lt!1195199)))

(declare-fun b!3504923 () Bool)

(declare-fun e!2170069 () Bool)

(assert (=> b!3504923 (= e!2170069 e!2170071)))

(declare-fun c!602869 () Bool)

(assert (=> b!3504923 (= c!602869 ((_ is EmptyLang!10227) (regex!5468 (rule!8098 separatorToken!241))))))

(declare-fun b!3504924 () Bool)

(assert (=> b!3504924 (= e!2170072 (= (head!7371 lt!1195070) (c!602786 (regex!5468 (rule!8098 separatorToken!241)))))))

(declare-fun b!3504925 () Bool)

(declare-fun res!1413840 () Bool)

(assert (=> b!3504925 (=> res!1413840 e!2170068)))

(assert (=> b!3504925 (= res!1413840 (not ((_ is ElementMatch!10227) (regex!5468 (rule!8098 separatorToken!241)))))))

(assert (=> b!3504925 (= e!2170071 e!2170068)))

(declare-fun b!3504926 () Bool)

(declare-fun e!2170067 () Bool)

(assert (=> b!3504926 (= e!2170067 (nullable!3512 (regex!5468 (rule!8098 separatorToken!241))))))

(declare-fun b!3504927 () Bool)

(declare-fun res!1413841 () Bool)

(assert (=> b!3504927 (=> (not res!1413841) (not e!2170072))))

(assert (=> b!3504927 (= res!1413841 (isEmpty!21746 (tail!5480 lt!1195070)))))

(declare-fun b!3504928 () Bool)

(declare-fun e!2170070 () Bool)

(assert (=> b!3504928 (= e!2170070 (not (= (head!7371 lt!1195070) (c!602786 (regex!5468 (rule!8098 separatorToken!241))))))))

(declare-fun b!3504929 () Bool)

(declare-fun e!2170066 () Bool)

(assert (=> b!3504929 (= e!2170068 e!2170066)))

(declare-fun res!1413838 () Bool)

(assert (=> b!3504929 (=> (not res!1413838) (not e!2170066))))

(assert (=> b!3504929 (= res!1413838 (not lt!1195199))))

(declare-fun b!3504930 () Bool)

(assert (=> b!3504930 (= e!2170067 (matchR!4811 (derivativeStep!3065 (regex!5468 (rule!8098 separatorToken!241)) (head!7371 lt!1195070)) (tail!5480 lt!1195070)))))

(declare-fun b!3504931 () Bool)

(assert (=> b!3504931 (= e!2170066 e!2170070)))

(declare-fun res!1413839 () Bool)

(assert (=> b!3504931 (=> res!1413839 e!2170070)))

(declare-fun call!252973 () Bool)

(assert (=> b!3504931 (= res!1413839 call!252973)))

(declare-fun d!1018429 () Bool)

(assert (=> d!1018429 e!2170069))

(declare-fun c!602870 () Bool)

(assert (=> d!1018429 (= c!602870 ((_ is EmptyExpr!10227) (regex!5468 (rule!8098 separatorToken!241))))))

(assert (=> d!1018429 (= lt!1195199 e!2170067)))

(declare-fun c!602871 () Bool)

(assert (=> d!1018429 (= c!602871 (isEmpty!21746 lt!1195070))))

(assert (=> d!1018429 (validRegex!4668 (regex!5468 (rule!8098 separatorToken!241)))))

(assert (=> d!1018429 (= (matchR!4811 (regex!5468 (rule!8098 separatorToken!241)) lt!1195070) lt!1195199)))

(declare-fun bm!252968 () Bool)

(assert (=> bm!252968 (= call!252973 (isEmpty!21746 lt!1195070))))

(declare-fun b!3504932 () Bool)

(declare-fun res!1413842 () Bool)

(assert (=> b!3504932 (=> (not res!1413842) (not e!2170072))))

(assert (=> b!3504932 (= res!1413842 (not call!252973))))

(declare-fun b!3504933 () Bool)

(declare-fun res!1413843 () Bool)

(assert (=> b!3504933 (=> res!1413843 e!2170070)))

(assert (=> b!3504933 (= res!1413843 (not (isEmpty!21746 (tail!5480 lt!1195070))))))

(declare-fun b!3504934 () Bool)

(assert (=> b!3504934 (= e!2170069 (= lt!1195199 call!252973))))

(assert (= (and d!1018429 c!602871) b!3504926))

(assert (= (and d!1018429 (not c!602871)) b!3504930))

(assert (= (and d!1018429 c!602870) b!3504934))

(assert (= (and d!1018429 (not c!602870)) b!3504923))

(assert (= (and b!3504923 c!602869) b!3504921))

(assert (= (and b!3504923 (not c!602869)) b!3504925))

(assert (= (and b!3504925 (not res!1413840)) b!3504922))

(assert (= (and b!3504922 res!1413845) b!3504932))

(assert (= (and b!3504932 res!1413842) b!3504927))

(assert (= (and b!3504927 res!1413841) b!3504924))

(assert (= (and b!3504922 (not res!1413844)) b!3504929))

(assert (= (and b!3504929 res!1413838) b!3504931))

(assert (= (and b!3504931 (not res!1413839)) b!3504933))

(assert (= (and b!3504933 (not res!1413843)) b!3504928))

(assert (= (or b!3504934 b!3504932 b!3504931) bm!252968))

(assert (=> b!3504933 m!3942023))

(assert (=> b!3504933 m!3942023))

(assert (=> b!3504933 m!3942025))

(declare-fun m!3942057 () Bool)

(assert (=> b!3504926 m!3942057))

(assert (=> b!3504930 m!3941421))

(assert (=> b!3504930 m!3941421))

(declare-fun m!3942059 () Bool)

(assert (=> b!3504930 m!3942059))

(assert (=> b!3504930 m!3942023))

(assert (=> b!3504930 m!3942059))

(assert (=> b!3504930 m!3942023))

(declare-fun m!3942061 () Bool)

(assert (=> b!3504930 m!3942061))

(assert (=> bm!252968 m!3942033))

(assert (=> b!3504928 m!3941421))

(assert (=> b!3504924 m!3941421))

(assert (=> d!1018429 m!3942033))

(assert (=> d!1018429 m!3942055))

(assert (=> b!3504927 m!3942023))

(assert (=> b!3504927 m!3942023))

(assert (=> b!3504927 m!3942025))

(assert (=> b!3504534 d!1018429))

(declare-fun d!1018431 () Bool)

(declare-fun e!2170075 () Bool)

(assert (=> d!1018431 e!2170075))

(declare-fun res!1413849 () Bool)

(assert (=> d!1018431 (=> (not res!1413849) (not e!2170075))))

(declare-fun lt!1195200 () List!37429)

(assert (=> d!1018431 (= res!1413849 (= (content!5247 lt!1195200) ((_ map or) (content!5247 lt!1195062) (content!5247 Nil!37305))))))

(declare-fun e!2170074 () List!37429)

(assert (=> d!1018431 (= lt!1195200 e!2170074)))

(declare-fun c!602872 () Bool)

(assert (=> d!1018431 (= c!602872 ((_ is Nil!37305) lt!1195062))))

(assert (=> d!1018431 (= (++!9231 lt!1195062 Nil!37305) lt!1195200)))

(declare-fun b!3504938 () Bool)

(assert (=> b!3504938 (= e!2170074 (Cons!37305 (h!42725 lt!1195062) (++!9231 (t!279240 lt!1195062) Nil!37305)))))

(declare-fun b!3504937 () Bool)

(assert (=> b!3504937 (= e!2170074 Nil!37305)))

(declare-fun b!3504940 () Bool)

(assert (=> b!3504940 (= e!2170075 (or (not (= Nil!37305 Nil!37305)) (= lt!1195200 lt!1195062)))))

(declare-fun b!3504939 () Bool)

(declare-fun res!1413848 () Bool)

(assert (=> b!3504939 (=> (not res!1413848) (not e!2170075))))

(assert (=> b!3504939 (= res!1413848 (= (size!28365 lt!1195200) (+ (size!28365 lt!1195062) (size!28365 Nil!37305))))))

(assert (= (and d!1018431 c!602872) b!3504937))

(assert (= (and d!1018431 (not c!602872)) b!3504938))

(assert (= (and d!1018431 res!1413849) b!3504939))

(assert (= (and b!3504939 res!1413848) b!3504940))

(declare-fun m!3942069 () Bool)

(assert (=> d!1018431 m!3942069))

(assert (=> d!1018431 m!3941939))

(declare-fun m!3942071 () Bool)

(assert (=> d!1018431 m!3942071))

(declare-fun m!3942073 () Bool)

(assert (=> b!3504938 m!3942073))

(declare-fun m!3942075 () Bool)

(assert (=> b!3504939 m!3942075))

(assert (=> b!3504939 m!3941945))

(declare-fun m!3942077 () Bool)

(assert (=> b!3504939 m!3942077))

(assert (=> b!3504513 d!1018431))

(declare-fun d!1018435 () Bool)

(declare-fun lt!1195202 () Bool)

(declare-fun e!2170076 () Bool)

(assert (=> d!1018435 (= lt!1195202 e!2170076)))

(declare-fun res!1413851 () Bool)

(assert (=> d!1018435 (=> (not res!1413851) (not e!2170076))))

(assert (=> d!1018435 (= res!1413851 (= (list!13633 (_1!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494)))))) (list!13633 (singletonSeq!2564 (h!42727 tokens!494)))))))

(declare-fun e!2170077 () Bool)

(assert (=> d!1018435 (= lt!1195202 e!2170077)))

(declare-fun res!1413850 () Bool)

(assert (=> d!1018435 (=> (not res!1413850) (not e!2170077))))

(declare-fun lt!1195201 () tuple2!37112)

(assert (=> d!1018435 (= res!1413850 (= (size!28364 (_1!21690 lt!1195201)) 1))))

(assert (=> d!1018435 (= lt!1195201 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494)))))))

(assert (=> d!1018435 (not (isEmpty!21745 rules!2135))))

(assert (=> d!1018435 (= (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 tokens!494)) lt!1195202)))

(declare-fun b!3504941 () Bool)

(declare-fun res!1413852 () Bool)

(assert (=> b!3504941 (=> (not res!1413852) (not e!2170077))))

(assert (=> b!3504941 (= res!1413852 (= (apply!8864 (_1!21690 lt!1195201) 0) (h!42727 tokens!494)))))

(declare-fun b!3504942 () Bool)

(assert (=> b!3504942 (= e!2170077 (isEmpty!21744 (_2!21690 lt!1195201)))))

(declare-fun b!3504943 () Bool)

(assert (=> b!3504943 (= e!2170076 (isEmpty!21744 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494)))))))))

(assert (= (and d!1018435 res!1413850) b!3504941))

(assert (= (and b!3504941 res!1413852) b!3504942))

(assert (= (and d!1018435 res!1413851) b!3504943))

(declare-fun m!3942079 () Bool)

(assert (=> d!1018435 m!3942079))

(assert (=> d!1018435 m!3941345))

(assert (=> d!1018435 m!3941517))

(declare-fun m!3942081 () Bool)

(assert (=> d!1018435 m!3942081))

(assert (=> d!1018435 m!3941345))

(declare-fun m!3942083 () Bool)

(assert (=> d!1018435 m!3942083))

(assert (=> d!1018435 m!3942083))

(declare-fun m!3942085 () Bool)

(assert (=> d!1018435 m!3942085))

(assert (=> d!1018435 m!3941345))

(declare-fun m!3942087 () Bool)

(assert (=> d!1018435 m!3942087))

(declare-fun m!3942089 () Bool)

(assert (=> b!3504941 m!3942089))

(declare-fun m!3942091 () Bool)

(assert (=> b!3504942 m!3942091))

(assert (=> b!3504943 m!3941345))

(assert (=> b!3504943 m!3941345))

(assert (=> b!3504943 m!3942083))

(assert (=> b!3504943 m!3942083))

(assert (=> b!3504943 m!3942085))

(declare-fun m!3942093 () Bool)

(assert (=> b!3504943 m!3942093))

(assert (=> b!3504512 d!1018435))

(declare-fun d!1018437 () Bool)

(declare-fun dynLambda!15854 (Int Token!10302) Bool)

(assert (=> d!1018437 (dynLambda!15854 lambda!122514 (h!42727 (t!279242 tokens!494)))))

(declare-fun lt!1195207 () Unit!52870)

(declare-fun choose!20337 (List!37431 Int Token!10302) Unit!52870)

(assert (=> d!1018437 (= lt!1195207 (choose!20337 tokens!494 lambda!122514 (h!42727 (t!279242 tokens!494))))))

(declare-fun e!2170082 () Bool)

(assert (=> d!1018437 e!2170082))

(declare-fun res!1413857 () Bool)

(assert (=> d!1018437 (=> (not res!1413857) (not e!2170082))))

(assert (=> d!1018437 (= res!1413857 (forall!8003 tokens!494 lambda!122514))))

(assert (=> d!1018437 (= (forallContained!1415 tokens!494 lambda!122514 (h!42727 (t!279242 tokens!494))) lt!1195207)))

(declare-fun b!3504948 () Bool)

(declare-fun contains!6982 (List!37431 Token!10302) Bool)

(assert (=> b!3504948 (= e!2170082 (contains!6982 tokens!494 (h!42727 (t!279242 tokens!494))))))

(assert (= (and d!1018437 res!1413857) b!3504948))

(declare-fun b_lambda!101905 () Bool)

(assert (=> (not b_lambda!101905) (not d!1018437)))

(declare-fun m!3942097 () Bool)

(assert (=> d!1018437 m!3942097))

(declare-fun m!3942099 () Bool)

(assert (=> d!1018437 m!3942099))

(assert (=> d!1018437 m!3941381))

(declare-fun m!3942105 () Bool)

(assert (=> b!3504948 m!3942105))

(assert (=> b!3504514 d!1018437))

(declare-fun d!1018439 () Bool)

(assert (=> d!1018439 (dynLambda!15854 lambda!122514 (h!42727 tokens!494))))

(declare-fun lt!1195209 () Unit!52870)

(assert (=> d!1018439 (= lt!1195209 (choose!20337 tokens!494 lambda!122514 (h!42727 tokens!494)))))

(declare-fun e!2170084 () Bool)

(assert (=> d!1018439 e!2170084))

(declare-fun res!1413859 () Bool)

(assert (=> d!1018439 (=> (not res!1413859) (not e!2170084))))

(assert (=> d!1018439 (= res!1413859 (forall!8003 tokens!494 lambda!122514))))

(assert (=> d!1018439 (= (forallContained!1415 tokens!494 lambda!122514 (h!42727 tokens!494)) lt!1195209)))

(declare-fun b!3504950 () Bool)

(assert (=> b!3504950 (= e!2170084 (contains!6982 tokens!494 (h!42727 tokens!494)))))

(assert (= (and d!1018439 res!1413859) b!3504950))

(declare-fun b_lambda!101907 () Bool)

(assert (=> (not b_lambda!101907) (not d!1018439)))

(declare-fun m!3942107 () Bool)

(assert (=> d!1018439 m!3942107))

(declare-fun m!3942109 () Bool)

(assert (=> d!1018439 m!3942109))

(assert (=> d!1018439 m!3941381))

(declare-fun m!3942111 () Bool)

(assert (=> b!3504950 m!3942111))

(assert (=> b!3504514 d!1018439))

(declare-fun d!1018443 () Bool)

(declare-fun res!1413860 () Bool)

(declare-fun e!2170085 () Bool)

(assert (=> d!1018443 (=> (not res!1413860) (not e!2170085))))

(assert (=> d!1018443 (= res!1413860 (not (isEmpty!21746 (originalCharacters!6182 (h!42727 tokens!494)))))))

(assert (=> d!1018443 (= (inv!50523 (h!42727 tokens!494)) e!2170085)))

(declare-fun b!3504951 () Bool)

(declare-fun res!1413861 () Bool)

(assert (=> b!3504951 (=> (not res!1413861) (not e!2170085))))

(assert (=> b!3504951 (= res!1413861 (= (originalCharacters!6182 (h!42727 tokens!494)) (list!13629 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494))))))))

(declare-fun b!3504952 () Bool)

(assert (=> b!3504952 (= e!2170085 (= (size!28363 (h!42727 tokens!494)) (size!28365 (originalCharacters!6182 (h!42727 tokens!494)))))))

(assert (= (and d!1018443 res!1413860) b!3504951))

(assert (= (and b!3504951 res!1413861) b!3504952))

(declare-fun b_lambda!101909 () Bool)

(assert (=> (not b_lambda!101909) (not b!3504951)))

(assert (=> b!3504951 t!279263))

(declare-fun b_and!248735 () Bool)

(assert (= b_and!248723 (and (=> t!279263 result!238632) b_and!248735)))

(assert (=> b!3504951 t!279265))

(declare-fun b_and!248737 () Bool)

(assert (= b_and!248725 (and (=> t!279265 result!238636) b_and!248737)))

(assert (=> b!3504951 t!279267))

(declare-fun b_and!248739 () Bool)

(assert (= b_and!248727 (and (=> t!279267 result!238638) b_and!248739)))

(declare-fun m!3942113 () Bool)

(assert (=> d!1018443 m!3942113))

(assert (=> b!3504951 m!3941821))

(assert (=> b!3504951 m!3941821))

(declare-fun m!3942115 () Bool)

(assert (=> b!3504951 m!3942115))

(declare-fun m!3942117 () Bool)

(assert (=> b!3504952 m!3942117))

(assert (=> b!3504535 d!1018443))

(declare-fun d!1018445 () Bool)

(declare-fun lt!1195210 () Bool)

(assert (=> d!1018445 (= lt!1195210 (isEmpty!21746 (list!13629 (_2!21690 lt!1195068))))))

(assert (=> d!1018445 (= lt!1195210 (isEmpty!21753 (c!602787 (_2!21690 lt!1195068))))))

(assert (=> d!1018445 (= (isEmpty!21744 (_2!21690 lt!1195068)) lt!1195210)))

(declare-fun bs!563923 () Bool)

(assert (= bs!563923 d!1018445))

(declare-fun m!3942119 () Bool)

(assert (=> bs!563923 m!3942119))

(assert (=> bs!563923 m!3942119))

(declare-fun m!3942121 () Bool)

(assert (=> bs!563923 m!3942121))

(declare-fun m!3942123 () Bool)

(assert (=> bs!563923 m!3942123))

(assert (=> b!3504494 d!1018445))

(declare-fun d!1018447 () Bool)

(declare-fun e!2170087 () Bool)

(assert (=> d!1018447 e!2170087))

(declare-fun res!1413863 () Bool)

(assert (=> d!1018447 (=> (not res!1413863) (not e!2170087))))

(declare-fun lt!1195211 () List!37429)

(assert (=> d!1018447 (= res!1413863 (= (content!5247 lt!1195211) ((_ map or) (content!5247 (++!9231 lt!1195055 lt!1195070)) (content!5247 lt!1195084))))))

(declare-fun e!2170086 () List!37429)

(assert (=> d!1018447 (= lt!1195211 e!2170086)))

(declare-fun c!602873 () Bool)

(assert (=> d!1018447 (= c!602873 ((_ is Nil!37305) (++!9231 lt!1195055 lt!1195070)))))

(assert (=> d!1018447 (= (++!9231 (++!9231 lt!1195055 lt!1195070) lt!1195084) lt!1195211)))

(declare-fun b!3504954 () Bool)

(assert (=> b!3504954 (= e!2170086 (Cons!37305 (h!42725 (++!9231 lt!1195055 lt!1195070)) (++!9231 (t!279240 (++!9231 lt!1195055 lt!1195070)) lt!1195084)))))

(declare-fun b!3504953 () Bool)

(assert (=> b!3504953 (= e!2170086 lt!1195084)))

(declare-fun b!3504956 () Bool)

(assert (=> b!3504956 (= e!2170087 (or (not (= lt!1195084 Nil!37305)) (= lt!1195211 (++!9231 lt!1195055 lt!1195070))))))

(declare-fun b!3504955 () Bool)

(declare-fun res!1413862 () Bool)

(assert (=> b!3504955 (=> (not res!1413862) (not e!2170087))))

(assert (=> b!3504955 (= res!1413862 (= (size!28365 lt!1195211) (+ (size!28365 (++!9231 lt!1195055 lt!1195070)) (size!28365 lt!1195084))))))

(assert (= (and d!1018447 c!602873) b!3504953))

(assert (= (and d!1018447 (not c!602873)) b!3504954))

(assert (= (and d!1018447 res!1413863) b!3504955))

(assert (= (and b!3504955 res!1413862) b!3504956))

(declare-fun m!3942125 () Bool)

(assert (=> d!1018447 m!3942125))

(assert (=> d!1018447 m!3941479))

(declare-fun m!3942127 () Bool)

(assert (=> d!1018447 m!3942127))

(assert (=> d!1018447 m!3941889))

(declare-fun m!3942129 () Bool)

(assert (=> b!3504954 m!3942129))

(declare-fun m!3942131 () Bool)

(assert (=> b!3504955 m!3942131))

(assert (=> b!3504955 m!3941479))

(declare-fun m!3942133 () Bool)

(assert (=> b!3504955 m!3942133))

(assert (=> b!3504955 m!3941897))

(assert (=> b!3504515 d!1018447))

(declare-fun d!1018449 () Bool)

(declare-fun e!2170089 () Bool)

(assert (=> d!1018449 e!2170089))

(declare-fun res!1413865 () Bool)

(assert (=> d!1018449 (=> (not res!1413865) (not e!2170089))))

(declare-fun lt!1195212 () List!37429)

(assert (=> d!1018449 (= res!1413865 (= (content!5247 lt!1195212) ((_ map or) (content!5247 lt!1195055) (content!5247 lt!1195070))))))

(declare-fun e!2170088 () List!37429)

(assert (=> d!1018449 (= lt!1195212 e!2170088)))

(declare-fun c!602874 () Bool)

(assert (=> d!1018449 (= c!602874 ((_ is Nil!37305) lt!1195055))))

(assert (=> d!1018449 (= (++!9231 lt!1195055 lt!1195070) lt!1195212)))

(declare-fun b!3504958 () Bool)

(assert (=> b!3504958 (= e!2170088 (Cons!37305 (h!42725 lt!1195055) (++!9231 (t!279240 lt!1195055) lt!1195070)))))

(declare-fun b!3504957 () Bool)

(assert (=> b!3504957 (= e!2170088 lt!1195070)))

(declare-fun b!3504960 () Bool)

(assert (=> b!3504960 (= e!2170089 (or (not (= lt!1195070 Nil!37305)) (= lt!1195212 lt!1195055)))))

(declare-fun b!3504959 () Bool)

(declare-fun res!1413864 () Bool)

(assert (=> b!3504959 (=> (not res!1413864) (not e!2170089))))

(assert (=> b!3504959 (= res!1413864 (= (size!28365 lt!1195212) (+ (size!28365 lt!1195055) (size!28365 lt!1195070))))))

(assert (= (and d!1018449 c!602874) b!3504957))

(assert (= (and d!1018449 (not c!602874)) b!3504958))

(assert (= (and d!1018449 res!1413865) b!3504959))

(assert (= (and b!3504959 res!1413864) b!3504960))

(declare-fun m!3942135 () Bool)

(assert (=> d!1018449 m!3942135))

(declare-fun m!3942137 () Bool)

(assert (=> d!1018449 m!3942137))

(assert (=> d!1018449 m!3941887))

(declare-fun m!3942139 () Bool)

(assert (=> b!3504958 m!3942139))

(declare-fun m!3942141 () Bool)

(assert (=> b!3504959 m!3942141))

(assert (=> b!3504959 m!3941467))

(assert (=> b!3504959 m!3941895))

(assert (=> b!3504515 d!1018449))

(declare-fun d!1018451 () Bool)

(declare-fun isEmpty!21756 (Option!7593) Bool)

(assert (=> d!1018451 (= (isDefined!5854 lt!1195079) (not (isEmpty!21756 lt!1195079)))))

(declare-fun bs!563924 () Bool)

(assert (= bs!563924 d!1018451))

(declare-fun m!3942143 () Bool)

(assert (=> bs!563924 m!3942143))

(assert (=> b!3504517 d!1018451))

(declare-fun d!1018453 () Bool)

(declare-fun lt!1195234 () BalanceConc!22236)

(declare-fun printListTailRec!712 (LexerInterface!5057 List!37431 List!37429) List!37429)

(declare-fun dropList!1229 (BalanceConc!22238 Int) List!37431)

(assert (=> d!1018453 (= (list!13629 lt!1195234) (printListTailRec!712 thiss!18206 (dropList!1229 lt!1195078 0) (list!13629 (BalanceConc!22237 Empty!11311))))))

(declare-fun e!2170097 () BalanceConc!22236)

(assert (=> d!1018453 (= lt!1195234 e!2170097)))

(declare-fun c!602877 () Bool)

(assert (=> d!1018453 (= c!602877 (>= 0 (size!28364 lt!1195078)))))

(declare-fun e!2170098 () Bool)

(assert (=> d!1018453 e!2170098))

(declare-fun res!1413874 () Bool)

(assert (=> d!1018453 (=> (not res!1413874) (not e!2170098))))

(assert (=> d!1018453 (= res!1413874 (>= 0 0))))

(assert (=> d!1018453 (= (printTailRec!1552 thiss!18206 lt!1195078 0 (BalanceConc!22237 Empty!11311)) lt!1195234)))

(declare-fun b!3504973 () Bool)

(assert (=> b!3504973 (= e!2170098 (<= 0 (size!28364 lt!1195078)))))

(declare-fun b!3504974 () Bool)

(assert (=> b!3504974 (= e!2170097 (BalanceConc!22237 Empty!11311))))

(declare-fun b!3504975 () Bool)

(declare-fun ++!9233 (BalanceConc!22236 BalanceConc!22236) BalanceConc!22236)

(assert (=> b!3504975 (= e!2170097 (printTailRec!1552 thiss!18206 lt!1195078 (+ 0 1) (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195078 0)))))))

(declare-fun lt!1195235 () List!37431)

(assert (=> b!3504975 (= lt!1195235 (list!13633 lt!1195078))))

(declare-fun lt!1195236 () Unit!52870)

(declare-fun lemmaDropApply!1187 (List!37431 Int) Unit!52870)

(assert (=> b!3504975 (= lt!1195236 (lemmaDropApply!1187 lt!1195235 0))))

(declare-fun head!7373 (List!37431) Token!10302)

(declare-fun drop!2041 (List!37431 Int) List!37431)

(declare-fun apply!8868 (List!37431 Int) Token!10302)

(assert (=> b!3504975 (= (head!7373 (drop!2041 lt!1195235 0)) (apply!8868 lt!1195235 0))))

(declare-fun lt!1195233 () Unit!52870)

(assert (=> b!3504975 (= lt!1195233 lt!1195236)))

(declare-fun lt!1195231 () List!37431)

(assert (=> b!3504975 (= lt!1195231 (list!13633 lt!1195078))))

(declare-fun lt!1195232 () Unit!52870)

(declare-fun lemmaDropTail!1071 (List!37431 Int) Unit!52870)

(assert (=> b!3504975 (= lt!1195232 (lemmaDropTail!1071 lt!1195231 0))))

(declare-fun tail!5481 (List!37431) List!37431)

(assert (=> b!3504975 (= (tail!5481 (drop!2041 lt!1195231 0)) (drop!2041 lt!1195231 (+ 0 1)))))

(declare-fun lt!1195230 () Unit!52870)

(assert (=> b!3504975 (= lt!1195230 lt!1195232)))

(assert (= (and d!1018453 res!1413874) b!3504973))

(assert (= (and d!1018453 c!602877) b!3504974))

(assert (= (and d!1018453 (not c!602877)) b!3504975))

(declare-fun m!3942153 () Bool)

(assert (=> d!1018453 m!3942153))

(assert (=> d!1018453 m!3942153))

(declare-fun m!3942155 () Bool)

(assert (=> d!1018453 m!3942155))

(declare-fun m!3942157 () Bool)

(assert (=> d!1018453 m!3942157))

(declare-fun m!3942159 () Bool)

(assert (=> d!1018453 m!3942159))

(declare-fun m!3942161 () Bool)

(assert (=> d!1018453 m!3942161))

(assert (=> d!1018453 m!3942155))

(assert (=> b!3504973 m!3942161))

(declare-fun m!3942163 () Bool)

(assert (=> b!3504975 m!3942163))

(declare-fun m!3942165 () Bool)

(assert (=> b!3504975 m!3942165))

(declare-fun m!3942167 () Bool)

(assert (=> b!3504975 m!3942167))

(assert (=> b!3504975 m!3942163))

(declare-fun m!3942169 () Bool)

(assert (=> b!3504975 m!3942169))

(declare-fun m!3942171 () Bool)

(assert (=> b!3504975 m!3942171))

(assert (=> b!3504975 m!3942167))

(declare-fun m!3942173 () Bool)

(assert (=> b!3504975 m!3942173))

(declare-fun m!3942175 () Bool)

(assert (=> b!3504975 m!3942175))

(declare-fun m!3942177 () Bool)

(assert (=> b!3504975 m!3942177))

(declare-fun m!3942179 () Bool)

(assert (=> b!3504975 m!3942179))

(assert (=> b!3504975 m!3942171))

(declare-fun m!3942181 () Bool)

(assert (=> b!3504975 m!3942181))

(assert (=> b!3504975 m!3942177))

(assert (=> b!3504975 m!3942169))

(declare-fun m!3942183 () Bool)

(assert (=> b!3504975 m!3942183))

(declare-fun m!3942185 () Bool)

(assert (=> b!3504975 m!3942185))

(declare-fun m!3942187 () Bool)

(assert (=> b!3504975 m!3942187))

(assert (=> b!3504517 d!1018453))

(declare-fun d!1018459 () Bool)

(declare-fun lt!1195239 () Int)

(declare-fun size!28370 (List!37431) Int)

(assert (=> d!1018459 (= lt!1195239 (size!28370 (list!13633 (_1!21690 lt!1195061))))))

(declare-fun size!28371 (Conc!11312) Int)

(assert (=> d!1018459 (= lt!1195239 (size!28371 (c!602788 (_1!21690 lt!1195061))))))

(assert (=> d!1018459 (= (size!28364 (_1!21690 lt!1195061)) lt!1195239)))

(declare-fun bs!563925 () Bool)

(assert (= bs!563925 d!1018459))

(declare-fun m!3942189 () Bool)

(assert (=> bs!563925 m!3942189))

(assert (=> bs!563925 m!3942189))

(declare-fun m!3942191 () Bool)

(assert (=> bs!563925 m!3942191))

(declare-fun m!3942193 () Bool)

(assert (=> bs!563925 m!3942193))

(assert (=> b!3504517 d!1018459))

(declare-fun b!3504994 () Bool)

(declare-fun res!1413892 () Bool)

(declare-fun e!2170109 () Bool)

(assert (=> b!3504994 (=> (not res!1413892) (not e!2170109))))

(declare-fun lt!1195251 () Option!7594)

(declare-fun get!11971 (Option!7594) tuple2!37114)

(assert (=> b!3504994 (= res!1413892 (= (value!176298 (_1!21691 (get!11971 lt!1195251))) (apply!8865 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))) (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195251)))))))))

(declare-fun b!3504995 () Bool)

(declare-fun e!2170110 () Option!7594)

(declare-datatypes ((tuple2!37122 0))(
  ( (tuple2!37123 (_1!21695 List!37429) (_2!21695 List!37429)) )
))
(declare-fun lt!1195254 () tuple2!37122)

(assert (=> b!3504995 (= e!2170110 (Some!7593 (tuple2!37115 (Token!10303 (apply!8865 (transformation!5468 (rule!8098 (h!42727 tokens!494))) (seqFromList!3990 (_1!21695 lt!1195254))) (rule!8098 (h!42727 tokens!494)) (size!28367 (seqFromList!3990 (_1!21695 lt!1195254))) (_1!21695 lt!1195254)) (_2!21695 lt!1195254))))))

(declare-fun lt!1195250 () Unit!52870)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!906 (Regex!10227 List!37429) Unit!52870)

(assert (=> b!3504995 (= lt!1195250 (longestMatchIsAcceptedByMatchOrIsEmpty!906 (regex!5468 (rule!8098 (h!42727 tokens!494))) lt!1195055))))

(declare-fun res!1413890 () Bool)

(declare-fun findLongestMatchInner!933 (Regex!10227 List!37429 Int List!37429 List!37429 Int) tuple2!37122)

(assert (=> b!3504995 (= res!1413890 (isEmpty!21746 (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))))))

(declare-fun e!2170108 () Bool)

(assert (=> b!3504995 (=> res!1413890 e!2170108)))

(assert (=> b!3504995 e!2170108))

(declare-fun lt!1195253 () Unit!52870)

(assert (=> b!3504995 (= lt!1195253 lt!1195250)))

(declare-fun lt!1195252 () Unit!52870)

(declare-fun lemmaSemiInverse!1283 (TokenValueInjection!10824 BalanceConc!22236) Unit!52870)

(assert (=> b!3504995 (= lt!1195252 (lemmaSemiInverse!1283 (transformation!5468 (rule!8098 (h!42727 tokens!494))) (seqFromList!3990 (_1!21695 lt!1195254))))))

(declare-fun b!3504996 () Bool)

(assert (=> b!3504996 (= e!2170108 (matchR!4811 (regex!5468 (rule!8098 (h!42727 tokens!494))) (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))))))

(declare-fun b!3504997 () Bool)

(assert (=> b!3504997 (= e!2170109 (= (size!28363 (_1!21691 (get!11971 lt!1195251))) (size!28365 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195251))))))))

(declare-fun b!3504998 () Bool)

(declare-fun res!1413891 () Bool)

(assert (=> b!3504998 (=> (not res!1413891) (not e!2170109))))

(assert (=> b!3504998 (= res!1413891 (= (++!9231 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251)))) (_2!21691 (get!11971 lt!1195251))) lt!1195055))))

(declare-fun b!3504999 () Bool)

(declare-fun res!1413889 () Bool)

(assert (=> b!3504999 (=> (not res!1413889) (not e!2170109))))

(assert (=> b!3504999 (= res!1413889 (< (size!28365 (_2!21691 (get!11971 lt!1195251))) (size!28365 lt!1195055)))))

(declare-fun b!3505001 () Bool)

(assert (=> b!3505001 (= e!2170110 None!7593)))

(declare-fun b!3505002 () Bool)

(declare-fun e!2170107 () Bool)

(assert (=> b!3505002 (= e!2170107 e!2170109)))

(declare-fun res!1413893 () Bool)

(assert (=> b!3505002 (=> (not res!1413893) (not e!2170109))))

(assert (=> b!3505002 (= res!1413893 (matchR!4811 (regex!5468 (rule!8098 (h!42727 tokens!494))) (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))))))

(declare-fun d!1018461 () Bool)

(assert (=> d!1018461 e!2170107))

(declare-fun res!1413895 () Bool)

(assert (=> d!1018461 (=> res!1413895 e!2170107)))

(declare-fun isEmpty!21757 (Option!7594) Bool)

(assert (=> d!1018461 (= res!1413895 (isEmpty!21757 lt!1195251))))

(assert (=> d!1018461 (= lt!1195251 e!2170110)))

(declare-fun c!602880 () Bool)

(assert (=> d!1018461 (= c!602880 (isEmpty!21746 (_1!21695 lt!1195254)))))

(declare-fun findLongestMatch!848 (Regex!10227 List!37429) tuple2!37122)

(assert (=> d!1018461 (= lt!1195254 (findLongestMatch!848 (regex!5468 (rule!8098 (h!42727 tokens!494))) lt!1195055))))

(declare-fun ruleValid!1764 (LexerInterface!5057 Rule!10736) Bool)

(assert (=> d!1018461 (ruleValid!1764 thiss!18206 (rule!8098 (h!42727 tokens!494)))))

(assert (=> d!1018461 (= (maxPrefixOneRule!1764 thiss!18206 (rule!8098 (h!42727 tokens!494)) lt!1195055) lt!1195251)))

(declare-fun b!3505000 () Bool)

(declare-fun res!1413894 () Bool)

(assert (=> b!3505000 (=> (not res!1413894) (not e!2170109))))

(assert (=> b!3505000 (= res!1413894 (= (rule!8098 (_1!21691 (get!11971 lt!1195251))) (rule!8098 (h!42727 tokens!494))))))

(assert (= (and d!1018461 c!602880) b!3505001))

(assert (= (and d!1018461 (not c!602880)) b!3504995))

(assert (= (and b!3504995 (not res!1413890)) b!3504996))

(assert (= (and d!1018461 (not res!1413895)) b!3505002))

(assert (= (and b!3505002 res!1413893) b!3504998))

(assert (= (and b!3504998 res!1413891) b!3504999))

(assert (= (and b!3504999 res!1413889) b!3505000))

(assert (= (and b!3505000 res!1413894) b!3504994))

(assert (= (and b!3504994 res!1413892) b!3504997))

(declare-fun m!3942195 () Bool)

(assert (=> b!3504995 m!3942195))

(declare-fun m!3942197 () Bool)

(assert (=> b!3504995 m!3942197))

(assert (=> b!3504995 m!3942195))

(declare-fun m!3942199 () Bool)

(assert (=> b!3504995 m!3942199))

(declare-fun m!3942201 () Bool)

(assert (=> b!3504995 m!3942201))

(assert (=> b!3504995 m!3942077))

(assert (=> b!3504995 m!3941467))

(declare-fun m!3942203 () Bool)

(assert (=> b!3504995 m!3942203))

(assert (=> b!3504995 m!3942077))

(declare-fun m!3942205 () Bool)

(assert (=> b!3504995 m!3942205))

(assert (=> b!3504995 m!3942195))

(declare-fun m!3942207 () Bool)

(assert (=> b!3504995 m!3942207))

(assert (=> b!3504995 m!3942195))

(assert (=> b!3504995 m!3941467))

(declare-fun m!3942209 () Bool)

(assert (=> b!3504997 m!3942209))

(declare-fun m!3942211 () Bool)

(assert (=> b!3504997 m!3942211))

(declare-fun m!3942213 () Bool)

(assert (=> d!1018461 m!3942213))

(declare-fun m!3942215 () Bool)

(assert (=> d!1018461 m!3942215))

(declare-fun m!3942217 () Bool)

(assert (=> d!1018461 m!3942217))

(declare-fun m!3942219 () Bool)

(assert (=> d!1018461 m!3942219))

(assert (=> b!3504999 m!3942209))

(declare-fun m!3942221 () Bool)

(assert (=> b!3504999 m!3942221))

(assert (=> b!3504999 m!3941467))

(assert (=> b!3504998 m!3942209))

(declare-fun m!3942223 () Bool)

(assert (=> b!3504998 m!3942223))

(assert (=> b!3504998 m!3942223))

(declare-fun m!3942227 () Bool)

(assert (=> b!3504998 m!3942227))

(assert (=> b!3504998 m!3942227))

(declare-fun m!3942229 () Bool)

(assert (=> b!3504998 m!3942229))

(assert (=> b!3504996 m!3942077))

(assert (=> b!3504996 m!3941467))

(assert (=> b!3504996 m!3942077))

(assert (=> b!3504996 m!3941467))

(assert (=> b!3504996 m!3942203))

(declare-fun m!3942231 () Bool)

(assert (=> b!3504996 m!3942231))

(assert (=> b!3504994 m!3942209))

(declare-fun m!3942233 () Bool)

(assert (=> b!3504994 m!3942233))

(assert (=> b!3504994 m!3942233))

(declare-fun m!3942235 () Bool)

(assert (=> b!3504994 m!3942235))

(assert (=> b!3505000 m!3942209))

(assert (=> b!3505002 m!3942209))

(assert (=> b!3505002 m!3942223))

(assert (=> b!3505002 m!3942223))

(assert (=> b!3505002 m!3942227))

(assert (=> b!3505002 m!3942227))

(declare-fun m!3942237 () Bool)

(assert (=> b!3505002 m!3942237))

(assert (=> b!3504517 d!1018461))

(declare-fun d!1018465 () Bool)

(assert (=> d!1018465 (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 (t!279242 tokens!494)))))

(declare-fun lt!1195304 () Unit!52870)

(declare-fun choose!20338 (LexerInterface!5057 List!37430 List!37431 Token!10302) Unit!52870)

(assert (=> d!1018465 (= lt!1195304 (choose!20338 thiss!18206 rules!2135 tokens!494 (h!42727 (t!279242 tokens!494))))))

(assert (=> d!1018465 (not (isEmpty!21745 rules!2135))))

(assert (=> d!1018465 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1046 thiss!18206 rules!2135 tokens!494 (h!42727 (t!279242 tokens!494))) lt!1195304)))

(declare-fun bs!563930 () Bool)

(assert (= bs!563930 d!1018465))

(assert (=> bs!563930 m!3941447))

(declare-fun m!3942401 () Bool)

(assert (=> bs!563930 m!3942401))

(assert (=> bs!563930 m!3941517))

(assert (=> b!3504517 d!1018465))

(declare-fun d!1018487 () Bool)

(declare-fun e!2170154 () Bool)

(assert (=> d!1018487 e!2170154))

(declare-fun res!1413933 () Bool)

(assert (=> d!1018487 (=> (not res!1413933) (not e!2170154))))

(declare-fun lt!1195308 () BalanceConc!22238)

(assert (=> d!1018487 (= res!1413933 (= (list!13633 lt!1195308) (Cons!37307 separatorToken!241 Nil!37307)))))

(declare-fun singleton!1144 (Token!10302) BalanceConc!22238)

(assert (=> d!1018487 (= lt!1195308 (singleton!1144 separatorToken!241))))

(assert (=> d!1018487 (= (singletonSeq!2564 separatorToken!241) lt!1195308)))

(declare-fun b!3505080 () Bool)

(declare-fun isBalanced!3447 (Conc!11312) Bool)

(assert (=> b!3505080 (= e!2170154 (isBalanced!3447 (c!602788 lt!1195308)))))

(assert (= (and d!1018487 res!1413933) b!3505080))

(declare-fun m!3942407 () Bool)

(assert (=> d!1018487 m!3942407))

(declare-fun m!3942409 () Bool)

(assert (=> d!1018487 m!3942409))

(declare-fun m!3942411 () Bool)

(assert (=> b!3505080 m!3942411))

(assert (=> b!3504517 d!1018487))

(declare-fun d!1018491 () Bool)

(declare-fun e!2170167 () Bool)

(assert (=> d!1018491 e!2170167))

(declare-fun res!1413944 () Bool)

(assert (=> d!1018491 (=> (not res!1413944) (not e!2170167))))

(assert (=> d!1018491 (= res!1413944 (isDefined!5854 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494))))))))

(declare-fun lt!1195315 () Unit!52870)

(declare-fun choose!20340 (LexerInterface!5057 List!37430 List!37429 Token!10302) Unit!52870)

(assert (=> d!1018491 (= lt!1195315 (choose!20340 thiss!18206 rules!2135 lt!1195055 (h!42727 tokens!494)))))

(assert (=> d!1018491 (rulesInvariant!4454 thiss!18206 rules!2135)))

(assert (=> d!1018491 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1111 thiss!18206 rules!2135 lt!1195055 (h!42727 tokens!494)) lt!1195315)))

(declare-fun b!3505099 () Bool)

(declare-fun res!1413945 () Bool)

(assert (=> b!3505099 (=> (not res!1413945) (not e!2170167))))

(assert (=> b!3505099 (= res!1413945 (matchR!4811 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))))) (list!13629 (charsOf!3482 (h!42727 tokens!494)))))))

(declare-fun b!3505100 () Bool)

(assert (=> b!3505100 (= e!2170167 (= (rule!8098 (h!42727 tokens!494)) (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))))))))

(assert (= (and d!1018491 res!1413944) b!3505099))

(assert (= (and b!3505099 res!1413945) b!3505100))

(assert (=> d!1018491 m!3941443))

(assert (=> d!1018491 m!3941443))

(declare-fun m!3942427 () Bool)

(assert (=> d!1018491 m!3942427))

(declare-fun m!3942429 () Bool)

(assert (=> d!1018491 m!3942429))

(assert (=> d!1018491 m!3941395))

(assert (=> b!3505099 m!3941387))

(assert (=> b!3505099 m!3941389))

(declare-fun m!3942431 () Bool)

(assert (=> b!3505099 m!3942431))

(assert (=> b!3505099 m!3941443))

(declare-fun m!3942433 () Bool)

(assert (=> b!3505099 m!3942433))

(assert (=> b!3505099 m!3941387))

(assert (=> b!3505099 m!3941389))

(assert (=> b!3505099 m!3941443))

(assert (=> b!3505100 m!3941443))

(assert (=> b!3505100 m!3941443))

(assert (=> b!3505100 m!3942433))

(assert (=> b!3504517 d!1018491))

(declare-fun b!3505135 () Bool)

(declare-fun res!1413974 () Bool)

(declare-fun e!2170184 () Bool)

(assert (=> b!3505135 (=> (not res!1413974) (not e!2170184))))

(declare-fun lt!1195339 () Option!7594)

(assert (=> b!3505135 (= res!1413974 (< (size!28365 (_2!21691 (get!11971 lt!1195339))) (size!28365 lt!1195077)))))

(declare-fun b!3505136 () Bool)

(declare-fun res!1413972 () Bool)

(assert (=> b!3505136 (=> (not res!1413972) (not e!2170184))))

(assert (=> b!3505136 (= res!1413972 (= (value!176298 (_1!21691 (get!11971 lt!1195339))) (apply!8865 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))) (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195339)))))))))

(declare-fun b!3505137 () Bool)

(declare-fun e!2170186 () Option!7594)

(declare-fun call!252988 () Option!7594)

(assert (=> b!3505137 (= e!2170186 call!252988)))

(declare-fun b!3505138 () Bool)

(assert (=> b!3505138 (= e!2170184 (contains!6979 rules!2135 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))))

(declare-fun b!3505139 () Bool)

(declare-fun e!2170185 () Bool)

(assert (=> b!3505139 (= e!2170185 e!2170184)))

(declare-fun res!1413970 () Bool)

(assert (=> b!3505139 (=> (not res!1413970) (not e!2170184))))

(declare-fun isDefined!5855 (Option!7594) Bool)

(assert (=> b!3505139 (= res!1413970 (isDefined!5855 lt!1195339))))

(declare-fun b!3505140 () Bool)

(declare-fun res!1413968 () Bool)

(assert (=> b!3505140 (=> (not res!1413968) (not e!2170184))))

(assert (=> b!3505140 (= res!1413968 (= (++!9231 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339)))) (_2!21691 (get!11971 lt!1195339))) lt!1195077))))

(declare-fun b!3505141 () Bool)

(declare-fun res!1413973 () Bool)

(assert (=> b!3505141 (=> (not res!1413973) (not e!2170184))))

(assert (=> b!3505141 (= res!1413973 (= (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339)))) (originalCharacters!6182 (_1!21691 (get!11971 lt!1195339)))))))

(declare-fun b!3505142 () Bool)

(declare-fun res!1413969 () Bool)

(assert (=> b!3505142 (=> (not res!1413969) (not e!2170184))))

(assert (=> b!3505142 (= res!1413969 (matchR!4811 (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))) (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))))))

(declare-fun b!3505143 () Bool)

(declare-fun lt!1195340 () Option!7594)

(declare-fun lt!1195342 () Option!7594)

(assert (=> b!3505143 (= e!2170186 (ite (and ((_ is None!7593) lt!1195340) ((_ is None!7593) lt!1195342)) None!7593 (ite ((_ is None!7593) lt!1195342) lt!1195340 (ite ((_ is None!7593) lt!1195340) lt!1195342 (ite (>= (size!28363 (_1!21691 (v!37045 lt!1195340))) (size!28363 (_1!21691 (v!37045 lt!1195342)))) lt!1195340 lt!1195342)))))))

(assert (=> b!3505143 (= lt!1195340 call!252988)))

(assert (=> b!3505143 (= lt!1195342 (maxPrefix!2597 thiss!18206 (t!279241 rules!2135) lt!1195077))))

(declare-fun d!1018499 () Bool)

(assert (=> d!1018499 e!2170185))

(declare-fun res!1413971 () Bool)

(assert (=> d!1018499 (=> res!1413971 e!2170185)))

(assert (=> d!1018499 (= res!1413971 (isEmpty!21757 lt!1195339))))

(assert (=> d!1018499 (= lt!1195339 e!2170186)))

(declare-fun c!602911 () Bool)

(assert (=> d!1018499 (= c!602911 (and ((_ is Cons!37306) rules!2135) ((_ is Nil!37306) (t!279241 rules!2135))))))

(declare-fun lt!1195341 () Unit!52870)

(declare-fun lt!1195338 () Unit!52870)

(assert (=> d!1018499 (= lt!1195341 lt!1195338)))

(declare-fun isPrefix!2867 (List!37429 List!37429) Bool)

(assert (=> d!1018499 (isPrefix!2867 lt!1195077 lt!1195077)))

(declare-fun lemmaIsPrefixRefl!1826 (List!37429 List!37429) Unit!52870)

(assert (=> d!1018499 (= lt!1195338 (lemmaIsPrefixRefl!1826 lt!1195077 lt!1195077))))

(declare-fun rulesValidInductive!1876 (LexerInterface!5057 List!37430) Bool)

(assert (=> d!1018499 (rulesValidInductive!1876 thiss!18206 rules!2135)))

(assert (=> d!1018499 (= (maxPrefix!2597 thiss!18206 rules!2135 lt!1195077) lt!1195339)))

(declare-fun bm!252983 () Bool)

(assert (=> bm!252983 (= call!252988 (maxPrefixOneRule!1764 thiss!18206 (h!42726 rules!2135) lt!1195077))))

(assert (= (and d!1018499 c!602911) b!3505137))

(assert (= (and d!1018499 (not c!602911)) b!3505143))

(assert (= (or b!3505137 b!3505143) bm!252983))

(assert (= (and d!1018499 (not res!1413971)) b!3505139))

(assert (= (and b!3505139 res!1413970) b!3505141))

(assert (= (and b!3505141 res!1413973) b!3505135))

(assert (= (and b!3505135 res!1413974) b!3505140))

(assert (= (and b!3505140 res!1413968) b!3505136))

(assert (= (and b!3505136 res!1413972) b!3505142))

(assert (= (and b!3505142 res!1413969) b!3505138))

(declare-fun m!3942495 () Bool)

(assert (=> b!3505140 m!3942495))

(declare-fun m!3942497 () Bool)

(assert (=> b!3505140 m!3942497))

(assert (=> b!3505140 m!3942497))

(declare-fun m!3942501 () Bool)

(assert (=> b!3505140 m!3942501))

(assert (=> b!3505140 m!3942501))

(declare-fun m!3942505 () Bool)

(assert (=> b!3505140 m!3942505))

(assert (=> b!3505135 m!3942495))

(declare-fun m!3942507 () Bool)

(assert (=> b!3505135 m!3942507))

(declare-fun m!3942509 () Bool)

(assert (=> b!3505135 m!3942509))

(assert (=> b!3505142 m!3942495))

(assert (=> b!3505142 m!3942497))

(assert (=> b!3505142 m!3942497))

(assert (=> b!3505142 m!3942501))

(assert (=> b!3505142 m!3942501))

(declare-fun m!3942511 () Bool)

(assert (=> b!3505142 m!3942511))

(assert (=> b!3505138 m!3942495))

(declare-fun m!3942515 () Bool)

(assert (=> b!3505138 m!3942515))

(assert (=> b!3505136 m!3942495))

(declare-fun m!3942521 () Bool)

(assert (=> b!3505136 m!3942521))

(assert (=> b!3505136 m!3942521))

(declare-fun m!3942523 () Bool)

(assert (=> b!3505136 m!3942523))

(declare-fun m!3942525 () Bool)

(assert (=> b!3505139 m!3942525))

(assert (=> b!3505141 m!3942495))

(assert (=> b!3505141 m!3942497))

(assert (=> b!3505141 m!3942497))

(assert (=> b!3505141 m!3942501))

(declare-fun m!3942527 () Bool)

(assert (=> bm!252983 m!3942527))

(declare-fun m!3942529 () Bool)

(assert (=> b!3505143 m!3942529))

(declare-fun m!3942531 () Bool)

(assert (=> d!1018499 m!3942531))

(declare-fun m!3942533 () Bool)

(assert (=> d!1018499 m!3942533))

(declare-fun m!3942535 () Bool)

(assert (=> d!1018499 m!3942535))

(declare-fun m!3942537 () Bool)

(assert (=> d!1018499 m!3942537))

(assert (=> b!3504517 d!1018499))

(declare-fun d!1018519 () Bool)

(declare-fun lt!1195352 () Bool)

(declare-fun content!5248 (List!37430) (InoxSet Rule!10736))

(assert (=> d!1018519 (= lt!1195352 (select (content!5248 rules!2135) (rule!8098 (h!42727 (t!279242 tokens!494)))))))

(declare-fun e!2170197 () Bool)

(assert (=> d!1018519 (= lt!1195352 e!2170197)))

(declare-fun res!1413984 () Bool)

(assert (=> d!1018519 (=> (not res!1413984) (not e!2170197))))

(assert (=> d!1018519 (= res!1413984 ((_ is Cons!37306) rules!2135))))

(assert (=> d!1018519 (= (contains!6979 rules!2135 (rule!8098 (h!42727 (t!279242 tokens!494)))) lt!1195352)))

(declare-fun b!3505156 () Bool)

(declare-fun e!2170198 () Bool)

(assert (=> b!3505156 (= e!2170197 e!2170198)))

(declare-fun res!1413983 () Bool)

(assert (=> b!3505156 (=> res!1413983 e!2170198)))

(assert (=> b!3505156 (= res!1413983 (= (h!42726 rules!2135) (rule!8098 (h!42727 (t!279242 tokens!494)))))))

(declare-fun b!3505157 () Bool)

(assert (=> b!3505157 (= e!2170198 (contains!6979 (t!279241 rules!2135) (rule!8098 (h!42727 (t!279242 tokens!494)))))))

(assert (= (and d!1018519 res!1413984) b!3505156))

(assert (= (and b!3505156 (not res!1413983)) b!3505157))

(declare-fun m!3942547 () Bool)

(assert (=> d!1018519 m!3942547))

(declare-fun m!3942549 () Bool)

(assert (=> d!1018519 m!3942549))

(declare-fun m!3942551 () Bool)

(assert (=> b!3505157 m!3942551))

(assert (=> b!3504517 d!1018519))

(declare-fun b!3505158 () Bool)

(declare-fun res!1413987 () Bool)

(declare-fun e!2170200 () Bool)

(assert (=> b!3505158 (=> (not res!1413987) (not e!2170200))))

(declare-fun lt!1195353 () tuple2!37112)

(assert (=> b!3505158 (= res!1413987 (= (list!13633 (_1!21690 lt!1195353)) (_1!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 lt!1195057)))))))

(declare-fun b!3505159 () Bool)

(declare-fun e!2170201 () Bool)

(assert (=> b!3505159 (= e!2170201 (= (_2!21690 lt!1195353) lt!1195057))))

(declare-fun b!3505160 () Bool)

(declare-fun e!2170199 () Bool)

(assert (=> b!3505160 (= e!2170201 e!2170199)))

(declare-fun res!1413985 () Bool)

(assert (=> b!3505160 (= res!1413985 (< (size!28367 (_2!21690 lt!1195353)) (size!28367 lt!1195057)))))

(assert (=> b!3505160 (=> (not res!1413985) (not e!2170199))))

(declare-fun b!3505161 () Bool)

(assert (=> b!3505161 (= e!2170200 (= (list!13629 (_2!21690 lt!1195353)) (_2!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 lt!1195057)))))))

(declare-fun b!3505162 () Bool)

(assert (=> b!3505162 (= e!2170199 (not (isEmpty!21747 (_1!21690 lt!1195353))))))

(declare-fun d!1018523 () Bool)

(assert (=> d!1018523 e!2170200))

(declare-fun res!1413986 () Bool)

(assert (=> d!1018523 (=> (not res!1413986) (not e!2170200))))

(assert (=> d!1018523 (= res!1413986 e!2170201)))

(declare-fun c!602914 () Bool)

(assert (=> d!1018523 (= c!602914 (> (size!28364 (_1!21690 lt!1195353)) 0))))

(assert (=> d!1018523 (= lt!1195353 (lexTailRecV2!1080 thiss!18206 rules!2135 lt!1195057 (BalanceConc!22237 Empty!11311) lt!1195057 (BalanceConc!22239 Empty!11312)))))

(assert (=> d!1018523 (= (lex!2383 thiss!18206 rules!2135 lt!1195057) lt!1195353)))

(assert (= (and d!1018523 c!602914) b!3505160))

(assert (= (and d!1018523 (not c!602914)) b!3505159))

(assert (= (and b!3505160 res!1413985) b!3505162))

(assert (= (and d!1018523 res!1413986) b!3505158))

(assert (= (and b!3505158 res!1413987) b!3505161))

(declare-fun m!3942553 () Bool)

(assert (=> b!3505160 m!3942553))

(declare-fun m!3942555 () Bool)

(assert (=> b!3505160 m!3942555))

(declare-fun m!3942557 () Bool)

(assert (=> b!3505158 m!3942557))

(declare-fun m!3942559 () Bool)

(assert (=> b!3505158 m!3942559))

(assert (=> b!3505158 m!3942559))

(declare-fun m!3942561 () Bool)

(assert (=> b!3505158 m!3942561))

(declare-fun m!3942563 () Bool)

(assert (=> d!1018523 m!3942563))

(declare-fun m!3942565 () Bool)

(assert (=> d!1018523 m!3942565))

(declare-fun m!3942567 () Bool)

(assert (=> b!3505162 m!3942567))

(declare-fun m!3942569 () Bool)

(assert (=> b!3505161 m!3942569))

(assert (=> b!3505161 m!3942559))

(assert (=> b!3505161 m!3942559))

(assert (=> b!3505161 m!3942561))

(assert (=> b!3504517 d!1018523))

(declare-fun d!1018525 () Bool)

(declare-fun lt!1195361 () Int)

(assert (=> d!1018525 (>= lt!1195361 0)))

(declare-fun e!2170206 () Int)

(assert (=> d!1018525 (= lt!1195361 e!2170206)))

(declare-fun c!602918 () Bool)

(assert (=> d!1018525 (= c!602918 ((_ is Nil!37305) lt!1195055))))

(assert (=> d!1018525 (= (size!28365 lt!1195055) lt!1195361)))

(declare-fun b!3505167 () Bool)

(assert (=> b!3505167 (= e!2170206 0)))

(declare-fun b!3505170 () Bool)

(assert (=> b!3505170 (= e!2170206 (+ 1 (size!28365 (t!279240 lt!1195055))))))

(assert (= (and d!1018525 c!602918) b!3505167))

(assert (= (and d!1018525 (not c!602918)) b!3505170))

(declare-fun m!3942573 () Bool)

(assert (=> b!3505170 m!3942573))

(assert (=> b!3504517 d!1018525))

(declare-fun d!1018529 () Bool)

(declare-fun lt!1195366 () BalanceConc!22236)

(assert (=> d!1018529 (= (list!13629 lt!1195366) (printListTailRec!712 thiss!18206 (dropList!1229 lt!1195067 0) (list!13629 (BalanceConc!22237 Empty!11311))))))

(declare-fun e!2170209 () BalanceConc!22236)

(assert (=> d!1018529 (= lt!1195366 e!2170209)))

(declare-fun c!602919 () Bool)

(assert (=> d!1018529 (= c!602919 (>= 0 (size!28364 lt!1195067)))))

(declare-fun e!2170210 () Bool)

(assert (=> d!1018529 e!2170210))

(declare-fun res!1413992 () Bool)

(assert (=> d!1018529 (=> (not res!1413992) (not e!2170210))))

(assert (=> d!1018529 (= res!1413992 (>= 0 0))))

(assert (=> d!1018529 (= (printTailRec!1552 thiss!18206 lt!1195067 0 (BalanceConc!22237 Empty!11311)) lt!1195366)))

(declare-fun b!3505173 () Bool)

(assert (=> b!3505173 (= e!2170210 (<= 0 (size!28364 lt!1195067)))))

(declare-fun b!3505174 () Bool)

(assert (=> b!3505174 (= e!2170209 (BalanceConc!22237 Empty!11311))))

(declare-fun b!3505175 () Bool)

(assert (=> b!3505175 (= e!2170209 (printTailRec!1552 thiss!18206 lt!1195067 (+ 0 1) (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195067 0)))))))

(declare-fun lt!1195367 () List!37431)

(assert (=> b!3505175 (= lt!1195367 (list!13633 lt!1195067))))

(declare-fun lt!1195368 () Unit!52870)

(assert (=> b!3505175 (= lt!1195368 (lemmaDropApply!1187 lt!1195367 0))))

(assert (=> b!3505175 (= (head!7373 (drop!2041 lt!1195367 0)) (apply!8868 lt!1195367 0))))

(declare-fun lt!1195365 () Unit!52870)

(assert (=> b!3505175 (= lt!1195365 lt!1195368)))

(declare-fun lt!1195363 () List!37431)

(assert (=> b!3505175 (= lt!1195363 (list!13633 lt!1195067))))

(declare-fun lt!1195364 () Unit!52870)

(assert (=> b!3505175 (= lt!1195364 (lemmaDropTail!1071 lt!1195363 0))))

(assert (=> b!3505175 (= (tail!5481 (drop!2041 lt!1195363 0)) (drop!2041 lt!1195363 (+ 0 1)))))

(declare-fun lt!1195362 () Unit!52870)

(assert (=> b!3505175 (= lt!1195362 lt!1195364)))

(assert (= (and d!1018529 res!1413992) b!3505173))

(assert (= (and d!1018529 c!602919) b!3505174))

(assert (= (and d!1018529 (not c!602919)) b!3505175))

(declare-fun m!3942575 () Bool)

(assert (=> d!1018529 m!3942575))

(assert (=> d!1018529 m!3942575))

(assert (=> d!1018529 m!3942155))

(declare-fun m!3942581 () Bool)

(assert (=> d!1018529 m!3942581))

(declare-fun m!3942585 () Bool)

(assert (=> d!1018529 m!3942585))

(declare-fun m!3942587 () Bool)

(assert (=> d!1018529 m!3942587))

(assert (=> d!1018529 m!3942155))

(assert (=> b!3505173 m!3942587))

(declare-fun m!3942589 () Bool)

(assert (=> b!3505175 m!3942589))

(declare-fun m!3942591 () Bool)

(assert (=> b!3505175 m!3942591))

(declare-fun m!3942593 () Bool)

(assert (=> b!3505175 m!3942593))

(assert (=> b!3505175 m!3942589))

(declare-fun m!3942595 () Bool)

(assert (=> b!3505175 m!3942595))

(declare-fun m!3942597 () Bool)

(assert (=> b!3505175 m!3942597))

(assert (=> b!3505175 m!3942593))

(declare-fun m!3942599 () Bool)

(assert (=> b!3505175 m!3942599))

(declare-fun m!3942601 () Bool)

(assert (=> b!3505175 m!3942601))

(declare-fun m!3942603 () Bool)

(assert (=> b!3505175 m!3942603))

(declare-fun m!3942605 () Bool)

(assert (=> b!3505175 m!3942605))

(assert (=> b!3505175 m!3942597))

(declare-fun m!3942607 () Bool)

(assert (=> b!3505175 m!3942607))

(assert (=> b!3505175 m!3942603))

(assert (=> b!3505175 m!3942595))

(declare-fun m!3942609 () Bool)

(assert (=> b!3505175 m!3942609))

(declare-fun m!3942611 () Bool)

(assert (=> b!3505175 m!3942611))

(declare-fun m!3942613 () Bool)

(assert (=> b!3505175 m!3942613))

(assert (=> b!3504517 d!1018529))

(declare-fun d!1018533 () Bool)

(declare-fun lt!1195372 () BalanceConc!22236)

(assert (=> d!1018533 (= (list!13629 lt!1195372) (printList!1605 thiss!18206 (list!13633 lt!1195078)))))

(assert (=> d!1018533 (= lt!1195372 (printTailRec!1552 thiss!18206 lt!1195078 0 (BalanceConc!22237 Empty!11311)))))

(assert (=> d!1018533 (= (print!2122 thiss!18206 lt!1195078) lt!1195372)))

(declare-fun bs!563937 () Bool)

(assert (= bs!563937 d!1018533))

(declare-fun m!3942615 () Bool)

(assert (=> bs!563937 m!3942615))

(assert (=> bs!563937 m!3942185))

(assert (=> bs!563937 m!3942185))

(declare-fun m!3942617 () Bool)

(assert (=> bs!563937 m!3942617))

(assert (=> bs!563937 m!3941465))

(assert (=> b!3504517 d!1018533))

(declare-fun d!1018535 () Bool)

(declare-fun lt!1195373 () BalanceConc!22236)

(assert (=> d!1018535 (= (list!13629 lt!1195373) (printList!1605 thiss!18206 (list!13633 lt!1195067)))))

(assert (=> d!1018535 (= lt!1195373 (printTailRec!1552 thiss!18206 lt!1195067 0 (BalanceConc!22237 Empty!11311)))))

(assert (=> d!1018535 (= (print!2122 thiss!18206 lt!1195067) lt!1195373)))

(declare-fun bs!563938 () Bool)

(assert (= bs!563938 d!1018535))

(declare-fun m!3942619 () Bool)

(assert (=> bs!563938 m!3942619))

(assert (=> bs!563938 m!3942611))

(assert (=> bs!563938 m!3942611))

(declare-fun m!3942621 () Bool)

(assert (=> bs!563938 m!3942621))

(assert (=> bs!563938 m!3941425))

(assert (=> b!3504517 d!1018535))

(declare-fun b!3505190 () Bool)

(declare-fun e!2170221 () Option!7593)

(assert (=> b!3505190 (= e!2170221 (Some!7592 (h!42726 rules!2135)))))

(declare-fun d!1018537 () Bool)

(declare-fun e!2170222 () Bool)

(assert (=> d!1018537 e!2170222))

(declare-fun res!1413999 () Bool)

(assert (=> d!1018537 (=> res!1413999 e!2170222)))

(declare-fun lt!1195380 () Option!7593)

(assert (=> d!1018537 (= res!1413999 (isEmpty!21756 lt!1195380))))

(assert (=> d!1018537 (= lt!1195380 e!2170221)))

(declare-fun c!602924 () Bool)

(assert (=> d!1018537 (= c!602924 (and ((_ is Cons!37306) rules!2135) (= (tag!6100 (h!42726 rules!2135)) (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))))))

(assert (=> d!1018537 (rulesInvariant!4454 thiss!18206 rules!2135)))

(assert (=> d!1018537 (= (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))) lt!1195380)))

(declare-fun b!3505191 () Bool)

(declare-fun e!2170223 () Bool)

(assert (=> b!3505191 (= e!2170222 e!2170223)))

(declare-fun res!1414000 () Bool)

(assert (=> b!3505191 (=> (not res!1414000) (not e!2170223))))

(assert (=> b!3505191 (= res!1414000 (contains!6979 rules!2135 (get!11969 lt!1195380)))))

(declare-fun b!3505192 () Bool)

(declare-fun e!2170224 () Option!7593)

(assert (=> b!3505192 (= e!2170221 e!2170224)))

(declare-fun c!602925 () Bool)

(assert (=> b!3505192 (= c!602925 (and ((_ is Cons!37306) rules!2135) (not (= (tag!6100 (h!42726 rules!2135)) (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))))

(declare-fun b!3505193 () Bool)

(assert (=> b!3505193 (= e!2170224 None!7592)))

(declare-fun b!3505194 () Bool)

(assert (=> b!3505194 (= e!2170223 (= (tag!6100 (get!11969 lt!1195380)) (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))

(declare-fun b!3505195 () Bool)

(declare-fun lt!1195382 () Unit!52870)

(declare-fun lt!1195381 () Unit!52870)

(assert (=> b!3505195 (= lt!1195382 lt!1195381)))

(assert (=> b!3505195 (rulesInvariant!4454 thiss!18206 (t!279241 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!456 (LexerInterface!5057 Rule!10736 List!37430) Unit!52870)

(assert (=> b!3505195 (= lt!1195381 (lemmaInvariantOnRulesThenOnTail!456 thiss!18206 (h!42726 rules!2135) (t!279241 rules!2135)))))

(assert (=> b!3505195 (= e!2170224 (getRuleFromTag!1111 thiss!18206 (t!279241 rules!2135) (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))

(assert (= (and d!1018537 c!602924) b!3505190))

(assert (= (and d!1018537 (not c!602924)) b!3505192))

(assert (= (and b!3505192 c!602925) b!3505195))

(assert (= (and b!3505192 (not c!602925)) b!3505193))

(assert (= (and d!1018537 (not res!1413999)) b!3505191))

(assert (= (and b!3505191 res!1414000) b!3505194))

(declare-fun m!3942623 () Bool)

(assert (=> d!1018537 m!3942623))

(assert (=> d!1018537 m!3941395))

(declare-fun m!3942625 () Bool)

(assert (=> b!3505191 m!3942625))

(assert (=> b!3505191 m!3942625))

(declare-fun m!3942627 () Bool)

(assert (=> b!3505191 m!3942627))

(assert (=> b!3505194 m!3942625))

(declare-fun m!3942629 () Bool)

(assert (=> b!3505195 m!3942629))

(declare-fun m!3942631 () Bool)

(assert (=> b!3505195 m!3942631))

(declare-fun m!3942633 () Bool)

(assert (=> b!3505195 m!3942633))

(assert (=> b!3504517 d!1018537))

(declare-fun d!1018539 () Bool)

(declare-fun e!2170225 () Bool)

(assert (=> d!1018539 e!2170225))

(declare-fun res!1414001 () Bool)

(assert (=> d!1018539 (=> (not res!1414001) (not e!2170225))))

(assert (=> d!1018539 (= res!1414001 (isDefined!5854 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))))))

(declare-fun lt!1195383 () Unit!52870)

(assert (=> d!1018539 (= lt!1195383 (choose!20340 thiss!18206 rules!2135 lt!1195062 (h!42727 (t!279242 tokens!494))))))

(assert (=> d!1018539 (rulesInvariant!4454 thiss!18206 rules!2135)))

(assert (=> d!1018539 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1111 thiss!18206 rules!2135 lt!1195062 (h!42727 (t!279242 tokens!494))) lt!1195383)))

(declare-fun b!3505196 () Bool)

(declare-fun res!1414002 () Bool)

(assert (=> b!3505196 (=> (not res!1414002) (not e!2170225))))

(assert (=> b!3505196 (= res!1414002 (matchR!4811 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))))))

(declare-fun b!3505197 () Bool)

(assert (=> b!3505197 (= e!2170225 (= (rule!8098 (h!42727 (t!279242 tokens!494))) (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))))

(assert (= (and d!1018539 res!1414001) b!3505196))

(assert (= (and b!3505196 res!1414002) b!3505197))

(assert (=> d!1018539 m!3941409))

(assert (=> d!1018539 m!3941409))

(declare-fun m!3942635 () Bool)

(assert (=> d!1018539 m!3942635))

(declare-fun m!3942637 () Bool)

(assert (=> d!1018539 m!3942637))

(assert (=> d!1018539 m!3941395))

(assert (=> b!3505196 m!3941485))

(assert (=> b!3505196 m!3941491))

(declare-fun m!3942639 () Bool)

(assert (=> b!3505196 m!3942639))

(assert (=> b!3505196 m!3941409))

(declare-fun m!3942641 () Bool)

(assert (=> b!3505196 m!3942641))

(assert (=> b!3505196 m!3941485))

(assert (=> b!3505196 m!3941491))

(assert (=> b!3505196 m!3941409))

(assert (=> b!3505197 m!3941409))

(assert (=> b!3505197 m!3941409))

(assert (=> b!3505197 m!3942641))

(assert (=> b!3504517 d!1018539))

(declare-fun c!602938 () Bool)

(declare-fun call!252999 () List!37429)

(declare-fun bm!252994 () Bool)

(declare-fun c!602937 () Bool)

(assert (=> bm!252994 (= call!252999 (usedCharacters!702 (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))))

(declare-fun b!3505232 () Bool)

(declare-fun e!2170240 () List!37429)

(declare-fun call!253000 () List!37429)

(assert (=> b!3505232 (= e!2170240 call!253000)))

(declare-fun bm!252995 () Bool)

(declare-fun call!253001 () List!37429)

(assert (=> bm!252995 (= call!253001 call!252999)))

(declare-fun b!3505233 () Bool)

(declare-fun e!2170242 () List!37429)

(assert (=> b!3505233 (= e!2170242 call!252999)))

(declare-fun b!3505234 () Bool)

(assert (=> b!3505234 (= e!2170242 e!2170240)))

(assert (=> b!3505234 (= c!602937 ((_ is Union!10227) (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(declare-fun b!3505235 () Bool)

(declare-fun e!2170241 () List!37429)

(assert (=> b!3505235 (= e!2170241 (Cons!37305 (c!602786 (regex!5468 (rule!8098 (h!42727 tokens!494)))) Nil!37305))))

(declare-fun b!3505236 () Bool)

(assert (=> b!3505236 (= e!2170240 call!253000)))

(declare-fun call!253002 () List!37429)

(declare-fun bm!252996 () Bool)

(assert (=> bm!252996 (= call!253000 (++!9231 (ite c!602937 call!253001 call!253002) (ite c!602937 call!253002 call!253001)))))

(declare-fun b!3505237 () Bool)

(declare-fun e!2170243 () List!37429)

(assert (=> b!3505237 (= e!2170243 Nil!37305)))

(declare-fun d!1018541 () Bool)

(declare-fun c!602939 () Bool)

(assert (=> d!1018541 (= c!602939 (or ((_ is EmptyExpr!10227) (regex!5468 (rule!8098 (h!42727 tokens!494)))) ((_ is EmptyLang!10227) (regex!5468 (rule!8098 (h!42727 tokens!494))))))))

(assert (=> d!1018541 (= (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494)))) e!2170243)))

(declare-fun bm!252997 () Bool)

(assert (=> bm!252997 (= call!253002 (usedCharacters!702 (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))))

(declare-fun b!3505238 () Bool)

(assert (=> b!3505238 (= e!2170243 e!2170241)))

(declare-fun c!602936 () Bool)

(assert (=> b!3505238 (= c!602936 ((_ is ElementMatch!10227) (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(declare-fun b!3505239 () Bool)

(assert (=> b!3505239 (= c!602938 ((_ is Star!10227) (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(assert (=> b!3505239 (= e!2170241 e!2170242)))

(assert (= (and d!1018541 c!602939) b!3505237))

(assert (= (and d!1018541 (not c!602939)) b!3505238))

(assert (= (and b!3505238 c!602936) b!3505235))

(assert (= (and b!3505238 (not c!602936)) b!3505239))

(assert (= (and b!3505239 c!602938) b!3505233))

(assert (= (and b!3505239 (not c!602938)) b!3505234))

(assert (= (and b!3505234 c!602937) b!3505232))

(assert (= (and b!3505234 (not c!602937)) b!3505236))

(assert (= (or b!3505232 b!3505236) bm!252997))

(assert (= (or b!3505232 b!3505236) bm!252995))

(assert (= (or b!3505232 b!3505236) bm!252996))

(assert (= (or b!3505233 bm!252995) bm!252994))

(declare-fun m!3942643 () Bool)

(assert (=> bm!252994 m!3942643))

(declare-fun m!3942645 () Bool)

(assert (=> bm!252996 m!3942645))

(declare-fun m!3942647 () Bool)

(assert (=> bm!252997 m!3942647))

(assert (=> b!3504517 d!1018541))

(declare-fun d!1018543 () Bool)

(assert (=> d!1018543 (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 tokens!494))))

(declare-fun lt!1195399 () Unit!52870)

(assert (=> d!1018543 (= lt!1195399 (choose!20338 thiss!18206 rules!2135 tokens!494 (h!42727 tokens!494)))))

(assert (=> d!1018543 (not (isEmpty!21745 rules!2135))))

(assert (=> d!1018543 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1046 thiss!18206 rules!2135 tokens!494 (h!42727 tokens!494)) lt!1195399)))

(declare-fun bs!563939 () Bool)

(assert (= bs!563939 d!1018543))

(assert (=> bs!563939 m!3941475))

(declare-fun m!3942649 () Bool)

(assert (=> bs!563939 m!3942649))

(assert (=> bs!563939 m!3941517))

(assert (=> b!3504517 d!1018543))

(declare-fun d!1018545 () Bool)

(assert (=> d!1018545 (dynLambda!15854 lambda!122515 (h!42727 (t!279242 tokens!494)))))

(declare-fun lt!1195400 () Unit!52870)

(assert (=> d!1018545 (= lt!1195400 (choose!20337 tokens!494 lambda!122515 (h!42727 (t!279242 tokens!494))))))

(declare-fun e!2170247 () Bool)

(assert (=> d!1018545 e!2170247))

(declare-fun res!1414024 () Bool)

(assert (=> d!1018545 (=> (not res!1414024) (not e!2170247))))

(assert (=> d!1018545 (= res!1414024 (forall!8003 tokens!494 lambda!122515))))

(assert (=> d!1018545 (= (forallContained!1415 tokens!494 lambda!122515 (h!42727 (t!279242 tokens!494))) lt!1195400)))

(declare-fun b!3505249 () Bool)

(assert (=> b!3505249 (= e!2170247 (contains!6982 tokens!494 (h!42727 (t!279242 tokens!494))))))

(assert (= (and d!1018545 res!1414024) b!3505249))

(declare-fun b_lambda!101913 () Bool)

(assert (=> (not b_lambda!101913) (not d!1018545)))

(declare-fun m!3942651 () Bool)

(assert (=> d!1018545 m!3942651))

(declare-fun m!3942653 () Bool)

(assert (=> d!1018545 m!3942653))

(declare-fun m!3942655 () Bool)

(assert (=> d!1018545 m!3942655))

(assert (=> b!3505249 m!3942105))

(assert (=> b!3504517 d!1018545))

(declare-fun d!1018547 () Bool)

(declare-fun lt!1195402 () Bool)

(declare-fun e!2170248 () Bool)

(assert (=> d!1018547 (= lt!1195402 e!2170248)))

(declare-fun res!1414026 () Bool)

(assert (=> d!1018547 (=> (not res!1414026) (not e!2170248))))

(assert (=> d!1018547 (= res!1414026 (= (list!13633 (_1!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))))))) (list!13633 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))))))))

(declare-fun e!2170249 () Bool)

(assert (=> d!1018547 (= lt!1195402 e!2170249)))

(declare-fun res!1414025 () Bool)

(assert (=> d!1018547 (=> (not res!1414025) (not e!2170249))))

(declare-fun lt!1195401 () tuple2!37112)

(assert (=> d!1018547 (= res!1414025 (= (size!28364 (_1!21690 lt!1195401)) 1))))

(assert (=> d!1018547 (= lt!1195401 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))))))))

(assert (=> d!1018547 (not (isEmpty!21745 rules!2135))))

(assert (=> d!1018547 (= (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 (t!279242 tokens!494))) lt!1195402)))

(declare-fun b!3505250 () Bool)

(declare-fun res!1414027 () Bool)

(assert (=> b!3505250 (=> (not res!1414027) (not e!2170249))))

(assert (=> b!3505250 (= res!1414027 (= (apply!8864 (_1!21690 lt!1195401) 0) (h!42727 (t!279242 tokens!494))))))

(declare-fun b!3505251 () Bool)

(assert (=> b!3505251 (= e!2170249 (isEmpty!21744 (_2!21690 lt!1195401)))))

(declare-fun b!3505252 () Bool)

(assert (=> b!3505252 (= e!2170248 (isEmpty!21744 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))))))))))

(assert (= (and d!1018547 res!1414025) b!3505250))

(assert (= (and b!3505250 res!1414027) b!3505251))

(assert (= (and d!1018547 res!1414026) b!3505252))

(declare-fun m!3942681 () Bool)

(assert (=> d!1018547 m!3942681))

(assert (=> d!1018547 m!3941415))

(assert (=> d!1018547 m!3941517))

(declare-fun m!3942685 () Bool)

(assert (=> d!1018547 m!3942685))

(assert (=> d!1018547 m!3941415))

(declare-fun m!3942687 () Bool)

(assert (=> d!1018547 m!3942687))

(assert (=> d!1018547 m!3942687))

(declare-fun m!3942691 () Bool)

(assert (=> d!1018547 m!3942691))

(assert (=> d!1018547 m!3941415))

(declare-fun m!3942693 () Bool)

(assert (=> d!1018547 m!3942693))

(declare-fun m!3942695 () Bool)

(assert (=> b!3505250 m!3942695))

(declare-fun m!3942697 () Bool)

(assert (=> b!3505251 m!3942697))

(assert (=> b!3505252 m!3941415))

(assert (=> b!3505252 m!3941415))

(assert (=> b!3505252 m!3942687))

(assert (=> b!3505252 m!3942687))

(assert (=> b!3505252 m!3942691))

(declare-fun m!3942701 () Bool)

(assert (=> b!3505252 m!3942701))

(assert (=> b!3504517 d!1018547))

(declare-fun d!1018549 () Bool)

(assert (=> d!1018549 (= (maxPrefix!2597 thiss!18206 rules!2135 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059)) (Some!7593 (tuple2!37115 (h!42727 tokens!494) lt!1195059)))))

(declare-fun lt!1195413 () Unit!52870)

(declare-fun choose!20343 (LexerInterface!5057 List!37430 Token!10302 Rule!10736 List!37429 Rule!10736) Unit!52870)

(assert (=> d!1018549 (= lt!1195413 (choose!20343 thiss!18206 rules!2135 (h!42727 tokens!494) (rule!8098 (h!42727 tokens!494)) lt!1195059 (rule!8098 separatorToken!241)))))

(assert (=> d!1018549 (not (isEmpty!21745 rules!2135))))

(assert (=> d!1018549 (= (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!224 thiss!18206 rules!2135 (h!42727 tokens!494) (rule!8098 (h!42727 tokens!494)) lt!1195059 (rule!8098 separatorToken!241)) lt!1195413)))

(declare-fun bs!563942 () Bool)

(assert (= bs!563942 d!1018549))

(assert (=> bs!563942 m!3941517))

(assert (=> bs!563942 m!3941387))

(assert (=> bs!563942 m!3941389))

(assert (=> bs!563942 m!3941389))

(declare-fun m!3942775 () Bool)

(assert (=> bs!563942 m!3942775))

(assert (=> bs!563942 m!3941387))

(declare-fun m!3942777 () Bool)

(assert (=> bs!563942 m!3942777))

(assert (=> bs!563942 m!3942775))

(declare-fun m!3942779 () Bool)

(assert (=> bs!563942 m!3942779))

(assert (=> b!3504517 d!1018549))

(declare-fun b!3505315 () Bool)

(declare-fun e!2170289 () Option!7593)

(assert (=> b!3505315 (= e!2170289 (Some!7592 (h!42726 rules!2135)))))

(declare-fun d!1018573 () Bool)

(declare-fun e!2170290 () Bool)

(assert (=> d!1018573 e!2170290))

(declare-fun res!1414045 () Bool)

(assert (=> d!1018573 (=> res!1414045 e!2170290)))

(declare-fun lt!1195414 () Option!7593)

(assert (=> d!1018573 (= res!1414045 (isEmpty!21756 lt!1195414))))

(assert (=> d!1018573 (= lt!1195414 e!2170289)))

(declare-fun c!602949 () Bool)

(assert (=> d!1018573 (= c!602949 (and ((_ is Cons!37306) rules!2135) (= (tag!6100 (h!42726 rules!2135)) (tag!6100 (rule!8098 (h!42727 tokens!494))))))))

(assert (=> d!1018573 (rulesInvariant!4454 thiss!18206 rules!2135)))

(assert (=> d!1018573 (= (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))) lt!1195414)))

(declare-fun b!3505316 () Bool)

(declare-fun e!2170291 () Bool)

(assert (=> b!3505316 (= e!2170290 e!2170291)))

(declare-fun res!1414046 () Bool)

(assert (=> b!3505316 (=> (not res!1414046) (not e!2170291))))

(assert (=> b!3505316 (= res!1414046 (contains!6979 rules!2135 (get!11969 lt!1195414)))))

(declare-fun b!3505317 () Bool)

(declare-fun e!2170292 () Option!7593)

(assert (=> b!3505317 (= e!2170289 e!2170292)))

(declare-fun c!602950 () Bool)

(assert (=> b!3505317 (= c!602950 (and ((_ is Cons!37306) rules!2135) (not (= (tag!6100 (h!42726 rules!2135)) (tag!6100 (rule!8098 (h!42727 tokens!494)))))))))

(declare-fun b!3505318 () Bool)

(assert (=> b!3505318 (= e!2170292 None!7592)))

(declare-fun b!3505319 () Bool)

(assert (=> b!3505319 (= e!2170291 (= (tag!6100 (get!11969 lt!1195414)) (tag!6100 (rule!8098 (h!42727 tokens!494)))))))

(declare-fun b!3505320 () Bool)

(declare-fun lt!1195416 () Unit!52870)

(declare-fun lt!1195415 () Unit!52870)

(assert (=> b!3505320 (= lt!1195416 lt!1195415)))

(assert (=> b!3505320 (rulesInvariant!4454 thiss!18206 (t!279241 rules!2135))))

(assert (=> b!3505320 (= lt!1195415 (lemmaInvariantOnRulesThenOnTail!456 thiss!18206 (h!42726 rules!2135) (t!279241 rules!2135)))))

(assert (=> b!3505320 (= e!2170292 (getRuleFromTag!1111 thiss!18206 (t!279241 rules!2135) (tag!6100 (rule!8098 (h!42727 tokens!494)))))))

(assert (= (and d!1018573 c!602949) b!3505315))

(assert (= (and d!1018573 (not c!602949)) b!3505317))

(assert (= (and b!3505317 c!602950) b!3505320))

(assert (= (and b!3505317 (not c!602950)) b!3505318))

(assert (= (and d!1018573 (not res!1414045)) b!3505316))

(assert (= (and b!3505316 res!1414046) b!3505319))

(declare-fun m!3942781 () Bool)

(assert (=> d!1018573 m!3942781))

(assert (=> d!1018573 m!3941395))

(declare-fun m!3942783 () Bool)

(assert (=> b!3505316 m!3942783))

(assert (=> b!3505316 m!3942783))

(declare-fun m!3942785 () Bool)

(assert (=> b!3505316 m!3942785))

(assert (=> b!3505319 m!3942783))

(assert (=> b!3505320 m!3942629))

(assert (=> b!3505320 m!3942631))

(declare-fun m!3942787 () Bool)

(assert (=> b!3505320 m!3942787))

(assert (=> b!3504517 d!1018573))

(declare-fun b!3505324 () Bool)

(declare-fun res!1414049 () Bool)

(declare-fun e!2170298 () Bool)

(assert (=> b!3505324 (=> (not res!1414049) (not e!2170298))))

(declare-fun lt!1195417 () tuple2!37112)

(assert (=> b!3505324 (= res!1414049 (= (list!13633 (_1!21690 lt!1195417)) (_1!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 lt!1195075)))))))

(declare-fun b!3505325 () Bool)

(declare-fun e!2170299 () Bool)

(assert (=> b!3505325 (= e!2170299 (= (_2!21690 lt!1195417) lt!1195075))))

(declare-fun b!3505326 () Bool)

(declare-fun e!2170297 () Bool)

(assert (=> b!3505326 (= e!2170299 e!2170297)))

(declare-fun res!1414047 () Bool)

(assert (=> b!3505326 (= res!1414047 (< (size!28367 (_2!21690 lt!1195417)) (size!28367 lt!1195075)))))

(assert (=> b!3505326 (=> (not res!1414047) (not e!2170297))))

(declare-fun b!3505327 () Bool)

(assert (=> b!3505327 (= e!2170298 (= (list!13629 (_2!21690 lt!1195417)) (_2!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 lt!1195075)))))))

(declare-fun b!3505328 () Bool)

(assert (=> b!3505328 (= e!2170297 (not (isEmpty!21747 (_1!21690 lt!1195417))))))

(declare-fun d!1018575 () Bool)

(assert (=> d!1018575 e!2170298))

(declare-fun res!1414048 () Bool)

(assert (=> d!1018575 (=> (not res!1414048) (not e!2170298))))

(assert (=> d!1018575 (= res!1414048 e!2170299)))

(declare-fun c!602951 () Bool)

(assert (=> d!1018575 (= c!602951 (> (size!28364 (_1!21690 lt!1195417)) 0))))

(assert (=> d!1018575 (= lt!1195417 (lexTailRecV2!1080 thiss!18206 rules!2135 lt!1195075 (BalanceConc!22237 Empty!11311) lt!1195075 (BalanceConc!22239 Empty!11312)))))

(assert (=> d!1018575 (= (lex!2383 thiss!18206 rules!2135 lt!1195075) lt!1195417)))

(assert (= (and d!1018575 c!602951) b!3505326))

(assert (= (and d!1018575 (not c!602951)) b!3505325))

(assert (= (and b!3505326 res!1414047) b!3505328))

(assert (= (and d!1018575 res!1414048) b!3505324))

(assert (= (and b!3505324 res!1414049) b!3505327))

(declare-fun m!3942793 () Bool)

(assert (=> b!3505326 m!3942793))

(declare-fun m!3942795 () Bool)

(assert (=> b!3505326 m!3942795))

(declare-fun m!3942797 () Bool)

(assert (=> b!3505324 m!3942797))

(declare-fun m!3942799 () Bool)

(assert (=> b!3505324 m!3942799))

(assert (=> b!3505324 m!3942799))

(declare-fun m!3942801 () Bool)

(assert (=> b!3505324 m!3942801))

(declare-fun m!3942803 () Bool)

(assert (=> d!1018575 m!3942803))

(declare-fun m!3942805 () Bool)

(assert (=> d!1018575 m!3942805))

(declare-fun m!3942807 () Bool)

(assert (=> b!3505328 m!3942807))

(declare-fun m!3942809 () Bool)

(assert (=> b!3505327 m!3942809))

(assert (=> b!3505327 m!3942799))

(assert (=> b!3505327 m!3942799))

(assert (=> b!3505327 m!3942801))

(assert (=> b!3504517 d!1018575))

(declare-fun b!3505333 () Bool)

(declare-fun e!2170302 () Option!7593)

(assert (=> b!3505333 (= e!2170302 (Some!7592 (h!42726 rules!2135)))))

(declare-fun d!1018577 () Bool)

(declare-fun e!2170303 () Bool)

(assert (=> d!1018577 e!2170303))

(declare-fun res!1414050 () Bool)

(assert (=> d!1018577 (=> res!1414050 e!2170303)))

(declare-fun lt!1195418 () Option!7593)

(assert (=> d!1018577 (= res!1414050 (isEmpty!21756 lt!1195418))))

(assert (=> d!1018577 (= lt!1195418 e!2170302)))

(declare-fun c!602952 () Bool)

(assert (=> d!1018577 (= c!602952 (and ((_ is Cons!37306) rules!2135) (= (tag!6100 (h!42726 rules!2135)) (tag!6100 (rule!8098 separatorToken!241)))))))

(assert (=> d!1018577 (rulesInvariant!4454 thiss!18206 rules!2135)))

(assert (=> d!1018577 (= (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))) lt!1195418)))

(declare-fun b!3505334 () Bool)

(declare-fun e!2170304 () Bool)

(assert (=> b!3505334 (= e!2170303 e!2170304)))

(declare-fun res!1414051 () Bool)

(assert (=> b!3505334 (=> (not res!1414051) (not e!2170304))))

(assert (=> b!3505334 (= res!1414051 (contains!6979 rules!2135 (get!11969 lt!1195418)))))

(declare-fun b!3505335 () Bool)

(declare-fun e!2170305 () Option!7593)

(assert (=> b!3505335 (= e!2170302 e!2170305)))

(declare-fun c!602953 () Bool)

(assert (=> b!3505335 (= c!602953 (and ((_ is Cons!37306) rules!2135) (not (= (tag!6100 (h!42726 rules!2135)) (tag!6100 (rule!8098 separatorToken!241))))))))

(declare-fun b!3505336 () Bool)

(assert (=> b!3505336 (= e!2170305 None!7592)))

(declare-fun b!3505337 () Bool)

(assert (=> b!3505337 (= e!2170304 (= (tag!6100 (get!11969 lt!1195418)) (tag!6100 (rule!8098 separatorToken!241))))))

(declare-fun b!3505338 () Bool)

(declare-fun lt!1195420 () Unit!52870)

(declare-fun lt!1195419 () Unit!52870)

(assert (=> b!3505338 (= lt!1195420 lt!1195419)))

(assert (=> b!3505338 (rulesInvariant!4454 thiss!18206 (t!279241 rules!2135))))

(assert (=> b!3505338 (= lt!1195419 (lemmaInvariantOnRulesThenOnTail!456 thiss!18206 (h!42726 rules!2135) (t!279241 rules!2135)))))

(assert (=> b!3505338 (= e!2170305 (getRuleFromTag!1111 thiss!18206 (t!279241 rules!2135) (tag!6100 (rule!8098 separatorToken!241))))))

(assert (= (and d!1018577 c!602952) b!3505333))

(assert (= (and d!1018577 (not c!602952)) b!3505335))

(assert (= (and b!3505335 c!602953) b!3505338))

(assert (= (and b!3505335 (not c!602953)) b!3505336))

(assert (= (and d!1018577 (not res!1414050)) b!3505334))

(assert (= (and b!3505334 res!1414051) b!3505337))

(declare-fun m!3942811 () Bool)

(assert (=> d!1018577 m!3942811))

(assert (=> d!1018577 m!3941395))

(declare-fun m!3942813 () Bool)

(assert (=> b!3505334 m!3942813))

(assert (=> b!3505334 m!3942813))

(declare-fun m!3942815 () Bool)

(assert (=> b!3505334 m!3942815))

(assert (=> b!3505337 m!3942813))

(assert (=> b!3505338 m!3942629))

(assert (=> b!3505338 m!3942631))

(declare-fun m!3942817 () Bool)

(assert (=> b!3505338 m!3942817))

(assert (=> b!3504517 d!1018577))

(declare-fun d!1018579 () Bool)

(assert (=> d!1018579 (not (contains!6980 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195073))))

(declare-fun lt!1195423 () Unit!52870)

(declare-fun choose!20344 (LexerInterface!5057 List!37430 List!37430 Rule!10736 Rule!10736 C!20640) Unit!52870)

(assert (=> d!1018579 (= lt!1195423 (choose!20344 thiss!18206 rules!2135 rules!2135 (rule!8098 (h!42727 tokens!494)) (rule!8098 separatorToken!241) lt!1195073))))

(assert (=> d!1018579 (rulesInvariant!4454 thiss!18206 rules!2135)))

(assert (=> d!1018579 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!268 thiss!18206 rules!2135 rules!2135 (rule!8098 (h!42727 tokens!494)) (rule!8098 separatorToken!241) lt!1195073) lt!1195423)))

(declare-fun bs!563943 () Bool)

(assert (= bs!563943 d!1018579))

(assert (=> bs!563943 m!3941457))

(assert (=> bs!563943 m!3941457))

(assert (=> bs!563943 m!3941459))

(declare-fun m!3942827 () Bool)

(assert (=> bs!563943 m!3942827))

(assert (=> bs!563943 m!3941395))

(assert (=> b!3504517 d!1018579))

(declare-fun d!1018581 () Bool)

(assert (=> d!1018581 (= (maxPrefixOneRule!1764 thiss!18206 (rule!8098 (h!42727 tokens!494)) lt!1195055) (Some!7593 (tuple2!37115 (Token!10303 (apply!8865 (transformation!5468 (rule!8098 (h!42727 tokens!494))) (seqFromList!3990 lt!1195055)) (rule!8098 (h!42727 tokens!494)) (size!28365 lt!1195055) lt!1195055) Nil!37305)))))

(declare-fun lt!1195426 () Unit!52870)

(declare-fun choose!20345 (LexerInterface!5057 List!37430 List!37429 List!37429 List!37429 Rule!10736) Unit!52870)

(assert (=> d!1018581 (= lt!1195426 (choose!20345 thiss!18206 rules!2135 lt!1195055 lt!1195055 Nil!37305 (rule!8098 (h!42727 tokens!494))))))

(assert (=> d!1018581 (not (isEmpty!21745 rules!2135))))

(assert (=> d!1018581 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!857 thiss!18206 rules!2135 lt!1195055 lt!1195055 Nil!37305 (rule!8098 (h!42727 tokens!494))) lt!1195426)))

(declare-fun bs!563947 () Bool)

(assert (= bs!563947 d!1018581))

(assert (=> bs!563947 m!3941371))

(declare-fun m!3942829 () Bool)

(assert (=> bs!563947 m!3942829))

(assert (=> bs!563947 m!3941467))

(declare-fun m!3942831 () Bool)

(assert (=> bs!563947 m!3942831))

(assert (=> bs!563947 m!3941417))

(assert (=> bs!563947 m!3941517))

(assert (=> bs!563947 m!3941371))

(assert (=> b!3504517 d!1018581))

(declare-fun d!1018589 () Bool)

(declare-fun e!2170328 () Bool)

(assert (=> d!1018589 e!2170328))

(declare-fun res!1414052 () Bool)

(assert (=> d!1018589 (=> (not res!1414052) (not e!2170328))))

(declare-fun lt!1195427 () BalanceConc!22238)

(assert (=> d!1018589 (= res!1414052 (= (list!13633 lt!1195427) (Cons!37307 (h!42727 (t!279242 tokens!494)) Nil!37307)))))

(assert (=> d!1018589 (= lt!1195427 (singleton!1144 (h!42727 (t!279242 tokens!494))))))

(assert (=> d!1018589 (= (singletonSeq!2564 (h!42727 (t!279242 tokens!494))) lt!1195427)))

(declare-fun b!3505361 () Bool)

(assert (=> b!3505361 (= e!2170328 (isBalanced!3447 (c!602788 lt!1195427)))))

(assert (= (and d!1018589 res!1414052) b!3505361))

(declare-fun m!3942833 () Bool)

(assert (=> d!1018589 m!3942833))

(declare-fun m!3942835 () Bool)

(assert (=> d!1018589 m!3942835))

(declare-fun m!3942837 () Bool)

(assert (=> b!3505361 m!3942837))

(assert (=> b!3504517 d!1018589))

(declare-fun d!1018591 () Bool)

(assert (=> d!1018591 (= (isDefined!5854 lt!1195072) (not (isEmpty!21756 lt!1195072)))))

(declare-fun bs!563948 () Bool)

(assert (= bs!563948 d!1018591))

(declare-fun m!3942839 () Bool)

(assert (=> bs!563948 m!3942839))

(assert (=> b!3504517 d!1018591))

(declare-fun d!1018593 () Bool)

(declare-fun lt!1195428 () Int)

(assert (=> d!1018593 (= lt!1195428 (size!28370 (list!13633 (_1!21690 lt!1195068))))))

(assert (=> d!1018593 (= lt!1195428 (size!28371 (c!602788 (_1!21690 lt!1195068))))))

(assert (=> d!1018593 (= (size!28364 (_1!21690 lt!1195068)) lt!1195428)))

(declare-fun bs!563949 () Bool)

(assert (= bs!563949 d!1018593))

(declare-fun m!3942841 () Bool)

(assert (=> bs!563949 m!3942841))

(assert (=> bs!563949 m!3942841))

(declare-fun m!3942843 () Bool)

(assert (=> bs!563949 m!3942843))

(declare-fun m!3942845 () Bool)

(assert (=> bs!563949 m!3942845))

(assert (=> b!3504517 d!1018593))

(declare-fun d!1018595 () Bool)

(declare-fun e!2170329 () Bool)

(assert (=> d!1018595 e!2170329))

(declare-fun res!1414053 () Bool)

(assert (=> d!1018595 (=> (not res!1414053) (not e!2170329))))

(assert (=> d!1018595 (= res!1414053 (isDefined!5854 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241)))))))

(declare-fun lt!1195429 () Unit!52870)

(assert (=> d!1018595 (= lt!1195429 (choose!20340 thiss!18206 rules!2135 lt!1195070 separatorToken!241))))

(assert (=> d!1018595 (rulesInvariant!4454 thiss!18206 rules!2135)))

(assert (=> d!1018595 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1111 thiss!18206 rules!2135 lt!1195070 separatorToken!241) lt!1195429)))

(declare-fun b!3505362 () Bool)

(declare-fun res!1414054 () Bool)

(assert (=> b!3505362 (=> (not res!1414054) (not e!2170329))))

(assert (=> b!3505362 (= res!1414054 (matchR!4811 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))))) (list!13629 (charsOf!3482 separatorToken!241))))))

(declare-fun b!3505363 () Bool)

(assert (=> b!3505363 (= e!2170329 (= (rule!8098 separatorToken!241) (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))))))))

(assert (= (and d!1018595 res!1414053) b!3505362))

(assert (= (and b!3505362 res!1414054) b!3505363))

(assert (=> d!1018595 m!3941411))

(assert (=> d!1018595 m!3941411))

(declare-fun m!3942847 () Bool)

(assert (=> d!1018595 m!3942847))

(declare-fun m!3942849 () Bool)

(assert (=> d!1018595 m!3942849))

(assert (=> d!1018595 m!3941395))

(assert (=> b!3505362 m!3941487))

(assert (=> b!3505362 m!3941497))

(declare-fun m!3942851 () Bool)

(assert (=> b!3505362 m!3942851))

(assert (=> b!3505362 m!3941411))

(declare-fun m!3942853 () Bool)

(assert (=> b!3505362 m!3942853))

(assert (=> b!3505362 m!3941487))

(assert (=> b!3505362 m!3941497))

(assert (=> b!3505362 m!3941411))

(assert (=> b!3505363 m!3941411))

(assert (=> b!3505363 m!3941411))

(assert (=> b!3505363 m!3942853))

(assert (=> b!3504517 d!1018595))

(declare-fun d!1018597 () Bool)

(declare-fun lt!1195432 () Bool)

(assert (=> d!1018597 (= lt!1195432 (select (content!5247 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241)))) lt!1195073))))

(declare-fun e!2170334 () Bool)

(assert (=> d!1018597 (= lt!1195432 e!2170334)))

(declare-fun res!1414060 () Bool)

(assert (=> d!1018597 (=> (not res!1414060) (not e!2170334))))

(assert (=> d!1018597 (= res!1414060 ((_ is Cons!37305) (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241)))))))

(assert (=> d!1018597 (= (contains!6980 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241))) lt!1195073) lt!1195432)))

(declare-fun b!3505368 () Bool)

(declare-fun e!2170335 () Bool)

(assert (=> b!3505368 (= e!2170334 e!2170335)))

(declare-fun res!1414059 () Bool)

(assert (=> b!3505368 (=> res!1414059 e!2170335)))

(assert (=> b!3505368 (= res!1414059 (= (h!42725 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241)))) lt!1195073))))

(declare-fun b!3505369 () Bool)

(assert (=> b!3505369 (= e!2170335 (contains!6980 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241)))) lt!1195073))))

(assert (= (and d!1018597 res!1414060) b!3505368))

(assert (= (and b!3505368 (not res!1414059)) b!3505369))

(assert (=> d!1018597 m!3941399))

(declare-fun m!3942855 () Bool)

(assert (=> d!1018597 m!3942855))

(declare-fun m!3942857 () Bool)

(assert (=> d!1018597 m!3942857))

(declare-fun m!3942859 () Bool)

(assert (=> b!3505369 m!3942859))

(assert (=> b!3504517 d!1018597))

(declare-fun bm!253003 () Bool)

(declare-fun c!602957 () Bool)

(declare-fun call!253008 () List!37429)

(declare-fun c!602956 () Bool)

(assert (=> bm!253003 (= call!253008 (usedCharacters!702 (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))))))))

(declare-fun b!3505370 () Bool)

(declare-fun e!2170336 () List!37429)

(declare-fun call!253009 () List!37429)

(assert (=> b!3505370 (= e!2170336 call!253009)))

(declare-fun bm!253004 () Bool)

(declare-fun call!253010 () List!37429)

(assert (=> bm!253004 (= call!253010 call!253008)))

(declare-fun b!3505371 () Bool)

(declare-fun e!2170338 () List!37429)

(assert (=> b!3505371 (= e!2170338 call!253008)))

(declare-fun b!3505372 () Bool)

(assert (=> b!3505372 (= e!2170338 e!2170336)))

(assert (=> b!3505372 (= c!602956 ((_ is Union!10227) (regex!5468 (rule!8098 separatorToken!241))))))

(declare-fun b!3505373 () Bool)

(declare-fun e!2170337 () List!37429)

(assert (=> b!3505373 (= e!2170337 (Cons!37305 (c!602786 (regex!5468 (rule!8098 separatorToken!241))) Nil!37305))))

(declare-fun b!3505374 () Bool)

(assert (=> b!3505374 (= e!2170336 call!253009)))

(declare-fun bm!253005 () Bool)

(declare-fun call!253011 () List!37429)

(assert (=> bm!253005 (= call!253009 (++!9231 (ite c!602956 call!253010 call!253011) (ite c!602956 call!253011 call!253010)))))

(declare-fun b!3505375 () Bool)

(declare-fun e!2170339 () List!37429)

(assert (=> b!3505375 (= e!2170339 Nil!37305)))

(declare-fun d!1018599 () Bool)

(declare-fun c!602958 () Bool)

(assert (=> d!1018599 (= c!602958 (or ((_ is EmptyExpr!10227) (regex!5468 (rule!8098 separatorToken!241))) ((_ is EmptyLang!10227) (regex!5468 (rule!8098 separatorToken!241)))))))

(assert (=> d!1018599 (= (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241))) e!2170339)))

(declare-fun bm!253006 () Bool)

(assert (=> bm!253006 (= call!253011 (usedCharacters!702 (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))))))

(declare-fun b!3505376 () Bool)

(assert (=> b!3505376 (= e!2170339 e!2170337)))

(declare-fun c!602955 () Bool)

(assert (=> b!3505376 (= c!602955 ((_ is ElementMatch!10227) (regex!5468 (rule!8098 separatorToken!241))))))

(declare-fun b!3505377 () Bool)

(assert (=> b!3505377 (= c!602957 ((_ is Star!10227) (regex!5468 (rule!8098 separatorToken!241))))))

(assert (=> b!3505377 (= e!2170337 e!2170338)))

(assert (= (and d!1018599 c!602958) b!3505375))

(assert (= (and d!1018599 (not c!602958)) b!3505376))

(assert (= (and b!3505376 c!602955) b!3505373))

(assert (= (and b!3505376 (not c!602955)) b!3505377))

(assert (= (and b!3505377 c!602957) b!3505371))

(assert (= (and b!3505377 (not c!602957)) b!3505372))

(assert (= (and b!3505372 c!602956) b!3505370))

(assert (= (and b!3505372 (not c!602956)) b!3505374))

(assert (= (or b!3505370 b!3505374) bm!253006))

(assert (= (or b!3505370 b!3505374) bm!253004))

(assert (= (or b!3505370 b!3505374) bm!253005))

(assert (= (or b!3505371 bm!253004) bm!253003))

(declare-fun m!3942861 () Bool)

(assert (=> bm!253003 m!3942861))

(declare-fun m!3942863 () Bool)

(assert (=> bm!253005 m!3942863))

(declare-fun m!3942865 () Bool)

(assert (=> bm!253006 m!3942865))

(assert (=> b!3504517 d!1018599))

(declare-fun d!1018601 () Bool)

(assert (=> d!1018601 (= (head!7371 lt!1195070) (h!42725 lt!1195070))))

(assert (=> b!3504517 d!1018601))

(declare-fun d!1018603 () Bool)

(declare-fun lt!1195433 () Bool)

(assert (=> d!1018603 (= lt!1195433 (select (content!5247 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494))))) lt!1195073))))

(declare-fun e!2170340 () Bool)

(assert (=> d!1018603 (= lt!1195433 e!2170340)))

(declare-fun res!1414062 () Bool)

(assert (=> d!1018603 (=> (not res!1414062) (not e!2170340))))

(assert (=> d!1018603 (= res!1414062 ((_ is Cons!37305) (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))

(assert (=> d!1018603 (= (contains!6980 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195073) lt!1195433)))

(declare-fun b!3505378 () Bool)

(declare-fun e!2170341 () Bool)

(assert (=> b!3505378 (= e!2170340 e!2170341)))

(declare-fun res!1414061 () Bool)

(assert (=> b!3505378 (=> res!1414061 e!2170341)))

(assert (=> b!3505378 (= res!1414061 (= (h!42725 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494))))) lt!1195073))))

(declare-fun b!3505379 () Bool)

(assert (=> b!3505379 (= e!2170341 (contains!6980 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494))))) lt!1195073))))

(assert (= (and d!1018603 res!1414062) b!3505378))

(assert (= (and b!3505378 (not res!1414061)) b!3505379))

(assert (=> d!1018603 m!3941457))

(declare-fun m!3942867 () Bool)

(assert (=> d!1018603 m!3942867))

(declare-fun m!3942869 () Bool)

(assert (=> d!1018603 m!3942869))

(declare-fun m!3942871 () Bool)

(assert (=> b!3505379 m!3942871))

(assert (=> b!3504517 d!1018603))

(declare-fun d!1018605 () Bool)

(assert (=> d!1018605 (= (isDefined!5854 lt!1195063) (not (isEmpty!21756 lt!1195063)))))

(declare-fun bs!563950 () Bool)

(assert (= bs!563950 d!1018605))

(declare-fun m!3942873 () Bool)

(assert (=> bs!563950 m!3942873))

(assert (=> b!3504517 d!1018605))

(declare-fun d!1018607 () Bool)

(declare-fun dynLambda!15856 (Int BalanceConc!22236) TokenValue!5698)

(assert (=> d!1018607 (= (apply!8865 (transformation!5468 (rule!8098 (h!42727 tokens!494))) lt!1195088) (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195088))))

(declare-fun b_lambda!101939 () Bool)

(assert (=> (not b_lambda!101939) (not d!1018607)))

(declare-fun t!279312 () Bool)

(declare-fun tb!194401 () Bool)

(assert (=> (and b!3504516 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279312) tb!194401))

(declare-fun result!238684 () Bool)

(assert (=> tb!194401 (= result!238684 (inv!21 (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195088)))))

(declare-fun m!3942875 () Bool)

(assert (=> tb!194401 m!3942875))

(assert (=> d!1018607 t!279312))

(declare-fun b_and!248761 () Bool)

(assert (= b_and!248675 (and (=> t!279312 result!238684) b_and!248761)))

(declare-fun tb!194403 () Bool)

(declare-fun t!279314 () Bool)

(assert (=> (and b!3504518 (= (toValue!7712 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279314) tb!194403))

(declare-fun result!238688 () Bool)

(assert (= result!238688 result!238684))

(assert (=> d!1018607 t!279314))

(declare-fun b_and!248763 () Bool)

(assert (= b_and!248679 (and (=> t!279314 result!238688) b_and!248763)))

(declare-fun tb!194405 () Bool)

(declare-fun t!279316 () Bool)

(assert (=> (and b!3504500 (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279316) tb!194405))

(declare-fun result!238690 () Bool)

(assert (= result!238690 result!238684))

(assert (=> d!1018607 t!279316))

(declare-fun b_and!248765 () Bool)

(assert (= b_and!248683 (and (=> t!279316 result!238690) b_and!248765)))

(declare-fun m!3942877 () Bool)

(assert (=> d!1018607 m!3942877))

(assert (=> b!3504517 d!1018607))

(declare-fun d!1018609 () Bool)

(assert (=> d!1018609 (= (inv!50519 (tag!6100 (h!42726 rules!2135))) (= (mod (str.len (value!176297 (tag!6100 (h!42726 rules!2135)))) 2) 0))))

(assert (=> b!3504495 d!1018609))

(declare-fun d!1018611 () Bool)

(declare-fun res!1414063 () Bool)

(declare-fun e!2170345 () Bool)

(assert (=> d!1018611 (=> (not res!1414063) (not e!2170345))))

(assert (=> d!1018611 (= res!1414063 (semiInverseModEq!2307 (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (h!42726 rules!2135)))))))

(assert (=> d!1018611 (= (inv!50522 (transformation!5468 (h!42726 rules!2135))) e!2170345)))

(declare-fun b!3505382 () Bool)

(assert (=> b!3505382 (= e!2170345 (equivClasses!2206 (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (h!42726 rules!2135)))))))

(assert (= (and d!1018611 res!1414063) b!3505382))

(declare-fun m!3942879 () Bool)

(assert (=> d!1018611 m!3942879))

(declare-fun m!3942881 () Bool)

(assert (=> b!3505382 m!3942881))

(assert (=> b!3504495 d!1018611))

(declare-fun d!1018613 () Bool)

(declare-fun lt!1195436 () Token!10302)

(assert (=> d!1018613 (= lt!1195436 (apply!8868 (list!13633 (_1!21690 lt!1195061)) 0))))

(declare-fun apply!8869 (Conc!11312 Int) Token!10302)

(assert (=> d!1018613 (= lt!1195436 (apply!8869 (c!602788 (_1!21690 lt!1195061)) 0))))

(declare-fun e!2170348 () Bool)

(assert (=> d!1018613 e!2170348))

(declare-fun res!1414066 () Bool)

(assert (=> d!1018613 (=> (not res!1414066) (not e!2170348))))

(assert (=> d!1018613 (= res!1414066 (<= 0 0))))

(assert (=> d!1018613 (= (apply!8864 (_1!21690 lt!1195061) 0) lt!1195436)))

(declare-fun b!3505385 () Bool)

(assert (=> b!3505385 (= e!2170348 (< 0 (size!28364 (_1!21690 lt!1195061))))))

(assert (= (and d!1018613 res!1414066) b!3505385))

(assert (=> d!1018613 m!3942189))

(assert (=> d!1018613 m!3942189))

(declare-fun m!3942883 () Bool)

(assert (=> d!1018613 m!3942883))

(declare-fun m!3942885 () Bool)

(assert (=> d!1018613 m!3942885))

(assert (=> b!3505385 m!3941439))

(assert (=> b!3504497 d!1018613))

(declare-fun d!1018615 () Bool)

(assert (=> d!1018615 (= (isEmpty!21745 rules!2135) ((_ is Nil!37306) rules!2135))))

(assert (=> b!3504496 d!1018615))

(declare-fun b!3505386 () Bool)

(declare-fun e!2170349 () Bool)

(assert (=> b!3505386 (= e!2170349 (inv!15 (value!176298 (h!42727 tokens!494))))))

(declare-fun b!3505387 () Bool)

(declare-fun res!1414067 () Bool)

(assert (=> b!3505387 (=> res!1414067 e!2170349)))

(assert (=> b!3505387 (= res!1414067 (not ((_ is IntegerValue!17096) (value!176298 (h!42727 tokens!494)))))))

(declare-fun e!2170350 () Bool)

(assert (=> b!3505387 (= e!2170350 e!2170349)))

(declare-fun b!3505388 () Bool)

(assert (=> b!3505388 (= e!2170350 (inv!17 (value!176298 (h!42727 tokens!494))))))

(declare-fun d!1018617 () Bool)

(declare-fun c!602960 () Bool)

(assert (=> d!1018617 (= c!602960 ((_ is IntegerValue!17094) (value!176298 (h!42727 tokens!494))))))

(declare-fun e!2170351 () Bool)

(assert (=> d!1018617 (= (inv!21 (value!176298 (h!42727 tokens!494))) e!2170351)))

(declare-fun b!3505389 () Bool)

(assert (=> b!3505389 (= e!2170351 (inv!16 (value!176298 (h!42727 tokens!494))))))

(declare-fun b!3505390 () Bool)

(assert (=> b!3505390 (= e!2170351 e!2170350)))

(declare-fun c!602959 () Bool)

(assert (=> b!3505390 (= c!602959 ((_ is IntegerValue!17095) (value!176298 (h!42727 tokens!494))))))

(assert (= (and d!1018617 c!602960) b!3505389))

(assert (= (and d!1018617 (not c!602960)) b!3505390))

(assert (= (and b!3505390 c!602959) b!3505388))

(assert (= (and b!3505390 (not c!602959)) b!3505387))

(assert (= (and b!3505387 (not res!1414067)) b!3505386))

(declare-fun m!3942887 () Bool)

(assert (=> b!3505386 m!3942887))

(declare-fun m!3942889 () Bool)

(assert (=> b!3505388 m!3942889))

(declare-fun m!3942891 () Bool)

(assert (=> b!3505389 m!3942891))

(assert (=> b!3504519 d!1018617))

(declare-fun d!1018619 () Bool)

(declare-fun res!1414072 () Bool)

(declare-fun e!2170356 () Bool)

(assert (=> d!1018619 (=> res!1414072 e!2170356)))

(assert (=> d!1018619 (= res!1414072 ((_ is Nil!37307) tokens!494))))

(assert (=> d!1018619 (= (forall!8003 tokens!494 lambda!122514) e!2170356)))

(declare-fun b!3505395 () Bool)

(declare-fun e!2170357 () Bool)

(assert (=> b!3505395 (= e!2170356 e!2170357)))

(declare-fun res!1414073 () Bool)

(assert (=> b!3505395 (=> (not res!1414073) (not e!2170357))))

(assert (=> b!3505395 (= res!1414073 (dynLambda!15854 lambda!122514 (h!42727 tokens!494)))))

(declare-fun b!3505396 () Bool)

(assert (=> b!3505396 (= e!2170357 (forall!8003 (t!279242 tokens!494) lambda!122514))))

(assert (= (and d!1018619 (not res!1414072)) b!3505395))

(assert (= (and b!3505395 res!1414073) b!3505396))

(declare-fun b_lambda!101941 () Bool)

(assert (=> (not b_lambda!101941) (not b!3505395)))

(assert (=> b!3505395 m!3942107))

(declare-fun m!3942893 () Bool)

(assert (=> b!3505396 m!3942893))

(assert (=> b!3504521 d!1018619))

(declare-fun d!1018621 () Bool)

(declare-fun lt!1195437 () Token!10302)

(assert (=> d!1018621 (= lt!1195437 (apply!8868 (list!13633 (_1!21690 lt!1195068)) 0))))

(assert (=> d!1018621 (= lt!1195437 (apply!8869 (c!602788 (_1!21690 lt!1195068)) 0))))

(declare-fun e!2170358 () Bool)

(assert (=> d!1018621 e!2170358))

(declare-fun res!1414074 () Bool)

(assert (=> d!1018621 (=> (not res!1414074) (not e!2170358))))

(assert (=> d!1018621 (= res!1414074 (<= 0 0))))

(assert (=> d!1018621 (= (apply!8864 (_1!21690 lt!1195068) 0) lt!1195437)))

(declare-fun b!3505397 () Bool)

(assert (=> b!3505397 (= e!2170358 (< 0 (size!28364 (_1!21690 lt!1195068))))))

(assert (= (and d!1018621 res!1414074) b!3505397))

(assert (=> d!1018621 m!3942841))

(assert (=> d!1018621 m!3942841))

(declare-fun m!3942895 () Bool)

(assert (=> d!1018621 m!3942895))

(declare-fun m!3942897 () Bool)

(assert (=> d!1018621 m!3942897))

(assert (=> b!3505397 m!3941419))

(assert (=> b!3504520 d!1018621))

(declare-fun d!1018623 () Bool)

(declare-fun e!2170360 () Bool)

(assert (=> d!1018623 e!2170360))

(declare-fun res!1414076 () Bool)

(assert (=> d!1018623 (=> (not res!1414076) (not e!2170360))))

(declare-fun lt!1195438 () List!37429)

(assert (=> d!1018623 (= res!1414076 (= (content!5247 lt!1195438) ((_ map or) (content!5247 lt!1195055) (content!5247 lt!1195059))))))

(declare-fun e!2170359 () List!37429)

(assert (=> d!1018623 (= lt!1195438 e!2170359)))

(declare-fun c!602961 () Bool)

(assert (=> d!1018623 (= c!602961 ((_ is Nil!37305) lt!1195055))))

(assert (=> d!1018623 (= (++!9231 lt!1195055 lt!1195059) lt!1195438)))

(declare-fun b!3505399 () Bool)

(assert (=> b!3505399 (= e!2170359 (Cons!37305 (h!42725 lt!1195055) (++!9231 (t!279240 lt!1195055) lt!1195059)))))

(declare-fun b!3505398 () Bool)

(assert (=> b!3505398 (= e!2170359 lt!1195059)))

(declare-fun b!3505401 () Bool)

(assert (=> b!3505401 (= e!2170360 (or (not (= lt!1195059 Nil!37305)) (= lt!1195438 lt!1195055)))))

(declare-fun b!3505400 () Bool)

(declare-fun res!1414075 () Bool)

(assert (=> b!3505400 (=> (not res!1414075) (not e!2170360))))

(assert (=> b!3505400 (= res!1414075 (= (size!28365 lt!1195438) (+ (size!28365 lt!1195055) (size!28365 lt!1195059))))))

(assert (= (and d!1018623 c!602961) b!3505398))

(assert (= (and d!1018623 (not c!602961)) b!3505399))

(assert (= (and d!1018623 res!1414076) b!3505400))

(assert (= (and b!3505400 res!1414075) b!3505401))

(declare-fun m!3942899 () Bool)

(assert (=> d!1018623 m!3942899))

(assert (=> d!1018623 m!3942137))

(declare-fun m!3942901 () Bool)

(assert (=> d!1018623 m!3942901))

(declare-fun m!3942903 () Bool)

(assert (=> b!3505399 m!3942903))

(declare-fun m!3942905 () Bool)

(assert (=> b!3505400 m!3942905))

(assert (=> b!3505400 m!3941467))

(declare-fun m!3942907 () Bool)

(assert (=> b!3505400 m!3942907))

(assert (=> b!3504499 d!1018623))

(declare-fun d!1018625 () Bool)

(assert (=> d!1018625 (= (++!9231 (++!9231 lt!1195055 lt!1195070) lt!1195084) (++!9231 lt!1195055 (++!9231 lt!1195070 lt!1195084)))))

(declare-fun lt!1195441 () Unit!52870)

(declare-fun choose!20346 (List!37429 List!37429 List!37429) Unit!52870)

(assert (=> d!1018625 (= lt!1195441 (choose!20346 lt!1195055 lt!1195070 lt!1195084))))

(assert (=> d!1018625 (= (lemmaConcatAssociativity!1996 lt!1195055 lt!1195070 lt!1195084) lt!1195441)))

(declare-fun bs!563951 () Bool)

(assert (= bs!563951 d!1018625))

(assert (=> bs!563951 m!3941479))

(declare-fun m!3942909 () Bool)

(assert (=> bs!563951 m!3942909))

(assert (=> bs!563951 m!3941493))

(declare-fun m!3942911 () Bool)

(assert (=> bs!563951 m!3942911))

(assert (=> bs!563951 m!3941479))

(assert (=> bs!563951 m!3941481))

(assert (=> bs!563951 m!3941493))

(assert (=> b!3504499 d!1018625))

(declare-fun d!1018627 () Bool)

(declare-fun lt!1195442 () BalanceConc!22236)

(assert (=> d!1018627 (= (list!13629 lt!1195442) (printList!1605 thiss!18206 (list!13633 lt!1195069)))))

(assert (=> d!1018627 (= lt!1195442 (printTailRec!1552 thiss!18206 lt!1195069 0 (BalanceConc!22237 Empty!11311)))))

(assert (=> d!1018627 (= (print!2122 thiss!18206 lt!1195069) lt!1195442)))

(declare-fun bs!563952 () Bool)

(assert (= bs!563952 d!1018627))

(declare-fun m!3942913 () Bool)

(assert (=> bs!563952 m!3942913))

(declare-fun m!3942915 () Bool)

(assert (=> bs!563952 m!3942915))

(assert (=> bs!563952 m!3942915))

(declare-fun m!3942917 () Bool)

(assert (=> bs!563952 m!3942917))

(assert (=> bs!563952 m!3941347))

(assert (=> b!3504522 d!1018627))

(declare-fun d!1018629 () Bool)

(assert (=> d!1018629 (= (list!13629 lt!1195080) (list!13632 (c!602787 lt!1195080)))))

(declare-fun bs!563953 () Bool)

(assert (= bs!563953 d!1018629))

(declare-fun m!3942919 () Bool)

(assert (=> bs!563953 m!3942919))

(assert (=> b!3504522 d!1018629))

(declare-fun d!1018631 () Bool)

(declare-fun lt!1195447 () BalanceConc!22236)

(assert (=> d!1018631 (= (list!13629 lt!1195447) (printListTailRec!712 thiss!18206 (dropList!1229 lt!1195069 0) (list!13629 (BalanceConc!22237 Empty!11311))))))

(declare-fun e!2170361 () BalanceConc!22236)

(assert (=> d!1018631 (= lt!1195447 e!2170361)))

(declare-fun c!602962 () Bool)

(assert (=> d!1018631 (= c!602962 (>= 0 (size!28364 lt!1195069)))))

(declare-fun e!2170362 () Bool)

(assert (=> d!1018631 e!2170362))

(declare-fun res!1414077 () Bool)

(assert (=> d!1018631 (=> (not res!1414077) (not e!2170362))))

(assert (=> d!1018631 (= res!1414077 (>= 0 0))))

(assert (=> d!1018631 (= (printTailRec!1552 thiss!18206 lt!1195069 0 (BalanceConc!22237 Empty!11311)) lt!1195447)))

(declare-fun b!3505402 () Bool)

(assert (=> b!3505402 (= e!2170362 (<= 0 (size!28364 lt!1195069)))))

(declare-fun b!3505403 () Bool)

(assert (=> b!3505403 (= e!2170361 (BalanceConc!22237 Empty!11311))))

(declare-fun b!3505404 () Bool)

(assert (=> b!3505404 (= e!2170361 (printTailRec!1552 thiss!18206 lt!1195069 (+ 0 1) (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195069 0)))))))

(declare-fun lt!1195448 () List!37431)

(assert (=> b!3505404 (= lt!1195448 (list!13633 lt!1195069))))

(declare-fun lt!1195449 () Unit!52870)

(assert (=> b!3505404 (= lt!1195449 (lemmaDropApply!1187 lt!1195448 0))))

(assert (=> b!3505404 (= (head!7373 (drop!2041 lt!1195448 0)) (apply!8868 lt!1195448 0))))

(declare-fun lt!1195446 () Unit!52870)

(assert (=> b!3505404 (= lt!1195446 lt!1195449)))

(declare-fun lt!1195444 () List!37431)

(assert (=> b!3505404 (= lt!1195444 (list!13633 lt!1195069))))

(declare-fun lt!1195445 () Unit!52870)

(assert (=> b!3505404 (= lt!1195445 (lemmaDropTail!1071 lt!1195444 0))))

(assert (=> b!3505404 (= (tail!5481 (drop!2041 lt!1195444 0)) (drop!2041 lt!1195444 (+ 0 1)))))

(declare-fun lt!1195443 () Unit!52870)

(assert (=> b!3505404 (= lt!1195443 lt!1195445)))

(assert (= (and d!1018631 res!1414077) b!3505402))

(assert (= (and d!1018631 c!602962) b!3505403))

(assert (= (and d!1018631 (not c!602962)) b!3505404))

(declare-fun m!3942921 () Bool)

(assert (=> d!1018631 m!3942921))

(assert (=> d!1018631 m!3942921))

(assert (=> d!1018631 m!3942155))

(declare-fun m!3942923 () Bool)

(assert (=> d!1018631 m!3942923))

(declare-fun m!3942925 () Bool)

(assert (=> d!1018631 m!3942925))

(declare-fun m!3942927 () Bool)

(assert (=> d!1018631 m!3942927))

(assert (=> d!1018631 m!3942155))

(assert (=> b!3505402 m!3942927))

(declare-fun m!3942929 () Bool)

(assert (=> b!3505404 m!3942929))

(declare-fun m!3942931 () Bool)

(assert (=> b!3505404 m!3942931))

(declare-fun m!3942933 () Bool)

(assert (=> b!3505404 m!3942933))

(assert (=> b!3505404 m!3942929))

(declare-fun m!3942935 () Bool)

(assert (=> b!3505404 m!3942935))

(declare-fun m!3942937 () Bool)

(assert (=> b!3505404 m!3942937))

(assert (=> b!3505404 m!3942933))

(declare-fun m!3942939 () Bool)

(assert (=> b!3505404 m!3942939))

(declare-fun m!3942941 () Bool)

(assert (=> b!3505404 m!3942941))

(declare-fun m!3942943 () Bool)

(assert (=> b!3505404 m!3942943))

(declare-fun m!3942945 () Bool)

(assert (=> b!3505404 m!3942945))

(assert (=> b!3505404 m!3942937))

(declare-fun m!3942947 () Bool)

(assert (=> b!3505404 m!3942947))

(assert (=> b!3505404 m!3942943))

(assert (=> b!3505404 m!3942935))

(declare-fun m!3942949 () Bool)

(assert (=> b!3505404 m!3942949))

(assert (=> b!3505404 m!3942915))

(declare-fun m!3942951 () Bool)

(assert (=> b!3505404 m!3942951))

(assert (=> b!3504522 d!1018631))

(declare-fun d!1018633 () Bool)

(declare-fun e!2170363 () Bool)

(assert (=> d!1018633 e!2170363))

(declare-fun res!1414078 () Bool)

(assert (=> d!1018633 (=> (not res!1414078) (not e!2170363))))

(declare-fun lt!1195450 () BalanceConc!22238)

(assert (=> d!1018633 (= res!1414078 (= (list!13633 lt!1195450) (Cons!37307 (h!42727 tokens!494) Nil!37307)))))

(assert (=> d!1018633 (= lt!1195450 (singleton!1144 (h!42727 tokens!494)))))

(assert (=> d!1018633 (= (singletonSeq!2564 (h!42727 tokens!494)) lt!1195450)))

(declare-fun b!3505405 () Bool)

(assert (=> b!3505405 (= e!2170363 (isBalanced!3447 (c!602788 lt!1195450)))))

(assert (= (and d!1018633 res!1414078) b!3505405))

(declare-fun m!3942953 () Bool)

(assert (=> d!1018633 m!3942953))

(declare-fun m!3942955 () Bool)

(assert (=> d!1018633 m!3942955))

(declare-fun m!3942957 () Bool)

(assert (=> b!3505405 m!3942957))

(assert (=> b!3504522 d!1018633))

(declare-fun d!1018635 () Bool)

(declare-fun c!602965 () Bool)

(assert (=> d!1018635 (= c!602965 ((_ is Cons!37307) (Cons!37307 (h!42727 tokens!494) Nil!37307)))))

(declare-fun e!2170366 () List!37429)

(assert (=> d!1018635 (= (printList!1605 thiss!18206 (Cons!37307 (h!42727 tokens!494) Nil!37307)) e!2170366)))

(declare-fun b!3505410 () Bool)

(assert (=> b!3505410 (= e!2170366 (++!9231 (list!13629 (charsOf!3482 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))) (printList!1605 thiss!18206 (t!279242 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))))

(declare-fun b!3505411 () Bool)

(assert (=> b!3505411 (= e!2170366 Nil!37305)))

(assert (= (and d!1018635 c!602965) b!3505410))

(assert (= (and d!1018635 (not c!602965)) b!3505411))

(declare-fun m!3942959 () Bool)

(assert (=> b!3505410 m!3942959))

(assert (=> b!3505410 m!3942959))

(declare-fun m!3942961 () Bool)

(assert (=> b!3505410 m!3942961))

(declare-fun m!3942963 () Bool)

(assert (=> b!3505410 m!3942963))

(assert (=> b!3505410 m!3942961))

(assert (=> b!3505410 m!3942963))

(declare-fun m!3942965 () Bool)

(assert (=> b!3505410 m!3942965))

(assert (=> b!3504522 d!1018635))

(declare-fun d!1018637 () Bool)

(assert (=> d!1018637 (= (inv!50519 (tag!6100 (rule!8098 separatorToken!241))) (= (mod (str.len (value!176297 (tag!6100 (rule!8098 separatorToken!241)))) 2) 0))))

(assert (=> b!3504523 d!1018637))

(declare-fun d!1018639 () Bool)

(declare-fun res!1414079 () Bool)

(declare-fun e!2170367 () Bool)

(assert (=> d!1018639 (=> (not res!1414079) (not e!2170367))))

(assert (=> d!1018639 (= res!1414079 (semiInverseModEq!2307 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241)))))))

(assert (=> d!1018639 (= (inv!50522 (transformation!5468 (rule!8098 separatorToken!241))) e!2170367)))

(declare-fun b!3505412 () Bool)

(assert (=> b!3505412 (= e!2170367 (equivClasses!2206 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241)))))))

(assert (= (and d!1018639 res!1414079) b!3505412))

(declare-fun m!3942967 () Bool)

(assert (=> d!1018639 m!3942967))

(declare-fun m!3942969 () Bool)

(assert (=> b!3505412 m!3942969))

(assert (=> b!3504523 d!1018639))

(declare-fun b!3505413 () Bool)

(declare-fun e!2170373 () Bool)

(declare-fun lt!1195451 () Bool)

(assert (=> b!3505413 (= e!2170373 (not lt!1195451))))

(declare-fun b!3505414 () Bool)

(declare-fun res!1414086 () Bool)

(declare-fun e!2170370 () Bool)

(assert (=> b!3505414 (=> res!1414086 e!2170370)))

(declare-fun e!2170374 () Bool)

(assert (=> b!3505414 (= res!1414086 e!2170374)))

(declare-fun res!1414087 () Bool)

(assert (=> b!3505414 (=> (not res!1414087) (not e!2170374))))

(assert (=> b!3505414 (= res!1414087 lt!1195451)))

(declare-fun b!3505415 () Bool)

(declare-fun e!2170371 () Bool)

(assert (=> b!3505415 (= e!2170371 e!2170373)))

(declare-fun c!602966 () Bool)

(assert (=> b!3505415 (= c!602966 ((_ is EmptyLang!10227) (regex!5468 lt!1195056)))))

(declare-fun b!3505416 () Bool)

(assert (=> b!3505416 (= e!2170374 (= (head!7371 lt!1195055) (c!602786 (regex!5468 lt!1195056))))))

(declare-fun b!3505417 () Bool)

(declare-fun res!1414082 () Bool)

(assert (=> b!3505417 (=> res!1414082 e!2170370)))

(assert (=> b!3505417 (= res!1414082 (not ((_ is ElementMatch!10227) (regex!5468 lt!1195056))))))

(assert (=> b!3505417 (= e!2170373 e!2170370)))

(declare-fun b!3505418 () Bool)

(declare-fun e!2170369 () Bool)

(assert (=> b!3505418 (= e!2170369 (nullable!3512 (regex!5468 lt!1195056)))))

(declare-fun b!3505419 () Bool)

(declare-fun res!1414083 () Bool)

(assert (=> b!3505419 (=> (not res!1414083) (not e!2170374))))

(assert (=> b!3505419 (= res!1414083 (isEmpty!21746 (tail!5480 lt!1195055)))))

(declare-fun b!3505420 () Bool)

(declare-fun e!2170372 () Bool)

(assert (=> b!3505420 (= e!2170372 (not (= (head!7371 lt!1195055) (c!602786 (regex!5468 lt!1195056)))))))

(declare-fun b!3505421 () Bool)

(declare-fun e!2170368 () Bool)

(assert (=> b!3505421 (= e!2170370 e!2170368)))

(declare-fun res!1414080 () Bool)

(assert (=> b!3505421 (=> (not res!1414080) (not e!2170368))))

(assert (=> b!3505421 (= res!1414080 (not lt!1195451))))

(declare-fun b!3505422 () Bool)

(assert (=> b!3505422 (= e!2170369 (matchR!4811 (derivativeStep!3065 (regex!5468 lt!1195056) (head!7371 lt!1195055)) (tail!5480 lt!1195055)))))

(declare-fun b!3505423 () Bool)

(assert (=> b!3505423 (= e!2170368 e!2170372)))

(declare-fun res!1414081 () Bool)

(assert (=> b!3505423 (=> res!1414081 e!2170372)))

(declare-fun call!253012 () Bool)

(assert (=> b!3505423 (= res!1414081 call!253012)))

(declare-fun d!1018641 () Bool)

(assert (=> d!1018641 e!2170371))

(declare-fun c!602967 () Bool)

(assert (=> d!1018641 (= c!602967 ((_ is EmptyExpr!10227) (regex!5468 lt!1195056)))))

(assert (=> d!1018641 (= lt!1195451 e!2170369)))

(declare-fun c!602968 () Bool)

(assert (=> d!1018641 (= c!602968 (isEmpty!21746 lt!1195055))))

(assert (=> d!1018641 (validRegex!4668 (regex!5468 lt!1195056))))

(assert (=> d!1018641 (= (matchR!4811 (regex!5468 lt!1195056) lt!1195055) lt!1195451)))

(declare-fun bm!253007 () Bool)

(assert (=> bm!253007 (= call!253012 (isEmpty!21746 lt!1195055))))

(declare-fun b!3505424 () Bool)

(declare-fun res!1414084 () Bool)

(assert (=> b!3505424 (=> (not res!1414084) (not e!2170374))))

(assert (=> b!3505424 (= res!1414084 (not call!253012))))

(declare-fun b!3505425 () Bool)

(declare-fun res!1414085 () Bool)

(assert (=> b!3505425 (=> res!1414085 e!2170372)))

(assert (=> b!3505425 (= res!1414085 (not (isEmpty!21746 (tail!5480 lt!1195055))))))

(declare-fun b!3505426 () Bool)

(assert (=> b!3505426 (= e!2170371 (= lt!1195451 call!253012))))

(assert (= (and d!1018641 c!602968) b!3505418))

(assert (= (and d!1018641 (not c!602968)) b!3505422))

(assert (= (and d!1018641 c!602967) b!3505426))

(assert (= (and d!1018641 (not c!602967)) b!3505415))

(assert (= (and b!3505415 c!602966) b!3505413))

(assert (= (and b!3505415 (not c!602966)) b!3505417))

(assert (= (and b!3505417 (not res!1414082)) b!3505414))

(assert (= (and b!3505414 res!1414087) b!3505424))

(assert (= (and b!3505424 res!1414084) b!3505419))

(assert (= (and b!3505419 res!1414083) b!3505416))

(assert (= (and b!3505414 (not res!1414086)) b!3505421))

(assert (= (and b!3505421 res!1414080) b!3505423))

(assert (= (and b!3505423 (not res!1414081)) b!3505425))

(assert (= (and b!3505425 (not res!1414085)) b!3505420))

(assert (= (or b!3505426 b!3505424 b!3505423) bm!253007))

(declare-fun m!3942971 () Bool)

(assert (=> b!3505425 m!3942971))

(assert (=> b!3505425 m!3942971))

(declare-fun m!3942973 () Bool)

(assert (=> b!3505425 m!3942973))

(declare-fun m!3942975 () Bool)

(assert (=> b!3505418 m!3942975))

(declare-fun m!3942977 () Bool)

(assert (=> b!3505422 m!3942977))

(assert (=> b!3505422 m!3942977))

(declare-fun m!3942979 () Bool)

(assert (=> b!3505422 m!3942979))

(assert (=> b!3505422 m!3942971))

(assert (=> b!3505422 m!3942979))

(assert (=> b!3505422 m!3942971))

(declare-fun m!3942981 () Bool)

(assert (=> b!3505422 m!3942981))

(declare-fun m!3942983 () Bool)

(assert (=> bm!253007 m!3942983))

(assert (=> b!3505420 m!3942977))

(assert (=> b!3505416 m!3942977))

(assert (=> d!1018641 m!3942983))

(declare-fun m!3942985 () Bool)

(assert (=> d!1018641 m!3942985))

(assert (=> b!3505419 m!3942971))

(assert (=> b!3505419 m!3942971))

(assert (=> b!3505419 m!3942973))

(assert (=> b!3504525 d!1018641))

(declare-fun d!1018643 () Bool)

(assert (=> d!1018643 (= (get!11969 lt!1195079) (v!37044 lt!1195079))))

(assert (=> b!3504525 d!1018643))

(declare-fun bs!563954 () Bool)

(declare-fun d!1018645 () Bool)

(assert (= bs!563954 (and d!1018645 b!3504521)))

(declare-fun lambda!122525 () Int)

(assert (=> bs!563954 (not (= lambda!122525 lambda!122514))))

(declare-fun bs!563955 () Bool)

(assert (= bs!563955 (and d!1018645 b!3504517)))

(assert (=> bs!563955 (= lambda!122525 lambda!122515)))

(declare-fun b!3505432 () Bool)

(declare-fun e!2170380 () Bool)

(assert (=> b!3505432 (= e!2170380 true)))

(declare-fun b!3505431 () Bool)

(declare-fun e!2170379 () Bool)

(assert (=> b!3505431 (= e!2170379 e!2170380)))

(declare-fun b!3505430 () Bool)

(declare-fun e!2170378 () Bool)

(assert (=> b!3505430 (= e!2170378 e!2170379)))

(assert (=> d!1018645 e!2170378))

(assert (= b!3505431 b!3505432))

(assert (= b!3505430 b!3505431))

(assert (= (and d!1018645 ((_ is Cons!37306) rules!2135)) b!3505430))

(assert (=> b!3505432 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (h!42726 rules!2135)))) (dynLambda!15849 order!20019 lambda!122525))))

(assert (=> b!3505432 (< (dynLambda!15850 order!20021 (toChars!7571 (transformation!5468 (h!42726 rules!2135)))) (dynLambda!15849 order!20019 lambda!122525))))

(assert (=> d!1018645 true))

(declare-fun e!2170377 () Bool)

(assert (=> d!1018645 e!2170377))

(declare-fun res!1414090 () Bool)

(assert (=> d!1018645 (=> (not res!1414090) (not e!2170377))))

(declare-fun lt!1195454 () Bool)

(assert (=> d!1018645 (= res!1414090 (= lt!1195454 (forall!8003 (list!13633 (seqFromList!3989 tokens!494)) lambda!122525)))))

(declare-fun forall!8005 (BalanceConc!22238 Int) Bool)

(assert (=> d!1018645 (= lt!1195454 (forall!8005 (seqFromList!3989 tokens!494) lambda!122525))))

(assert (=> d!1018645 (not (isEmpty!21745 rules!2135))))

(assert (=> d!1018645 (= (rulesProduceEachTokenIndividually!1508 thiss!18206 rules!2135 (seqFromList!3989 tokens!494)) lt!1195454)))

(declare-fun b!3505429 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1879 (LexerInterface!5057 List!37430 List!37431) Bool)

(assert (=> b!3505429 (= e!2170377 (= lt!1195454 (rulesProduceEachTokenIndividuallyList!1879 thiss!18206 rules!2135 (list!13633 (seqFromList!3989 tokens!494)))))))

(assert (= (and d!1018645 res!1414090) b!3505429))

(assert (=> d!1018645 m!3941391))

(declare-fun m!3942987 () Bool)

(assert (=> d!1018645 m!3942987))

(assert (=> d!1018645 m!3942987))

(declare-fun m!3942989 () Bool)

(assert (=> d!1018645 m!3942989))

(assert (=> d!1018645 m!3941391))

(declare-fun m!3942991 () Bool)

(assert (=> d!1018645 m!3942991))

(assert (=> d!1018645 m!3941517))

(assert (=> b!3505429 m!3941391))

(assert (=> b!3505429 m!3942987))

(assert (=> b!3505429 m!3942987))

(declare-fun m!3942993 () Bool)

(assert (=> b!3505429 m!3942993))

(assert (=> b!3504524 d!1018645))

(declare-fun d!1018647 () Bool)

(declare-fun fromListB!1831 (List!37431) BalanceConc!22238)

(assert (=> d!1018647 (= (seqFromList!3989 tokens!494) (fromListB!1831 tokens!494))))

(declare-fun bs!563956 () Bool)

(assert (= bs!563956 d!1018647))

(declare-fun m!3942995 () Bool)

(assert (=> bs!563956 m!3942995))

(assert (=> b!3504524 d!1018647))

(declare-fun b!3505446 () Bool)

(declare-fun e!2170383 () Bool)

(declare-fun tp!1084809 () Bool)

(declare-fun tp!1084813 () Bool)

(assert (=> b!3505446 (= e!2170383 (and tp!1084809 tp!1084813))))

(declare-fun b!3505443 () Bool)

(declare-fun tp_is_empty!17605 () Bool)

(assert (=> b!3505443 (= e!2170383 tp_is_empty!17605)))

(declare-fun b!3505444 () Bool)

(declare-fun tp!1084812 () Bool)

(declare-fun tp!1084810 () Bool)

(assert (=> b!3505444 (= e!2170383 (and tp!1084812 tp!1084810))))

(declare-fun b!3505445 () Bool)

(declare-fun tp!1084811 () Bool)

(assert (=> b!3505445 (= e!2170383 tp!1084811)))

(assert (=> b!3504504 (= tp!1084727 e!2170383)))

(assert (= (and b!3504504 ((_ is ElementMatch!10227) (regex!5468 (rule!8098 (h!42727 tokens!494))))) b!3505443))

(assert (= (and b!3504504 ((_ is Concat!15925) (regex!5468 (rule!8098 (h!42727 tokens!494))))) b!3505444))

(assert (= (and b!3504504 ((_ is Star!10227) (regex!5468 (rule!8098 (h!42727 tokens!494))))) b!3505445))

(assert (= (and b!3504504 ((_ is Union!10227) (regex!5468 (rule!8098 (h!42727 tokens!494))))) b!3505446))

(declare-fun b!3505449 () Bool)

(declare-fun e!2170386 () Bool)

(assert (=> b!3505449 (= e!2170386 true)))

(declare-fun b!3505448 () Bool)

(declare-fun e!2170385 () Bool)

(assert (=> b!3505448 (= e!2170385 e!2170386)))

(declare-fun b!3505447 () Bool)

(declare-fun e!2170384 () Bool)

(assert (=> b!3505447 (= e!2170384 e!2170385)))

(assert (=> b!3504544 e!2170384))

(assert (= b!3505448 b!3505449))

(assert (= b!3505447 b!3505448))

(assert (= (and b!3504544 ((_ is Cons!37306) (t!279241 rules!2135))) b!3505447))

(assert (=> b!3505449 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135))))) (dynLambda!15849 order!20019 lambda!122515))))

(assert (=> b!3505449 (< (dynLambda!15850 order!20021 (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135))))) (dynLambda!15849 order!20019 lambda!122515))))

(declare-fun b!3505453 () Bool)

(declare-fun e!2170387 () Bool)

(declare-fun tp!1084814 () Bool)

(declare-fun tp!1084818 () Bool)

(assert (=> b!3505453 (= e!2170387 (and tp!1084814 tp!1084818))))

(declare-fun b!3505450 () Bool)

(assert (=> b!3505450 (= e!2170387 tp_is_empty!17605)))

(declare-fun b!3505451 () Bool)

(declare-fun tp!1084817 () Bool)

(declare-fun tp!1084815 () Bool)

(assert (=> b!3505451 (= e!2170387 (and tp!1084817 tp!1084815))))

(declare-fun b!3505452 () Bool)

(declare-fun tp!1084816 () Bool)

(assert (=> b!3505452 (= e!2170387 tp!1084816)))

(assert (=> b!3504495 (= tp!1084728 e!2170387)))

(assert (= (and b!3504495 ((_ is ElementMatch!10227) (regex!5468 (h!42726 rules!2135)))) b!3505450))

(assert (= (and b!3504495 ((_ is Concat!15925) (regex!5468 (h!42726 rules!2135)))) b!3505451))

(assert (= (and b!3504495 ((_ is Star!10227) (regex!5468 (h!42726 rules!2135)))) b!3505452))

(assert (= (and b!3504495 ((_ is Union!10227) (regex!5468 (h!42726 rules!2135)))) b!3505453))

(declare-fun b!3505458 () Bool)

(declare-fun e!2170390 () Bool)

(declare-fun tp!1084821 () Bool)

(assert (=> b!3505458 (= e!2170390 (and tp_is_empty!17605 tp!1084821))))

(assert (=> b!3504529 (= tp!1084725 e!2170390)))

(assert (= (and b!3504529 ((_ is Cons!37305) (originalCharacters!6182 separatorToken!241))) b!3505458))

(declare-fun b!3505469 () Bool)

(declare-fun b_free!90557 () Bool)

(declare-fun b_next!91261 () Bool)

(assert (=> b!3505469 (= b_free!90557 (not b_next!91261))))

(declare-fun t!279323 () Bool)

(declare-fun tb!194407 () Bool)

(assert (=> (and b!3505469 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279323) tb!194407))

(declare-fun result!238698 () Bool)

(assert (= result!238698 result!238684))

(assert (=> d!1018607 t!279323))

(declare-fun tp!1084830 () Bool)

(declare-fun b_and!248767 () Bool)

(assert (=> b!3505469 (= tp!1084830 (and (=> t!279323 result!238698) b_and!248767))))

(declare-fun b_free!90559 () Bool)

(declare-fun b_next!91263 () Bool)

(assert (=> b!3505469 (= b_free!90559 (not b_next!91263))))

(declare-fun tb!194409 () Bool)

(declare-fun t!279325 () Bool)

(assert (=> (and b!3505469 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279325) tb!194409))

(declare-fun result!238700 () Bool)

(assert (= result!238700 result!238632))

(assert (=> b!3504951 t!279325))

(assert (=> d!1018361 t!279325))

(declare-fun tb!194411 () Bool)

(declare-fun t!279327 () Bool)

(assert (=> (and b!3505469 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241)))) t!279327) tb!194411))

(declare-fun result!238702 () Bool)

(assert (= result!238702 result!238640))

(assert (=> d!1018389 t!279327))

(declare-fun t!279329 () Bool)

(declare-fun tb!194413 () Bool)

(assert (=> (and b!3505469 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))) t!279329) tb!194413))

(declare-fun result!238704 () Bool)

(assert (= result!238704 result!238646))

(assert (=> d!1018401 t!279329))

(assert (=> b!3504898 t!279327))

(declare-fun tp!1084833 () Bool)

(declare-fun b_and!248769 () Bool)

(assert (=> b!3505469 (= tp!1084833 (and (=> t!279327 result!238702) (=> t!279329 result!238704) (=> t!279325 result!238700) b_and!248769))))

(declare-fun e!2170400 () Bool)

(assert (=> b!3505469 (= e!2170400 (and tp!1084830 tp!1084833))))

(declare-fun tp!1084831 () Bool)

(declare-fun b!3505468 () Bool)

(declare-fun e!2170402 () Bool)

(assert (=> b!3505468 (= e!2170402 (and tp!1084831 (inv!50519 (tag!6100 (h!42726 (t!279241 rules!2135)))) (inv!50522 (transformation!5468 (h!42726 (t!279241 rules!2135)))) e!2170400))))

(declare-fun b!3505467 () Bool)

(declare-fun e!2170399 () Bool)

(declare-fun tp!1084832 () Bool)

(assert (=> b!3505467 (= e!2170399 (and e!2170402 tp!1084832))))

(assert (=> b!3504530 (= tp!1084726 e!2170399)))

(assert (= b!3505468 b!3505469))

(assert (= b!3505467 b!3505468))

(assert (= (and b!3504530 ((_ is Cons!37306) (t!279241 rules!2135))) b!3505467))

(declare-fun m!3942997 () Bool)

(assert (=> b!3505468 m!3942997))

(declare-fun m!3942999 () Bool)

(assert (=> b!3505468 m!3942999))

(declare-fun b!3505470 () Bool)

(declare-fun e!2170403 () Bool)

(declare-fun tp!1084834 () Bool)

(assert (=> b!3505470 (= e!2170403 (and tp_is_empty!17605 tp!1084834))))

(assert (=> b!3504519 (= tp!1084730 e!2170403)))

(assert (= (and b!3504519 ((_ is Cons!37305) (originalCharacters!6182 (h!42727 tokens!494)))) b!3505470))

(declare-fun b!3505474 () Bool)

(declare-fun e!2170404 () Bool)

(declare-fun tp!1084835 () Bool)

(declare-fun tp!1084839 () Bool)

(assert (=> b!3505474 (= e!2170404 (and tp!1084835 tp!1084839))))

(declare-fun b!3505471 () Bool)

(assert (=> b!3505471 (= e!2170404 tp_is_empty!17605)))

(declare-fun b!3505472 () Bool)

(declare-fun tp!1084838 () Bool)

(declare-fun tp!1084836 () Bool)

(assert (=> b!3505472 (= e!2170404 (and tp!1084838 tp!1084836))))

(declare-fun b!3505473 () Bool)

(declare-fun tp!1084837 () Bool)

(assert (=> b!3505473 (= e!2170404 tp!1084837)))

(assert (=> b!3504523 (= tp!1084729 e!2170404)))

(assert (= (and b!3504523 ((_ is ElementMatch!10227) (regex!5468 (rule!8098 separatorToken!241)))) b!3505471))

(assert (= (and b!3504523 ((_ is Concat!15925) (regex!5468 (rule!8098 separatorToken!241)))) b!3505472))

(assert (= (and b!3504523 ((_ is Star!10227) (regex!5468 (rule!8098 separatorToken!241)))) b!3505473))

(assert (= (and b!3504523 ((_ is Union!10227) (regex!5468 (rule!8098 separatorToken!241)))) b!3505474))

(declare-fun b!3505488 () Bool)

(declare-fun b_free!90561 () Bool)

(declare-fun b_next!91265 () Bool)

(assert (=> b!3505488 (= b_free!90561 (not b_next!91265))))

(declare-fun t!279331 () Bool)

(declare-fun tb!194415 () Bool)

(assert (=> (and b!3505488 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279331) tb!194415))

(declare-fun result!238708 () Bool)

(assert (= result!238708 result!238684))

(assert (=> d!1018607 t!279331))

(declare-fun tp!1084852 () Bool)

(declare-fun b_and!248771 () Bool)

(assert (=> b!3505488 (= tp!1084852 (and (=> t!279331 result!238708) b_and!248771))))

(declare-fun b_free!90563 () Bool)

(declare-fun b_next!91267 () Bool)

(assert (=> b!3505488 (= b_free!90563 (not b_next!91267))))

(declare-fun t!279333 () Bool)

(declare-fun tb!194417 () Bool)

(assert (=> (and b!3505488 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279333) tb!194417))

(declare-fun result!238710 () Bool)

(assert (= result!238710 result!238632))

(assert (=> b!3504951 t!279333))

(assert (=> d!1018361 t!279333))

(declare-fun tb!194419 () Bool)

(declare-fun t!279335 () Bool)

(assert (=> (and b!3505488 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241)))) t!279335) tb!194419))

(declare-fun result!238712 () Bool)

(assert (= result!238712 result!238640))

(assert (=> d!1018389 t!279335))

(declare-fun t!279337 () Bool)

(declare-fun tb!194421 () Bool)

(assert (=> (and b!3505488 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))) t!279337) tb!194421))

(declare-fun result!238714 () Bool)

(assert (= result!238714 result!238646))

(assert (=> d!1018401 t!279337))

(assert (=> b!3504898 t!279335))

(declare-fun b_and!248773 () Bool)

(declare-fun tp!1084850 () Bool)

(assert (=> b!3505488 (= tp!1084850 (and (=> t!279335 result!238712) (=> t!279333 result!238710) (=> t!279337 result!238714) b_and!248773))))

(declare-fun e!2170418 () Bool)

(assert (=> b!3505488 (= e!2170418 (and tp!1084852 tp!1084850))))

(declare-fun e!2170420 () Bool)

(declare-fun e!2170419 () Bool)

(declare-fun b!3505485 () Bool)

(declare-fun tp!1084854 () Bool)

(assert (=> b!3505485 (= e!2170420 (and (inv!50523 (h!42727 (t!279242 tokens!494))) e!2170419 tp!1084854))))

(declare-fun b!3505486 () Bool)

(declare-fun e!2170422 () Bool)

(declare-fun tp!1084853 () Bool)

(assert (=> b!3505486 (= e!2170419 (and (inv!21 (value!176298 (h!42727 (t!279242 tokens!494)))) e!2170422 tp!1084853))))

(assert (=> b!3504535 (= tp!1084732 e!2170420)))

(declare-fun tp!1084851 () Bool)

(declare-fun b!3505487 () Bool)

(assert (=> b!3505487 (= e!2170422 (and tp!1084851 (inv!50519 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))) (inv!50522 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) e!2170418))))

(assert (= b!3505487 b!3505488))

(assert (= b!3505486 b!3505487))

(assert (= b!3505485 b!3505486))

(assert (= (and b!3504535 ((_ is Cons!37307) (t!279242 tokens!494))) b!3505485))

(declare-fun m!3943001 () Bool)

(assert (=> b!3505485 m!3943001))

(declare-fun m!3943003 () Bool)

(assert (=> b!3505486 m!3943003))

(declare-fun m!3943005 () Bool)

(assert (=> b!3505487 m!3943005))

(declare-fun m!3943007 () Bool)

(assert (=> b!3505487 m!3943007))

(declare-fun b_lambda!101943 () Bool)

(assert (= b_lambda!101901 (or (and b!3505488 b_free!90563 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))))) (and b!3505469 b_free!90559 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))))) (and b!3504500 b_free!90547) (and b!3504518 b_free!90543 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))))) (and b!3504516 b_free!90539 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))))) b_lambda!101943)))

(declare-fun b_lambda!101945 () Bool)

(assert (= b_lambda!101907 (or b!3504521 b_lambda!101945)))

(declare-fun bs!563957 () Bool)

(declare-fun d!1018649 () Bool)

(assert (= bs!563957 (and d!1018649 b!3504521)))

(assert (=> bs!563957 (= (dynLambda!15854 lambda!122514 (h!42727 tokens!494)) (not (isSeparator!5468 (rule!8098 (h!42727 tokens!494)))))))

(assert (=> d!1018439 d!1018649))

(declare-fun b_lambda!101947 () Bool)

(assert (= b_lambda!101941 (or b!3504521 b_lambda!101947)))

(assert (=> b!3505395 d!1018649))

(declare-fun b_lambda!101949 () Bool)

(assert (= b_lambda!101895 (or (and b!3504516 b_free!90539) (and b!3505488 b_free!90563 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3505469 b_free!90559 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504518 b_free!90543 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504500 b_free!90547 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) b_lambda!101949)))

(declare-fun b_lambda!101951 () Bool)

(assert (= b_lambda!101899 (or (and b!3504500 b_free!90547 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (and b!3505488 b_free!90563) (and b!3504516 b_free!90539 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (and b!3505469 b_free!90559 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (and b!3504518 b_free!90543 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))) b_lambda!101951)))

(declare-fun b_lambda!101953 () Bool)

(assert (= b_lambda!101897 (or (and b!3505488 b_free!90563 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))))) (and b!3505469 b_free!90559 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))))) (and b!3504500 b_free!90547) (and b!3504518 b_free!90543 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))))) (and b!3504516 b_free!90539 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))))) b_lambda!101953)))

(declare-fun b_lambda!101955 () Bool)

(assert (= b_lambda!101905 (or b!3504521 b_lambda!101955)))

(declare-fun bs!563958 () Bool)

(declare-fun d!1018651 () Bool)

(assert (= bs!563958 (and d!1018651 b!3504521)))

(assert (=> bs!563958 (= (dynLambda!15854 lambda!122514 (h!42727 (t!279242 tokens!494))) (not (isSeparator!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))))

(assert (=> d!1018437 d!1018651))

(declare-fun b_lambda!101957 () Bool)

(assert (= b_lambda!101913 (or b!3504517 b_lambda!101957)))

(declare-fun bs!563959 () Bool)

(declare-fun d!1018653 () Bool)

(assert (= bs!563959 (and d!1018653 b!3504517)))

(assert (=> bs!563959 (= (dynLambda!15854 lambda!122515 (h!42727 (t!279242 tokens!494))) (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 (t!279242 tokens!494))))))

(assert (=> bs!563959 m!3941447))

(assert (=> d!1018545 d!1018653))

(declare-fun b_lambda!101959 () Bool)

(assert (= b_lambda!101909 (or (and b!3504516 b_free!90539) (and b!3505488 b_free!90563 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3505469 b_free!90559 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504518 b_free!90543 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504500 b_free!90547 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) b_lambda!101959)))

(declare-fun b_lambda!101961 () Bool)

(assert (= b_lambda!101939 (or (and b!3505488 b_free!90561 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3505469 b_free!90557 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504500 b_free!90545 (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504518 b_free!90541 (= (toValue!7712 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504516 b_free!90537) b_lambda!101961)))

(check-sat (not d!1018593) (not b!3504907) (not b!3505453) (not d!1018597) (not b!3505337) (not b!3505444) (not b!3505099) (not b!3505161) (not d!1018417) (not d!1018633) (not b!3505363) (not d!1018613) (not d!1018581) (not b_next!91243) (not b!3505487) (not b!3504930) (not b!3505402) (not b!3504813) (not d!1018647) (not d!1018579) (not d!1018543) (not b!3505451) (not b!3505142) (not b!3504785) (not d!1018413) (not d!1018547) (not b!3505419) (not b!3505404) (not b!3504996) (not d!1018369) (not b!3505458) (not d!1018631) (not b!3505328) (not b!3505162) (not d!1018357) (not b_next!91261) (not b!3505430) (not b_lambda!101951) (not d!1018519) (not b!3504903) (not b!3505157) (not b!3505396) (not b!3504942) (not b!3504994) (not b!3505418) (not d!1018431) (not d!1018533) (not b!3504898) (not b_lambda!101943) (not b!3504819) (not bm!253007) (not d!1018429) (not b!3505467) (not b!3505385) (not b!3505369) (not b_lambda!101961) (not d!1018439) (not tb!194401) (not b!3504899) (not b!3505412) (not b_next!91241) (not b!3505191) (not bm!252968) (not b!3505195) (not d!1018577) (not b!3505175) (not b!3504955) (not d!1018459) (not d!1018591) (not b!3504950) (not b!3504952) (not d!1018447) (not d!1018451) (not b_next!91263) (not b!3505400) (not b!3505470) (not b!3504878) (not b!3505362) (not b!3505468) (not b!3504880) (not b!3505251) (not b!3505100) (not b!3505382) (not d!1018595) (not b_next!91249) (not b!3505139) (not b!3505445) (not d!1018535) (not d!1018449) (not b!3504786) (not b!3505080) (not d!1018487) (not b!3504948) (not b!3505338) (not d!1018639) (not b!3504792) (not b!3504951) (not b!3505452) (not d!1018603) (not b!3504999) (not d!1018399) (not d!1018465) (not d!1018445) b_and!248739 (not b_lambda!101947) (not b!3505141) (not b!3505194) (not d!1018545) (not d!1018539) (not b!3504938) (not b!3504912) (not d!1018395) (not b_lambda!101945) (not b!3505316) (not d!1018377) (not b_next!91245) (not d!1018335) (not b!3505386) (not b!3505250) (not b!3504804) (not bm!252994) (not d!1018641) (not b!3505320) (not d!1018629) (not tb!194373) (not b!3504924) (not b!3504772) (not d!1018523) (not b!3505429) b_and!248735 (not d!1018623) (not b!3504928) (not bm!252967) (not d!1018403) (not d!1018461) (not b_lambda!101959) (not b!3505379) b_and!248761 (not bm!252996) (not b!3505173) (not b!3504842) (not tb!194361) (not b!3505486) (not b!3505326) b_and!248769 (not b!3505196) (not b!3504998) (not b!3505485) (not d!1018397) (not b!3504973) (not b!3505135) (not b!3504807) (not b!3504926) (not b!3504840) b_and!248737 (not b!3505446) (not b!3504905) (not bm!252983) (not b!3504841) (not b!3504768) (not b_lambda!101957) (not bm!253005) (not b!3504783) (not b!3504995) (not b!3505140) (not b!3505334) (not b!3505422) b_and!248763 (not b!3505405) (not b!3505000) (not b!3505410) (not d!1018425) (not d!1018387) (not b!3505319) (not d!1018573) (not d!1018491) (not b!3505473) (not tb!194367) (not b!3505002) (not d!1018385) (not b!3504939) (not bm!252997) (not b!3505160) (not b!3505170) (not b!3504958) b_and!248771 (not bm!252966) (not b!3504808) (not b!3504770) (not b!3504803) (not b!3504906) (not d!1018625) (not b!3505361) (not d!1018401) tp_is_empty!17605 (not b_lambda!101949) b_and!248767 (not d!1018435) (not b_next!91251) (not b!3505388) (not d!1018371) (not b!3504742) (not b!3504874) (not b!3505389) (not b!3504877) (not b_lambda!101955) b_and!248773 (not b!3504887) (not d!1018437) (not d!1018575) (not b!3504817) (not b!3505474) (not b!3505399) (not d!1018499) (not b!3505197) (not b!3505327) (not d!1018645) (not b!3504811) (not b!3505252) (not b!3505472) (not d!1018537) (not b!3505416) (not d!1018611) (not b!3504975) (not b!3505143) (not b!3505397) (not d!1018361) (not b!3504699) (not d!1018529) (not b!3504771) (not b_lambda!101953) (not b!3505158) (not d!1018627) (not b_next!91267) (not bm!253006) (not d!1018419) (not d!1018605) (not b!3504731) (not d!1018389) (not b!3504943) (not d!1018621) (not b_next!91265) (not b!3505136) (not b!3504816) (not d!1018381) (not b!3505138) (not b!3504941) (not bs!563959) (not b!3504883) (not b!3504954) (not b!3504876) (not bm!253003) (not d!1018549) (not b!3505447) (not d!1018589) (not d!1018453) (not b!3505249) (not b!3504997) (not b!3505324) b_and!248765 (not b!3504700) (not b!3505420) (not d!1018443) (not b!3504909) (not b!3504959) (not b!3505425) (not b!3504933) (not d!1018421) (not b_next!91247) (not b!3504810) (not b!3504927))
(check-sat (not b_next!91243) (not b_next!91261) (not b_next!91241) (not b_next!91263) (not b_next!91249) b_and!248739 (not b_next!91245) b_and!248735 b_and!248737 b_and!248763 b_and!248771 b_and!248773 (not b_next!91267) (not b_next!91265) b_and!248761 b_and!248769 (not b_next!91251) b_and!248767 b_and!248765 (not b_next!91247))
(get-model)

(declare-fun b!3505565 () Bool)

(declare-fun res!1414113 () Bool)

(declare-fun e!2170459 () Bool)

(assert (=> b!3505565 (=> (not res!1414113) (not e!2170459))))

(declare-fun height!1713 (Conc!11312) Int)

(assert (=> b!3505565 (= res!1414113 (<= (- (height!1713 (left!29132 (c!602788 lt!1195450))) (height!1713 (right!29462 (c!602788 lt!1195450)))) 1))))

(declare-fun b!3505566 () Bool)

(declare-fun res!1414116 () Bool)

(assert (=> b!3505566 (=> (not res!1414116) (not e!2170459))))

(assert (=> b!3505566 (= res!1414116 (isBalanced!3447 (left!29132 (c!602788 lt!1195450))))))

(declare-fun b!3505568 () Bool)

(declare-fun res!1414114 () Bool)

(assert (=> b!3505568 (=> (not res!1414114) (not e!2170459))))

(assert (=> b!3505568 (= res!1414114 (isBalanced!3447 (right!29462 (c!602788 lt!1195450))))))

(declare-fun b!3505569 () Bool)

(declare-fun e!2170460 () Bool)

(assert (=> b!3505569 (= e!2170460 e!2170459)))

(declare-fun res!1414117 () Bool)

(assert (=> b!3505569 (=> (not res!1414117) (not e!2170459))))

(assert (=> b!3505569 (= res!1414117 (<= (- 1) (- (height!1713 (left!29132 (c!602788 lt!1195450))) (height!1713 (right!29462 (c!602788 lt!1195450))))))))

(declare-fun b!3505570 () Bool)

(assert (=> b!3505570 (= e!2170459 (not (isEmpty!21752 (right!29462 (c!602788 lt!1195450)))))))

(declare-fun d!1018679 () Bool)

(declare-fun res!1414115 () Bool)

(assert (=> d!1018679 (=> res!1414115 e!2170460)))

(assert (=> d!1018679 (= res!1414115 (not ((_ is Node!11312) (c!602788 lt!1195450))))))

(assert (=> d!1018679 (= (isBalanced!3447 (c!602788 lt!1195450)) e!2170460)))

(declare-fun b!3505567 () Bool)

(declare-fun res!1414118 () Bool)

(assert (=> b!3505567 (=> (not res!1414118) (not e!2170459))))

(assert (=> b!3505567 (= res!1414118 (not (isEmpty!21752 (left!29132 (c!602788 lt!1195450)))))))

(assert (= (and d!1018679 (not res!1414115)) b!3505569))

(assert (= (and b!3505569 res!1414117) b!3505565))

(assert (= (and b!3505565 res!1414113) b!3505566))

(assert (= (and b!3505566 res!1414116) b!3505568))

(assert (= (and b!3505568 res!1414114) b!3505567))

(assert (= (and b!3505567 res!1414118) b!3505570))

(declare-fun m!3943059 () Bool)

(assert (=> b!3505568 m!3943059))

(declare-fun m!3943061 () Bool)

(assert (=> b!3505570 m!3943061))

(declare-fun m!3943063 () Bool)

(assert (=> b!3505569 m!3943063))

(declare-fun m!3943065 () Bool)

(assert (=> b!3505569 m!3943065))

(declare-fun m!3943067 () Bool)

(assert (=> b!3505566 m!3943067))

(assert (=> b!3505565 m!3943063))

(assert (=> b!3505565 m!3943065))

(declare-fun m!3943069 () Bool)

(assert (=> b!3505567 m!3943069))

(assert (=> b!3505405 d!1018679))

(declare-fun d!1018681 () Bool)

(assert (=> d!1018681 true))

(declare-fun lt!1195464 () Bool)

(assert (=> d!1018681 (= lt!1195464 (rulesValidInductive!1876 thiss!18206 rules!2135))))

(declare-fun lambda!122528 () Int)

(declare-fun forall!8006 (List!37430 Int) Bool)

(assert (=> d!1018681 (= lt!1195464 (forall!8006 rules!2135 lambda!122528))))

(assert (=> d!1018681 (= (rulesValid!2067 thiss!18206 rules!2135) lt!1195464)))

(declare-fun bs!563962 () Bool)

(assert (= bs!563962 d!1018681))

(assert (=> bs!563962 m!3942537))

(declare-fun m!3943071 () Bool)

(assert (=> bs!563962 m!3943071))

(assert (=> d!1018417 d!1018681))

(declare-fun d!1018683 () Bool)

(assert (=> d!1018683 (= (list!13629 lt!1195174) (list!13632 (c!602787 lt!1195174)))))

(declare-fun bs!563963 () Bool)

(assert (= bs!563963 d!1018683))

(declare-fun m!3943073 () Bool)

(assert (=> bs!563963 m!3943073))

(assert (=> d!1018401 d!1018683))

(declare-fun d!1018685 () Bool)

(declare-fun lt!1195465 () Bool)

(assert (=> d!1018685 (= lt!1195465 (select (content!5247 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) lt!1195073))))

(declare-fun e!2170461 () Bool)

(assert (=> d!1018685 (= lt!1195465 e!2170461)))

(declare-fun res!1414120 () Bool)

(assert (=> d!1018685 (=> (not res!1414120) (not e!2170461))))

(assert (=> d!1018685 (= res!1414120 ((_ is Cons!37305) (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))))

(assert (=> d!1018685 (= (contains!6980 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494))))) lt!1195073) lt!1195465)))

(declare-fun b!3505573 () Bool)

(declare-fun e!2170462 () Bool)

(assert (=> b!3505573 (= e!2170461 e!2170462)))

(declare-fun res!1414119 () Bool)

(assert (=> b!3505573 (=> res!1414119 e!2170462)))

(assert (=> b!3505573 (= res!1414119 (= (h!42725 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) lt!1195073))))

(declare-fun b!3505574 () Bool)

(assert (=> b!3505574 (= e!2170462 (contains!6980 (t!279240 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) lt!1195073))))

(assert (= (and d!1018685 res!1414120) b!3505573))

(assert (= (and b!3505573 (not res!1414119)) b!3505574))

(declare-fun m!3943075 () Bool)

(assert (=> d!1018685 m!3943075))

(declare-fun m!3943077 () Bool)

(assert (=> d!1018685 m!3943077))

(declare-fun m!3943079 () Bool)

(assert (=> b!3505574 m!3943079))

(assert (=> b!3505379 d!1018685))

(declare-fun d!1018687 () Bool)

(assert (=> d!1018687 (= (isEmpty!21756 lt!1195072) (not ((_ is Some!7592) lt!1195072)))))

(assert (=> d!1018591 d!1018687))

(declare-fun b!3505575 () Bool)

(declare-fun e!2170468 () Bool)

(declare-fun lt!1195466 () Bool)

(assert (=> b!3505575 (= e!2170468 (not lt!1195466))))

(declare-fun b!3505576 () Bool)

(declare-fun res!1414127 () Bool)

(declare-fun e!2170465 () Bool)

(assert (=> b!3505576 (=> res!1414127 e!2170465)))

(declare-fun e!2170469 () Bool)

(assert (=> b!3505576 (= res!1414127 e!2170469)))

(declare-fun res!1414128 () Bool)

(assert (=> b!3505576 (=> (not res!1414128) (not e!2170469))))

(assert (=> b!3505576 (= res!1414128 lt!1195466)))

(declare-fun b!3505577 () Bool)

(declare-fun e!2170466 () Bool)

(assert (=> b!3505577 (= e!2170466 e!2170468)))

(declare-fun c!602996 () Bool)

(assert (=> b!3505577 (= c!602996 ((_ is EmptyLang!10227) (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(declare-fun b!3505578 () Bool)

(assert (=> b!3505578 (= e!2170469 (= (head!7371 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))) (c!602786 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))

(declare-fun b!3505579 () Bool)

(declare-fun res!1414123 () Bool)

(assert (=> b!3505579 (=> res!1414123 e!2170465)))

(assert (=> b!3505579 (= res!1414123 (not ((_ is ElementMatch!10227) (regex!5468 (rule!8098 (h!42727 tokens!494))))))))

(assert (=> b!3505579 (= e!2170468 e!2170465)))

(declare-fun b!3505580 () Bool)

(declare-fun e!2170464 () Bool)

(assert (=> b!3505580 (= e!2170464 (nullable!3512 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(declare-fun b!3505581 () Bool)

(declare-fun res!1414124 () Bool)

(assert (=> b!3505581 (=> (not res!1414124) (not e!2170469))))

(assert (=> b!3505581 (= res!1414124 (isEmpty!21746 (tail!5480 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251)))))))))

(declare-fun b!3505582 () Bool)

(declare-fun e!2170467 () Bool)

(assert (=> b!3505582 (= e!2170467 (not (= (head!7371 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))) (c!602786 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))))

(declare-fun b!3505583 () Bool)

(declare-fun e!2170463 () Bool)

(assert (=> b!3505583 (= e!2170465 e!2170463)))

(declare-fun res!1414121 () Bool)

(assert (=> b!3505583 (=> (not res!1414121) (not e!2170463))))

(assert (=> b!3505583 (= res!1414121 (not lt!1195466))))

(declare-fun b!3505584 () Bool)

(assert (=> b!3505584 (= e!2170464 (matchR!4811 (derivativeStep!3065 (regex!5468 (rule!8098 (h!42727 tokens!494))) (head!7371 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251)))))) (tail!5480 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251)))))))))

(declare-fun b!3505585 () Bool)

(assert (=> b!3505585 (= e!2170463 e!2170467)))

(declare-fun res!1414122 () Bool)

(assert (=> b!3505585 (=> res!1414122 e!2170467)))

(declare-fun call!253030 () Bool)

(assert (=> b!3505585 (= res!1414122 call!253030)))

(declare-fun d!1018689 () Bool)

(assert (=> d!1018689 e!2170466))

(declare-fun c!602997 () Bool)

(assert (=> d!1018689 (= c!602997 ((_ is EmptyExpr!10227) (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(assert (=> d!1018689 (= lt!1195466 e!2170464)))

(declare-fun c!602998 () Bool)

(assert (=> d!1018689 (= c!602998 (isEmpty!21746 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))))))

(assert (=> d!1018689 (validRegex!4668 (regex!5468 (rule!8098 (h!42727 tokens!494))))))

(assert (=> d!1018689 (= (matchR!4811 (regex!5468 (rule!8098 (h!42727 tokens!494))) (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))) lt!1195466)))

(declare-fun bm!253025 () Bool)

(assert (=> bm!253025 (= call!253030 (isEmpty!21746 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))))))

(declare-fun b!3505586 () Bool)

(declare-fun res!1414125 () Bool)

(assert (=> b!3505586 (=> (not res!1414125) (not e!2170469))))

(assert (=> b!3505586 (= res!1414125 (not call!253030))))

(declare-fun b!3505587 () Bool)

(declare-fun res!1414126 () Bool)

(assert (=> b!3505587 (=> res!1414126 e!2170467)))

(assert (=> b!3505587 (= res!1414126 (not (isEmpty!21746 (tail!5480 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))))))))

(declare-fun b!3505588 () Bool)

(assert (=> b!3505588 (= e!2170466 (= lt!1195466 call!253030))))

(assert (= (and d!1018689 c!602998) b!3505580))

(assert (= (and d!1018689 (not c!602998)) b!3505584))

(assert (= (and d!1018689 c!602997) b!3505588))

(assert (= (and d!1018689 (not c!602997)) b!3505577))

(assert (= (and b!3505577 c!602996) b!3505575))

(assert (= (and b!3505577 (not c!602996)) b!3505579))

(assert (= (and b!3505579 (not res!1414123)) b!3505576))

(assert (= (and b!3505576 res!1414128) b!3505586))

(assert (= (and b!3505586 res!1414125) b!3505581))

(assert (= (and b!3505581 res!1414124) b!3505578))

(assert (= (and b!3505576 (not res!1414127)) b!3505583))

(assert (= (and b!3505583 res!1414121) b!3505585))

(assert (= (and b!3505585 (not res!1414122)) b!3505587))

(assert (= (and b!3505587 (not res!1414126)) b!3505582))

(assert (= (or b!3505588 b!3505586 b!3505585) bm!253025))

(assert (=> b!3505587 m!3942227))

(declare-fun m!3943081 () Bool)

(assert (=> b!3505587 m!3943081))

(assert (=> b!3505587 m!3943081))

(declare-fun m!3943083 () Bool)

(assert (=> b!3505587 m!3943083))

(declare-fun m!3943085 () Bool)

(assert (=> b!3505580 m!3943085))

(assert (=> b!3505584 m!3942227))

(declare-fun m!3943087 () Bool)

(assert (=> b!3505584 m!3943087))

(assert (=> b!3505584 m!3943087))

(declare-fun m!3943089 () Bool)

(assert (=> b!3505584 m!3943089))

(assert (=> b!3505584 m!3942227))

(assert (=> b!3505584 m!3943081))

(assert (=> b!3505584 m!3943089))

(assert (=> b!3505584 m!3943081))

(declare-fun m!3943091 () Bool)

(assert (=> b!3505584 m!3943091))

(assert (=> bm!253025 m!3942227))

(declare-fun m!3943093 () Bool)

(assert (=> bm!253025 m!3943093))

(assert (=> b!3505582 m!3942227))

(assert (=> b!3505582 m!3943087))

(assert (=> b!3505578 m!3942227))

(assert (=> b!3505578 m!3943087))

(assert (=> d!1018689 m!3942227))

(assert (=> d!1018689 m!3943093))

(declare-fun m!3943095 () Bool)

(assert (=> d!1018689 m!3943095))

(assert (=> b!3505581 m!3942227))

(assert (=> b!3505581 m!3943081))

(assert (=> b!3505581 m!3943081))

(assert (=> b!3505581 m!3943083))

(assert (=> b!3505002 d!1018689))

(declare-fun d!1018691 () Bool)

(assert (=> d!1018691 (= (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251)))) (list!13632 (c!602787 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))))))

(declare-fun bs!563964 () Bool)

(assert (= bs!563964 d!1018691))

(declare-fun m!3943097 () Bool)

(assert (=> bs!563964 m!3943097))

(assert (=> b!3505002 d!1018691))

(declare-fun d!1018693 () Bool)

(declare-fun lt!1195467 () BalanceConc!22236)

(assert (=> d!1018693 (= (list!13629 lt!1195467) (originalCharacters!6182 (_1!21691 (get!11971 lt!1195251))))))

(assert (=> d!1018693 (= lt!1195467 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251))))) (value!176298 (_1!21691 (get!11971 lt!1195251)))))))

(assert (=> d!1018693 (= (charsOf!3482 (_1!21691 (get!11971 lt!1195251))) lt!1195467)))

(declare-fun b_lambda!101963 () Bool)

(assert (=> (not b_lambda!101963) (not d!1018693)))

(declare-fun t!279341 () Bool)

(declare-fun tb!194423 () Bool)

(assert (=> (and b!3504500 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279341) tb!194423))

(declare-fun b!3505589 () Bool)

(declare-fun e!2170470 () Bool)

(declare-fun tp!1084855 () Bool)

(assert (=> b!3505589 (= e!2170470 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251))))) (value!176298 (_1!21691 (get!11971 lt!1195251)))))) tp!1084855))))

(declare-fun result!238716 () Bool)

(assert (=> tb!194423 (= result!238716 (and (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251))))) (value!176298 (_1!21691 (get!11971 lt!1195251))))) e!2170470))))

(assert (= tb!194423 b!3505589))

(declare-fun m!3943099 () Bool)

(assert (=> b!3505589 m!3943099))

(declare-fun m!3943101 () Bool)

(assert (=> tb!194423 m!3943101))

(assert (=> d!1018693 t!279341))

(declare-fun b_and!248775 () Bool)

(assert (= b_and!248739 (and (=> t!279341 result!238716) b_and!248775)))

(declare-fun t!279343 () Bool)

(declare-fun tb!194425 () Bool)

(assert (=> (and b!3505488 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279343) tb!194425))

(declare-fun result!238718 () Bool)

(assert (= result!238718 result!238716))

(assert (=> d!1018693 t!279343))

(declare-fun b_and!248777 () Bool)

(assert (= b_and!248773 (and (=> t!279343 result!238718) b_and!248777)))

(declare-fun t!279345 () Bool)

(declare-fun tb!194427 () Bool)

(assert (=> (and b!3504518 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279345) tb!194427))

(declare-fun result!238720 () Bool)

(assert (= result!238720 result!238716))

(assert (=> d!1018693 t!279345))

(declare-fun b_and!248779 () Bool)

(assert (= b_and!248737 (and (=> t!279345 result!238720) b_and!248779)))

(declare-fun t!279347 () Bool)

(declare-fun tb!194429 () Bool)

(assert (=> (and b!3505469 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279347) tb!194429))

(declare-fun result!238722 () Bool)

(assert (= result!238722 result!238716))

(assert (=> d!1018693 t!279347))

(declare-fun b_and!248781 () Bool)

(assert (= b_and!248769 (and (=> t!279347 result!238722) b_and!248781)))

(declare-fun tb!194431 () Bool)

(declare-fun t!279349 () Bool)

(assert (=> (and b!3504516 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279349) tb!194431))

(declare-fun result!238724 () Bool)

(assert (= result!238724 result!238716))

(assert (=> d!1018693 t!279349))

(declare-fun b_and!248783 () Bool)

(assert (= b_and!248735 (and (=> t!279349 result!238724) b_and!248783)))

(declare-fun m!3943103 () Bool)

(assert (=> d!1018693 m!3943103))

(declare-fun m!3943105 () Bool)

(assert (=> d!1018693 m!3943105))

(assert (=> b!3505002 d!1018693))

(declare-fun d!1018695 () Bool)

(assert (=> d!1018695 (= (get!11971 lt!1195251) (v!37045 lt!1195251))))

(assert (=> b!3505002 d!1018695))

(declare-fun b!3505600 () Bool)

(declare-fun e!2170481 () Bool)

(declare-fun lt!1195469 () Bool)

(assert (=> b!3505600 (= e!2170481 (not lt!1195469))))

(declare-fun b!3505601 () Bool)

(declare-fun res!1414135 () Bool)

(declare-fun e!2170478 () Bool)

(assert (=> b!3505601 (=> res!1414135 e!2170478)))

(declare-fun e!2170482 () Bool)

(assert (=> b!3505601 (= res!1414135 e!2170482)))

(declare-fun res!1414136 () Bool)

(assert (=> b!3505601 (=> (not res!1414136) (not e!2170482))))

(assert (=> b!3505601 (= res!1414136 lt!1195469)))

(declare-fun b!3505602 () Bool)

(declare-fun e!2170479 () Bool)

(assert (=> b!3505602 (= e!2170479 e!2170481)))

(declare-fun c!603004 () Bool)

(assert (=> b!3505602 (= c!603004 ((_ is EmptyLang!10227) (derivativeStep!3065 (regex!5468 lt!1195056) (head!7371 lt!1195055))))))

(declare-fun b!3505603 () Bool)

(assert (=> b!3505603 (= e!2170482 (= (head!7371 (tail!5480 lt!1195055)) (c!602786 (derivativeStep!3065 (regex!5468 lt!1195056) (head!7371 lt!1195055)))))))

(declare-fun b!3505604 () Bool)

(declare-fun res!1414131 () Bool)

(assert (=> b!3505604 (=> res!1414131 e!2170478)))

(assert (=> b!3505604 (= res!1414131 (not ((_ is ElementMatch!10227) (derivativeStep!3065 (regex!5468 lt!1195056) (head!7371 lt!1195055)))))))

(assert (=> b!3505604 (= e!2170481 e!2170478)))

(declare-fun b!3505605 () Bool)

(declare-fun e!2170477 () Bool)

(assert (=> b!3505605 (= e!2170477 (nullable!3512 (derivativeStep!3065 (regex!5468 lt!1195056) (head!7371 lt!1195055))))))

(declare-fun b!3505606 () Bool)

(declare-fun res!1414132 () Bool)

(assert (=> b!3505606 (=> (not res!1414132) (not e!2170482))))

(assert (=> b!3505606 (= res!1414132 (isEmpty!21746 (tail!5480 (tail!5480 lt!1195055))))))

(declare-fun b!3505607 () Bool)

(declare-fun e!2170480 () Bool)

(assert (=> b!3505607 (= e!2170480 (not (= (head!7371 (tail!5480 lt!1195055)) (c!602786 (derivativeStep!3065 (regex!5468 lt!1195056) (head!7371 lt!1195055))))))))

(declare-fun b!3505608 () Bool)

(declare-fun e!2170476 () Bool)

(assert (=> b!3505608 (= e!2170478 e!2170476)))

(declare-fun res!1414129 () Bool)

(assert (=> b!3505608 (=> (not res!1414129) (not e!2170476))))

(assert (=> b!3505608 (= res!1414129 (not lt!1195469))))

(declare-fun b!3505609 () Bool)

(assert (=> b!3505609 (= e!2170477 (matchR!4811 (derivativeStep!3065 (derivativeStep!3065 (regex!5468 lt!1195056) (head!7371 lt!1195055)) (head!7371 (tail!5480 lt!1195055))) (tail!5480 (tail!5480 lt!1195055))))))

(declare-fun b!3505610 () Bool)

(assert (=> b!3505610 (= e!2170476 e!2170480)))

(declare-fun res!1414130 () Bool)

(assert (=> b!3505610 (=> res!1414130 e!2170480)))

(declare-fun call!253035 () Bool)

(assert (=> b!3505610 (= res!1414130 call!253035)))

(declare-fun d!1018697 () Bool)

(assert (=> d!1018697 e!2170479))

(declare-fun c!603005 () Bool)

(assert (=> d!1018697 (= c!603005 ((_ is EmptyExpr!10227) (derivativeStep!3065 (regex!5468 lt!1195056) (head!7371 lt!1195055))))))

(assert (=> d!1018697 (= lt!1195469 e!2170477)))

(declare-fun c!603006 () Bool)

(assert (=> d!1018697 (= c!603006 (isEmpty!21746 (tail!5480 lt!1195055)))))

(assert (=> d!1018697 (validRegex!4668 (derivativeStep!3065 (regex!5468 lt!1195056) (head!7371 lt!1195055)))))

(assert (=> d!1018697 (= (matchR!4811 (derivativeStep!3065 (regex!5468 lt!1195056) (head!7371 lt!1195055)) (tail!5480 lt!1195055)) lt!1195469)))

(declare-fun bm!253030 () Bool)

(assert (=> bm!253030 (= call!253035 (isEmpty!21746 (tail!5480 lt!1195055)))))

(declare-fun b!3505611 () Bool)

(declare-fun res!1414133 () Bool)

(assert (=> b!3505611 (=> (not res!1414133) (not e!2170482))))

(assert (=> b!3505611 (= res!1414133 (not call!253035))))

(declare-fun b!3505612 () Bool)

(declare-fun res!1414134 () Bool)

(assert (=> b!3505612 (=> res!1414134 e!2170480)))

(assert (=> b!3505612 (= res!1414134 (not (isEmpty!21746 (tail!5480 (tail!5480 lt!1195055)))))))

(declare-fun b!3505613 () Bool)

(assert (=> b!3505613 (= e!2170479 (= lt!1195469 call!253035))))

(assert (= (and d!1018697 c!603006) b!3505605))

(assert (= (and d!1018697 (not c!603006)) b!3505609))

(assert (= (and d!1018697 c!603005) b!3505613))

(assert (= (and d!1018697 (not c!603005)) b!3505602))

(assert (= (and b!3505602 c!603004) b!3505600))

(assert (= (and b!3505602 (not c!603004)) b!3505604))

(assert (= (and b!3505604 (not res!1414131)) b!3505601))

(assert (= (and b!3505601 res!1414136) b!3505611))

(assert (= (and b!3505611 res!1414133) b!3505606))

(assert (= (and b!3505606 res!1414132) b!3505603))

(assert (= (and b!3505601 (not res!1414135)) b!3505608))

(assert (= (and b!3505608 res!1414129) b!3505610))

(assert (= (and b!3505610 (not res!1414130)) b!3505612))

(assert (= (and b!3505612 (not res!1414134)) b!3505607))

(assert (= (or b!3505613 b!3505611 b!3505610) bm!253030))

(assert (=> b!3505612 m!3942971))

(declare-fun m!3943107 () Bool)

(assert (=> b!3505612 m!3943107))

(assert (=> b!3505612 m!3943107))

(declare-fun m!3943111 () Bool)

(assert (=> b!3505612 m!3943111))

(assert (=> b!3505605 m!3942979))

(declare-fun m!3943115 () Bool)

(assert (=> b!3505605 m!3943115))

(assert (=> b!3505609 m!3942971))

(declare-fun m!3943117 () Bool)

(assert (=> b!3505609 m!3943117))

(assert (=> b!3505609 m!3942979))

(assert (=> b!3505609 m!3943117))

(declare-fun m!3943119 () Bool)

(assert (=> b!3505609 m!3943119))

(assert (=> b!3505609 m!3942971))

(assert (=> b!3505609 m!3943107))

(assert (=> b!3505609 m!3943119))

(assert (=> b!3505609 m!3943107))

(declare-fun m!3943125 () Bool)

(assert (=> b!3505609 m!3943125))

(assert (=> bm!253030 m!3942971))

(assert (=> bm!253030 m!3942973))

(assert (=> b!3505607 m!3942971))

(assert (=> b!3505607 m!3943117))

(assert (=> b!3505603 m!3942971))

(assert (=> b!3505603 m!3943117))

(assert (=> d!1018697 m!3942971))

(assert (=> d!1018697 m!3942973))

(assert (=> d!1018697 m!3942979))

(declare-fun m!3943127 () Bool)

(assert (=> d!1018697 m!3943127))

(assert (=> b!3505606 m!3942971))

(assert (=> b!3505606 m!3943107))

(assert (=> b!3505606 m!3943107))

(assert (=> b!3505606 m!3943111))

(assert (=> b!3505422 d!1018697))

(declare-fun c!603024 () Bool)

(declare-fun c!603025 () Bool)

(declare-fun bm!253041 () Bool)

(declare-fun call!253047 () Regex!10227)

(assert (=> bm!253041 (= call!253047 (derivativeStep!3065 (ite c!603024 (regOne!20967 (regex!5468 lt!1195056)) (ite c!603025 (reg!10556 (regex!5468 lt!1195056)) (regOne!20966 (regex!5468 lt!1195056)))) (head!7371 lt!1195055)))))

(declare-fun b!3505659 () Bool)

(declare-fun e!2170507 () Regex!10227)

(declare-fun e!2170508 () Regex!10227)

(assert (=> b!3505659 (= e!2170507 e!2170508)))

(assert (=> b!3505659 (= c!603025 ((_ is Star!10227) (regex!5468 lt!1195056)))))

(declare-fun b!3505660 () Bool)

(declare-fun e!2170504 () Regex!10227)

(declare-fun call!253046 () Regex!10227)

(assert (=> b!3505660 (= e!2170504 (Union!10227 (Concat!15925 call!253046 (regTwo!20966 (regex!5468 lt!1195056))) EmptyLang!10227))))

(declare-fun b!3505661 () Bool)

(declare-fun c!603022 () Bool)

(assert (=> b!3505661 (= c!603022 (nullable!3512 (regOne!20966 (regex!5468 lt!1195056))))))

(assert (=> b!3505661 (= e!2170508 e!2170504)))

(declare-fun b!3505662 () Bool)

(declare-fun e!2170506 () Regex!10227)

(declare-fun e!2170505 () Regex!10227)

(assert (=> b!3505662 (= e!2170506 e!2170505)))

(declare-fun c!603026 () Bool)

(assert (=> b!3505662 (= c!603026 ((_ is ElementMatch!10227) (regex!5468 lt!1195056)))))

(declare-fun b!3505663 () Bool)

(assert (=> b!3505663 (= e!2170506 EmptyLang!10227)))

(declare-fun b!3505664 () Bool)

(assert (=> b!3505664 (= c!603024 ((_ is Union!10227) (regex!5468 lt!1195056)))))

(assert (=> b!3505664 (= e!2170505 e!2170507)))

(declare-fun b!3505665 () Bool)

(declare-fun call!253048 () Regex!10227)

(assert (=> b!3505665 (= e!2170504 (Union!10227 (Concat!15925 call!253046 (regTwo!20966 (regex!5468 lt!1195056))) call!253048))))

(declare-fun bm!253042 () Bool)

(declare-fun call!253049 () Regex!10227)

(assert (=> bm!253042 (= call!253049 call!253047)))

(declare-fun bm!253043 () Bool)

(assert (=> bm!253043 (= call!253046 call!253049)))

(declare-fun b!3505667 () Bool)

(assert (=> b!3505667 (= e!2170507 (Union!10227 call!253047 call!253048))))

(declare-fun b!3505668 () Bool)

(assert (=> b!3505668 (= e!2170508 (Concat!15925 call!253049 (regex!5468 lt!1195056)))))

(declare-fun bm!253044 () Bool)

(assert (=> bm!253044 (= call!253048 (derivativeStep!3065 (ite c!603024 (regTwo!20967 (regex!5468 lt!1195056)) (regTwo!20966 (regex!5468 lt!1195056))) (head!7371 lt!1195055)))))

(declare-fun d!1018701 () Bool)

(declare-fun lt!1195484 () Regex!10227)

(assert (=> d!1018701 (validRegex!4668 lt!1195484)))

(assert (=> d!1018701 (= lt!1195484 e!2170506)))

(declare-fun c!603023 () Bool)

(assert (=> d!1018701 (= c!603023 (or ((_ is EmptyExpr!10227) (regex!5468 lt!1195056)) ((_ is EmptyLang!10227) (regex!5468 lt!1195056))))))

(assert (=> d!1018701 (validRegex!4668 (regex!5468 lt!1195056))))

(assert (=> d!1018701 (= (derivativeStep!3065 (regex!5468 lt!1195056) (head!7371 lt!1195055)) lt!1195484)))

(declare-fun b!3505666 () Bool)

(assert (=> b!3505666 (= e!2170505 (ite (= (head!7371 lt!1195055) (c!602786 (regex!5468 lt!1195056))) EmptyExpr!10227 EmptyLang!10227))))

(assert (= (and d!1018701 c!603023) b!3505663))

(assert (= (and d!1018701 (not c!603023)) b!3505662))

(assert (= (and b!3505662 c!603026) b!3505666))

(assert (= (and b!3505662 (not c!603026)) b!3505664))

(assert (= (and b!3505664 c!603024) b!3505667))

(assert (= (and b!3505664 (not c!603024)) b!3505659))

(assert (= (and b!3505659 c!603025) b!3505668))

(assert (= (and b!3505659 (not c!603025)) b!3505661))

(assert (= (and b!3505661 c!603022) b!3505665))

(assert (= (and b!3505661 (not c!603022)) b!3505660))

(assert (= (or b!3505665 b!3505660) bm!253043))

(assert (= (or b!3505668 bm!253043) bm!253042))

(assert (= (or b!3505667 bm!253042) bm!253041))

(assert (= (or b!3505667 b!3505665) bm!253044))

(assert (=> bm!253041 m!3942977))

(declare-fun m!3943161 () Bool)

(assert (=> bm!253041 m!3943161))

(declare-fun m!3943163 () Bool)

(assert (=> b!3505661 m!3943163))

(assert (=> bm!253044 m!3942977))

(declare-fun m!3943165 () Bool)

(assert (=> bm!253044 m!3943165))

(declare-fun m!3943167 () Bool)

(assert (=> d!1018701 m!3943167))

(assert (=> d!1018701 m!3942985))

(assert (=> b!3505422 d!1018701))

(declare-fun d!1018721 () Bool)

(assert (=> d!1018721 (= (head!7371 lt!1195055) (h!42725 lt!1195055))))

(assert (=> b!3505422 d!1018721))

(declare-fun d!1018723 () Bool)

(assert (=> d!1018723 (= (tail!5480 lt!1195055) (t!279240 lt!1195055))))

(assert (=> b!3505422 d!1018723))

(declare-fun d!1018725 () Bool)

(declare-fun lt!1195487 () Token!10302)

(assert (=> d!1018725 (contains!6982 (list!13633 (_1!21690 lt!1195068)) lt!1195487)))

(declare-fun e!2170514 () Token!10302)

(assert (=> d!1018725 (= lt!1195487 e!2170514)))

(declare-fun c!603029 () Bool)

(assert (=> d!1018725 (= c!603029 (= 0 0))))

(declare-fun e!2170513 () Bool)

(assert (=> d!1018725 e!2170513))

(declare-fun res!1414154 () Bool)

(assert (=> d!1018725 (=> (not res!1414154) (not e!2170513))))

(assert (=> d!1018725 (= res!1414154 (<= 0 0))))

(assert (=> d!1018725 (= (apply!8868 (list!13633 (_1!21690 lt!1195068)) 0) lt!1195487)))

(declare-fun b!3505675 () Bool)

(assert (=> b!3505675 (= e!2170513 (< 0 (size!28370 (list!13633 (_1!21690 lt!1195068)))))))

(declare-fun b!3505676 () Bool)

(assert (=> b!3505676 (= e!2170514 (head!7373 (list!13633 (_1!21690 lt!1195068))))))

(declare-fun b!3505677 () Bool)

(assert (=> b!3505677 (= e!2170514 (apply!8868 (tail!5481 (list!13633 (_1!21690 lt!1195068))) (- 0 1)))))

(assert (= (and d!1018725 res!1414154) b!3505675))

(assert (= (and d!1018725 c!603029) b!3505676))

(assert (= (and d!1018725 (not c!603029)) b!3505677))

(assert (=> d!1018725 m!3942841))

(declare-fun m!3943197 () Bool)

(assert (=> d!1018725 m!3943197))

(assert (=> b!3505675 m!3942841))

(assert (=> b!3505675 m!3942843))

(assert (=> b!3505676 m!3942841))

(declare-fun m!3943199 () Bool)

(assert (=> b!3505676 m!3943199))

(assert (=> b!3505677 m!3942841))

(declare-fun m!3943201 () Bool)

(assert (=> b!3505677 m!3943201))

(assert (=> b!3505677 m!3943201))

(declare-fun m!3943203 () Bool)

(assert (=> b!3505677 m!3943203))

(assert (=> d!1018621 d!1018725))

(declare-fun d!1018731 () Bool)

(declare-fun list!13634 (Conc!11312) List!37431)

(assert (=> d!1018731 (= (list!13633 (_1!21690 lt!1195068)) (list!13634 (c!602788 (_1!21690 lt!1195068))))))

(declare-fun bs!563969 () Bool)

(assert (= bs!563969 d!1018731))

(declare-fun m!3943205 () Bool)

(assert (=> bs!563969 m!3943205))

(assert (=> d!1018621 d!1018731))

(declare-fun b!3505692 () Bool)

(declare-fun e!2170524 () Token!10302)

(declare-fun call!253052 () Token!10302)

(assert (=> b!3505692 (= e!2170524 call!253052)))

(declare-fun b!3505693 () Bool)

(declare-fun e!2170523 () Token!10302)

(assert (=> b!3505693 (= e!2170523 e!2170524)))

(declare-fun lt!1195493 () Bool)

(declare-fun appendIndex!353 (List!37431 List!37431 Int) Bool)

(assert (=> b!3505693 (= lt!1195493 (appendIndex!353 (list!13634 (left!29132 (c!602788 (_1!21690 lt!1195068)))) (list!13634 (right!29462 (c!602788 (_1!21690 lt!1195068)))) 0))))

(declare-fun c!603038 () Bool)

(assert (=> b!3505693 (= c!603038 (< 0 (size!28371 (left!29132 (c!602788 (_1!21690 lt!1195068))))))))

(declare-fun b!3505694 () Bool)

(declare-fun apply!8870 (IArray!22629 Int) Token!10302)

(assert (=> b!3505694 (= e!2170523 (apply!8870 (xs!14498 (c!602788 (_1!21690 lt!1195068))) 0))))

(declare-fun b!3505695 () Bool)

(declare-fun e!2170526 () Bool)

(assert (=> b!3505695 (= e!2170526 (< 0 (size!28371 (c!602788 (_1!21690 lt!1195068)))))))

(declare-fun b!3505696 () Bool)

(declare-fun e!2170525 () Int)

(assert (=> b!3505696 (= e!2170525 0)))

(declare-fun d!1018733 () Bool)

(declare-fun lt!1195492 () Token!10302)

(assert (=> d!1018733 (= lt!1195492 (apply!8868 (list!13634 (c!602788 (_1!21690 lt!1195068))) 0))))

(assert (=> d!1018733 (= lt!1195492 e!2170523)))

(declare-fun c!603037 () Bool)

(assert (=> d!1018733 (= c!603037 ((_ is Leaf!17657) (c!602788 (_1!21690 lt!1195068))))))

(assert (=> d!1018733 e!2170526))

(declare-fun res!1414157 () Bool)

(assert (=> d!1018733 (=> (not res!1414157) (not e!2170526))))

(assert (=> d!1018733 (= res!1414157 (<= 0 0))))

(assert (=> d!1018733 (= (apply!8869 (c!602788 (_1!21690 lt!1195068)) 0) lt!1195492)))

(declare-fun b!3505697 () Bool)

(assert (=> b!3505697 (= e!2170524 call!253052)))

(declare-fun b!3505698 () Bool)

(assert (=> b!3505698 (= e!2170525 (- 0 (size!28371 (left!29132 (c!602788 (_1!21690 lt!1195068))))))))

(declare-fun bm!253047 () Bool)

(declare-fun c!603036 () Bool)

(assert (=> bm!253047 (= c!603036 c!603038)))

(assert (=> bm!253047 (= call!253052 (apply!8869 (ite c!603038 (left!29132 (c!602788 (_1!21690 lt!1195068))) (right!29462 (c!602788 (_1!21690 lt!1195068)))) e!2170525))))

(assert (= (and d!1018733 res!1414157) b!3505695))

(assert (= (and d!1018733 c!603037) b!3505694))

(assert (= (and d!1018733 (not c!603037)) b!3505693))

(assert (= (and b!3505693 c!603038) b!3505692))

(assert (= (and b!3505693 (not c!603038)) b!3505697))

(assert (= (or b!3505692 b!3505697) bm!253047))

(assert (= (and bm!253047 c!603036) b!3505696))

(assert (= (and bm!253047 (not c!603036)) b!3505698))

(declare-fun m!3943207 () Bool)

(assert (=> b!3505694 m!3943207))

(assert (=> d!1018733 m!3943205))

(assert (=> d!1018733 m!3943205))

(declare-fun m!3943209 () Bool)

(assert (=> d!1018733 m!3943209))

(declare-fun m!3943211 () Bool)

(assert (=> bm!253047 m!3943211))

(assert (=> b!3505695 m!3942845))

(declare-fun m!3943213 () Bool)

(assert (=> b!3505693 m!3943213))

(declare-fun m!3943215 () Bool)

(assert (=> b!3505693 m!3943215))

(assert (=> b!3505693 m!3943213))

(assert (=> b!3505693 m!3943215))

(declare-fun m!3943217 () Bool)

(assert (=> b!3505693 m!3943217))

(declare-fun m!3943219 () Bool)

(assert (=> b!3505693 m!3943219))

(assert (=> b!3505698 m!3943219))

(assert (=> d!1018621 d!1018733))

(declare-fun d!1018735 () Bool)

(assert (=> d!1018735 (= (list!13629 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494)))) (list!13632 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494))))))))

(declare-fun bs!563970 () Bool)

(assert (= bs!563970 d!1018735))

(declare-fun m!3943221 () Bool)

(assert (=> bs!563970 m!3943221))

(assert (=> b!3504951 d!1018735))

(declare-fun d!1018737 () Bool)

(assert (=> d!1018737 (= (isEmpty!21746 lt!1195070) ((_ is Nil!37305) lt!1195070))))

(assert (=> bm!252968 d!1018737))

(declare-fun d!1018739 () Bool)

(declare-fun e!2170529 () Bool)

(assert (=> d!1018739 e!2170529))

(declare-fun res!1414160 () Bool)

(assert (=> d!1018739 (=> (not res!1414160) (not e!2170529))))

(declare-fun lt!1195496 () BalanceConc!22238)

(assert (=> d!1018739 (= res!1414160 (= (list!13633 lt!1195496) tokens!494))))

(declare-fun fromList!762 (List!37431) Conc!11312)

(assert (=> d!1018739 (= lt!1195496 (BalanceConc!22239 (fromList!762 tokens!494)))))

(assert (=> d!1018739 (= (fromListB!1831 tokens!494) lt!1195496)))

(declare-fun b!3505701 () Bool)

(assert (=> b!3505701 (= e!2170529 (isBalanced!3447 (fromList!762 tokens!494)))))

(assert (= (and d!1018739 res!1414160) b!3505701))

(declare-fun m!3943223 () Bool)

(assert (=> d!1018739 m!3943223))

(declare-fun m!3943225 () Bool)

(assert (=> d!1018739 m!3943225))

(assert (=> b!3505701 m!3943225))

(assert (=> b!3505701 m!3943225))

(declare-fun m!3943227 () Bool)

(assert (=> b!3505701 m!3943227))

(assert (=> d!1018647 d!1018739))

(declare-fun b!3505702 () Bool)

(declare-fun res!1414161 () Bool)

(declare-fun e!2170530 () Bool)

(assert (=> b!3505702 (=> (not res!1414161) (not e!2170530))))

(assert (=> b!3505702 (= res!1414161 (<= (- (height!1713 (left!29132 (c!602788 lt!1195427))) (height!1713 (right!29462 (c!602788 lt!1195427)))) 1))))

(declare-fun b!3505703 () Bool)

(declare-fun res!1414164 () Bool)

(assert (=> b!3505703 (=> (not res!1414164) (not e!2170530))))

(assert (=> b!3505703 (= res!1414164 (isBalanced!3447 (left!29132 (c!602788 lt!1195427))))))

(declare-fun b!3505705 () Bool)

(declare-fun res!1414162 () Bool)

(assert (=> b!3505705 (=> (not res!1414162) (not e!2170530))))

(assert (=> b!3505705 (= res!1414162 (isBalanced!3447 (right!29462 (c!602788 lt!1195427))))))

(declare-fun b!3505706 () Bool)

(declare-fun e!2170531 () Bool)

(assert (=> b!3505706 (= e!2170531 e!2170530)))

(declare-fun res!1414165 () Bool)

(assert (=> b!3505706 (=> (not res!1414165) (not e!2170530))))

(assert (=> b!3505706 (= res!1414165 (<= (- 1) (- (height!1713 (left!29132 (c!602788 lt!1195427))) (height!1713 (right!29462 (c!602788 lt!1195427))))))))

(declare-fun b!3505707 () Bool)

(assert (=> b!3505707 (= e!2170530 (not (isEmpty!21752 (right!29462 (c!602788 lt!1195427)))))))

(declare-fun d!1018741 () Bool)

(declare-fun res!1414163 () Bool)

(assert (=> d!1018741 (=> res!1414163 e!2170531)))

(assert (=> d!1018741 (= res!1414163 (not ((_ is Node!11312) (c!602788 lt!1195427))))))

(assert (=> d!1018741 (= (isBalanced!3447 (c!602788 lt!1195427)) e!2170531)))

(declare-fun b!3505704 () Bool)

(declare-fun res!1414166 () Bool)

(assert (=> b!3505704 (=> (not res!1414166) (not e!2170530))))

(assert (=> b!3505704 (= res!1414166 (not (isEmpty!21752 (left!29132 (c!602788 lt!1195427)))))))

(assert (= (and d!1018741 (not res!1414163)) b!3505706))

(assert (= (and b!3505706 res!1414165) b!3505702))

(assert (= (and b!3505702 res!1414161) b!3505703))

(assert (= (and b!3505703 res!1414164) b!3505705))

(assert (= (and b!3505705 res!1414162) b!3505704))

(assert (= (and b!3505704 res!1414166) b!3505707))

(declare-fun m!3943229 () Bool)

(assert (=> b!3505705 m!3943229))

(declare-fun m!3943231 () Bool)

(assert (=> b!3505707 m!3943231))

(declare-fun m!3943233 () Bool)

(assert (=> b!3505706 m!3943233))

(declare-fun m!3943235 () Bool)

(assert (=> b!3505706 m!3943235))

(declare-fun m!3943237 () Bool)

(assert (=> b!3505703 m!3943237))

(assert (=> b!3505702 m!3943233))

(assert (=> b!3505702 m!3943235))

(declare-fun m!3943239 () Bool)

(assert (=> b!3505704 m!3943239))

(assert (=> b!3505361 d!1018741))

(declare-fun d!1018743 () Bool)

(declare-fun lt!1195499 () Int)

(assert (=> d!1018743 (= lt!1195499 (size!28365 (list!13629 (_2!21690 lt!1195164))))))

(declare-fun size!28372 (Conc!11311) Int)

(assert (=> d!1018743 (= lt!1195499 (size!28372 (c!602787 (_2!21690 lt!1195164))))))

(assert (=> d!1018743 (= (size!28367 (_2!21690 lt!1195164)) lt!1195499)))

(declare-fun bs!563971 () Bool)

(assert (= bs!563971 d!1018743))

(assert (=> bs!563971 m!3941865))

(assert (=> bs!563971 m!3941865))

(declare-fun m!3943241 () Bool)

(assert (=> bs!563971 m!3943241))

(declare-fun m!3943243 () Bool)

(assert (=> bs!563971 m!3943243))

(assert (=> b!3504770 d!1018743))

(declare-fun d!1018745 () Bool)

(declare-fun lt!1195500 () Int)

(assert (=> d!1018745 (= lt!1195500 (size!28365 (list!13629 lt!1195088)))))

(assert (=> d!1018745 (= lt!1195500 (size!28372 (c!602787 lt!1195088)))))

(assert (=> d!1018745 (= (size!28367 lt!1195088) lt!1195500)))

(declare-fun bs!563972 () Bool)

(assert (= bs!563972 d!1018745))

(assert (=> bs!563972 m!3941855))

(assert (=> bs!563972 m!3941855))

(declare-fun m!3943245 () Bool)

(assert (=> bs!563972 m!3943245))

(declare-fun m!3943247 () Bool)

(assert (=> bs!563972 m!3943247))

(assert (=> b!3504770 d!1018745))

(assert (=> bm!252967 d!1018737))

(declare-fun d!1018747 () Bool)

(assert (=> d!1018747 (= (isEmpty!21746 (list!13629 (_2!21690 lt!1195068))) ((_ is Nil!37305) (list!13629 (_2!21690 lt!1195068))))))

(assert (=> d!1018445 d!1018747))

(declare-fun d!1018749 () Bool)

(assert (=> d!1018749 (= (list!13629 (_2!21690 lt!1195068)) (list!13632 (c!602787 (_2!21690 lt!1195068))))))

(declare-fun bs!563973 () Bool)

(assert (= bs!563973 d!1018749))

(declare-fun m!3943249 () Bool)

(assert (=> bs!563973 m!3943249))

(assert (=> d!1018445 d!1018749))

(declare-fun d!1018751 () Bool)

(declare-fun lt!1195503 () Bool)

(assert (=> d!1018751 (= lt!1195503 (isEmpty!21746 (list!13632 (c!602787 (_2!21690 lt!1195068)))))))

(assert (=> d!1018751 (= lt!1195503 (= (size!28372 (c!602787 (_2!21690 lt!1195068))) 0))))

(assert (=> d!1018751 (= (isEmpty!21753 (c!602787 (_2!21690 lt!1195068))) lt!1195503)))

(declare-fun bs!563974 () Bool)

(assert (= bs!563974 d!1018751))

(assert (=> bs!563974 m!3943249))

(assert (=> bs!563974 m!3943249))

(declare-fun m!3943251 () Bool)

(assert (=> bs!563974 m!3943251))

(declare-fun m!3943253 () Bool)

(assert (=> bs!563974 m!3943253))

(assert (=> d!1018445 d!1018751))

(assert (=> b!3504994 d!1018695))

(declare-fun d!1018753 () Bool)

(assert (=> d!1018753 (= (apply!8865 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))) (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195251))))) (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251))))) (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195251))))))))

(declare-fun b_lambda!101965 () Bool)

(assert (=> (not b_lambda!101965) (not d!1018753)))

(declare-fun t!279353 () Bool)

(declare-fun tb!194433 () Bool)

(assert (=> (and b!3505469 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279353) tb!194433))

(declare-fun result!238726 () Bool)

(assert (=> tb!194433 (= result!238726 (inv!21 (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251))))) (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195251)))))))))

(declare-fun m!3943255 () Bool)

(assert (=> tb!194433 m!3943255))

(assert (=> d!1018753 t!279353))

(declare-fun b_and!248785 () Bool)

(assert (= b_and!248767 (and (=> t!279353 result!238726) b_and!248785)))

(declare-fun tb!194435 () Bool)

(declare-fun t!279355 () Bool)

(assert (=> (and b!3504500 (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279355) tb!194435))

(declare-fun result!238728 () Bool)

(assert (= result!238728 result!238726))

(assert (=> d!1018753 t!279355))

(declare-fun b_and!248787 () Bool)

(assert (= b_and!248765 (and (=> t!279355 result!238728) b_and!248787)))

(declare-fun tb!194437 () Bool)

(declare-fun t!279357 () Bool)

(assert (=> (and b!3504516 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279357) tb!194437))

(declare-fun result!238730 () Bool)

(assert (= result!238730 result!238726))

(assert (=> d!1018753 t!279357))

(declare-fun b_and!248789 () Bool)

(assert (= b_and!248761 (and (=> t!279357 result!238730) b_and!248789)))

(declare-fun t!279359 () Bool)

(declare-fun tb!194439 () Bool)

(assert (=> (and b!3505488 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279359) tb!194439))

(declare-fun result!238732 () Bool)

(assert (= result!238732 result!238726))

(assert (=> d!1018753 t!279359))

(declare-fun b_and!248791 () Bool)

(assert (= b_and!248771 (and (=> t!279359 result!238732) b_and!248791)))

(declare-fun t!279361 () Bool)

(declare-fun tb!194441 () Bool)

(assert (=> (and b!3504518 (= (toValue!7712 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279361) tb!194441))

(declare-fun result!238734 () Bool)

(assert (= result!238734 result!238726))

(assert (=> d!1018753 t!279361))

(declare-fun b_and!248793 () Bool)

(assert (= b_and!248763 (and (=> t!279361 result!238734) b_and!248793)))

(assert (=> d!1018753 m!3942233))

(declare-fun m!3943257 () Bool)

(assert (=> d!1018753 m!3943257))

(assert (=> b!3504994 d!1018753))

(declare-fun d!1018755 () Bool)

(assert (=> d!1018755 (= (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195251)))) (fromListB!1829 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195251)))))))

(declare-fun bs!563975 () Bool)

(assert (= bs!563975 d!1018755))

(declare-fun m!3943259 () Bool)

(assert (=> bs!563975 m!3943259))

(assert (=> b!3504994 d!1018755))

(declare-fun d!1018757 () Bool)

(assert (=> d!1018757 (= (isDefined!5854 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))) (not (isEmpty!21756 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))))

(declare-fun bs!563976 () Bool)

(assert (= bs!563976 d!1018757))

(assert (=> bs!563976 m!3941409))

(declare-fun m!3943261 () Bool)

(assert (=> bs!563976 m!3943261))

(assert (=> d!1018539 d!1018757))

(assert (=> d!1018539 d!1018537))

(declare-fun d!1018759 () Bool)

(declare-fun e!2170535 () Bool)

(assert (=> d!1018759 e!2170535))

(declare-fun res!1414171 () Bool)

(assert (=> d!1018759 (=> (not res!1414171) (not e!2170535))))

(assert (=> d!1018759 (= res!1414171 (isDefined!5854 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))))))

(assert (=> d!1018759 true))

(declare-fun _$52!1949 () Unit!52870)

(assert (=> d!1018759 (= (choose!20340 thiss!18206 rules!2135 lt!1195062 (h!42727 (t!279242 tokens!494))) _$52!1949)))

(declare-fun b!3505712 () Bool)

(declare-fun res!1414172 () Bool)

(assert (=> b!3505712 (=> (not res!1414172) (not e!2170535))))

(assert (=> b!3505712 (= res!1414172 (matchR!4811 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))))))

(declare-fun b!3505713 () Bool)

(assert (=> b!3505713 (= e!2170535 (= (rule!8098 (h!42727 (t!279242 tokens!494))) (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))))

(assert (= (and d!1018759 res!1414171) b!3505712))

(assert (= (and b!3505712 res!1414172) b!3505713))

(assert (=> d!1018759 m!3941409))

(assert (=> d!1018759 m!3941409))

(assert (=> d!1018759 m!3942635))

(assert (=> b!3505712 m!3941491))

(assert (=> b!3505712 m!3942639))

(assert (=> b!3505712 m!3941485))

(assert (=> b!3505712 m!3941491))

(assert (=> b!3505712 m!3941485))

(assert (=> b!3505712 m!3941409))

(assert (=> b!3505712 m!3942641))

(assert (=> b!3505712 m!3941409))

(assert (=> b!3505713 m!3941409))

(assert (=> b!3505713 m!3941409))

(assert (=> b!3505713 m!3942641))

(assert (=> d!1018539 d!1018759))

(assert (=> d!1018539 d!1018417))

(declare-fun b!3505714 () Bool)

(declare-fun e!2170541 () Bool)

(declare-fun lt!1195504 () Bool)

(assert (=> b!3505714 (= e!2170541 (not lt!1195504))))

(declare-fun b!3505715 () Bool)

(declare-fun res!1414179 () Bool)

(declare-fun e!2170538 () Bool)

(assert (=> b!3505715 (=> res!1414179 e!2170538)))

(declare-fun e!2170542 () Bool)

(assert (=> b!3505715 (= res!1414179 e!2170542)))

(declare-fun res!1414180 () Bool)

(assert (=> b!3505715 (=> (not res!1414180) (not e!2170542))))

(assert (=> b!3505715 (= res!1414180 lt!1195504)))

(declare-fun b!3505716 () Bool)

(declare-fun e!2170539 () Bool)

(assert (=> b!3505716 (= e!2170539 e!2170541)))

(declare-fun c!603040 () Bool)

(assert (=> b!3505716 (= c!603040 ((_ is EmptyLang!10227) (derivativeStep!3065 (regex!5468 lt!1195087) (head!7371 lt!1195062))))))

(declare-fun b!3505717 () Bool)

(assert (=> b!3505717 (= e!2170542 (= (head!7371 (tail!5480 lt!1195062)) (c!602786 (derivativeStep!3065 (regex!5468 lt!1195087) (head!7371 lt!1195062)))))))

(declare-fun b!3505718 () Bool)

(declare-fun res!1414175 () Bool)

(assert (=> b!3505718 (=> res!1414175 e!2170538)))

(assert (=> b!3505718 (= res!1414175 (not ((_ is ElementMatch!10227) (derivativeStep!3065 (regex!5468 lt!1195087) (head!7371 lt!1195062)))))))

(assert (=> b!3505718 (= e!2170541 e!2170538)))

(declare-fun b!3505719 () Bool)

(declare-fun e!2170537 () Bool)

(assert (=> b!3505719 (= e!2170537 (nullable!3512 (derivativeStep!3065 (regex!5468 lt!1195087) (head!7371 lt!1195062))))))

(declare-fun b!3505720 () Bool)

(declare-fun res!1414176 () Bool)

(assert (=> b!3505720 (=> (not res!1414176) (not e!2170542))))

(assert (=> b!3505720 (= res!1414176 (isEmpty!21746 (tail!5480 (tail!5480 lt!1195062))))))

(declare-fun b!3505721 () Bool)

(declare-fun e!2170540 () Bool)

(assert (=> b!3505721 (= e!2170540 (not (= (head!7371 (tail!5480 lt!1195062)) (c!602786 (derivativeStep!3065 (regex!5468 lt!1195087) (head!7371 lt!1195062))))))))

(declare-fun b!3505722 () Bool)

(declare-fun e!2170536 () Bool)

(assert (=> b!3505722 (= e!2170538 e!2170536)))

(declare-fun res!1414173 () Bool)

(assert (=> b!3505722 (=> (not res!1414173) (not e!2170536))))

(assert (=> b!3505722 (= res!1414173 (not lt!1195504))))

(declare-fun b!3505723 () Bool)

(assert (=> b!3505723 (= e!2170537 (matchR!4811 (derivativeStep!3065 (derivativeStep!3065 (regex!5468 lt!1195087) (head!7371 lt!1195062)) (head!7371 (tail!5480 lt!1195062))) (tail!5480 (tail!5480 lt!1195062))))))

(declare-fun b!3505724 () Bool)

(assert (=> b!3505724 (= e!2170536 e!2170540)))

(declare-fun res!1414174 () Bool)

(assert (=> b!3505724 (=> res!1414174 e!2170540)))

(declare-fun call!253053 () Bool)

(assert (=> b!3505724 (= res!1414174 call!253053)))

(declare-fun d!1018761 () Bool)

(assert (=> d!1018761 e!2170539))

(declare-fun c!603041 () Bool)

(assert (=> d!1018761 (= c!603041 ((_ is EmptyExpr!10227) (derivativeStep!3065 (regex!5468 lt!1195087) (head!7371 lt!1195062))))))

(assert (=> d!1018761 (= lt!1195504 e!2170537)))

(declare-fun c!603042 () Bool)

(assert (=> d!1018761 (= c!603042 (isEmpty!21746 (tail!5480 lt!1195062)))))

(assert (=> d!1018761 (validRegex!4668 (derivativeStep!3065 (regex!5468 lt!1195087) (head!7371 lt!1195062)))))

(assert (=> d!1018761 (= (matchR!4811 (derivativeStep!3065 (regex!5468 lt!1195087) (head!7371 lt!1195062)) (tail!5480 lt!1195062)) lt!1195504)))

(declare-fun bm!253048 () Bool)

(assert (=> bm!253048 (= call!253053 (isEmpty!21746 (tail!5480 lt!1195062)))))

(declare-fun b!3505725 () Bool)

(declare-fun res!1414177 () Bool)

(assert (=> b!3505725 (=> (not res!1414177) (not e!2170542))))

(assert (=> b!3505725 (= res!1414177 (not call!253053))))

(declare-fun b!3505726 () Bool)

(declare-fun res!1414178 () Bool)

(assert (=> b!3505726 (=> res!1414178 e!2170540)))

(assert (=> b!3505726 (= res!1414178 (not (isEmpty!21746 (tail!5480 (tail!5480 lt!1195062)))))))

(declare-fun b!3505727 () Bool)

(assert (=> b!3505727 (= e!2170539 (= lt!1195504 call!253053))))

(assert (= (and d!1018761 c!603042) b!3505719))

(assert (= (and d!1018761 (not c!603042)) b!3505723))

(assert (= (and d!1018761 c!603041) b!3505727))

(assert (= (and d!1018761 (not c!603041)) b!3505716))

(assert (= (and b!3505716 c!603040) b!3505714))

(assert (= (and b!3505716 (not c!603040)) b!3505718))

(assert (= (and b!3505718 (not res!1414175)) b!3505715))

(assert (= (and b!3505715 res!1414180) b!3505725))

(assert (= (and b!3505725 res!1414177) b!3505720))

(assert (= (and b!3505720 res!1414176) b!3505717))

(assert (= (and b!3505715 (not res!1414179)) b!3505722))

(assert (= (and b!3505722 res!1414173) b!3505724))

(assert (= (and b!3505724 (not res!1414174)) b!3505726))

(assert (= (and b!3505726 (not res!1414178)) b!3505721))

(assert (= (or b!3505727 b!3505725 b!3505724) bm!253048))

(assert (=> b!3505726 m!3941999))

(declare-fun m!3943263 () Bool)

(assert (=> b!3505726 m!3943263))

(assert (=> b!3505726 m!3943263))

(declare-fun m!3943265 () Bool)

(assert (=> b!3505726 m!3943265))

(assert (=> b!3505719 m!3942007))

(declare-fun m!3943267 () Bool)

(assert (=> b!3505719 m!3943267))

(assert (=> b!3505723 m!3941999))

(declare-fun m!3943269 () Bool)

(assert (=> b!3505723 m!3943269))

(assert (=> b!3505723 m!3942007))

(assert (=> b!3505723 m!3943269))

(declare-fun m!3943271 () Bool)

(assert (=> b!3505723 m!3943271))

(assert (=> b!3505723 m!3941999))

(assert (=> b!3505723 m!3943263))

(assert (=> b!3505723 m!3943271))

(assert (=> b!3505723 m!3943263))

(declare-fun m!3943273 () Bool)

(assert (=> b!3505723 m!3943273))

(assert (=> bm!253048 m!3941999))

(assert (=> bm!253048 m!3942001))

(assert (=> b!3505721 m!3941999))

(assert (=> b!3505721 m!3943269))

(assert (=> b!3505717 m!3941999))

(assert (=> b!3505717 m!3943269))

(assert (=> d!1018761 m!3941999))

(assert (=> d!1018761 m!3942001))

(assert (=> d!1018761 m!3942007))

(declare-fun m!3943275 () Bool)

(assert (=> d!1018761 m!3943275))

(assert (=> b!3505720 m!3941999))

(assert (=> b!3505720 m!3943263))

(assert (=> b!3505720 m!3943263))

(assert (=> b!3505720 m!3943265))

(assert (=> b!3504880 d!1018761))

(declare-fun bm!253049 () Bool)

(declare-fun call!253055 () Regex!10227)

(declare-fun c!603045 () Bool)

(declare-fun c!603046 () Bool)

(assert (=> bm!253049 (= call!253055 (derivativeStep!3065 (ite c!603045 (regOne!20967 (regex!5468 lt!1195087)) (ite c!603046 (reg!10556 (regex!5468 lt!1195087)) (regOne!20966 (regex!5468 lt!1195087)))) (head!7371 lt!1195062)))))

(declare-fun b!3505728 () Bool)

(declare-fun e!2170546 () Regex!10227)

(declare-fun e!2170547 () Regex!10227)

(assert (=> b!3505728 (= e!2170546 e!2170547)))

(assert (=> b!3505728 (= c!603046 ((_ is Star!10227) (regex!5468 lt!1195087)))))

(declare-fun b!3505729 () Bool)

(declare-fun e!2170543 () Regex!10227)

(declare-fun call!253054 () Regex!10227)

(assert (=> b!3505729 (= e!2170543 (Union!10227 (Concat!15925 call!253054 (regTwo!20966 (regex!5468 lt!1195087))) EmptyLang!10227))))

(declare-fun b!3505730 () Bool)

(declare-fun c!603043 () Bool)

(assert (=> b!3505730 (= c!603043 (nullable!3512 (regOne!20966 (regex!5468 lt!1195087))))))

(assert (=> b!3505730 (= e!2170547 e!2170543)))

(declare-fun b!3505731 () Bool)

(declare-fun e!2170545 () Regex!10227)

(declare-fun e!2170544 () Regex!10227)

(assert (=> b!3505731 (= e!2170545 e!2170544)))

(declare-fun c!603047 () Bool)

(assert (=> b!3505731 (= c!603047 ((_ is ElementMatch!10227) (regex!5468 lt!1195087)))))

(declare-fun b!3505732 () Bool)

(assert (=> b!3505732 (= e!2170545 EmptyLang!10227)))

(declare-fun b!3505733 () Bool)

(assert (=> b!3505733 (= c!603045 ((_ is Union!10227) (regex!5468 lt!1195087)))))

(assert (=> b!3505733 (= e!2170544 e!2170546)))

(declare-fun call!253056 () Regex!10227)

(declare-fun b!3505734 () Bool)

(assert (=> b!3505734 (= e!2170543 (Union!10227 (Concat!15925 call!253054 (regTwo!20966 (regex!5468 lt!1195087))) call!253056))))

(declare-fun bm!253050 () Bool)

(declare-fun call!253057 () Regex!10227)

(assert (=> bm!253050 (= call!253057 call!253055)))

(declare-fun bm!253051 () Bool)

(assert (=> bm!253051 (= call!253054 call!253057)))

(declare-fun b!3505736 () Bool)

(assert (=> b!3505736 (= e!2170546 (Union!10227 call!253055 call!253056))))

(declare-fun b!3505737 () Bool)

(assert (=> b!3505737 (= e!2170547 (Concat!15925 call!253057 (regex!5468 lt!1195087)))))

(declare-fun bm!253052 () Bool)

(assert (=> bm!253052 (= call!253056 (derivativeStep!3065 (ite c!603045 (regTwo!20967 (regex!5468 lt!1195087)) (regTwo!20966 (regex!5468 lt!1195087))) (head!7371 lt!1195062)))))

(declare-fun d!1018763 () Bool)

(declare-fun lt!1195505 () Regex!10227)

(assert (=> d!1018763 (validRegex!4668 lt!1195505)))

(assert (=> d!1018763 (= lt!1195505 e!2170545)))

(declare-fun c!603044 () Bool)

(assert (=> d!1018763 (= c!603044 (or ((_ is EmptyExpr!10227) (regex!5468 lt!1195087)) ((_ is EmptyLang!10227) (regex!5468 lt!1195087))))))

(assert (=> d!1018763 (validRegex!4668 (regex!5468 lt!1195087))))

(assert (=> d!1018763 (= (derivativeStep!3065 (regex!5468 lt!1195087) (head!7371 lt!1195062)) lt!1195505)))

(declare-fun b!3505735 () Bool)

(assert (=> b!3505735 (= e!2170544 (ite (= (head!7371 lt!1195062) (c!602786 (regex!5468 lt!1195087))) EmptyExpr!10227 EmptyLang!10227))))

(assert (= (and d!1018763 c!603044) b!3505732))

(assert (= (and d!1018763 (not c!603044)) b!3505731))

(assert (= (and b!3505731 c!603047) b!3505735))

(assert (= (and b!3505731 (not c!603047)) b!3505733))

(assert (= (and b!3505733 c!603045) b!3505736))

(assert (= (and b!3505733 (not c!603045)) b!3505728))

(assert (= (and b!3505728 c!603046) b!3505737))

(assert (= (and b!3505728 (not c!603046)) b!3505730))

(assert (= (and b!3505730 c!603043) b!3505734))

(assert (= (and b!3505730 (not c!603043)) b!3505729))

(assert (= (or b!3505734 b!3505729) bm!253051))

(assert (= (or b!3505737 bm!253051) bm!253050))

(assert (= (or b!3505736 bm!253050) bm!253049))

(assert (= (or b!3505736 b!3505734) bm!253052))

(assert (=> bm!253049 m!3942005))

(declare-fun m!3943277 () Bool)

(assert (=> bm!253049 m!3943277))

(declare-fun m!3943279 () Bool)

(assert (=> b!3505730 m!3943279))

(assert (=> bm!253052 m!3942005))

(declare-fun m!3943281 () Bool)

(assert (=> bm!253052 m!3943281))

(declare-fun m!3943283 () Bool)

(assert (=> d!1018763 m!3943283))

(assert (=> d!1018763 m!3942011))

(assert (=> b!3504880 d!1018763))

(declare-fun d!1018765 () Bool)

(assert (=> d!1018765 (= (head!7371 lt!1195062) (h!42725 lt!1195062))))

(assert (=> b!3504880 d!1018765))

(declare-fun d!1018767 () Bool)

(assert (=> d!1018767 (= (tail!5480 lt!1195062) (t!279240 lt!1195062))))

(assert (=> b!3504880 d!1018767))

(declare-fun d!1018769 () Bool)

(declare-fun lt!1195506 () Bool)

(assert (=> d!1018769 (= lt!1195506 (isEmpty!21751 (list!13633 (_1!21690 lt!1195417))))))

(assert (=> d!1018769 (= lt!1195506 (isEmpty!21752 (c!602788 (_1!21690 lt!1195417))))))

(assert (=> d!1018769 (= (isEmpty!21747 (_1!21690 lt!1195417)) lt!1195506)))

(declare-fun bs!563977 () Bool)

(assert (= bs!563977 d!1018769))

(assert (=> bs!563977 m!3942797))

(assert (=> bs!563977 m!3942797))

(declare-fun m!3943285 () Bool)

(assert (=> bs!563977 m!3943285))

(declare-fun m!3943287 () Bool)

(assert (=> bs!563977 m!3943287))

(assert (=> b!3505328 d!1018769))

(declare-fun d!1018771 () Bool)

(declare-fun lt!1195507 () Int)

(assert (=> d!1018771 (= lt!1195507 (size!28370 (list!13633 lt!1195069)))))

(assert (=> d!1018771 (= lt!1195507 (size!28371 (c!602788 lt!1195069)))))

(assert (=> d!1018771 (= (size!28364 lt!1195069) lt!1195507)))

(declare-fun bs!563978 () Bool)

(assert (= bs!563978 d!1018771))

(assert (=> bs!563978 m!3942915))

(assert (=> bs!563978 m!3942915))

(declare-fun m!3943289 () Bool)

(assert (=> bs!563978 m!3943289))

(declare-fun m!3943291 () Bool)

(assert (=> bs!563978 m!3943291))

(assert (=> b!3505402 d!1018771))

(assert (=> b!3504924 d!1018601))

(assert (=> d!1018543 d!1018435))

(declare-fun d!1018773 () Bool)

(assert (=> d!1018773 (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 tokens!494))))

(assert (=> d!1018773 true))

(declare-fun _$77!1002 () Unit!52870)

(assert (=> d!1018773 (= (choose!20338 thiss!18206 rules!2135 tokens!494 (h!42727 tokens!494)) _$77!1002)))

(declare-fun bs!563980 () Bool)

(assert (= bs!563980 d!1018773))

(assert (=> bs!563980 m!3941475))

(assert (=> d!1018543 d!1018773))

(assert (=> d!1018543 d!1018615))

(assert (=> b!3504903 d!1018601))

(assert (=> b!3505385 d!1018459))

(declare-fun d!1018779 () Bool)

(assert (=> d!1018779 (= (isEmpty!21757 lt!1195251) (not ((_ is Some!7593) lt!1195251)))))

(assert (=> d!1018461 d!1018779))

(declare-fun d!1018781 () Bool)

(assert (=> d!1018781 (= (isEmpty!21746 (_1!21695 lt!1195254)) ((_ is Nil!37305) (_1!21695 lt!1195254)))))

(assert (=> d!1018461 d!1018781))

(declare-fun d!1018783 () Bool)

(declare-fun lt!1195527 () tuple2!37122)

(assert (=> d!1018783 (= (++!9231 (_1!21695 lt!1195527) (_2!21695 lt!1195527)) lt!1195055)))

(declare-fun sizeTr!212 (List!37429 Int) Int)

(assert (=> d!1018783 (= lt!1195527 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 0 lt!1195055 lt!1195055 (sizeTr!212 lt!1195055 0)))))

(declare-fun lt!1195529 () Unit!52870)

(declare-fun lt!1195530 () Unit!52870)

(assert (=> d!1018783 (= lt!1195529 lt!1195530)))

(declare-fun lt!1195526 () List!37429)

(declare-fun lt!1195532 () Int)

(assert (=> d!1018783 (= (sizeTr!212 lt!1195526 lt!1195532) (+ (size!28365 lt!1195526) lt!1195532))))

(declare-fun lemmaSizeTrEqualsSize!211 (List!37429 Int) Unit!52870)

(assert (=> d!1018783 (= lt!1195530 (lemmaSizeTrEqualsSize!211 lt!1195526 lt!1195532))))

(assert (=> d!1018783 (= lt!1195532 0)))

(assert (=> d!1018783 (= lt!1195526 Nil!37305)))

(declare-fun lt!1195528 () Unit!52870)

(declare-fun lt!1195525 () Unit!52870)

(assert (=> d!1018783 (= lt!1195528 lt!1195525)))

(declare-fun lt!1195531 () Int)

(assert (=> d!1018783 (= (sizeTr!212 lt!1195055 lt!1195531) (+ (size!28365 lt!1195055) lt!1195531))))

(assert (=> d!1018783 (= lt!1195525 (lemmaSizeTrEqualsSize!211 lt!1195055 lt!1195531))))

(assert (=> d!1018783 (= lt!1195531 0)))

(assert (=> d!1018783 (validRegex!4668 (regex!5468 (rule!8098 (h!42727 tokens!494))))))

(assert (=> d!1018783 (= (findLongestMatch!848 (regex!5468 (rule!8098 (h!42727 tokens!494))) lt!1195055) lt!1195527)))

(declare-fun bs!563981 () Bool)

(assert (= bs!563981 d!1018783))

(declare-fun m!3943307 () Bool)

(assert (=> bs!563981 m!3943307))

(declare-fun m!3943309 () Bool)

(assert (=> bs!563981 m!3943309))

(assert (=> bs!563981 m!3943307))

(declare-fun m!3943311 () Bool)

(assert (=> bs!563981 m!3943311))

(declare-fun m!3943313 () Bool)

(assert (=> bs!563981 m!3943313))

(declare-fun m!3943315 () Bool)

(assert (=> bs!563981 m!3943315))

(declare-fun m!3943317 () Bool)

(assert (=> bs!563981 m!3943317))

(declare-fun m!3943319 () Bool)

(assert (=> bs!563981 m!3943319))

(declare-fun m!3943321 () Bool)

(assert (=> bs!563981 m!3943321))

(assert (=> bs!563981 m!3943095))

(assert (=> bs!563981 m!3941467))

(assert (=> d!1018461 d!1018783))

(declare-fun d!1018785 () Bool)

(declare-fun res!1414193 () Bool)

(declare-fun e!2170557 () Bool)

(assert (=> d!1018785 (=> (not res!1414193) (not e!2170557))))

(assert (=> d!1018785 (= res!1414193 (validRegex!4668 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(assert (=> d!1018785 (= (ruleValid!1764 thiss!18206 (rule!8098 (h!42727 tokens!494))) e!2170557)))

(declare-fun b!3505756 () Bool)

(declare-fun res!1414194 () Bool)

(assert (=> b!3505756 (=> (not res!1414194) (not e!2170557))))

(assert (=> b!3505756 (= res!1414194 (not (nullable!3512 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))

(declare-fun b!3505757 () Bool)

(assert (=> b!3505757 (= e!2170557 (not (= (tag!6100 (rule!8098 (h!42727 tokens!494))) (String!41825 ""))))))

(assert (= (and d!1018785 res!1414193) b!3505756))

(assert (= (and b!3505756 res!1414194) b!3505757))

(assert (=> d!1018785 m!3943095))

(assert (=> b!3505756 m!3943085))

(assert (=> d!1018461 d!1018785))

(declare-fun d!1018787 () Bool)

(declare-fun lt!1195533 () Int)

(assert (=> d!1018787 (>= lt!1195533 0)))

(declare-fun e!2170558 () Int)

(assert (=> d!1018787 (= lt!1195533 e!2170558)))

(declare-fun c!603051 () Bool)

(assert (=> d!1018787 (= c!603051 ((_ is Nil!37305) lt!1195173))))

(assert (=> d!1018787 (= (size!28365 lt!1195173) lt!1195533)))

(declare-fun b!3505758 () Bool)

(assert (=> b!3505758 (= e!2170558 0)))

(declare-fun b!3505759 () Bool)

(assert (=> b!3505759 (= e!2170558 (+ 1 (size!28365 (t!279240 lt!1195173))))))

(assert (= (and d!1018787 c!603051) b!3505758))

(assert (= (and d!1018787 (not c!603051)) b!3505759))

(declare-fun m!3943323 () Bool)

(assert (=> b!3505759 m!3943323))

(assert (=> b!3504817 d!1018787))

(declare-fun d!1018789 () Bool)

(declare-fun lt!1195534 () Int)

(assert (=> d!1018789 (>= lt!1195534 0)))

(declare-fun e!2170559 () Int)

(assert (=> d!1018789 (= lt!1195534 e!2170559)))

(declare-fun c!603052 () Bool)

(assert (=> d!1018789 (= c!603052 ((_ is Nil!37305) lt!1195062))))

(assert (=> d!1018789 (= (size!28365 lt!1195062) lt!1195534)))

(declare-fun b!3505760 () Bool)

(assert (=> b!3505760 (= e!2170559 0)))

(declare-fun b!3505761 () Bool)

(assert (=> b!3505761 (= e!2170559 (+ 1 (size!28365 (t!279240 lt!1195062))))))

(assert (= (and d!1018789 c!603052) b!3505760))

(assert (= (and d!1018789 (not c!603052)) b!3505761))

(declare-fun m!3943325 () Bool)

(assert (=> b!3505761 m!3943325))

(assert (=> b!3504817 d!1018789))

(declare-fun d!1018791 () Bool)

(declare-fun lt!1195535 () Int)

(assert (=> d!1018791 (>= lt!1195535 0)))

(declare-fun e!2170560 () Int)

(assert (=> d!1018791 (= lt!1195535 e!2170560)))

(declare-fun c!603053 () Bool)

(assert (=> d!1018791 (= c!603053 ((_ is Nil!37305) lt!1195070))))

(assert (=> d!1018791 (= (size!28365 lt!1195070) lt!1195535)))

(declare-fun b!3505762 () Bool)

(assert (=> b!3505762 (= e!2170560 0)))

(declare-fun b!3505763 () Bool)

(assert (=> b!3505763 (= e!2170560 (+ 1 (size!28365 (t!279240 lt!1195070))))))

(assert (= (and d!1018791 c!603053) b!3505762))

(assert (= (and d!1018791 (not c!603053)) b!3505763))

(declare-fun m!3943327 () Bool)

(assert (=> b!3505763 m!3943327))

(assert (=> b!3504817 d!1018791))

(declare-fun d!1018793 () Bool)

(declare-fun e!2170562 () Bool)

(assert (=> d!1018793 e!2170562))

(declare-fun res!1414196 () Bool)

(assert (=> d!1018793 (=> (not res!1414196) (not e!2170562))))

(declare-fun lt!1195536 () List!37429)

(assert (=> d!1018793 (= res!1414196 (= (content!5247 lt!1195536) ((_ map or) (content!5247 (ite c!602956 call!253010 call!253011)) (content!5247 (ite c!602956 call!253011 call!253010)))))))

(declare-fun e!2170561 () List!37429)

(assert (=> d!1018793 (= lt!1195536 e!2170561)))

(declare-fun c!603054 () Bool)

(assert (=> d!1018793 (= c!603054 ((_ is Nil!37305) (ite c!602956 call!253010 call!253011)))))

(assert (=> d!1018793 (= (++!9231 (ite c!602956 call!253010 call!253011) (ite c!602956 call!253011 call!253010)) lt!1195536)))

(declare-fun b!3505765 () Bool)

(assert (=> b!3505765 (= e!2170561 (Cons!37305 (h!42725 (ite c!602956 call!253010 call!253011)) (++!9231 (t!279240 (ite c!602956 call!253010 call!253011)) (ite c!602956 call!253011 call!253010))))))

(declare-fun b!3505764 () Bool)

(assert (=> b!3505764 (= e!2170561 (ite c!602956 call!253011 call!253010))))

(declare-fun b!3505767 () Bool)

(assert (=> b!3505767 (= e!2170562 (or (not (= (ite c!602956 call!253011 call!253010) Nil!37305)) (= lt!1195536 (ite c!602956 call!253010 call!253011))))))

(declare-fun b!3505766 () Bool)

(declare-fun res!1414195 () Bool)

(assert (=> b!3505766 (=> (not res!1414195) (not e!2170562))))

(assert (=> b!3505766 (= res!1414195 (= (size!28365 lt!1195536) (+ (size!28365 (ite c!602956 call!253010 call!253011)) (size!28365 (ite c!602956 call!253011 call!253010)))))))

(assert (= (and d!1018793 c!603054) b!3505764))

(assert (= (and d!1018793 (not c!603054)) b!3505765))

(assert (= (and d!1018793 res!1414196) b!3505766))

(assert (= (and b!3505766 res!1414195) b!3505767))

(declare-fun m!3943329 () Bool)

(assert (=> d!1018793 m!3943329))

(declare-fun m!3943331 () Bool)

(assert (=> d!1018793 m!3943331))

(declare-fun m!3943333 () Bool)

(assert (=> d!1018793 m!3943333))

(declare-fun m!3943335 () Bool)

(assert (=> b!3505765 m!3943335))

(declare-fun m!3943337 () Bool)

(assert (=> b!3505766 m!3943337))

(declare-fun m!3943339 () Bool)

(assert (=> b!3505766 m!3943339))

(declare-fun m!3943341 () Bool)

(assert (=> b!3505766 m!3943341))

(assert (=> bm!253005 d!1018793))

(declare-fun d!1018795 () Bool)

(assert (=> d!1018795 true))

(declare-fun lambda!122531 () Int)

(declare-fun order!20023 () Int)

(declare-fun dynLambda!15857 (Int Int) Int)

(assert (=> d!1018795 (< (dynLambda!15850 order!20021 (toChars!7571 (transformation!5468 (h!42726 rules!2135)))) (dynLambda!15857 order!20023 lambda!122531))))

(assert (=> d!1018795 true))

(assert (=> d!1018795 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (h!42726 rules!2135)))) (dynLambda!15857 order!20023 lambda!122531))))

(declare-fun Forall!1346 (Int) Bool)

(assert (=> d!1018795 (= (semiInverseModEq!2307 (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (h!42726 rules!2135)))) (Forall!1346 lambda!122531))))

(declare-fun bs!563982 () Bool)

(assert (= bs!563982 d!1018795))

(declare-fun m!3943343 () Bool)

(assert (=> bs!563982 m!3943343))

(assert (=> d!1018611 d!1018795))

(declare-fun d!1018797 () Bool)

(declare-fun isBalanced!3448 (Conc!11311) Bool)

(assert (=> d!1018797 (= (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494))))) (isBalanced!3448 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494)))))))))

(declare-fun bs!563983 () Bool)

(assert (= bs!563983 d!1018797))

(declare-fun m!3943345 () Bool)

(assert (=> bs!563983 m!3943345))

(assert (=> tb!194373 d!1018797))

(declare-fun d!1018799 () Bool)

(declare-fun c!603057 () Bool)

(assert (=> d!1018799 (= c!603057 ((_ is Nil!37306) rules!2135))))

(declare-fun e!2170565 () (InoxSet Rule!10736))

(assert (=> d!1018799 (= (content!5248 rules!2135) e!2170565)))

(declare-fun b!3505776 () Bool)

(assert (=> b!3505776 (= e!2170565 ((as const (Array Rule!10736 Bool)) false))))

(declare-fun b!3505777 () Bool)

(assert (=> b!3505777 (= e!2170565 ((_ map or) (store ((as const (Array Rule!10736 Bool)) false) (h!42726 rules!2135) true) (content!5248 (t!279241 rules!2135))))))

(assert (= (and d!1018799 c!603057) b!3505776))

(assert (= (and d!1018799 (not c!603057)) b!3505777))

(declare-fun m!3943347 () Bool)

(assert (=> b!3505777 m!3943347))

(declare-fun m!3943349 () Bool)

(assert (=> b!3505777 m!3943349))

(assert (=> d!1018519 d!1018799))

(declare-fun d!1018801 () Bool)

(declare-fun lt!1195537 () Int)

(assert (=> d!1018801 (>= lt!1195537 0)))

(declare-fun e!2170566 () Int)

(assert (=> d!1018801 (= lt!1195537 e!2170566)))

(declare-fun c!603058 () Bool)

(assert (=> d!1018801 (= c!603058 ((_ is Nil!37305) (originalCharacters!6182 (h!42727 tokens!494))))))

(assert (=> d!1018801 (= (size!28365 (originalCharacters!6182 (h!42727 tokens!494))) lt!1195537)))

(declare-fun b!3505778 () Bool)

(assert (=> b!3505778 (= e!2170566 0)))

(declare-fun b!3505779 () Bool)

(assert (=> b!3505779 (= e!2170566 (+ 1 (size!28365 (t!279240 (originalCharacters!6182 (h!42727 tokens!494))))))))

(assert (= (and d!1018801 c!603058) b!3505778))

(assert (= (and d!1018801 (not c!603058)) b!3505779))

(declare-fun m!3943351 () Bool)

(assert (=> b!3505779 m!3943351))

(assert (=> b!3504952 d!1018801))

(declare-fun d!1018803 () Bool)

(declare-fun c!603061 () Bool)

(assert (=> d!1018803 (= c!603061 ((_ is Nil!37305) (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))

(declare-fun e!2170569 () (InoxSet C!20640))

(assert (=> d!1018803 (= (content!5247 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494))))) e!2170569)))

(declare-fun b!3505784 () Bool)

(assert (=> b!3505784 (= e!2170569 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3505785 () Bool)

(assert (=> b!3505785 (= e!2170569 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494))))) true) (content!5247 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))))

(assert (= (and d!1018803 c!603061) b!3505784))

(assert (= (and d!1018803 (not c!603061)) b!3505785))

(declare-fun m!3943353 () Bool)

(assert (=> b!3505785 m!3943353))

(assert (=> b!3505785 m!3943075))

(assert (=> d!1018603 d!1018803))

(declare-fun b!3505786 () Bool)

(declare-fun res!1414197 () Bool)

(declare-fun e!2170570 () Bool)

(assert (=> b!3505786 (=> (not res!1414197) (not e!2170570))))

(assert (=> b!3505786 (= res!1414197 (<= (- (height!1713 (left!29132 (c!602788 lt!1195308))) (height!1713 (right!29462 (c!602788 lt!1195308)))) 1))))

(declare-fun b!3505787 () Bool)

(declare-fun res!1414200 () Bool)

(assert (=> b!3505787 (=> (not res!1414200) (not e!2170570))))

(assert (=> b!3505787 (= res!1414200 (isBalanced!3447 (left!29132 (c!602788 lt!1195308))))))

(declare-fun b!3505789 () Bool)

(declare-fun res!1414198 () Bool)

(assert (=> b!3505789 (=> (not res!1414198) (not e!2170570))))

(assert (=> b!3505789 (= res!1414198 (isBalanced!3447 (right!29462 (c!602788 lt!1195308))))))

(declare-fun b!3505790 () Bool)

(declare-fun e!2170571 () Bool)

(assert (=> b!3505790 (= e!2170571 e!2170570)))

(declare-fun res!1414201 () Bool)

(assert (=> b!3505790 (=> (not res!1414201) (not e!2170570))))

(assert (=> b!3505790 (= res!1414201 (<= (- 1) (- (height!1713 (left!29132 (c!602788 lt!1195308))) (height!1713 (right!29462 (c!602788 lt!1195308))))))))

(declare-fun b!3505791 () Bool)

(assert (=> b!3505791 (= e!2170570 (not (isEmpty!21752 (right!29462 (c!602788 lt!1195308)))))))

(declare-fun d!1018805 () Bool)

(declare-fun res!1414199 () Bool)

(assert (=> d!1018805 (=> res!1414199 e!2170571)))

(assert (=> d!1018805 (= res!1414199 (not ((_ is Node!11312) (c!602788 lt!1195308))))))

(assert (=> d!1018805 (= (isBalanced!3447 (c!602788 lt!1195308)) e!2170571)))

(declare-fun b!3505788 () Bool)

(declare-fun res!1414202 () Bool)

(assert (=> b!3505788 (=> (not res!1414202) (not e!2170570))))

(assert (=> b!3505788 (= res!1414202 (not (isEmpty!21752 (left!29132 (c!602788 lt!1195308)))))))

(assert (= (and d!1018805 (not res!1414199)) b!3505790))

(assert (= (and b!3505790 res!1414201) b!3505786))

(assert (= (and b!3505786 res!1414197) b!3505787))

(assert (= (and b!3505787 res!1414200) b!3505789))

(assert (= (and b!3505789 res!1414198) b!3505788))

(assert (= (and b!3505788 res!1414202) b!3505791))

(declare-fun m!3943355 () Bool)

(assert (=> b!3505789 m!3943355))

(declare-fun m!3943357 () Bool)

(assert (=> b!3505791 m!3943357))

(declare-fun m!3943359 () Bool)

(assert (=> b!3505790 m!3943359))

(declare-fun m!3943361 () Bool)

(assert (=> b!3505790 m!3943361))

(declare-fun m!3943363 () Bool)

(assert (=> b!3505787 m!3943363))

(assert (=> b!3505786 m!3943359))

(assert (=> b!3505786 m!3943361))

(declare-fun m!3943365 () Bool)

(assert (=> b!3505788 m!3943365))

(assert (=> b!3505080 d!1018805))

(declare-fun d!1018807 () Bool)

(declare-fun e!2170573 () Bool)

(assert (=> d!1018807 e!2170573))

(declare-fun res!1414204 () Bool)

(assert (=> d!1018807 (=> (not res!1414204) (not e!2170573))))

(declare-fun lt!1195538 () List!37429)

(assert (=> d!1018807 (= res!1414204 (= (content!5247 lt!1195538) ((_ map or) (content!5247 (t!279240 lt!1195055)) (content!5247 lt!1195059))))))

(declare-fun e!2170572 () List!37429)

(assert (=> d!1018807 (= lt!1195538 e!2170572)))

(declare-fun c!603062 () Bool)

(assert (=> d!1018807 (= c!603062 ((_ is Nil!37305) (t!279240 lt!1195055)))))

(assert (=> d!1018807 (= (++!9231 (t!279240 lt!1195055) lt!1195059) lt!1195538)))

(declare-fun b!3505793 () Bool)

(assert (=> b!3505793 (= e!2170572 (Cons!37305 (h!42725 (t!279240 lt!1195055)) (++!9231 (t!279240 (t!279240 lt!1195055)) lt!1195059)))))

(declare-fun b!3505792 () Bool)

(assert (=> b!3505792 (= e!2170572 lt!1195059)))

(declare-fun b!3505795 () Bool)

(assert (=> b!3505795 (= e!2170573 (or (not (= lt!1195059 Nil!37305)) (= lt!1195538 (t!279240 lt!1195055))))))

(declare-fun b!3505794 () Bool)

(declare-fun res!1414203 () Bool)

(assert (=> b!3505794 (=> (not res!1414203) (not e!2170573))))

(assert (=> b!3505794 (= res!1414203 (= (size!28365 lt!1195538) (+ (size!28365 (t!279240 lt!1195055)) (size!28365 lt!1195059))))))

(assert (= (and d!1018807 c!603062) b!3505792))

(assert (= (and d!1018807 (not c!603062)) b!3505793))

(assert (= (and d!1018807 res!1414204) b!3505794))

(assert (= (and b!3505794 res!1414203) b!3505795))

(declare-fun m!3943367 () Bool)

(assert (=> d!1018807 m!3943367))

(declare-fun m!3943369 () Bool)

(assert (=> d!1018807 m!3943369))

(assert (=> d!1018807 m!3942901))

(declare-fun m!3943371 () Bool)

(assert (=> b!3505793 m!3943371))

(declare-fun m!3943373 () Bool)

(assert (=> b!3505794 m!3943373))

(assert (=> b!3505794 m!3942573))

(assert (=> b!3505794 m!3942907))

(assert (=> b!3505399 d!1018807))

(declare-fun bs!563984 () Bool)

(declare-fun d!1018809 () Bool)

(assert (= bs!563984 (and d!1018809 d!1018795)))

(declare-fun lambda!122534 () Int)

(assert (=> bs!563984 (= (and (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (h!42726 rules!2135)))) (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (h!42726 rules!2135))))) (= lambda!122534 lambda!122531))))

(declare-fun b!3505800 () Bool)

(declare-fun e!2170576 () Bool)

(assert (=> b!3505800 (= e!2170576 true)))

(assert (=> d!1018809 e!2170576))

(assert (= d!1018809 b!3505800))

(assert (=> b!3505800 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) (dynLambda!15857 order!20023 lambda!122534))))

(assert (=> b!3505800 (< (dynLambda!15850 order!20021 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) (dynLambda!15857 order!20023 lambda!122534))))

(assert (=> d!1018809 (= (list!13629 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (seqFromList!3990 (_1!21695 lt!1195254))))) (list!13629 (seqFromList!3990 (_1!21695 lt!1195254))))))

(declare-fun lt!1195541 () Unit!52870)

(declare-fun ForallOf!605 (Int BalanceConc!22236) Unit!52870)

(assert (=> d!1018809 (= lt!1195541 (ForallOf!605 lambda!122534 (seqFromList!3990 (_1!21695 lt!1195254))))))

(assert (=> d!1018809 (= (lemmaSemiInverse!1283 (transformation!5468 (rule!8098 (h!42727 tokens!494))) (seqFromList!3990 (_1!21695 lt!1195254))) lt!1195541)))

(declare-fun b_lambda!101967 () Bool)

(assert (=> (not b_lambda!101967) (not d!1018809)))

(declare-fun tb!194443 () Bool)

(declare-fun t!279365 () Bool)

(assert (=> (and b!3504500 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279365) tb!194443))

(declare-fun e!2170577 () Bool)

(declare-fun b!3505801 () Bool)

(declare-fun tp!1084856 () Bool)

(assert (=> b!3505801 (= e!2170577 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (seqFromList!3990 (_1!21695 lt!1195254)))))) tp!1084856))))

(declare-fun result!238736 () Bool)

(assert (=> tb!194443 (= result!238736 (and (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (seqFromList!3990 (_1!21695 lt!1195254))))) e!2170577))))

(assert (= tb!194443 b!3505801))

(declare-fun m!3943375 () Bool)

(assert (=> b!3505801 m!3943375))

(declare-fun m!3943377 () Bool)

(assert (=> tb!194443 m!3943377))

(assert (=> d!1018809 t!279365))

(declare-fun b_and!248795 () Bool)

(assert (= b_and!248775 (and (=> t!279365 result!238736) b_and!248795)))

(declare-fun tb!194445 () Bool)

(declare-fun t!279367 () Bool)

(assert (=> (and b!3504518 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279367) tb!194445))

(declare-fun result!238738 () Bool)

(assert (= result!238738 result!238736))

(assert (=> d!1018809 t!279367))

(declare-fun b_and!248797 () Bool)

(assert (= b_and!248779 (and (=> t!279367 result!238738) b_and!248797)))

(declare-fun t!279369 () Bool)

(declare-fun tb!194447 () Bool)

(assert (=> (and b!3504516 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279369) tb!194447))

(declare-fun result!238740 () Bool)

(assert (= result!238740 result!238736))

(assert (=> d!1018809 t!279369))

(declare-fun b_and!248799 () Bool)

(assert (= b_and!248783 (and (=> t!279369 result!238740) b_and!248799)))

(declare-fun t!279371 () Bool)

(declare-fun tb!194449 () Bool)

(assert (=> (and b!3505488 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279371) tb!194449))

(declare-fun result!238742 () Bool)

(assert (= result!238742 result!238736))

(assert (=> d!1018809 t!279371))

(declare-fun b_and!248801 () Bool)

(assert (= b_and!248777 (and (=> t!279371 result!238742) b_and!248801)))

(declare-fun t!279373 () Bool)

(declare-fun tb!194451 () Bool)

(assert (=> (and b!3505469 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279373) tb!194451))

(declare-fun result!238744 () Bool)

(assert (= result!238744 result!238736))

(assert (=> d!1018809 t!279373))

(declare-fun b_and!248803 () Bool)

(assert (= b_and!248781 (and (=> t!279373 result!238744) b_and!248803)))

(declare-fun b_lambda!101969 () Bool)

(assert (=> (not b_lambda!101969) (not d!1018809)))

(declare-fun t!279375 () Bool)

(declare-fun tb!194453 () Bool)

(assert (=> (and b!3504518 (= (toValue!7712 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279375) tb!194453))

(declare-fun result!238746 () Bool)

(assert (=> tb!194453 (= result!238746 (inv!21 (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (seqFromList!3990 (_1!21695 lt!1195254)))))))

(declare-fun m!3943379 () Bool)

(assert (=> tb!194453 m!3943379))

(assert (=> d!1018809 t!279375))

(declare-fun b_and!248805 () Bool)

(assert (= b_and!248793 (and (=> t!279375 result!238746) b_and!248805)))

(declare-fun t!279377 () Bool)

(declare-fun tb!194455 () Bool)

(assert (=> (and b!3504500 (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279377) tb!194455))

(declare-fun result!238748 () Bool)

(assert (= result!238748 result!238746))

(assert (=> d!1018809 t!279377))

(declare-fun b_and!248807 () Bool)

(assert (= b_and!248787 (and (=> t!279377 result!238748) b_and!248807)))

(declare-fun t!279379 () Bool)

(declare-fun tb!194457 () Bool)

(assert (=> (and b!3504516 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279379) tb!194457))

(declare-fun result!238750 () Bool)

(assert (= result!238750 result!238746))

(assert (=> d!1018809 t!279379))

(declare-fun b_and!248809 () Bool)

(assert (= b_and!248789 (and (=> t!279379 result!238750) b_and!248809)))

(declare-fun t!279381 () Bool)

(declare-fun tb!194459 () Bool)

(assert (=> (and b!3505469 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279381) tb!194459))

(declare-fun result!238752 () Bool)

(assert (= result!238752 result!238746))

(assert (=> d!1018809 t!279381))

(declare-fun b_and!248811 () Bool)

(assert (= b_and!248785 (and (=> t!279381 result!238752) b_and!248811)))

(declare-fun t!279383 () Bool)

(declare-fun tb!194461 () Bool)

(assert (=> (and b!3505488 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279383) tb!194461))

(declare-fun result!238754 () Bool)

(assert (= result!238754 result!238746))

(assert (=> d!1018809 t!279383))

(declare-fun b_and!248813 () Bool)

(assert (= b_and!248791 (and (=> t!279383 result!238754) b_and!248813)))

(declare-fun m!3943381 () Bool)

(assert (=> d!1018809 m!3943381))

(declare-fun m!3943383 () Bool)

(assert (=> d!1018809 m!3943383))

(assert (=> d!1018809 m!3942195))

(declare-fun m!3943385 () Bool)

(assert (=> d!1018809 m!3943385))

(assert (=> d!1018809 m!3943383))

(declare-fun m!3943387 () Bool)

(assert (=> d!1018809 m!3943387))

(assert (=> d!1018809 m!3942195))

(assert (=> d!1018809 m!3943381))

(assert (=> d!1018809 m!3942195))

(declare-fun m!3943389 () Bool)

(assert (=> d!1018809 m!3943389))

(assert (=> b!3504995 d!1018809))

(declare-fun b!3505927 () Bool)

(declare-fun e!2170653 () tuple2!37122)

(assert (=> b!3505927 (= e!2170653 (tuple2!37123 Nil!37305 lt!1195055))))

(declare-fun bm!253094 () Bool)

(declare-fun call!253102 () List!37429)

(assert (=> bm!253094 (= call!253102 (tail!5480 lt!1195055))))

(declare-fun b!3505928 () Bool)

(declare-fun c!603112 () Bool)

(declare-fun call!253106 () Bool)

(assert (=> b!3505928 (= c!603112 call!253106)))

(declare-fun lt!1195740 () Unit!52870)

(declare-fun lt!1195719 () Unit!52870)

(assert (=> b!3505928 (= lt!1195740 lt!1195719)))

(assert (=> b!3505928 (= lt!1195055 Nil!37305)))

(declare-fun call!253101 () Unit!52870)

(assert (=> b!3505928 (= lt!1195719 call!253101)))

(declare-fun lt!1195718 () Unit!52870)

(declare-fun lt!1195735 () Unit!52870)

(assert (=> b!3505928 (= lt!1195718 lt!1195735)))

(declare-fun call!253105 () Bool)

(assert (=> b!3505928 call!253105))

(declare-fun call!253103 () Unit!52870)

(assert (=> b!3505928 (= lt!1195735 call!253103)))

(declare-fun e!2170655 () tuple2!37122)

(assert (=> b!3505928 (= e!2170655 e!2170653)))

(declare-fun bm!253095 () Bool)

(assert (=> bm!253095 (= call!253106 (nullable!3512 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(declare-fun bm!253096 () Bool)

(declare-fun call!253100 () tuple2!37122)

(declare-fun call!253099 () Regex!10227)

(declare-fun lt!1195722 () List!37429)

(assert (=> bm!253096 (= call!253100 (findLongestMatchInner!933 call!253099 lt!1195722 (+ (size!28365 Nil!37305) 1) call!253102 lt!1195055 (size!28365 lt!1195055)))))

(declare-fun b!3505929 () Bool)

(declare-fun e!2170654 () tuple2!37122)

(declare-fun e!2170658 () tuple2!37122)

(assert (=> b!3505929 (= e!2170654 e!2170658)))

(declare-fun lt!1195733 () tuple2!37122)

(assert (=> b!3505929 (= lt!1195733 call!253100)))

(declare-fun c!603113 () Bool)

(assert (=> b!3505929 (= c!603113 (isEmpty!21746 (_1!21695 lt!1195733)))))

(declare-fun bm!253097 () Bool)

(assert (=> bm!253097 (= call!253103 (lemmaIsPrefixRefl!1826 lt!1195055 lt!1195055))))

(declare-fun b!3505930 () Bool)

(assert (=> b!3505930 (= e!2170653 (tuple2!37123 Nil!37305 Nil!37305))))

(declare-fun d!1018811 () Bool)

(declare-fun e!2170656 () Bool)

(assert (=> d!1018811 e!2170656))

(declare-fun res!1414246 () Bool)

(assert (=> d!1018811 (=> (not res!1414246) (not e!2170656))))

(declare-fun lt!1195734 () tuple2!37122)

(assert (=> d!1018811 (= res!1414246 (= (++!9231 (_1!21695 lt!1195734) (_2!21695 lt!1195734)) lt!1195055))))

(declare-fun e!2170659 () tuple2!37122)

(assert (=> d!1018811 (= lt!1195734 e!2170659)))

(declare-fun c!603111 () Bool)

(declare-fun lostCause!933 (Regex!10227) Bool)

(assert (=> d!1018811 (= c!603111 (lostCause!933 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(declare-fun lt!1195736 () Unit!52870)

(declare-fun Unit!52874 () Unit!52870)

(assert (=> d!1018811 (= lt!1195736 Unit!52874)))

(declare-fun getSuffix!1501 (List!37429 List!37429) List!37429)

(assert (=> d!1018811 (= (getSuffix!1501 lt!1195055 Nil!37305) lt!1195055)))

(declare-fun lt!1195720 () Unit!52870)

(declare-fun lt!1195742 () Unit!52870)

(assert (=> d!1018811 (= lt!1195720 lt!1195742)))

(declare-fun lt!1195741 () List!37429)

(assert (=> d!1018811 (= lt!1195055 lt!1195741)))

(declare-fun lemmaSamePrefixThenSameSuffix!1283 (List!37429 List!37429 List!37429 List!37429 List!37429) Unit!52870)

(assert (=> d!1018811 (= lt!1195742 (lemmaSamePrefixThenSameSuffix!1283 Nil!37305 lt!1195055 Nil!37305 lt!1195741 lt!1195055))))

(assert (=> d!1018811 (= lt!1195741 (getSuffix!1501 lt!1195055 Nil!37305))))

(declare-fun lt!1195726 () Unit!52870)

(declare-fun lt!1195738 () Unit!52870)

(assert (=> d!1018811 (= lt!1195726 lt!1195738)))

(assert (=> d!1018811 (isPrefix!2867 Nil!37305 (++!9231 Nil!37305 lt!1195055))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1817 (List!37429 List!37429) Unit!52870)

(assert (=> d!1018811 (= lt!1195738 (lemmaConcatTwoListThenFirstIsPrefix!1817 Nil!37305 lt!1195055))))

(assert (=> d!1018811 (validRegex!4668 (regex!5468 (rule!8098 (h!42727 tokens!494))))))

(assert (=> d!1018811 (= (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)) lt!1195734)))

(declare-fun b!3505931 () Bool)

(assert (=> b!3505931 (= e!2170658 lt!1195733)))

(declare-fun b!3505932 () Bool)

(declare-fun e!2170657 () Unit!52870)

(declare-fun Unit!52875 () Unit!52870)

(assert (=> b!3505932 (= e!2170657 Unit!52875)))

(declare-fun lt!1195723 () Unit!52870)

(assert (=> b!3505932 (= lt!1195723 call!253103)))

(assert (=> b!3505932 call!253105))

(declare-fun lt!1195744 () Unit!52870)

(assert (=> b!3505932 (= lt!1195744 lt!1195723)))

(declare-fun lt!1195724 () Unit!52870)

(assert (=> b!3505932 (= lt!1195724 call!253101)))

(assert (=> b!3505932 (= lt!1195055 Nil!37305)))

(declare-fun lt!1195728 () Unit!52870)

(assert (=> b!3505932 (= lt!1195728 lt!1195724)))

(assert (=> b!3505932 false))

(declare-fun b!3505933 () Bool)

(declare-fun Unit!52876 () Unit!52870)

(assert (=> b!3505933 (= e!2170657 Unit!52876)))

(declare-fun b!3505934 () Bool)

(assert (=> b!3505934 (= e!2170654 call!253100)))

(declare-fun b!3505935 () Bool)

(assert (=> b!3505935 (= e!2170658 (tuple2!37123 Nil!37305 lt!1195055))))

(declare-fun bm!253098 () Bool)

(assert (=> bm!253098 (= call!253105 (isPrefix!2867 lt!1195055 lt!1195055))))

(declare-fun b!3505936 () Bool)

(assert (=> b!3505936 (= e!2170659 e!2170655)))

(declare-fun c!603108 () Bool)

(assert (=> b!3505936 (= c!603108 (= (size!28365 Nil!37305) (size!28365 lt!1195055)))))

(declare-fun bm!253099 () Bool)

(declare-fun call!253104 () C!20640)

(assert (=> bm!253099 (= call!253099 (derivativeStep!3065 (regex!5468 (rule!8098 (h!42727 tokens!494))) call!253104))))

(declare-fun bm!253100 () Bool)

(assert (=> bm!253100 (= call!253104 (head!7371 lt!1195055))))

(declare-fun bm!253101 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!566 (List!37429 List!37429 List!37429) Unit!52870)

(assert (=> bm!253101 (= call!253101 (lemmaIsPrefixSameLengthThenSameList!566 lt!1195055 Nil!37305 lt!1195055))))

(declare-fun b!3505937 () Bool)

(assert (=> b!3505937 (= e!2170659 (tuple2!37123 Nil!37305 lt!1195055))))

(declare-fun b!3505938 () Bool)

(declare-fun c!603109 () Bool)

(assert (=> b!3505938 (= c!603109 call!253106)))

(declare-fun lt!1195725 () Unit!52870)

(declare-fun lt!1195732 () Unit!52870)

(assert (=> b!3505938 (= lt!1195725 lt!1195732)))

(declare-fun lt!1195731 () C!20640)

(declare-fun lt!1195721 () List!37429)

(assert (=> b!3505938 (= (++!9231 (++!9231 Nil!37305 (Cons!37305 lt!1195731 Nil!37305)) lt!1195721) lt!1195055)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1171 (List!37429 C!20640 List!37429 List!37429) Unit!52870)

(assert (=> b!3505938 (= lt!1195732 (lemmaMoveElementToOtherListKeepsConcatEq!1171 Nil!37305 lt!1195731 lt!1195721 lt!1195055))))

(assert (=> b!3505938 (= lt!1195721 (tail!5480 lt!1195055))))

(assert (=> b!3505938 (= lt!1195731 (head!7371 lt!1195055))))

(declare-fun lt!1195727 () Unit!52870)

(declare-fun lt!1195729 () Unit!52870)

(assert (=> b!3505938 (= lt!1195727 lt!1195729)))

(assert (=> b!3505938 (isPrefix!2867 (++!9231 Nil!37305 (Cons!37305 (head!7371 (getSuffix!1501 lt!1195055 Nil!37305)) Nil!37305)) lt!1195055)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!559 (List!37429 List!37429) Unit!52870)

(assert (=> b!3505938 (= lt!1195729 (lemmaAddHeadSuffixToPrefixStillPrefix!559 Nil!37305 lt!1195055))))

(declare-fun lt!1195745 () Unit!52870)

(declare-fun lt!1195730 () Unit!52870)

(assert (=> b!3505938 (= lt!1195745 lt!1195730)))

(assert (=> b!3505938 (= lt!1195730 (lemmaAddHeadSuffixToPrefixStillPrefix!559 Nil!37305 lt!1195055))))

(assert (=> b!3505938 (= lt!1195722 (++!9231 Nil!37305 (Cons!37305 (head!7371 lt!1195055) Nil!37305)))))

(declare-fun lt!1195743 () Unit!52870)

(assert (=> b!3505938 (= lt!1195743 e!2170657)))

(declare-fun c!603110 () Bool)

(assert (=> b!3505938 (= c!603110 (= (size!28365 Nil!37305) (size!28365 lt!1195055)))))

(declare-fun lt!1195737 () Unit!52870)

(declare-fun lt!1195739 () Unit!52870)

(assert (=> b!3505938 (= lt!1195737 lt!1195739)))

(assert (=> b!3505938 (<= (size!28365 Nil!37305) (size!28365 lt!1195055))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!367 (List!37429 List!37429) Unit!52870)

(assert (=> b!3505938 (= lt!1195739 (lemmaIsPrefixThenSmallerEqSize!367 Nil!37305 lt!1195055))))

(assert (=> b!3505938 (= e!2170655 e!2170654)))

(declare-fun b!3505939 () Bool)

(declare-fun e!2170660 () Bool)

(assert (=> b!3505939 (= e!2170656 e!2170660)))

(declare-fun res!1414247 () Bool)

(assert (=> b!3505939 (=> res!1414247 e!2170660)))

(assert (=> b!3505939 (= res!1414247 (isEmpty!21746 (_1!21695 lt!1195734)))))

(declare-fun b!3505940 () Bool)

(assert (=> b!3505940 (= e!2170660 (>= (size!28365 (_1!21695 lt!1195734)) (size!28365 Nil!37305)))))

(assert (= (and d!1018811 c!603111) b!3505937))

(assert (= (and d!1018811 (not c!603111)) b!3505936))

(assert (= (and b!3505936 c!603108) b!3505928))

(assert (= (and b!3505936 (not c!603108)) b!3505938))

(assert (= (and b!3505928 c!603112) b!3505930))

(assert (= (and b!3505928 (not c!603112)) b!3505927))

(assert (= (and b!3505938 c!603110) b!3505932))

(assert (= (and b!3505938 (not c!603110)) b!3505933))

(assert (= (and b!3505938 c!603109) b!3505929))

(assert (= (and b!3505938 (not c!603109)) b!3505934))

(assert (= (and b!3505929 c!603113) b!3505935))

(assert (= (and b!3505929 (not c!603113)) b!3505931))

(assert (= (or b!3505929 b!3505934) bm!253100))

(assert (= (or b!3505929 b!3505934) bm!253094))

(assert (= (or b!3505929 b!3505934) bm!253099))

(assert (= (or b!3505929 b!3505934) bm!253096))

(assert (= (or b!3505928 b!3505932) bm!253097))

(assert (= (or b!3505928 b!3505932) bm!253098))

(assert (= (or b!3505928 b!3505932) bm!253101))

(assert (= (or b!3505928 b!3505938) bm!253095))

(assert (= (and d!1018811 res!1414246) b!3505939))

(assert (= (and b!3505939 (not res!1414247)) b!3505940))

(declare-fun m!3943601 () Bool)

(assert (=> b!3505929 m!3943601))

(assert (=> bm!253096 m!3941467))

(declare-fun m!3943603 () Bool)

(assert (=> bm!253096 m!3943603))

(declare-fun m!3943605 () Bool)

(assert (=> b!3505940 m!3943605))

(assert (=> b!3505940 m!3942077))

(declare-fun m!3943607 () Bool)

(assert (=> bm!253099 m!3943607))

(declare-fun m!3943609 () Bool)

(assert (=> bm!253098 m!3943609))

(declare-fun m!3943611 () Bool)

(assert (=> b!3505939 m!3943611))

(declare-fun m!3943613 () Bool)

(assert (=> b!3505938 m!3943613))

(assert (=> b!3505938 m!3942077))

(declare-fun m!3943615 () Bool)

(assert (=> b!3505938 m!3943615))

(declare-fun m!3943617 () Bool)

(assert (=> b!3505938 m!3943617))

(declare-fun m!3943619 () Bool)

(assert (=> b!3505938 m!3943619))

(declare-fun m!3943621 () Bool)

(assert (=> b!3505938 m!3943621))

(declare-fun m!3943623 () Bool)

(assert (=> b!3505938 m!3943623))

(assert (=> b!3505938 m!3942971))

(assert (=> b!3505938 m!3943621))

(declare-fun m!3943625 () Bool)

(assert (=> b!3505938 m!3943625))

(declare-fun m!3943627 () Bool)

(assert (=> b!3505938 m!3943627))

(declare-fun m!3943629 () Bool)

(assert (=> b!3505938 m!3943629))

(assert (=> b!3505938 m!3943627))

(declare-fun m!3943631 () Bool)

(assert (=> b!3505938 m!3943631))

(assert (=> b!3505938 m!3941467))

(assert (=> b!3505938 m!3943615))

(assert (=> b!3505938 m!3942977))

(declare-fun m!3943633 () Bool)

(assert (=> bm!253101 m!3943633))

(declare-fun m!3943635 () Bool)

(assert (=> bm!253097 m!3943635))

(declare-fun m!3943637 () Bool)

(assert (=> d!1018811 m!3943637))

(declare-fun m!3943639 () Bool)

(assert (=> d!1018811 m!3943639))

(assert (=> d!1018811 m!3943615))

(declare-fun m!3943641 () Bool)

(assert (=> d!1018811 m!3943641))

(declare-fun m!3943643 () Bool)

(assert (=> d!1018811 m!3943643))

(assert (=> d!1018811 m!3943095))

(declare-fun m!3943645 () Bool)

(assert (=> d!1018811 m!3943645))

(assert (=> d!1018811 m!3943637))

(declare-fun m!3943647 () Bool)

(assert (=> d!1018811 m!3943647))

(assert (=> bm!253094 m!3942971))

(assert (=> bm!253095 m!3943085))

(assert (=> bm!253100 m!3942977))

(assert (=> b!3504995 d!1018811))

(declare-fun d!1018865 () Bool)

(assert (=> d!1018865 (= (apply!8865 (transformation!5468 (rule!8098 (h!42727 tokens!494))) (seqFromList!3990 (_1!21695 lt!1195254))) (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (seqFromList!3990 (_1!21695 lt!1195254))))))

(declare-fun b_lambda!101975 () Bool)

(assert (=> (not b_lambda!101975) (not d!1018865)))

(assert (=> d!1018865 t!279379))

(declare-fun b_and!248835 () Bool)

(assert (= b_and!248809 (and (=> t!279379 result!238750) b_and!248835)))

(assert (=> d!1018865 t!279381))

(declare-fun b_and!248837 () Bool)

(assert (= b_and!248811 (and (=> t!279381 result!238752) b_and!248837)))

(assert (=> d!1018865 t!279375))

(declare-fun b_and!248839 () Bool)

(assert (= b_and!248805 (and (=> t!279375 result!238746) b_and!248839)))

(assert (=> d!1018865 t!279377))

(declare-fun b_and!248841 () Bool)

(assert (= b_and!248807 (and (=> t!279377 result!238748) b_and!248841)))

(assert (=> d!1018865 t!279383))

(declare-fun b_and!248843 () Bool)

(assert (= b_and!248813 (and (=> t!279383 result!238754) b_and!248843)))

(assert (=> d!1018865 m!3942195))

(assert (=> d!1018865 m!3943381))

(assert (=> b!3504995 d!1018865))

(declare-fun d!1018867 () Bool)

(assert (=> d!1018867 (= (isEmpty!21746 (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))) ((_ is Nil!37305) (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))))))

(assert (=> b!3504995 d!1018867))

(declare-fun d!1018869 () Bool)

(assert (=> d!1018869 (= (seqFromList!3990 (_1!21695 lt!1195254)) (fromListB!1829 (_1!21695 lt!1195254)))))

(declare-fun bs!563995 () Bool)

(assert (= bs!563995 d!1018869))

(declare-fun m!3943649 () Bool)

(assert (=> bs!563995 m!3943649))

(assert (=> b!3504995 d!1018869))

(declare-fun d!1018871 () Bool)

(declare-fun e!2170692 () Bool)

(assert (=> d!1018871 e!2170692))

(declare-fun res!1414259 () Bool)

(assert (=> d!1018871 (=> res!1414259 e!2170692)))

(assert (=> d!1018871 (= res!1414259 (isEmpty!21746 (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))))))

(declare-fun lt!1195757 () Unit!52870)

(declare-fun choose!20347 (Regex!10227 List!37429) Unit!52870)

(assert (=> d!1018871 (= lt!1195757 (choose!20347 (regex!5468 (rule!8098 (h!42727 tokens!494))) lt!1195055))))

(assert (=> d!1018871 (validRegex!4668 (regex!5468 (rule!8098 (h!42727 tokens!494))))))

(assert (=> d!1018871 (= (longestMatchIsAcceptedByMatchOrIsEmpty!906 (regex!5468 (rule!8098 (h!42727 tokens!494))) lt!1195055) lt!1195757)))

(declare-fun b!3505992 () Bool)

(assert (=> b!3505992 (= e!2170692 (matchR!4811 (regex!5468 (rule!8098 (h!42727 tokens!494))) (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))))))

(assert (= (and d!1018871 (not res!1414259)) b!3505992))

(assert (=> d!1018871 m!3942077))

(assert (=> d!1018871 m!3941467))

(assert (=> d!1018871 m!3942203))

(assert (=> d!1018871 m!3942201))

(assert (=> d!1018871 m!3943095))

(declare-fun m!3943681 () Bool)

(assert (=> d!1018871 m!3943681))

(assert (=> d!1018871 m!3942077))

(assert (=> d!1018871 m!3941467))

(assert (=> b!3505992 m!3942077))

(assert (=> b!3505992 m!3941467))

(assert (=> b!3505992 m!3942077))

(assert (=> b!3505992 m!3941467))

(assert (=> b!3505992 m!3942203))

(assert (=> b!3505992 m!3942231))

(assert (=> b!3504995 d!1018871))

(assert (=> b!3504995 d!1018525))

(declare-fun d!1018891 () Bool)

(declare-fun lt!1195758 () Int)

(assert (=> d!1018891 (= lt!1195758 (size!28365 (list!13629 (seqFromList!3990 (_1!21695 lt!1195254)))))))

(assert (=> d!1018891 (= lt!1195758 (size!28372 (c!602787 (seqFromList!3990 (_1!21695 lt!1195254)))))))

(assert (=> d!1018891 (= (size!28367 (seqFromList!3990 (_1!21695 lt!1195254))) lt!1195758)))

(declare-fun bs!563997 () Bool)

(assert (= bs!563997 d!1018891))

(assert (=> bs!563997 m!3942195))

(assert (=> bs!563997 m!3943385))

(assert (=> bs!563997 m!3943385))

(declare-fun m!3943683 () Bool)

(assert (=> bs!563997 m!3943683))

(declare-fun m!3943685 () Bool)

(assert (=> bs!563997 m!3943685))

(assert (=> b!3504995 d!1018891))

(declare-fun d!1018895 () Bool)

(declare-fun lt!1195759 () Int)

(assert (=> d!1018895 (>= lt!1195759 0)))

(declare-fun e!2170695 () Int)

(assert (=> d!1018895 (= lt!1195759 e!2170695)))

(declare-fun c!603134 () Bool)

(assert (=> d!1018895 (= c!603134 ((_ is Nil!37305) Nil!37305))))

(assert (=> d!1018895 (= (size!28365 Nil!37305) lt!1195759)))

(declare-fun b!3505995 () Bool)

(assert (=> b!3505995 (= e!2170695 0)))

(declare-fun b!3505996 () Bool)

(assert (=> b!3505996 (= e!2170695 (+ 1 (size!28365 (t!279240 Nil!37305))))))

(assert (= (and d!1018895 c!603134) b!3505995))

(assert (= (and d!1018895 (not c!603134)) b!3505996))

(declare-fun m!3943689 () Bool)

(assert (=> b!3505996 m!3943689))

(assert (=> b!3504995 d!1018895))

(declare-fun d!1018899 () Bool)

(declare-fun lt!1195760 () Bool)

(assert (=> d!1018899 (= lt!1195760 (select (content!5248 rules!2135) (rule!8098 (_1!21691 (get!11971 lt!1195339)))))))

(declare-fun e!2170696 () Bool)

(assert (=> d!1018899 (= lt!1195760 e!2170696)))

(declare-fun res!1414263 () Bool)

(assert (=> d!1018899 (=> (not res!1414263) (not e!2170696))))

(assert (=> d!1018899 (= res!1414263 ((_ is Cons!37306) rules!2135))))

(assert (=> d!1018899 (= (contains!6979 rules!2135 (rule!8098 (_1!21691 (get!11971 lt!1195339)))) lt!1195760)))

(declare-fun b!3505997 () Bool)

(declare-fun e!2170697 () Bool)

(assert (=> b!3505997 (= e!2170696 e!2170697)))

(declare-fun res!1414262 () Bool)

(assert (=> b!3505997 (=> res!1414262 e!2170697)))

(assert (=> b!3505997 (= res!1414262 (= (h!42726 rules!2135) (rule!8098 (_1!21691 (get!11971 lt!1195339)))))))

(declare-fun b!3505998 () Bool)

(assert (=> b!3505998 (= e!2170697 (contains!6979 (t!279241 rules!2135) (rule!8098 (_1!21691 (get!11971 lt!1195339)))))))

(assert (= (and d!1018899 res!1414263) b!3505997))

(assert (= (and b!3505997 (not res!1414262)) b!3505998))

(assert (=> d!1018899 m!3942547))

(declare-fun m!3943693 () Bool)

(assert (=> d!1018899 m!3943693))

(declare-fun m!3943695 () Bool)

(assert (=> b!3505998 m!3943695))

(assert (=> b!3505138 d!1018899))

(declare-fun d!1018901 () Bool)

(assert (=> d!1018901 (= (get!11971 lt!1195339) (v!37045 lt!1195339))))

(assert (=> b!3505138 d!1018901))

(declare-fun d!1018903 () Bool)

(declare-fun c!603135 () Bool)

(assert (=> d!1018903 (= c!603135 ((_ is Nil!37305) lt!1195173))))

(declare-fun e!2170698 () (InoxSet C!20640))

(assert (=> d!1018903 (= (content!5247 lt!1195173) e!2170698)))

(declare-fun b!3505999 () Bool)

(assert (=> b!3505999 (= e!2170698 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506000 () Bool)

(assert (=> b!3506000 (= e!2170698 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195173) true) (content!5247 (t!279240 lt!1195173))))))

(assert (= (and d!1018903 c!603135) b!3505999))

(assert (= (and d!1018903 (not c!603135)) b!3506000))

(declare-fun m!3943697 () Bool)

(assert (=> b!3506000 m!3943697))

(declare-fun m!3943699 () Bool)

(assert (=> b!3506000 m!3943699))

(assert (=> d!1018397 d!1018903))

(declare-fun d!1018905 () Bool)

(declare-fun c!603136 () Bool)

(assert (=> d!1018905 (= c!603136 ((_ is Nil!37305) lt!1195062))))

(declare-fun e!2170699 () (InoxSet C!20640))

(assert (=> d!1018905 (= (content!5247 lt!1195062) e!2170699)))

(declare-fun b!3506001 () Bool)

(assert (=> b!3506001 (= e!2170699 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506002 () Bool)

(assert (=> b!3506002 (= e!2170699 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195062) true) (content!5247 (t!279240 lt!1195062))))))

(assert (= (and d!1018905 c!603136) b!3506001))

(assert (= (and d!1018905 (not c!603136)) b!3506002))

(declare-fun m!3943701 () Bool)

(assert (=> b!3506002 m!3943701))

(declare-fun m!3943703 () Bool)

(assert (=> b!3506002 m!3943703))

(assert (=> d!1018397 d!1018905))

(declare-fun d!1018907 () Bool)

(declare-fun c!603137 () Bool)

(assert (=> d!1018907 (= c!603137 ((_ is Nil!37305) lt!1195070))))

(declare-fun e!2170700 () (InoxSet C!20640))

(assert (=> d!1018907 (= (content!5247 lt!1195070) e!2170700)))

(declare-fun b!3506003 () Bool)

(assert (=> b!3506003 (= e!2170700 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506004 () Bool)

(assert (=> b!3506004 (= e!2170700 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195070) true) (content!5247 (t!279240 lt!1195070))))))

(assert (= (and d!1018907 c!603137) b!3506003))

(assert (= (and d!1018907 (not c!603137)) b!3506004))

(declare-fun m!3943705 () Bool)

(assert (=> b!3506004 m!3943705))

(declare-fun m!3943707 () Bool)

(assert (=> b!3506004 m!3943707))

(assert (=> d!1018397 d!1018907))

(declare-fun d!1018909 () Bool)

(declare-fun e!2170702 () Bool)

(assert (=> d!1018909 e!2170702))

(declare-fun res!1414265 () Bool)

(assert (=> d!1018909 (=> (not res!1414265) (not e!2170702))))

(declare-fun lt!1195761 () List!37429)

(assert (=> d!1018909 (= res!1414265 (= (content!5247 lt!1195761) ((_ map or) (content!5247 (t!279240 (++!9231 lt!1195055 lt!1195070))) (content!5247 lt!1195084))))))

(declare-fun e!2170701 () List!37429)

(assert (=> d!1018909 (= lt!1195761 e!2170701)))

(declare-fun c!603138 () Bool)

(assert (=> d!1018909 (= c!603138 ((_ is Nil!37305) (t!279240 (++!9231 lt!1195055 lt!1195070))))))

(assert (=> d!1018909 (= (++!9231 (t!279240 (++!9231 lt!1195055 lt!1195070)) lt!1195084) lt!1195761)))

(declare-fun b!3506006 () Bool)

(assert (=> b!3506006 (= e!2170701 (Cons!37305 (h!42725 (t!279240 (++!9231 lt!1195055 lt!1195070))) (++!9231 (t!279240 (t!279240 (++!9231 lt!1195055 lt!1195070))) lt!1195084)))))

(declare-fun b!3506005 () Bool)

(assert (=> b!3506005 (= e!2170701 lt!1195084)))

(declare-fun b!3506008 () Bool)

(assert (=> b!3506008 (= e!2170702 (or (not (= lt!1195084 Nil!37305)) (= lt!1195761 (t!279240 (++!9231 lt!1195055 lt!1195070)))))))

(declare-fun b!3506007 () Bool)

(declare-fun res!1414264 () Bool)

(assert (=> b!3506007 (=> (not res!1414264) (not e!2170702))))

(assert (=> b!3506007 (= res!1414264 (= (size!28365 lt!1195761) (+ (size!28365 (t!279240 (++!9231 lt!1195055 lt!1195070))) (size!28365 lt!1195084))))))

(assert (= (and d!1018909 c!603138) b!3506005))

(assert (= (and d!1018909 (not c!603138)) b!3506006))

(assert (= (and d!1018909 res!1414265) b!3506007))

(assert (= (and b!3506007 res!1414264) b!3506008))

(declare-fun m!3943709 () Bool)

(assert (=> d!1018909 m!3943709))

(declare-fun m!3943711 () Bool)

(assert (=> d!1018909 m!3943711))

(assert (=> d!1018909 m!3941889))

(declare-fun m!3943713 () Bool)

(assert (=> b!3506006 m!3943713))

(declare-fun m!3943715 () Bool)

(assert (=> b!3506007 m!3943715))

(declare-fun m!3943717 () Bool)

(assert (=> b!3506007 m!3943717))

(assert (=> b!3506007 m!3941897))

(assert (=> b!3504954 d!1018909))

(declare-fun d!1018911 () Bool)

(declare-fun lt!1195762 () Int)

(assert (=> d!1018911 (= lt!1195762 (size!28370 (list!13633 lt!1195078)))))

(assert (=> d!1018911 (= lt!1195762 (size!28371 (c!602788 lt!1195078)))))

(assert (=> d!1018911 (= (size!28364 lt!1195078) lt!1195762)))

(declare-fun bs!563998 () Bool)

(assert (= bs!563998 d!1018911))

(assert (=> bs!563998 m!3942185))

(assert (=> bs!563998 m!3942185))

(declare-fun m!3943719 () Bool)

(assert (=> bs!563998 m!3943719))

(declare-fun m!3943721 () Bool)

(assert (=> bs!563998 m!3943721))

(assert (=> d!1018453 d!1018911))

(declare-fun d!1018913 () Bool)

(assert (=> d!1018913 (= (dropList!1229 lt!1195078 0) (drop!2041 (list!13634 (c!602788 lt!1195078)) 0))))

(declare-fun bs!563999 () Bool)

(assert (= bs!563999 d!1018913))

(declare-fun m!3943723 () Bool)

(assert (=> bs!563999 m!3943723))

(assert (=> bs!563999 m!3943723))

(declare-fun m!3943725 () Bool)

(assert (=> bs!563999 m!3943725))

(assert (=> d!1018453 d!1018913))

(declare-fun d!1018915 () Bool)

(declare-fun lt!1195776 () List!37429)

(assert (=> d!1018915 (= lt!1195776 (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (printList!1605 thiss!18206 (dropList!1229 lt!1195078 0))))))

(declare-fun e!2170714 () List!37429)

(assert (=> d!1018915 (= lt!1195776 e!2170714)))

(declare-fun c!603144 () Bool)

(assert (=> d!1018915 (= c!603144 ((_ is Cons!37307) (dropList!1229 lt!1195078 0)))))

(assert (=> d!1018915 (= (printListTailRec!712 thiss!18206 (dropList!1229 lt!1195078 0) (list!13629 (BalanceConc!22237 Empty!11311))) lt!1195776)))

(declare-fun b!3506031 () Bool)

(assert (=> b!3506031 (= e!2170714 (printListTailRec!712 thiss!18206 (t!279242 (dropList!1229 lt!1195078 0)) (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (list!13629 (charsOf!3482 (h!42727 (dropList!1229 lt!1195078 0)))))))))

(declare-fun lt!1195779 () List!37429)

(assert (=> b!3506031 (= lt!1195779 (list!13629 (charsOf!3482 (h!42727 (dropList!1229 lt!1195078 0)))))))

(declare-fun lt!1195778 () List!37429)

(assert (=> b!3506031 (= lt!1195778 (printList!1605 thiss!18206 (t!279242 (dropList!1229 lt!1195078 0))))))

(declare-fun lt!1195775 () Unit!52870)

(assert (=> b!3506031 (= lt!1195775 (lemmaConcatAssociativity!1996 (list!13629 (BalanceConc!22237 Empty!11311)) lt!1195779 lt!1195778))))

(assert (=> b!3506031 (= (++!9231 (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) lt!1195779) lt!1195778) (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (++!9231 lt!1195779 lt!1195778)))))

(declare-fun lt!1195777 () Unit!52870)

(assert (=> b!3506031 (= lt!1195777 lt!1195775)))

(declare-fun b!3506032 () Bool)

(assert (=> b!3506032 (= e!2170714 (list!13629 (BalanceConc!22237 Empty!11311)))))

(assert (= (and d!1018915 c!603144) b!3506031))

(assert (= (and d!1018915 (not c!603144)) b!3506032))

(assert (=> d!1018915 m!3942153))

(declare-fun m!3943757 () Bool)

(assert (=> d!1018915 m!3943757))

(assert (=> d!1018915 m!3942155))

(assert (=> d!1018915 m!3943757))

(declare-fun m!3943759 () Bool)

(assert (=> d!1018915 m!3943759))

(assert (=> b!3506031 m!3942155))

(declare-fun m!3943761 () Bool)

(assert (=> b!3506031 m!3943761))

(declare-fun m!3943763 () Bool)

(assert (=> b!3506031 m!3943763))

(assert (=> b!3506031 m!3942155))

(declare-fun m!3943765 () Bool)

(assert (=> b!3506031 m!3943765))

(assert (=> b!3506031 m!3942155))

(declare-fun m!3943767 () Bool)

(assert (=> b!3506031 m!3943767))

(declare-fun m!3943769 () Bool)

(assert (=> b!3506031 m!3943769))

(declare-fun m!3943771 () Bool)

(assert (=> b!3506031 m!3943771))

(assert (=> b!3506031 m!3943767))

(declare-fun m!3943773 () Bool)

(assert (=> b!3506031 m!3943773))

(declare-fun m!3943775 () Bool)

(assert (=> b!3506031 m!3943775))

(assert (=> b!3506031 m!3943761))

(assert (=> b!3506031 m!3942155))

(assert (=> b!3506031 m!3943771))

(declare-fun m!3943777 () Bool)

(assert (=> b!3506031 m!3943777))

(assert (=> b!3506031 m!3943769))

(assert (=> b!3506031 m!3943777))

(declare-fun m!3943779 () Bool)

(assert (=> b!3506031 m!3943779))

(assert (=> d!1018453 d!1018915))

(declare-fun d!1018931 () Bool)

(assert (=> d!1018931 (= (list!13629 lt!1195234) (list!13632 (c!602787 lt!1195234)))))

(declare-fun bs!564005 () Bool)

(assert (= bs!564005 d!1018931))

(declare-fun m!3943781 () Bool)

(assert (=> bs!564005 m!3943781))

(assert (=> d!1018453 d!1018931))

(declare-fun d!1018933 () Bool)

(assert (=> d!1018933 (= (list!13629 (BalanceConc!22237 Empty!11311)) (list!13632 (c!602787 (BalanceConc!22237 Empty!11311))))))

(declare-fun bs!564006 () Bool)

(assert (= bs!564006 d!1018933))

(declare-fun m!3943783 () Bool)

(assert (=> bs!564006 m!3943783))

(assert (=> d!1018453 d!1018933))

(declare-fun d!1018935 () Bool)

(declare-fun lt!1195780 () Token!10302)

(assert (=> d!1018935 (contains!6982 (list!13633 (_1!21690 lt!1195061)) lt!1195780)))

(declare-fun e!2170716 () Token!10302)

(assert (=> d!1018935 (= lt!1195780 e!2170716)))

(declare-fun c!603145 () Bool)

(assert (=> d!1018935 (= c!603145 (= 0 0))))

(declare-fun e!2170715 () Bool)

(assert (=> d!1018935 e!2170715))

(declare-fun res!1414276 () Bool)

(assert (=> d!1018935 (=> (not res!1414276) (not e!2170715))))

(assert (=> d!1018935 (= res!1414276 (<= 0 0))))

(assert (=> d!1018935 (= (apply!8868 (list!13633 (_1!21690 lt!1195061)) 0) lt!1195780)))

(declare-fun b!3506033 () Bool)

(assert (=> b!3506033 (= e!2170715 (< 0 (size!28370 (list!13633 (_1!21690 lt!1195061)))))))

(declare-fun b!3506034 () Bool)

(assert (=> b!3506034 (= e!2170716 (head!7373 (list!13633 (_1!21690 lt!1195061))))))

(declare-fun b!3506035 () Bool)

(assert (=> b!3506035 (= e!2170716 (apply!8868 (tail!5481 (list!13633 (_1!21690 lt!1195061))) (- 0 1)))))

(assert (= (and d!1018935 res!1414276) b!3506033))

(assert (= (and d!1018935 c!603145) b!3506034))

(assert (= (and d!1018935 (not c!603145)) b!3506035))

(assert (=> d!1018935 m!3942189))

(declare-fun m!3943785 () Bool)

(assert (=> d!1018935 m!3943785))

(assert (=> b!3506033 m!3942189))

(assert (=> b!3506033 m!3942191))

(assert (=> b!3506034 m!3942189))

(declare-fun m!3943787 () Bool)

(assert (=> b!3506034 m!3943787))

(assert (=> b!3506035 m!3942189))

(declare-fun m!3943789 () Bool)

(assert (=> b!3506035 m!3943789))

(assert (=> b!3506035 m!3943789))

(declare-fun m!3943791 () Bool)

(assert (=> b!3506035 m!3943791))

(assert (=> d!1018613 d!1018935))

(declare-fun d!1018937 () Bool)

(assert (=> d!1018937 (= (list!13633 (_1!21690 lt!1195061)) (list!13634 (c!602788 (_1!21690 lt!1195061))))))

(declare-fun bs!564007 () Bool)

(assert (= bs!564007 d!1018937))

(declare-fun m!3943793 () Bool)

(assert (=> bs!564007 m!3943793))

(assert (=> d!1018613 d!1018937))

(declare-fun b!3506036 () Bool)

(declare-fun e!2170718 () Token!10302)

(declare-fun call!253113 () Token!10302)

(assert (=> b!3506036 (= e!2170718 call!253113)))

(declare-fun b!3506037 () Bool)

(declare-fun e!2170717 () Token!10302)

(assert (=> b!3506037 (= e!2170717 e!2170718)))

(declare-fun lt!1195782 () Bool)

(assert (=> b!3506037 (= lt!1195782 (appendIndex!353 (list!13634 (left!29132 (c!602788 (_1!21690 lt!1195061)))) (list!13634 (right!29462 (c!602788 (_1!21690 lt!1195061)))) 0))))

(declare-fun c!603148 () Bool)

(assert (=> b!3506037 (= c!603148 (< 0 (size!28371 (left!29132 (c!602788 (_1!21690 lt!1195061))))))))

(declare-fun b!3506038 () Bool)

(assert (=> b!3506038 (= e!2170717 (apply!8870 (xs!14498 (c!602788 (_1!21690 lt!1195061))) 0))))

(declare-fun b!3506039 () Bool)

(declare-fun e!2170720 () Bool)

(assert (=> b!3506039 (= e!2170720 (< 0 (size!28371 (c!602788 (_1!21690 lt!1195061)))))))

(declare-fun b!3506040 () Bool)

(declare-fun e!2170719 () Int)

(assert (=> b!3506040 (= e!2170719 0)))

(declare-fun d!1018939 () Bool)

(declare-fun lt!1195781 () Token!10302)

(assert (=> d!1018939 (= lt!1195781 (apply!8868 (list!13634 (c!602788 (_1!21690 lt!1195061))) 0))))

(assert (=> d!1018939 (= lt!1195781 e!2170717)))

(declare-fun c!603147 () Bool)

(assert (=> d!1018939 (= c!603147 ((_ is Leaf!17657) (c!602788 (_1!21690 lt!1195061))))))

(assert (=> d!1018939 e!2170720))

(declare-fun res!1414277 () Bool)

(assert (=> d!1018939 (=> (not res!1414277) (not e!2170720))))

(assert (=> d!1018939 (= res!1414277 (<= 0 0))))

(assert (=> d!1018939 (= (apply!8869 (c!602788 (_1!21690 lt!1195061)) 0) lt!1195781)))

(declare-fun b!3506041 () Bool)

(assert (=> b!3506041 (= e!2170718 call!253113)))

(declare-fun b!3506042 () Bool)

(assert (=> b!3506042 (= e!2170719 (- 0 (size!28371 (left!29132 (c!602788 (_1!21690 lt!1195061))))))))

(declare-fun bm!253108 () Bool)

(declare-fun c!603146 () Bool)

(assert (=> bm!253108 (= c!603146 c!603148)))

(assert (=> bm!253108 (= call!253113 (apply!8869 (ite c!603148 (left!29132 (c!602788 (_1!21690 lt!1195061))) (right!29462 (c!602788 (_1!21690 lt!1195061)))) e!2170719))))

(assert (= (and d!1018939 res!1414277) b!3506039))

(assert (= (and d!1018939 c!603147) b!3506038))

(assert (= (and d!1018939 (not c!603147)) b!3506037))

(assert (= (and b!3506037 c!603148) b!3506036))

(assert (= (and b!3506037 (not c!603148)) b!3506041))

(assert (= (or b!3506036 b!3506041) bm!253108))

(assert (= (and bm!253108 c!603146) b!3506040))

(assert (= (and bm!253108 (not c!603146)) b!3506042))

(declare-fun m!3943795 () Bool)

(assert (=> b!3506038 m!3943795))

(assert (=> d!1018939 m!3943793))

(assert (=> d!1018939 m!3943793))

(declare-fun m!3943797 () Bool)

(assert (=> d!1018939 m!3943797))

(declare-fun m!3943799 () Bool)

(assert (=> bm!253108 m!3943799))

(assert (=> b!3506039 m!3942193))

(declare-fun m!3943801 () Bool)

(assert (=> b!3506037 m!3943801))

(declare-fun m!3943803 () Bool)

(assert (=> b!3506037 m!3943803))

(assert (=> b!3506037 m!3943801))

(assert (=> b!3506037 m!3943803))

(declare-fun m!3943805 () Bool)

(assert (=> b!3506037 m!3943805))

(declare-fun m!3943807 () Bool)

(assert (=> b!3506037 m!3943807))

(assert (=> b!3506042 m!3943807))

(assert (=> d!1018613 d!1018939))

(declare-fun d!1018941 () Bool)

(declare-fun c!603155 () Bool)

(assert (=> d!1018941 (= c!603155 ((_ is Node!11311) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494))))))))

(declare-fun e!2170730 () Bool)

(assert (=> d!1018941 (= (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494))))) e!2170730)))

(declare-fun b!3506059 () Bool)

(declare-fun inv!50528 (Conc!11311) Bool)

(assert (=> b!3506059 (= e!2170730 (inv!50528 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494))))))))

(declare-fun b!3506060 () Bool)

(declare-fun e!2170731 () Bool)

(assert (=> b!3506060 (= e!2170730 e!2170731)))

(declare-fun res!1414282 () Bool)

(assert (=> b!3506060 (= res!1414282 (not ((_ is Leaf!17656) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494)))))))))

(assert (=> b!3506060 (=> res!1414282 e!2170731)))

(declare-fun b!3506061 () Bool)

(declare-fun inv!50529 (Conc!11311) Bool)

(assert (=> b!3506061 (= e!2170731 (inv!50529 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494))))))))

(assert (= (and d!1018941 c!603155) b!3506059))

(assert (= (and d!1018941 (not c!603155)) b!3506060))

(assert (= (and b!3506060 (not res!1414282)) b!3506061))

(declare-fun m!3943835 () Bool)

(assert (=> b!3506059 m!3943835))

(declare-fun m!3943837 () Bool)

(assert (=> b!3506061 m!3943837))

(assert (=> b!3504742 d!1018941))

(declare-fun bs!564009 () Bool)

(declare-fun d!1018947 () Bool)

(assert (= bs!564009 (and d!1018947 d!1018795)))

(declare-fun lambda!122538 () Int)

(assert (=> bs!564009 (= (and (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (h!42726 rules!2135)))) (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (h!42726 rules!2135))))) (= lambda!122538 lambda!122531))))

(declare-fun bs!564010 () Bool)

(assert (= bs!564010 (and d!1018947 d!1018809)))

(assert (=> bs!564010 (= lambda!122538 lambda!122534)))

(assert (=> d!1018947 true))

(assert (=> d!1018947 (< (dynLambda!15850 order!20021 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) (dynLambda!15857 order!20023 lambda!122538))))

(assert (=> d!1018947 true))

(assert (=> d!1018947 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) (dynLambda!15857 order!20023 lambda!122538))))

(assert (=> d!1018947 (= (semiInverseModEq!2307 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) (Forall!1346 lambda!122538))))

(declare-fun bs!564011 () Bool)

(assert (= bs!564011 d!1018947))

(declare-fun m!3943851 () Bool)

(assert (=> bs!564011 m!3943851))

(assert (=> d!1018335 d!1018947))

(declare-fun d!1018951 () Bool)

(assert (=> d!1018951 (= (isEmpty!21756 lt!1195380) (not ((_ is Some!7592) lt!1195380)))))

(assert (=> d!1018537 d!1018951))

(assert (=> d!1018537 d!1018417))

(assert (=> bs!563959 d!1018547))

(declare-fun d!1018953 () Bool)

(declare-fun lt!1195800 () Bool)

(assert (=> d!1018953 (= lt!1195800 (isEmpty!21746 (list!13629 (_2!21690 lt!1195184))))))

(assert (=> d!1018953 (= lt!1195800 (isEmpty!21753 (c!602787 (_2!21690 lt!1195184))))))

(assert (=> d!1018953 (= (isEmpty!21744 (_2!21690 lt!1195184)) lt!1195800)))

(declare-fun bs!564012 () Bool)

(assert (= bs!564012 d!1018953))

(declare-fun m!3943855 () Bool)

(assert (=> bs!564012 m!3943855))

(assert (=> bs!564012 m!3943855))

(declare-fun m!3943859 () Bool)

(assert (=> bs!564012 m!3943859))

(declare-fun m!3943861 () Bool)

(assert (=> bs!564012 m!3943861))

(assert (=> b!3504841 d!1018953))

(declare-fun b!3506076 () Bool)

(declare-fun e!2170739 () Bool)

(assert (=> b!3506076 (= e!2170739 (inv!15 (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195088)))))

(declare-fun b!3506077 () Bool)

(declare-fun res!1414291 () Bool)

(assert (=> b!3506077 (=> res!1414291 e!2170739)))

(assert (=> b!3506077 (= res!1414291 (not ((_ is IntegerValue!17096) (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195088))))))

(declare-fun e!2170740 () Bool)

(assert (=> b!3506077 (= e!2170740 e!2170739)))

(declare-fun b!3506078 () Bool)

(assert (=> b!3506078 (= e!2170740 (inv!17 (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195088)))))

(declare-fun d!1018955 () Bool)

(declare-fun c!603160 () Bool)

(assert (=> d!1018955 (= c!603160 ((_ is IntegerValue!17094) (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195088)))))

(declare-fun e!2170741 () Bool)

(assert (=> d!1018955 (= (inv!21 (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195088)) e!2170741)))

(declare-fun b!3506079 () Bool)

(assert (=> b!3506079 (= e!2170741 (inv!16 (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195088)))))

(declare-fun b!3506080 () Bool)

(assert (=> b!3506080 (= e!2170741 e!2170740)))

(declare-fun c!603159 () Bool)

(assert (=> b!3506080 (= c!603159 ((_ is IntegerValue!17095) (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195088)))))

(assert (= (and d!1018955 c!603160) b!3506079))

(assert (= (and d!1018955 (not c!603160)) b!3506080))

(assert (= (and b!3506080 c!603159) b!3506078))

(assert (= (and b!3506080 (not c!603159)) b!3506077))

(assert (= (and b!3506077 (not res!1414291)) b!3506076))

(declare-fun m!3943867 () Bool)

(assert (=> b!3506076 m!3943867))

(declare-fun m!3943869 () Bool)

(assert (=> b!3506078 m!3943869))

(declare-fun m!3943871 () Bool)

(assert (=> b!3506079 m!3943871))

(assert (=> tb!194401 d!1018955))

(declare-fun d!1018959 () Bool)

(assert (=> d!1018959 true))

(declare-fun lambda!122541 () Int)

(declare-fun order!20027 () Int)

(declare-fun dynLambda!15858 (Int Int) Int)

(assert (=> d!1018959 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241)))) (dynLambda!15858 order!20027 lambda!122541))))

(declare-fun Forall2!943 (Int) Bool)

(assert (=> d!1018959 (= (equivClasses!2206 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241)))) (Forall2!943 lambda!122541))))

(declare-fun bs!564013 () Bool)

(assert (= bs!564013 d!1018959))

(declare-fun m!3943885 () Bool)

(assert (=> bs!564013 m!3943885))

(assert (=> b!3505412 d!1018959))

(declare-fun d!1018971 () Bool)

(assert (=> d!1018971 (= (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494)))) (isBalanced!3448 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494))))))))

(declare-fun bs!564014 () Bool)

(assert (= bs!564014 d!1018971))

(declare-fun m!3943887 () Bool)

(assert (=> bs!564014 m!3943887))

(assert (=> tb!194361 d!1018971))

(assert (=> d!1018425 d!1018429))

(declare-fun d!1018973 () Bool)

(assert (=> d!1018973 (not (matchR!4811 (regex!5468 (rule!8098 separatorToken!241)) lt!1195070))))

(assert (=> d!1018973 true))

(declare-fun _$127!383 () Unit!52870)

(assert (=> d!1018973 (= (choose!20336 (regex!5468 (rule!8098 separatorToken!241)) lt!1195070 lt!1195073) _$127!383)))

(declare-fun bs!564015 () Bool)

(assert (= bs!564015 d!1018973))

(assert (=> bs!564015 m!3941471))

(assert (=> d!1018425 d!1018973))

(declare-fun bm!253120 () Bool)

(declare-fun call!253127 () Bool)

(declare-fun c!603175 () Bool)

(declare-fun c!603174 () Bool)

(assert (=> bm!253120 (= call!253127 (validRegex!4668 (ite c!603174 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!603175 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241)))))))))

(declare-fun b!3506123 () Bool)

(declare-fun e!2170770 () Bool)

(declare-fun call!253126 () Bool)

(assert (=> b!3506123 (= e!2170770 call!253126)))

(declare-fun bm!253121 () Bool)

(assert (=> bm!253121 (= call!253126 (validRegex!4668 (ite c!603175 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241))))))))

(declare-fun b!3506124 () Bool)

(declare-fun res!1414305 () Bool)

(declare-fun e!2170774 () Bool)

(assert (=> b!3506124 (=> (not res!1414305) (not e!2170774))))

(declare-fun call!253125 () Bool)

(assert (=> b!3506124 (= res!1414305 call!253125)))

(declare-fun e!2170771 () Bool)

(assert (=> b!3506124 (= e!2170771 e!2170774)))

(declare-fun b!3506125 () Bool)

(declare-fun res!1414307 () Bool)

(declare-fun e!2170776 () Bool)

(assert (=> b!3506125 (=> res!1414307 e!2170776)))

(assert (=> b!3506125 (= res!1414307 (not ((_ is Concat!15925) (regex!5468 (rule!8098 separatorToken!241)))))))

(assert (=> b!3506125 (= e!2170771 e!2170776)))

(declare-fun d!1018975 () Bool)

(declare-fun res!1414308 () Bool)

(declare-fun e!2170773 () Bool)

(assert (=> d!1018975 (=> res!1414308 e!2170773)))

(assert (=> d!1018975 (= res!1414308 ((_ is ElementMatch!10227) (regex!5468 (rule!8098 separatorToken!241))))))

(assert (=> d!1018975 (= (validRegex!4668 (regex!5468 (rule!8098 separatorToken!241))) e!2170773)))

(declare-fun b!3506126 () Bool)

(assert (=> b!3506126 (= e!2170774 call!253126)))

(declare-fun b!3506127 () Bool)

(declare-fun e!2170772 () Bool)

(assert (=> b!3506127 (= e!2170773 e!2170772)))

(assert (=> b!3506127 (= c!603174 ((_ is Star!10227) (regex!5468 (rule!8098 separatorToken!241))))))

(declare-fun b!3506128 () Bool)

(assert (=> b!3506128 (= e!2170776 e!2170770)))

(declare-fun res!1414304 () Bool)

(assert (=> b!3506128 (=> (not res!1414304) (not e!2170770))))

(assert (=> b!3506128 (= res!1414304 call!253125)))

(declare-fun b!3506129 () Bool)

(declare-fun e!2170775 () Bool)

(assert (=> b!3506129 (= e!2170772 e!2170775)))

(declare-fun res!1414306 () Bool)

(assert (=> b!3506129 (= res!1414306 (not (nullable!3512 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))))))))

(assert (=> b!3506129 (=> (not res!1414306) (not e!2170775))))

(declare-fun bm!253122 () Bool)

(assert (=> bm!253122 (= call!253125 call!253127)))

(declare-fun b!3506130 () Bool)

(assert (=> b!3506130 (= e!2170775 call!253127)))

(declare-fun b!3506131 () Bool)

(assert (=> b!3506131 (= e!2170772 e!2170771)))

(assert (=> b!3506131 (= c!603175 ((_ is Union!10227) (regex!5468 (rule!8098 separatorToken!241))))))

(assert (= (and d!1018975 (not res!1414308)) b!3506127))

(assert (= (and b!3506127 c!603174) b!3506129))

(assert (= (and b!3506127 (not c!603174)) b!3506131))

(assert (= (and b!3506129 res!1414306) b!3506130))

(assert (= (and b!3506131 c!603175) b!3506124))

(assert (= (and b!3506131 (not c!603175)) b!3506125))

(assert (= (and b!3506124 res!1414305) b!3506126))

(assert (= (and b!3506125 (not res!1414307)) b!3506128))

(assert (= (and b!3506128 res!1414304) b!3506123))

(assert (= (or b!3506126 b!3506123) bm!253121))

(assert (= (or b!3506124 b!3506128) bm!253122))

(assert (= (or b!3506130 bm!253122) bm!253120))

(declare-fun m!3943905 () Bool)

(assert (=> bm!253120 m!3943905))

(declare-fun m!3943907 () Bool)

(assert (=> bm!253121 m!3943907))

(declare-fun m!3943909 () Bool)

(assert (=> b!3506129 m!3943909))

(assert (=> d!1018425 d!1018975))

(declare-fun d!1018979 () Bool)

(declare-fun c!603176 () Bool)

(assert (=> d!1018979 (= c!603176 ((_ is Nil!37305) lt!1195171))))

(declare-fun e!2170777 () (InoxSet C!20640))

(assert (=> d!1018979 (= (content!5247 lt!1195171) e!2170777)))

(declare-fun b!3506132 () Bool)

(assert (=> b!3506132 (= e!2170777 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506133 () Bool)

(assert (=> b!3506133 (= e!2170777 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195171) true) (content!5247 (t!279240 lt!1195171))))))

(assert (= (and d!1018979 c!603176) b!3506132))

(assert (= (and d!1018979 (not c!603176)) b!3506133))

(declare-fun m!3943911 () Bool)

(assert (=> b!3506133 m!3943911))

(declare-fun m!3943913 () Bool)

(assert (=> b!3506133 m!3943913))

(assert (=> d!1018387 d!1018979))

(declare-fun d!1018981 () Bool)

(declare-fun c!603177 () Bool)

(assert (=> d!1018981 (= c!603177 ((_ is Nil!37305) (++!9231 lt!1195062 lt!1195070)))))

(declare-fun e!2170778 () (InoxSet C!20640))

(assert (=> d!1018981 (= (content!5247 (++!9231 lt!1195062 lt!1195070)) e!2170778)))

(declare-fun b!3506134 () Bool)

(assert (=> b!3506134 (= e!2170778 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506135 () Bool)

(assert (=> b!3506135 (= e!2170778 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 (++!9231 lt!1195062 lt!1195070)) true) (content!5247 (t!279240 (++!9231 lt!1195062 lt!1195070)))))))

(assert (= (and d!1018981 c!603177) b!3506134))

(assert (= (and d!1018981 (not c!603177)) b!3506135))

(declare-fun m!3943915 () Bool)

(assert (=> b!3506135 m!3943915))

(declare-fun m!3943917 () Bool)

(assert (=> b!3506135 m!3943917))

(assert (=> d!1018387 d!1018981))

(declare-fun c!603178 () Bool)

(declare-fun d!1018983 () Bool)

(assert (=> d!1018983 (= c!603178 ((_ is Nil!37305) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))

(declare-fun e!2170779 () (InoxSet C!20640))

(assert (=> d!1018983 (= (content!5247 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)) e!2170779)))

(declare-fun b!3506136 () Bool)

(assert (=> b!3506136 (= e!2170779 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506137 () Bool)

(assert (=> b!3506137 (= e!2170779 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)) true) (content!5247 (t!279240 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))))

(assert (= (and d!1018983 c!603178) b!3506136))

(assert (= (and d!1018983 (not c!603178)) b!3506137))

(declare-fun m!3943919 () Bool)

(assert (=> b!3506137 m!3943919))

(declare-fun m!3943921 () Bool)

(assert (=> b!3506137 m!3943921))

(assert (=> d!1018387 d!1018983))

(declare-fun d!1018985 () Bool)

(assert (=> d!1018985 (= (list!13629 lt!1195373) (list!13632 (c!602787 lt!1195373)))))

(declare-fun bs!564016 () Bool)

(assert (= bs!564016 d!1018985))

(declare-fun m!3943923 () Bool)

(assert (=> bs!564016 m!3943923))

(assert (=> d!1018535 d!1018985))

(declare-fun d!1018987 () Bool)

(declare-fun c!603179 () Bool)

(assert (=> d!1018987 (= c!603179 ((_ is Cons!37307) (list!13633 lt!1195067)))))

(declare-fun e!2170780 () List!37429)

(assert (=> d!1018987 (= (printList!1605 thiss!18206 (list!13633 lt!1195067)) e!2170780)))

(declare-fun b!3506138 () Bool)

(assert (=> b!3506138 (= e!2170780 (++!9231 (list!13629 (charsOf!3482 (h!42727 (list!13633 lt!1195067)))) (printList!1605 thiss!18206 (t!279242 (list!13633 lt!1195067)))))))

(declare-fun b!3506139 () Bool)

(assert (=> b!3506139 (= e!2170780 Nil!37305)))

(assert (= (and d!1018987 c!603179) b!3506138))

(assert (= (and d!1018987 (not c!603179)) b!3506139))

(declare-fun m!3943925 () Bool)

(assert (=> b!3506138 m!3943925))

(assert (=> b!3506138 m!3943925))

(declare-fun m!3943927 () Bool)

(assert (=> b!3506138 m!3943927))

(declare-fun m!3943929 () Bool)

(assert (=> b!3506138 m!3943929))

(assert (=> b!3506138 m!3943927))

(assert (=> b!3506138 m!3943929))

(declare-fun m!3943931 () Bool)

(assert (=> b!3506138 m!3943931))

(assert (=> d!1018535 d!1018987))

(declare-fun d!1018989 () Bool)

(assert (=> d!1018989 (= (list!13633 lt!1195067) (list!13634 (c!602788 lt!1195067)))))

(declare-fun bs!564017 () Bool)

(assert (= bs!564017 d!1018989))

(declare-fun m!3943933 () Bool)

(assert (=> bs!564017 m!3943933))

(assert (=> d!1018535 d!1018989))

(assert (=> d!1018535 d!1018529))

(assert (=> b!3505000 d!1018695))

(declare-fun d!1018991 () Bool)

(assert (=> d!1018991 (= (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))) (v!37044 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))))))

(assert (=> b!3505197 d!1018991))

(assert (=> b!3505197 d!1018537))

(assert (=> b!3505420 d!1018721))

(declare-fun d!1018993 () Bool)

(declare-fun lt!1195807 () Int)

(assert (=> d!1018993 (>= lt!1195807 0)))

(declare-fun e!2170781 () Int)

(assert (=> d!1018993 (= lt!1195807 e!2170781)))

(declare-fun c!603180 () Bool)

(assert (=> d!1018993 (= c!603180 ((_ is Nil!37305) lt!1195170))))

(assert (=> d!1018993 (= (size!28365 lt!1195170) lt!1195807)))

(declare-fun b!3506140 () Bool)

(assert (=> b!3506140 (= e!2170781 0)))

(declare-fun b!3506141 () Bool)

(assert (=> b!3506141 (= e!2170781 (+ 1 (size!28365 (t!279240 lt!1195170))))))

(assert (= (and d!1018993 c!603180) b!3506140))

(assert (= (and d!1018993 (not c!603180)) b!3506141))

(declare-fun m!3943935 () Bool)

(assert (=> b!3506141 m!3943935))

(assert (=> b!3504804 d!1018993))

(assert (=> b!3504804 d!1018791))

(declare-fun d!1018995 () Bool)

(declare-fun lt!1195808 () Int)

(assert (=> d!1018995 (>= lt!1195808 0)))

(declare-fun e!2170782 () Int)

(assert (=> d!1018995 (= lt!1195808 e!2170782)))

(declare-fun c!603181 () Bool)

(assert (=> d!1018995 (= c!603181 ((_ is Nil!37305) lt!1195084))))

(assert (=> d!1018995 (= (size!28365 lt!1195084) lt!1195808)))

(declare-fun b!3506142 () Bool)

(assert (=> b!3506142 (= e!2170782 0)))

(declare-fun b!3506143 () Bool)

(assert (=> b!3506143 (= e!2170782 (+ 1 (size!28365 (t!279240 lt!1195084))))))

(assert (= (and d!1018995 c!603181) b!3506142))

(assert (= (and d!1018995 (not c!603181)) b!3506143))

(declare-fun m!3943937 () Bool)

(assert (=> b!3506143 m!3943937))

(assert (=> b!3504804 d!1018995))

(declare-fun d!1018997 () Bool)

(declare-fun lt!1195813 () BalanceConc!22236)

(assert (=> d!1018997 (= (list!13629 lt!1195813) (printListTailRec!712 thiss!18206 (dropList!1229 lt!1195067 (+ 0 1)) (list!13629 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195067 0))))))))

(declare-fun e!2170783 () BalanceConc!22236)

(assert (=> d!1018997 (= lt!1195813 e!2170783)))

(declare-fun c!603182 () Bool)

(assert (=> d!1018997 (= c!603182 (>= (+ 0 1) (size!28364 lt!1195067)))))

(declare-fun e!2170784 () Bool)

(assert (=> d!1018997 e!2170784))

(declare-fun res!1414309 () Bool)

(assert (=> d!1018997 (=> (not res!1414309) (not e!2170784))))

(assert (=> d!1018997 (= res!1414309 (>= (+ 0 1) 0))))

(assert (=> d!1018997 (= (printTailRec!1552 thiss!18206 lt!1195067 (+ 0 1) (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195067 0)))) lt!1195813)))

(declare-fun b!3506144 () Bool)

(assert (=> b!3506144 (= e!2170784 (<= (+ 0 1) (size!28364 lt!1195067)))))

(declare-fun b!3506145 () Bool)

(assert (=> b!3506145 (= e!2170783 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195067 0))))))

(declare-fun b!3506146 () Bool)

(assert (=> b!3506146 (= e!2170783 (printTailRec!1552 thiss!18206 lt!1195067 (+ 0 1 1) (++!9233 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195067 0))) (charsOf!3482 (apply!8864 lt!1195067 (+ 0 1))))))))

(declare-fun lt!1195814 () List!37431)

(assert (=> b!3506146 (= lt!1195814 (list!13633 lt!1195067))))

(declare-fun lt!1195815 () Unit!52870)

(assert (=> b!3506146 (= lt!1195815 (lemmaDropApply!1187 lt!1195814 (+ 0 1)))))

(assert (=> b!3506146 (= (head!7373 (drop!2041 lt!1195814 (+ 0 1))) (apply!8868 lt!1195814 (+ 0 1)))))

(declare-fun lt!1195812 () Unit!52870)

(assert (=> b!3506146 (= lt!1195812 lt!1195815)))

(declare-fun lt!1195810 () List!37431)

(assert (=> b!3506146 (= lt!1195810 (list!13633 lt!1195067))))

(declare-fun lt!1195811 () Unit!52870)

(assert (=> b!3506146 (= lt!1195811 (lemmaDropTail!1071 lt!1195810 (+ 0 1)))))

(assert (=> b!3506146 (= (tail!5481 (drop!2041 lt!1195810 (+ 0 1))) (drop!2041 lt!1195810 (+ 0 1 1)))))

(declare-fun lt!1195809 () Unit!52870)

(assert (=> b!3506146 (= lt!1195809 lt!1195811)))

(assert (= (and d!1018997 res!1414309) b!3506144))

(assert (= (and d!1018997 c!603182) b!3506145))

(assert (= (and d!1018997 (not c!603182)) b!3506146))

(declare-fun m!3943939 () Bool)

(assert (=> d!1018997 m!3943939))

(assert (=> d!1018997 m!3943939))

(declare-fun m!3943941 () Bool)

(assert (=> d!1018997 m!3943941))

(declare-fun m!3943943 () Bool)

(assert (=> d!1018997 m!3943943))

(declare-fun m!3943945 () Bool)

(assert (=> d!1018997 m!3943945))

(assert (=> d!1018997 m!3942587))

(assert (=> d!1018997 m!3942597))

(assert (=> d!1018997 m!3943941))

(assert (=> b!3506144 m!3942587))

(declare-fun m!3943947 () Bool)

(assert (=> b!3506146 m!3943947))

(declare-fun m!3943949 () Bool)

(assert (=> b!3506146 m!3943949))

(declare-fun m!3943951 () Bool)

(assert (=> b!3506146 m!3943951))

(assert (=> b!3506146 m!3943947))

(assert (=> b!3506146 m!3942597))

(declare-fun m!3943953 () Bool)

(assert (=> b!3506146 m!3943953))

(declare-fun m!3943955 () Bool)

(assert (=> b!3506146 m!3943955))

(assert (=> b!3506146 m!3943951))

(declare-fun m!3943957 () Bool)

(assert (=> b!3506146 m!3943957))

(declare-fun m!3943959 () Bool)

(assert (=> b!3506146 m!3943959))

(declare-fun m!3943961 () Bool)

(assert (=> b!3506146 m!3943961))

(declare-fun m!3943963 () Bool)

(assert (=> b!3506146 m!3943963))

(assert (=> b!3506146 m!3943955))

(declare-fun m!3943965 () Bool)

(assert (=> b!3506146 m!3943965))

(assert (=> b!3506146 m!3943961))

(assert (=> b!3506146 m!3943953))

(declare-fun m!3943967 () Bool)

(assert (=> b!3506146 m!3943967))

(assert (=> b!3506146 m!3942611))

(declare-fun m!3943969 () Bool)

(assert (=> b!3506146 m!3943969))

(assert (=> b!3505175 d!1018997))

(declare-fun b!3506176 () Bool)

(declare-fun e!2170805 () List!37431)

(assert (=> b!3506176 (= e!2170805 Nil!37307)))

(declare-fun b!3506177 () Bool)

(declare-fun e!2170803 () Int)

(assert (=> b!3506177 (= e!2170803 0)))

(declare-fun b!3506178 () Bool)

(declare-fun e!2170806 () Int)

(assert (=> b!3506178 (= e!2170806 e!2170803)))

(declare-fun c!603198 () Bool)

(declare-fun call!253130 () Int)

(assert (=> b!3506178 (= c!603198 (>= (+ 0 1) call!253130))))

(declare-fun b!3506179 () Bool)

(assert (=> b!3506179 (= e!2170803 (- call!253130 (+ 0 1)))))

(declare-fun b!3506180 () Bool)

(assert (=> b!3506180 (= e!2170806 call!253130)))

(declare-fun b!3506181 () Bool)

(declare-fun e!2170802 () List!37431)

(assert (=> b!3506181 (= e!2170802 (drop!2041 (t!279242 lt!1195363) (- (+ 0 1) 1)))))

(declare-fun d!1018999 () Bool)

(declare-fun e!2170804 () Bool)

(assert (=> d!1018999 e!2170804))

(declare-fun res!1414315 () Bool)

(assert (=> d!1018999 (=> (not res!1414315) (not e!2170804))))

(declare-fun lt!1195825 () List!37431)

(declare-fun content!5251 (List!37431) (InoxSet Token!10302))

(assert (=> d!1018999 (= res!1414315 (= ((_ map implies) (content!5251 lt!1195825) (content!5251 lt!1195363)) ((as const (InoxSet Token!10302)) true)))))

(assert (=> d!1018999 (= lt!1195825 e!2170805)))

(declare-fun c!603195 () Bool)

(assert (=> d!1018999 (= c!603195 ((_ is Nil!37307) lt!1195363))))

(assert (=> d!1018999 (= (drop!2041 lt!1195363 (+ 0 1)) lt!1195825)))

(declare-fun b!3506182 () Bool)

(assert (=> b!3506182 (= e!2170805 e!2170802)))

(declare-fun c!603196 () Bool)

(assert (=> b!3506182 (= c!603196 (<= (+ 0 1) 0))))

(declare-fun bm!253125 () Bool)

(assert (=> bm!253125 (= call!253130 (size!28370 lt!1195363))))

(declare-fun b!3506183 () Bool)

(assert (=> b!3506183 (= e!2170802 lt!1195363)))

(declare-fun b!3506184 () Bool)

(assert (=> b!3506184 (= e!2170804 (= (size!28370 lt!1195825) e!2170806))))

(declare-fun c!603197 () Bool)

(assert (=> b!3506184 (= c!603197 (<= (+ 0 1) 0))))

(assert (= (and d!1018999 c!603195) b!3506176))

(assert (= (and d!1018999 (not c!603195)) b!3506182))

(assert (= (and b!3506182 c!603196) b!3506183))

(assert (= (and b!3506182 (not c!603196)) b!3506181))

(assert (= (and d!1018999 res!1414315) b!3506184))

(assert (= (and b!3506184 c!603197) b!3506180))

(assert (= (and b!3506184 (not c!603197)) b!3506178))

(assert (= (and b!3506178 c!603198) b!3506177))

(assert (= (and b!3506178 (not c!603198)) b!3506179))

(assert (= (or b!3506180 b!3506178 b!3506179) bm!253125))

(declare-fun m!3943993 () Bool)

(assert (=> b!3506181 m!3943993))

(declare-fun m!3943995 () Bool)

(assert (=> d!1018999 m!3943995))

(declare-fun m!3943997 () Bool)

(assert (=> d!1018999 m!3943997))

(declare-fun m!3943999 () Bool)

(assert (=> bm!253125 m!3943999))

(declare-fun m!3944001 () Bool)

(assert (=> b!3506184 m!3944001))

(assert (=> b!3505175 d!1018999))

(declare-fun d!1019021 () Bool)

(declare-fun lt!1195826 () Token!10302)

(assert (=> d!1019021 (contains!6982 lt!1195367 lt!1195826)))

(declare-fun e!2170808 () Token!10302)

(assert (=> d!1019021 (= lt!1195826 e!2170808)))

(declare-fun c!603199 () Bool)

(assert (=> d!1019021 (= c!603199 (= 0 0))))

(declare-fun e!2170807 () Bool)

(assert (=> d!1019021 e!2170807))

(declare-fun res!1414316 () Bool)

(assert (=> d!1019021 (=> (not res!1414316) (not e!2170807))))

(assert (=> d!1019021 (= res!1414316 (<= 0 0))))

(assert (=> d!1019021 (= (apply!8868 lt!1195367 0) lt!1195826)))

(declare-fun b!3506185 () Bool)

(assert (=> b!3506185 (= e!2170807 (< 0 (size!28370 lt!1195367)))))

(declare-fun b!3506186 () Bool)

(assert (=> b!3506186 (= e!2170808 (head!7373 lt!1195367))))

(declare-fun b!3506187 () Bool)

(assert (=> b!3506187 (= e!2170808 (apply!8868 (tail!5481 lt!1195367) (- 0 1)))))

(assert (= (and d!1019021 res!1414316) b!3506185))

(assert (= (and d!1019021 c!603199) b!3506186))

(assert (= (and d!1019021 (not c!603199)) b!3506187))

(declare-fun m!3944003 () Bool)

(assert (=> d!1019021 m!3944003))

(declare-fun m!3944005 () Bool)

(assert (=> b!3506185 m!3944005))

(declare-fun m!3944007 () Bool)

(assert (=> b!3506186 m!3944007))

(declare-fun m!3944009 () Bool)

(assert (=> b!3506187 m!3944009))

(assert (=> b!3506187 m!3944009))

(declare-fun m!3944011 () Bool)

(assert (=> b!3506187 m!3944011))

(assert (=> b!3505175 d!1019021))

(declare-fun d!1019023 () Bool)

(assert (=> d!1019023 (= (tail!5481 (drop!2041 lt!1195363 0)) (drop!2041 lt!1195363 (+ 0 1)))))

(declare-fun lt!1195834 () Unit!52870)

(declare-fun choose!20349 (List!37431 Int) Unit!52870)

(assert (=> d!1019023 (= lt!1195834 (choose!20349 lt!1195363 0))))

(declare-fun e!2170818 () Bool)

(assert (=> d!1019023 e!2170818))

(declare-fun res!1414327 () Bool)

(assert (=> d!1019023 (=> (not res!1414327) (not e!2170818))))

(assert (=> d!1019023 (= res!1414327 (>= 0 0))))

(assert (=> d!1019023 (= (lemmaDropTail!1071 lt!1195363 0) lt!1195834)))

(declare-fun b!3506204 () Bool)

(assert (=> b!3506204 (= e!2170818 (< 0 (size!28370 lt!1195363)))))

(assert (= (and d!1019023 res!1414327) b!3506204))

(assert (=> d!1019023 m!3942593))

(assert (=> d!1019023 m!3942593))

(assert (=> d!1019023 m!3942599))

(assert (=> d!1019023 m!3942601))

(declare-fun m!3944029 () Bool)

(assert (=> d!1019023 m!3944029))

(assert (=> b!3506204 m!3943999))

(assert (=> b!3505175 d!1019023))

(declare-fun d!1019033 () Bool)

(declare-fun lt!1195835 () BalanceConc!22236)

(assert (=> d!1019033 (= (list!13629 lt!1195835) (originalCharacters!6182 (apply!8864 lt!1195067 0)))))

(assert (=> d!1019033 (= lt!1195835 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195067 0)))) (value!176298 (apply!8864 lt!1195067 0))))))

(assert (=> d!1019033 (= (charsOf!3482 (apply!8864 lt!1195067 0)) lt!1195835)))

(declare-fun b_lambda!101989 () Bool)

(assert (=> (not b_lambda!101989) (not d!1019033)))

(declare-fun tb!194511 () Bool)

(declare-fun t!279435 () Bool)

(assert (=> (and b!3504516 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195067 0))))) t!279435) tb!194511))

(declare-fun b!3506206 () Bool)

(declare-fun e!2170820 () Bool)

(declare-fun tp!1084861 () Bool)

(assert (=> b!3506206 (= e!2170820 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195067 0)))) (value!176298 (apply!8864 lt!1195067 0))))) tp!1084861))))

(declare-fun result!238804 () Bool)

(assert (=> tb!194511 (= result!238804 (and (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195067 0)))) (value!176298 (apply!8864 lt!1195067 0)))) e!2170820))))

(assert (= tb!194511 b!3506206))

(declare-fun m!3944039 () Bool)

(assert (=> b!3506206 m!3944039))

(declare-fun m!3944041 () Bool)

(assert (=> tb!194511 m!3944041))

(assert (=> d!1019033 t!279435))

(declare-fun b_and!248885 () Bool)

(assert (= b_and!248799 (and (=> t!279435 result!238804) b_and!248885)))

(declare-fun t!279439 () Bool)

(declare-fun tb!194515 () Bool)

(assert (=> (and b!3505469 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195067 0))))) t!279439) tb!194515))

(declare-fun result!238808 () Bool)

(assert (= result!238808 result!238804))

(assert (=> d!1019033 t!279439))

(declare-fun b_and!248887 () Bool)

(assert (= b_and!248803 (and (=> t!279439 result!238808) b_and!248887)))

(declare-fun tb!194517 () Bool)

(declare-fun t!279441 () Bool)

(assert (=> (and b!3504500 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195067 0))))) t!279441) tb!194517))

(declare-fun result!238810 () Bool)

(assert (= result!238810 result!238804))

(assert (=> d!1019033 t!279441))

(declare-fun b_and!248889 () Bool)

(assert (= b_and!248795 (and (=> t!279441 result!238810) b_and!248889)))

(declare-fun tb!194519 () Bool)

(declare-fun t!279443 () Bool)

(assert (=> (and b!3504518 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195067 0))))) t!279443) tb!194519))

(declare-fun result!238812 () Bool)

(assert (= result!238812 result!238804))

(assert (=> d!1019033 t!279443))

(declare-fun b_and!248891 () Bool)

(assert (= b_and!248797 (and (=> t!279443 result!238812) b_and!248891)))

(declare-fun tb!194521 () Bool)

(declare-fun t!279445 () Bool)

(assert (=> (and b!3505488 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195067 0))))) t!279445) tb!194521))

(declare-fun result!238814 () Bool)

(assert (= result!238814 result!238804))

(assert (=> d!1019033 t!279445))

(declare-fun b_and!248893 () Bool)

(assert (= b_and!248801 (and (=> t!279445 result!238814) b_and!248893)))

(declare-fun m!3944043 () Bool)

(assert (=> d!1019033 m!3944043))

(declare-fun m!3944045 () Bool)

(assert (=> d!1019033 m!3944045))

(assert (=> b!3505175 d!1019033))

(declare-fun d!1019039 () Bool)

(assert (=> d!1019039 (= (head!7373 (drop!2041 lt!1195367 0)) (h!42727 (drop!2041 lt!1195367 0)))))

(assert (=> b!3505175 d!1019039))

(declare-fun b!3506207 () Bool)

(declare-fun e!2170824 () List!37431)

(assert (=> b!3506207 (= e!2170824 Nil!37307)))

(declare-fun b!3506208 () Bool)

(declare-fun e!2170822 () Int)

(assert (=> b!3506208 (= e!2170822 0)))

(declare-fun b!3506209 () Bool)

(declare-fun e!2170825 () Int)

(assert (=> b!3506209 (= e!2170825 e!2170822)))

(declare-fun c!603206 () Bool)

(declare-fun call!253132 () Int)

(assert (=> b!3506209 (= c!603206 (>= 0 call!253132))))

(declare-fun b!3506210 () Bool)

(assert (=> b!3506210 (= e!2170822 (- call!253132 0))))

(declare-fun b!3506211 () Bool)

(assert (=> b!3506211 (= e!2170825 call!253132)))

(declare-fun b!3506212 () Bool)

(declare-fun e!2170821 () List!37431)

(assert (=> b!3506212 (= e!2170821 (drop!2041 (t!279242 lt!1195363) (- 0 1)))))

(declare-fun d!1019041 () Bool)

(declare-fun e!2170823 () Bool)

(assert (=> d!1019041 e!2170823))

(declare-fun res!1414328 () Bool)

(assert (=> d!1019041 (=> (not res!1414328) (not e!2170823))))

(declare-fun lt!1195836 () List!37431)

(assert (=> d!1019041 (= res!1414328 (= ((_ map implies) (content!5251 lt!1195836) (content!5251 lt!1195363)) ((as const (InoxSet Token!10302)) true)))))

(assert (=> d!1019041 (= lt!1195836 e!2170824)))

(declare-fun c!603203 () Bool)

(assert (=> d!1019041 (= c!603203 ((_ is Nil!37307) lt!1195363))))

(assert (=> d!1019041 (= (drop!2041 lt!1195363 0) lt!1195836)))

(declare-fun b!3506213 () Bool)

(assert (=> b!3506213 (= e!2170824 e!2170821)))

(declare-fun c!603204 () Bool)

(assert (=> b!3506213 (= c!603204 (<= 0 0))))

(declare-fun bm!253127 () Bool)

(assert (=> bm!253127 (= call!253132 (size!28370 lt!1195363))))

(declare-fun b!3506214 () Bool)

(assert (=> b!3506214 (= e!2170821 lt!1195363)))

(declare-fun b!3506215 () Bool)

(assert (=> b!3506215 (= e!2170823 (= (size!28370 lt!1195836) e!2170825))))

(declare-fun c!603205 () Bool)

(assert (=> b!3506215 (= c!603205 (<= 0 0))))

(assert (= (and d!1019041 c!603203) b!3506207))

(assert (= (and d!1019041 (not c!603203)) b!3506213))

(assert (= (and b!3506213 c!603204) b!3506214))

(assert (= (and b!3506213 (not c!603204)) b!3506212))

(assert (= (and d!1019041 res!1414328) b!3506215))

(assert (= (and b!3506215 c!603205) b!3506211))

(assert (= (and b!3506215 (not c!603205)) b!3506209))

(assert (= (and b!3506209 c!603206) b!3506208))

(assert (= (and b!3506209 (not c!603206)) b!3506210))

(assert (= (or b!3506211 b!3506209 b!3506210) bm!253127))

(declare-fun m!3944047 () Bool)

(assert (=> b!3506212 m!3944047))

(declare-fun m!3944049 () Bool)

(assert (=> d!1019041 m!3944049))

(assert (=> d!1019041 m!3943997))

(assert (=> bm!253127 m!3943999))

(declare-fun m!3944051 () Bool)

(assert (=> b!3506215 m!3944051))

(assert (=> b!3505175 d!1019041))

(assert (=> b!3505175 d!1018989))

(declare-fun d!1019043 () Bool)

(assert (=> d!1019043 (= (head!7373 (drop!2041 lt!1195367 0)) (apply!8868 lt!1195367 0))))

(declare-fun lt!1195839 () Unit!52870)

(declare-fun choose!20351 (List!37431 Int) Unit!52870)

(assert (=> d!1019043 (= lt!1195839 (choose!20351 lt!1195367 0))))

(declare-fun e!2170842 () Bool)

(assert (=> d!1019043 e!2170842))

(declare-fun res!1414341 () Bool)

(assert (=> d!1019043 (=> (not res!1414341) (not e!2170842))))

(assert (=> d!1019043 (= res!1414341 (>= 0 0))))

(assert (=> d!1019043 (= (lemmaDropApply!1187 lt!1195367 0) lt!1195839)))

(declare-fun b!3506236 () Bool)

(assert (=> b!3506236 (= e!2170842 (< 0 (size!28370 lt!1195367)))))

(assert (= (and d!1019043 res!1414341) b!3506236))

(assert (=> d!1019043 m!3942589))

(assert (=> d!1019043 m!3942589))

(assert (=> d!1019043 m!3942591))

(assert (=> d!1019043 m!3942609))

(declare-fun m!3944053 () Bool)

(assert (=> d!1019043 m!3944053))

(assert (=> b!3506236 m!3944005))

(assert (=> b!3505175 d!1019043))

(declare-fun b!3506237 () Bool)

(declare-fun e!2170846 () List!37431)

(assert (=> b!3506237 (= e!2170846 Nil!37307)))

(declare-fun b!3506238 () Bool)

(declare-fun e!2170844 () Int)

(assert (=> b!3506238 (= e!2170844 0)))

(declare-fun b!3506239 () Bool)

(declare-fun e!2170847 () Int)

(assert (=> b!3506239 (= e!2170847 e!2170844)))

(declare-fun c!603214 () Bool)

(declare-fun call!253139 () Int)

(assert (=> b!3506239 (= c!603214 (>= 0 call!253139))))

(declare-fun b!3506240 () Bool)

(assert (=> b!3506240 (= e!2170844 (- call!253139 0))))

(declare-fun b!3506241 () Bool)

(assert (=> b!3506241 (= e!2170847 call!253139)))

(declare-fun b!3506242 () Bool)

(declare-fun e!2170843 () List!37431)

(assert (=> b!3506242 (= e!2170843 (drop!2041 (t!279242 lt!1195367) (- 0 1)))))

(declare-fun d!1019045 () Bool)

(declare-fun e!2170845 () Bool)

(assert (=> d!1019045 e!2170845))

(declare-fun res!1414342 () Bool)

(assert (=> d!1019045 (=> (not res!1414342) (not e!2170845))))

(declare-fun lt!1195840 () List!37431)

(assert (=> d!1019045 (= res!1414342 (= ((_ map implies) (content!5251 lt!1195840) (content!5251 lt!1195367)) ((as const (InoxSet Token!10302)) true)))))

(assert (=> d!1019045 (= lt!1195840 e!2170846)))

(declare-fun c!603211 () Bool)

(assert (=> d!1019045 (= c!603211 ((_ is Nil!37307) lt!1195367))))

(assert (=> d!1019045 (= (drop!2041 lt!1195367 0) lt!1195840)))

(declare-fun b!3506243 () Bool)

(assert (=> b!3506243 (= e!2170846 e!2170843)))

(declare-fun c!603212 () Bool)

(assert (=> b!3506243 (= c!603212 (<= 0 0))))

(declare-fun bm!253134 () Bool)

(assert (=> bm!253134 (= call!253139 (size!28370 lt!1195367))))

(declare-fun b!3506244 () Bool)

(assert (=> b!3506244 (= e!2170843 lt!1195367)))

(declare-fun b!3506245 () Bool)

(assert (=> b!3506245 (= e!2170845 (= (size!28370 lt!1195840) e!2170847))))

(declare-fun c!603213 () Bool)

(assert (=> b!3506245 (= c!603213 (<= 0 0))))

(assert (= (and d!1019045 c!603211) b!3506237))

(assert (= (and d!1019045 (not c!603211)) b!3506243))

(assert (= (and b!3506243 c!603212) b!3506244))

(assert (= (and b!3506243 (not c!603212)) b!3506242))

(assert (= (and d!1019045 res!1414342) b!3506245))

(assert (= (and b!3506245 c!603213) b!3506241))

(assert (= (and b!3506245 (not c!603213)) b!3506239))

(assert (= (and b!3506239 c!603214) b!3506238))

(assert (= (and b!3506239 (not c!603214)) b!3506240))

(assert (= (or b!3506241 b!3506239 b!3506240) bm!253134))

(declare-fun m!3944055 () Bool)

(assert (=> b!3506242 m!3944055))

(declare-fun m!3944057 () Bool)

(assert (=> d!1019045 m!3944057))

(declare-fun m!3944059 () Bool)

(assert (=> d!1019045 m!3944059))

(assert (=> bm!253134 m!3944005))

(declare-fun m!3944061 () Bool)

(assert (=> b!3506245 m!3944061))

(assert (=> b!3505175 d!1019045))

(declare-fun d!1019047 () Bool)

(declare-fun e!2170857 () Bool)

(assert (=> d!1019047 e!2170857))

(declare-fun res!1414359 () Bool)

(assert (=> d!1019047 (=> (not res!1414359) (not e!2170857))))

(declare-fun appendAssocInst!812 (Conc!11311 Conc!11311) Bool)

(assert (=> d!1019047 (= res!1414359 (appendAssocInst!812 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195067 0)))))))

(declare-fun lt!1195844 () BalanceConc!22236)

(declare-fun ++!9234 (Conc!11311 Conc!11311) Conc!11311)

(assert (=> d!1019047 (= lt!1195844 (BalanceConc!22237 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195067 0))))))))

(assert (=> d!1019047 (= (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195067 0))) lt!1195844)))

(declare-fun b!3506265 () Bool)

(declare-fun res!1414356 () Bool)

(assert (=> b!3506265 (=> (not res!1414356) (not e!2170857))))

(declare-fun height!1715 (Conc!11311) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3506265 (= res!1414356 (>= (height!1715 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195067 0))))) (max!0 (height!1715 (c!602787 (BalanceConc!22237 Empty!11311))) (height!1715 (c!602787 (charsOf!3482 (apply!8864 lt!1195067 0)))))))))

(declare-fun b!3506263 () Bool)

(declare-fun res!1414357 () Bool)

(assert (=> b!3506263 (=> (not res!1414357) (not e!2170857))))

(assert (=> b!3506263 (= res!1414357 (isBalanced!3448 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195067 0))))))))

(declare-fun b!3506264 () Bool)

(declare-fun res!1414358 () Bool)

(assert (=> b!3506264 (=> (not res!1414358) (not e!2170857))))

(assert (=> b!3506264 (= res!1414358 (<= (height!1715 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195067 0))))) (+ (max!0 (height!1715 (c!602787 (BalanceConc!22237 Empty!11311))) (height!1715 (c!602787 (charsOf!3482 (apply!8864 lt!1195067 0))))) 1)))))

(declare-fun b!3506266 () Bool)

(assert (=> b!3506266 (= e!2170857 (= (list!13629 lt!1195844) (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (list!13629 (charsOf!3482 (apply!8864 lt!1195067 0))))))))

(assert (= (and d!1019047 res!1414359) b!3506263))

(assert (= (and b!3506263 res!1414357) b!3506264))

(assert (= (and b!3506264 res!1414358) b!3506265))

(assert (= (and b!3506265 res!1414356) b!3506266))

(declare-fun m!3944073 () Bool)

(assert (=> b!3506263 m!3944073))

(assert (=> b!3506263 m!3944073))

(declare-fun m!3944075 () Bool)

(assert (=> b!3506263 m!3944075))

(declare-fun m!3944077 () Bool)

(assert (=> b!3506264 m!3944077))

(declare-fun m!3944079 () Bool)

(assert (=> b!3506264 m!3944079))

(assert (=> b!3506264 m!3944077))

(assert (=> b!3506264 m!3944079))

(declare-fun m!3944081 () Bool)

(assert (=> b!3506264 m!3944081))

(assert (=> b!3506264 m!3944073))

(declare-fun m!3944083 () Bool)

(assert (=> b!3506264 m!3944083))

(assert (=> b!3506264 m!3944073))

(assert (=> b!3506265 m!3944077))

(assert (=> b!3506265 m!3944079))

(assert (=> b!3506265 m!3944077))

(assert (=> b!3506265 m!3944079))

(assert (=> b!3506265 m!3944081))

(assert (=> b!3506265 m!3944073))

(assert (=> b!3506265 m!3944083))

(assert (=> b!3506265 m!3944073))

(declare-fun m!3944085 () Bool)

(assert (=> d!1019047 m!3944085))

(assert (=> d!1019047 m!3944073))

(declare-fun m!3944087 () Bool)

(assert (=> b!3506266 m!3944087))

(assert (=> b!3506266 m!3942155))

(assert (=> b!3506266 m!3942595))

(declare-fun m!3944089 () Bool)

(assert (=> b!3506266 m!3944089))

(assert (=> b!3506266 m!3942155))

(assert (=> b!3506266 m!3944089))

(declare-fun m!3944091 () Bool)

(assert (=> b!3506266 m!3944091))

(assert (=> b!3505175 d!1019047))

(declare-fun d!1019053 () Bool)

(declare-fun lt!1195845 () Token!10302)

(assert (=> d!1019053 (= lt!1195845 (apply!8868 (list!13633 lt!1195067) 0))))

(assert (=> d!1019053 (= lt!1195845 (apply!8869 (c!602788 lt!1195067) 0))))

(declare-fun e!2170858 () Bool)

(assert (=> d!1019053 e!2170858))

(declare-fun res!1414360 () Bool)

(assert (=> d!1019053 (=> (not res!1414360) (not e!2170858))))

(assert (=> d!1019053 (= res!1414360 (<= 0 0))))

(assert (=> d!1019053 (= (apply!8864 lt!1195067 0) lt!1195845)))

(declare-fun b!3506267 () Bool)

(assert (=> b!3506267 (= e!2170858 (< 0 (size!28364 lt!1195067)))))

(assert (= (and d!1019053 res!1414360) b!3506267))

(assert (=> d!1019053 m!3942611))

(assert (=> d!1019053 m!3942611))

(declare-fun m!3944093 () Bool)

(assert (=> d!1019053 m!3944093))

(declare-fun m!3944095 () Bool)

(assert (=> d!1019053 m!3944095))

(assert (=> b!3506267 m!3942587))

(assert (=> b!3505175 d!1019053))

(declare-fun d!1019055 () Bool)

(assert (=> d!1019055 (= (tail!5481 (drop!2041 lt!1195363 0)) (t!279242 (drop!2041 lt!1195363 0)))))

(assert (=> b!3505175 d!1019055))

(assert (=> b!3505099 d!1018361))

(declare-fun b!3506268 () Bool)

(declare-fun e!2170864 () Bool)

(declare-fun lt!1195846 () Bool)

(assert (=> b!3506268 (= e!2170864 (not lt!1195846))))

(declare-fun b!3506269 () Bool)

(declare-fun res!1414367 () Bool)

(declare-fun e!2170861 () Bool)

(assert (=> b!3506269 (=> res!1414367 e!2170861)))

(declare-fun e!2170865 () Bool)

(assert (=> b!3506269 (= res!1414367 e!2170865)))

(declare-fun res!1414368 () Bool)

(assert (=> b!3506269 (=> (not res!1414368) (not e!2170865))))

(assert (=> b!3506269 (= res!1414368 lt!1195846)))

(declare-fun b!3506270 () Bool)

(declare-fun e!2170862 () Bool)

(assert (=> b!3506270 (= e!2170862 e!2170864)))

(declare-fun c!603220 () Bool)

(assert (=> b!3506270 (= c!603220 ((_ is EmptyLang!10227) (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494))))))))))

(declare-fun b!3506271 () Bool)

(assert (=> b!3506271 (= e!2170865 (= (head!7371 (list!13629 (charsOf!3482 (h!42727 tokens!494)))) (c!602786 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))))))))))

(declare-fun b!3506272 () Bool)

(declare-fun res!1414363 () Bool)

(assert (=> b!3506272 (=> res!1414363 e!2170861)))

(assert (=> b!3506272 (= res!1414363 (not ((_ is ElementMatch!10227) (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))))))))))

(assert (=> b!3506272 (= e!2170864 e!2170861)))

(declare-fun e!2170860 () Bool)

(declare-fun b!3506273 () Bool)

(assert (=> b!3506273 (= e!2170860 (nullable!3512 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494))))))))))

(declare-fun b!3506274 () Bool)

(declare-fun res!1414364 () Bool)

(assert (=> b!3506274 (=> (not res!1414364) (not e!2170865))))

(assert (=> b!3506274 (= res!1414364 (isEmpty!21746 (tail!5480 (list!13629 (charsOf!3482 (h!42727 tokens!494))))))))

(declare-fun b!3506275 () Bool)

(declare-fun e!2170863 () Bool)

(assert (=> b!3506275 (= e!2170863 (not (= (head!7371 (list!13629 (charsOf!3482 (h!42727 tokens!494)))) (c!602786 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494))))))))))))

(declare-fun b!3506276 () Bool)

(declare-fun e!2170859 () Bool)

(assert (=> b!3506276 (= e!2170861 e!2170859)))

(declare-fun res!1414361 () Bool)

(assert (=> b!3506276 (=> (not res!1414361) (not e!2170859))))

(assert (=> b!3506276 (= res!1414361 (not lt!1195846))))

(declare-fun b!3506277 () Bool)

(assert (=> b!3506277 (= e!2170860 (matchR!4811 (derivativeStep!3065 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))))) (head!7371 (list!13629 (charsOf!3482 (h!42727 tokens!494))))) (tail!5480 (list!13629 (charsOf!3482 (h!42727 tokens!494))))))))

(declare-fun b!3506278 () Bool)

(assert (=> b!3506278 (= e!2170859 e!2170863)))

(declare-fun res!1414362 () Bool)

(assert (=> b!3506278 (=> res!1414362 e!2170863)))

(declare-fun call!253143 () Bool)

(assert (=> b!3506278 (= res!1414362 call!253143)))

(declare-fun d!1019057 () Bool)

(assert (=> d!1019057 e!2170862))

(declare-fun c!603221 () Bool)

(assert (=> d!1019057 (= c!603221 ((_ is EmptyExpr!10227) (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494))))))))))

(assert (=> d!1019057 (= lt!1195846 e!2170860)))

(declare-fun c!603222 () Bool)

(assert (=> d!1019057 (= c!603222 (isEmpty!21746 (list!13629 (charsOf!3482 (h!42727 tokens!494)))))))

(assert (=> d!1019057 (validRegex!4668 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))))))))

(assert (=> d!1019057 (= (matchR!4811 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))))) (list!13629 (charsOf!3482 (h!42727 tokens!494)))) lt!1195846)))

(declare-fun bm!253138 () Bool)

(assert (=> bm!253138 (= call!253143 (isEmpty!21746 (list!13629 (charsOf!3482 (h!42727 tokens!494)))))))

(declare-fun b!3506279 () Bool)

(declare-fun res!1414365 () Bool)

(assert (=> b!3506279 (=> (not res!1414365) (not e!2170865))))

(assert (=> b!3506279 (= res!1414365 (not call!253143))))

(declare-fun b!3506280 () Bool)

(declare-fun res!1414366 () Bool)

(assert (=> b!3506280 (=> res!1414366 e!2170863)))

(assert (=> b!3506280 (= res!1414366 (not (isEmpty!21746 (tail!5480 (list!13629 (charsOf!3482 (h!42727 tokens!494)))))))))

(declare-fun b!3506281 () Bool)

(assert (=> b!3506281 (= e!2170862 (= lt!1195846 call!253143))))

(assert (= (and d!1019057 c!603222) b!3506273))

(assert (= (and d!1019057 (not c!603222)) b!3506277))

(assert (= (and d!1019057 c!603221) b!3506281))

(assert (= (and d!1019057 (not c!603221)) b!3506270))

(assert (= (and b!3506270 c!603220) b!3506268))

(assert (= (and b!3506270 (not c!603220)) b!3506272))

(assert (= (and b!3506272 (not res!1414363)) b!3506269))

(assert (= (and b!3506269 res!1414368) b!3506279))

(assert (= (and b!3506279 res!1414365) b!3506274))

(assert (= (and b!3506274 res!1414364) b!3506271))

(assert (= (and b!3506269 (not res!1414367)) b!3506276))

(assert (= (and b!3506276 res!1414361) b!3506278))

(assert (= (and b!3506278 (not res!1414362)) b!3506280))

(assert (= (and b!3506280 (not res!1414366)) b!3506275))

(assert (= (or b!3506281 b!3506279 b!3506278) bm!253138))

(assert (=> b!3506280 m!3941389))

(declare-fun m!3944097 () Bool)

(assert (=> b!3506280 m!3944097))

(assert (=> b!3506280 m!3944097))

(declare-fun m!3944099 () Bool)

(assert (=> b!3506280 m!3944099))

(declare-fun m!3944101 () Bool)

(assert (=> b!3506273 m!3944101))

(assert (=> b!3506277 m!3941389))

(declare-fun m!3944103 () Bool)

(assert (=> b!3506277 m!3944103))

(assert (=> b!3506277 m!3944103))

(declare-fun m!3944105 () Bool)

(assert (=> b!3506277 m!3944105))

(assert (=> b!3506277 m!3941389))

(assert (=> b!3506277 m!3944097))

(assert (=> b!3506277 m!3944105))

(assert (=> b!3506277 m!3944097))

(declare-fun m!3944107 () Bool)

(assert (=> b!3506277 m!3944107))

(assert (=> bm!253138 m!3941389))

(declare-fun m!3944109 () Bool)

(assert (=> bm!253138 m!3944109))

(assert (=> b!3506275 m!3941389))

(assert (=> b!3506275 m!3944103))

(assert (=> b!3506271 m!3941389))

(assert (=> b!3506271 m!3944103))

(assert (=> d!1019057 m!3941389))

(assert (=> d!1019057 m!3944109))

(declare-fun m!3944111 () Bool)

(assert (=> d!1019057 m!3944111))

(assert (=> b!3506274 m!3941389))

(assert (=> b!3506274 m!3944097))

(assert (=> b!3506274 m!3944097))

(assert (=> b!3506274 m!3944099))

(assert (=> b!3505099 d!1019057))

(assert (=> b!3505099 d!1018573))

(declare-fun d!1019059 () Bool)

(assert (=> d!1019059 (= (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494))))) (v!37044 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494))))))))

(assert (=> b!3505099 d!1019059))

(assert (=> b!3505099 d!1018357))

(declare-fun bs!564026 () Bool)

(declare-fun d!1019061 () Bool)

(assert (= bs!564026 (and d!1019061 b!3504521)))

(declare-fun lambda!122547 () Int)

(assert (=> bs!564026 (not (= lambda!122547 lambda!122514))))

(declare-fun bs!564027 () Bool)

(assert (= bs!564027 (and d!1019061 b!3504517)))

(assert (=> bs!564027 (= lambda!122547 lambda!122515)))

(declare-fun bs!564028 () Bool)

(assert (= bs!564028 (and d!1019061 d!1018645)))

(assert (=> bs!564028 (= lambda!122547 lambda!122525)))

(declare-fun b!3506290 () Bool)

(declare-fun e!2170874 () Bool)

(assert (=> b!3506290 (= e!2170874 true)))

(declare-fun b!3506289 () Bool)

(declare-fun e!2170873 () Bool)

(assert (=> b!3506289 (= e!2170873 e!2170874)))

(declare-fun b!3506288 () Bool)

(declare-fun e!2170872 () Bool)

(assert (=> b!3506288 (= e!2170872 e!2170873)))

(assert (=> d!1019061 e!2170872))

(assert (= b!3506289 b!3506290))

(assert (= b!3506288 b!3506289))

(assert (= (and d!1019061 ((_ is Cons!37306) rules!2135)) b!3506288))

(assert (=> b!3506290 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (h!42726 rules!2135)))) (dynLambda!15849 order!20019 lambda!122547))))

(assert (=> b!3506290 (< (dynLambda!15850 order!20021 (toChars!7571 (transformation!5468 (h!42726 rules!2135)))) (dynLambda!15849 order!20019 lambda!122547))))

(assert (=> d!1019061 true))

(declare-fun lt!1195849 () Bool)

(assert (=> d!1019061 (= lt!1195849 (forall!8003 (list!13633 (seqFromList!3989 tokens!494)) lambda!122547))))

(declare-fun e!2170871 () Bool)

(assert (=> d!1019061 (= lt!1195849 e!2170871)))

(declare-fun res!1414373 () Bool)

(assert (=> d!1019061 (=> res!1414373 e!2170871)))

(assert (=> d!1019061 (= res!1414373 (not ((_ is Cons!37307) (list!13633 (seqFromList!3989 tokens!494)))))))

(assert (=> d!1019061 (not (isEmpty!21745 rules!2135))))

(assert (=> d!1019061 (= (rulesProduceEachTokenIndividuallyList!1879 thiss!18206 rules!2135 (list!13633 (seqFromList!3989 tokens!494))) lt!1195849)))

(declare-fun b!3506286 () Bool)

(declare-fun e!2170870 () Bool)

(assert (=> b!3506286 (= e!2170871 e!2170870)))

(declare-fun res!1414374 () Bool)

(assert (=> b!3506286 (=> (not res!1414374) (not e!2170870))))

(assert (=> b!3506286 (= res!1414374 (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 (list!13633 (seqFromList!3989 tokens!494)))))))

(declare-fun b!3506287 () Bool)

(assert (=> b!3506287 (= e!2170870 (rulesProduceEachTokenIndividuallyList!1879 thiss!18206 rules!2135 (t!279242 (list!13633 (seqFromList!3989 tokens!494)))))))

(assert (= (and d!1019061 (not res!1414373)) b!3506286))

(assert (= (and b!3506286 res!1414374) b!3506287))

(assert (=> d!1019061 m!3942987))

(declare-fun m!3944113 () Bool)

(assert (=> d!1019061 m!3944113))

(assert (=> d!1019061 m!3941517))

(declare-fun m!3944115 () Bool)

(assert (=> b!3506286 m!3944115))

(declare-fun m!3944117 () Bool)

(assert (=> b!3506287 m!3944117))

(assert (=> b!3505429 d!1019061))

(declare-fun d!1019063 () Bool)

(assert (=> d!1019063 (= (list!13633 (seqFromList!3989 tokens!494)) (list!13634 (c!602788 (seqFromList!3989 tokens!494))))))

(declare-fun bs!564029 () Bool)

(assert (= bs!564029 d!1019063))

(declare-fun m!3944119 () Bool)

(assert (=> bs!564029 m!3944119))

(assert (=> b!3505429 d!1019063))

(declare-fun b!3506291 () Bool)

(declare-fun res!1414381 () Bool)

(declare-fun e!2170875 () Bool)

(assert (=> b!3506291 (=> (not res!1414381) (not e!2170875))))

(declare-fun lt!1195851 () Option!7594)

(assert (=> b!3506291 (= res!1414381 (< (size!28365 (_2!21691 (get!11971 lt!1195851))) (size!28365 lt!1195077)))))

(declare-fun b!3506292 () Bool)

(declare-fun res!1414379 () Bool)

(assert (=> b!3506292 (=> (not res!1414379) (not e!2170875))))

(assert (=> b!3506292 (= res!1414379 (= (value!176298 (_1!21691 (get!11971 lt!1195851))) (apply!8865 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195851)))) (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195851)))))))))

(declare-fun b!3506293 () Bool)

(declare-fun e!2170877 () Option!7594)

(declare-fun call!253144 () Option!7594)

(assert (=> b!3506293 (= e!2170877 call!253144)))

(declare-fun b!3506294 () Bool)

(assert (=> b!3506294 (= e!2170875 (contains!6979 (t!279241 rules!2135) (rule!8098 (_1!21691 (get!11971 lt!1195851)))))))

(declare-fun b!3506295 () Bool)

(declare-fun e!2170876 () Bool)

(assert (=> b!3506295 (= e!2170876 e!2170875)))

(declare-fun res!1414377 () Bool)

(assert (=> b!3506295 (=> (not res!1414377) (not e!2170875))))

(assert (=> b!3506295 (= res!1414377 (isDefined!5855 lt!1195851))))

(declare-fun b!3506296 () Bool)

(declare-fun res!1414375 () Bool)

(assert (=> b!3506296 (=> (not res!1414375) (not e!2170875))))

(assert (=> b!3506296 (= res!1414375 (= (++!9231 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195851)))) (_2!21691 (get!11971 lt!1195851))) lt!1195077))))

(declare-fun b!3506297 () Bool)

(declare-fun res!1414380 () Bool)

(assert (=> b!3506297 (=> (not res!1414380) (not e!2170875))))

(assert (=> b!3506297 (= res!1414380 (= (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195851)))) (originalCharacters!6182 (_1!21691 (get!11971 lt!1195851)))))))

(declare-fun b!3506298 () Bool)

(declare-fun res!1414376 () Bool)

(assert (=> b!3506298 (=> (not res!1414376) (not e!2170875))))

(assert (=> b!3506298 (= res!1414376 (matchR!4811 (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1195851)))) (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195851))))))))

(declare-fun b!3506299 () Bool)

(declare-fun lt!1195852 () Option!7594)

(declare-fun lt!1195854 () Option!7594)

(assert (=> b!3506299 (= e!2170877 (ite (and ((_ is None!7593) lt!1195852) ((_ is None!7593) lt!1195854)) None!7593 (ite ((_ is None!7593) lt!1195854) lt!1195852 (ite ((_ is None!7593) lt!1195852) lt!1195854 (ite (>= (size!28363 (_1!21691 (v!37045 lt!1195852))) (size!28363 (_1!21691 (v!37045 lt!1195854)))) lt!1195852 lt!1195854)))))))

(assert (=> b!3506299 (= lt!1195852 call!253144)))

(assert (=> b!3506299 (= lt!1195854 (maxPrefix!2597 thiss!18206 (t!279241 (t!279241 rules!2135)) lt!1195077))))

(declare-fun d!1019065 () Bool)

(assert (=> d!1019065 e!2170876))

(declare-fun res!1414378 () Bool)

(assert (=> d!1019065 (=> res!1414378 e!2170876)))

(assert (=> d!1019065 (= res!1414378 (isEmpty!21757 lt!1195851))))

(assert (=> d!1019065 (= lt!1195851 e!2170877)))

(declare-fun c!603223 () Bool)

(assert (=> d!1019065 (= c!603223 (and ((_ is Cons!37306) (t!279241 rules!2135)) ((_ is Nil!37306) (t!279241 (t!279241 rules!2135)))))))

(declare-fun lt!1195853 () Unit!52870)

(declare-fun lt!1195850 () Unit!52870)

(assert (=> d!1019065 (= lt!1195853 lt!1195850)))

(assert (=> d!1019065 (isPrefix!2867 lt!1195077 lt!1195077)))

(assert (=> d!1019065 (= lt!1195850 (lemmaIsPrefixRefl!1826 lt!1195077 lt!1195077))))

(assert (=> d!1019065 (rulesValidInductive!1876 thiss!18206 (t!279241 rules!2135))))

(assert (=> d!1019065 (= (maxPrefix!2597 thiss!18206 (t!279241 rules!2135) lt!1195077) lt!1195851)))

(declare-fun bm!253139 () Bool)

(assert (=> bm!253139 (= call!253144 (maxPrefixOneRule!1764 thiss!18206 (h!42726 (t!279241 rules!2135)) lt!1195077))))

(assert (= (and d!1019065 c!603223) b!3506293))

(assert (= (and d!1019065 (not c!603223)) b!3506299))

(assert (= (or b!3506293 b!3506299) bm!253139))

(assert (= (and d!1019065 (not res!1414378)) b!3506295))

(assert (= (and b!3506295 res!1414377) b!3506297))

(assert (= (and b!3506297 res!1414380) b!3506291))

(assert (= (and b!3506291 res!1414381) b!3506296))

(assert (= (and b!3506296 res!1414375) b!3506292))

(assert (= (and b!3506292 res!1414379) b!3506298))

(assert (= (and b!3506298 res!1414376) b!3506294))

(declare-fun m!3944121 () Bool)

(assert (=> b!3506296 m!3944121))

(declare-fun m!3944123 () Bool)

(assert (=> b!3506296 m!3944123))

(assert (=> b!3506296 m!3944123))

(declare-fun m!3944125 () Bool)

(assert (=> b!3506296 m!3944125))

(assert (=> b!3506296 m!3944125))

(declare-fun m!3944127 () Bool)

(assert (=> b!3506296 m!3944127))

(assert (=> b!3506291 m!3944121))

(declare-fun m!3944129 () Bool)

(assert (=> b!3506291 m!3944129))

(assert (=> b!3506291 m!3942509))

(assert (=> b!3506298 m!3944121))

(assert (=> b!3506298 m!3944123))

(assert (=> b!3506298 m!3944123))

(assert (=> b!3506298 m!3944125))

(assert (=> b!3506298 m!3944125))

(declare-fun m!3944131 () Bool)

(assert (=> b!3506298 m!3944131))

(assert (=> b!3506294 m!3944121))

(declare-fun m!3944133 () Bool)

(assert (=> b!3506294 m!3944133))

(assert (=> b!3506292 m!3944121))

(declare-fun m!3944135 () Bool)

(assert (=> b!3506292 m!3944135))

(assert (=> b!3506292 m!3944135))

(declare-fun m!3944137 () Bool)

(assert (=> b!3506292 m!3944137))

(declare-fun m!3944139 () Bool)

(assert (=> b!3506295 m!3944139))

(assert (=> b!3506297 m!3944121))

(assert (=> b!3506297 m!3944123))

(assert (=> b!3506297 m!3944123))

(assert (=> b!3506297 m!3944125))

(declare-fun m!3944141 () Bool)

(assert (=> bm!253139 m!3944141))

(declare-fun m!3944143 () Bool)

(assert (=> b!3506299 m!3944143))

(declare-fun m!3944145 () Bool)

(assert (=> d!1019065 m!3944145))

(assert (=> d!1019065 m!3942533))

(assert (=> d!1019065 m!3942535))

(declare-fun m!3944147 () Bool)

(assert (=> d!1019065 m!3944147))

(assert (=> b!3505143 d!1019065))

(declare-fun d!1019067 () Bool)

(assert (=> d!1019067 (= (isDefined!5854 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241)))) (not (isEmpty!21756 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))))))))

(declare-fun bs!564030 () Bool)

(assert (= bs!564030 d!1019067))

(assert (=> bs!564030 m!3941411))

(declare-fun m!3944149 () Bool)

(assert (=> bs!564030 m!3944149))

(assert (=> d!1018595 d!1019067))

(assert (=> d!1018595 d!1018577))

(declare-fun d!1019069 () Bool)

(declare-fun e!2170878 () Bool)

(assert (=> d!1019069 e!2170878))

(declare-fun res!1414382 () Bool)

(assert (=> d!1019069 (=> (not res!1414382) (not e!2170878))))

(assert (=> d!1019069 (= res!1414382 (isDefined!5854 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241)))))))

(assert (=> d!1019069 true))

(declare-fun _$52!1950 () Unit!52870)

(assert (=> d!1019069 (= (choose!20340 thiss!18206 rules!2135 lt!1195070 separatorToken!241) _$52!1950)))

(declare-fun b!3506300 () Bool)

(declare-fun res!1414383 () Bool)

(assert (=> b!3506300 (=> (not res!1414383) (not e!2170878))))

(assert (=> b!3506300 (= res!1414383 (matchR!4811 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))))) (list!13629 (charsOf!3482 separatorToken!241))))))

(declare-fun b!3506301 () Bool)

(assert (=> b!3506301 (= e!2170878 (= (rule!8098 separatorToken!241) (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))))))))

(assert (= (and d!1019069 res!1414382) b!3506300))

(assert (= (and b!3506300 res!1414383) b!3506301))

(assert (=> d!1019069 m!3941411))

(assert (=> d!1019069 m!3941411))

(assert (=> d!1019069 m!3942847))

(assert (=> b!3506300 m!3941497))

(assert (=> b!3506300 m!3942851))

(assert (=> b!3506300 m!3941487))

(assert (=> b!3506300 m!3941497))

(assert (=> b!3506300 m!3941487))

(assert (=> b!3506300 m!3941411))

(assert (=> b!3506300 m!3942853))

(assert (=> b!3506300 m!3941411))

(assert (=> b!3506301 m!3941411))

(assert (=> b!3506301 m!3941411))

(assert (=> b!3506301 m!3942853))

(assert (=> d!1018595 d!1019069))

(assert (=> d!1018595 d!1018417))

(declare-fun b!3506302 () Bool)

(declare-fun e!2170879 () Bool)

(assert (=> b!3506302 (= e!2170879 (inv!15 (value!176298 (h!42727 (t!279242 tokens!494)))))))

(declare-fun b!3506303 () Bool)

(declare-fun res!1414384 () Bool)

(assert (=> b!3506303 (=> res!1414384 e!2170879)))

(assert (=> b!3506303 (= res!1414384 (not ((_ is IntegerValue!17096) (value!176298 (h!42727 (t!279242 tokens!494))))))))

(declare-fun e!2170880 () Bool)

(assert (=> b!3506303 (= e!2170880 e!2170879)))

(declare-fun b!3506304 () Bool)

(assert (=> b!3506304 (= e!2170880 (inv!17 (value!176298 (h!42727 (t!279242 tokens!494)))))))

(declare-fun d!1019071 () Bool)

(declare-fun c!603225 () Bool)

(assert (=> d!1019071 (= c!603225 ((_ is IntegerValue!17094) (value!176298 (h!42727 (t!279242 tokens!494)))))))

(declare-fun e!2170881 () Bool)

(assert (=> d!1019071 (= (inv!21 (value!176298 (h!42727 (t!279242 tokens!494)))) e!2170881)))

(declare-fun b!3506305 () Bool)

(assert (=> b!3506305 (= e!2170881 (inv!16 (value!176298 (h!42727 (t!279242 tokens!494)))))))

(declare-fun b!3506306 () Bool)

(assert (=> b!3506306 (= e!2170881 e!2170880)))

(declare-fun c!603224 () Bool)

(assert (=> b!3506306 (= c!603224 ((_ is IntegerValue!17095) (value!176298 (h!42727 (t!279242 tokens!494)))))))

(assert (= (and d!1019071 c!603225) b!3506305))

(assert (= (and d!1019071 (not c!603225)) b!3506306))

(assert (= (and b!3506306 c!603224) b!3506304))

(assert (= (and b!3506306 (not c!603224)) b!3506303))

(assert (= (and b!3506303 (not res!1414384)) b!3506302))

(declare-fun m!3944151 () Bool)

(assert (=> b!3506302 m!3944151))

(declare-fun m!3944153 () Bool)

(assert (=> b!3506304 m!3944153))

(declare-fun m!3944155 () Bool)

(assert (=> b!3506305 m!3944155))

(assert (=> b!3505486 d!1019071))

(assert (=> b!3504874 d!1018765))

(declare-fun b!3506317 () Bool)

(declare-fun e!2170887 () List!37429)

(declare-fun list!13636 (IArray!22627) List!37429)

(assert (=> b!3506317 (= e!2170887 (list!13636 (xs!14497 (c!602787 (charsOf!3482 (h!42727 (t!279242 tokens!494)))))))))

(declare-fun b!3506316 () Bool)

(declare-fun e!2170886 () List!37429)

(assert (=> b!3506316 (= e!2170886 e!2170887)))

(declare-fun c!603231 () Bool)

(assert (=> b!3506316 (= c!603231 ((_ is Leaf!17656) (c!602787 (charsOf!3482 (h!42727 (t!279242 tokens!494))))))))

(declare-fun b!3506315 () Bool)

(assert (=> b!3506315 (= e!2170886 Nil!37305)))

(declare-fun d!1019073 () Bool)

(declare-fun c!603230 () Bool)

(assert (=> d!1019073 (= c!603230 ((_ is Empty!11311) (c!602787 (charsOf!3482 (h!42727 (t!279242 tokens!494))))))))

(assert (=> d!1019073 (= (list!13632 (c!602787 (charsOf!3482 (h!42727 (t!279242 tokens!494))))) e!2170886)))

(declare-fun b!3506318 () Bool)

(assert (=> b!3506318 (= e!2170887 (++!9231 (list!13632 (left!29131 (c!602787 (charsOf!3482 (h!42727 (t!279242 tokens!494)))))) (list!13632 (right!29461 (c!602787 (charsOf!3482 (h!42727 (t!279242 tokens!494))))))))))

(assert (= (and d!1019073 c!603230) b!3506315))

(assert (= (and d!1019073 (not c!603230)) b!3506316))

(assert (= (and b!3506316 c!603231) b!3506317))

(assert (= (and b!3506316 (not c!603231)) b!3506318))

(declare-fun m!3944157 () Bool)

(assert (=> b!3506317 m!3944157))

(declare-fun m!3944159 () Bool)

(assert (=> b!3506318 m!3944159))

(declare-fun m!3944161 () Bool)

(assert (=> b!3506318 m!3944161))

(assert (=> b!3506318 m!3944159))

(assert (=> b!3506318 m!3944161))

(declare-fun m!3944163 () Bool)

(assert (=> b!3506318 m!3944163))

(assert (=> d!1018395 d!1019073))

(declare-fun d!1019075 () Bool)

(assert (=> d!1019075 (= (isEmpty!21756 lt!1195418) (not ((_ is Some!7592) lt!1195418)))))

(assert (=> d!1018577 d!1019075))

(assert (=> d!1018577 d!1018417))

(declare-fun d!1019077 () Bool)

(declare-fun lt!1195855 () Bool)

(assert (=> d!1019077 (= lt!1195855 (select (content!5247 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241))))) lt!1195073))))

(declare-fun e!2170888 () Bool)

(assert (=> d!1019077 (= lt!1195855 e!2170888)))

(declare-fun res!1414386 () Bool)

(assert (=> d!1019077 (=> (not res!1414386) (not e!2170888))))

(assert (=> d!1019077 (= res!1414386 ((_ is Cons!37305) (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241))))))))

(assert (=> d!1019077 (= (contains!6980 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241)))) lt!1195073) lt!1195855)))

(declare-fun b!3506319 () Bool)

(declare-fun e!2170889 () Bool)

(assert (=> b!3506319 (= e!2170888 e!2170889)))

(declare-fun res!1414385 () Bool)

(assert (=> b!3506319 (=> res!1414385 e!2170889)))

(assert (=> b!3506319 (= res!1414385 (= (h!42725 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241))))) lt!1195073))))

(declare-fun b!3506320 () Bool)

(assert (=> b!3506320 (= e!2170889 (contains!6980 (t!279240 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241))))) lt!1195073))))

(assert (= (and d!1019077 res!1414386) b!3506319))

(assert (= (and b!3506319 (not res!1414385)) b!3506320))

(declare-fun m!3944165 () Bool)

(assert (=> d!1019077 m!3944165))

(declare-fun m!3944167 () Bool)

(assert (=> d!1019077 m!3944167))

(declare-fun m!3944169 () Bool)

(assert (=> b!3506320 m!3944169))

(assert (=> b!3505369 d!1019077))

(declare-fun d!1019079 () Bool)

(declare-fun e!2170891 () Bool)

(assert (=> d!1019079 e!2170891))

(declare-fun res!1414388 () Bool)

(assert (=> d!1019079 (=> (not res!1414388) (not e!2170891))))

(declare-fun lt!1195856 () List!37429)

(assert (=> d!1019079 (= res!1414388 (= (content!5247 lt!1195856) ((_ map or) (content!5247 (t!279240 (++!9231 lt!1195062 lt!1195070))) (content!5247 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))))

(declare-fun e!2170890 () List!37429)

(assert (=> d!1019079 (= lt!1195856 e!2170890)))

(declare-fun c!603232 () Bool)

(assert (=> d!1019079 (= c!603232 ((_ is Nil!37305) (t!279240 (++!9231 lt!1195062 lt!1195070))))))

(assert (=> d!1019079 (= (++!9231 (t!279240 (++!9231 lt!1195062 lt!1195070)) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)) lt!1195856)))

(declare-fun b!3506322 () Bool)

(assert (=> b!3506322 (= e!2170890 (Cons!37305 (h!42725 (t!279240 (++!9231 lt!1195062 lt!1195070))) (++!9231 (t!279240 (t!279240 (++!9231 lt!1195062 lt!1195070))) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241))))))

(declare-fun b!3506321 () Bool)

(assert (=> b!3506321 (= e!2170890 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241))))

(declare-fun b!3506324 () Bool)

(assert (=> b!3506324 (= e!2170891 (or (not (= (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241) Nil!37305)) (= lt!1195856 (t!279240 (++!9231 lt!1195062 lt!1195070)))))))

(declare-fun b!3506323 () Bool)

(declare-fun res!1414387 () Bool)

(assert (=> b!3506323 (=> (not res!1414387) (not e!2170891))))

(assert (=> b!3506323 (= res!1414387 (= (size!28365 lt!1195856) (+ (size!28365 (t!279240 (++!9231 lt!1195062 lt!1195070))) (size!28365 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))))

(assert (= (and d!1019079 c!603232) b!3506321))

(assert (= (and d!1019079 (not c!603232)) b!3506322))

(assert (= (and d!1019079 res!1414388) b!3506323))

(assert (= (and b!3506323 res!1414387) b!3506324))

(declare-fun m!3944171 () Bool)

(assert (=> d!1019079 m!3944171))

(assert (=> d!1019079 m!3943917))

(assert (=> d!1019079 m!3941495))

(assert (=> d!1019079 m!3941903))

(assert (=> b!3506322 m!3941495))

(declare-fun m!3944173 () Bool)

(assert (=> b!3506322 m!3944173))

(declare-fun m!3944175 () Bool)

(assert (=> b!3506323 m!3944175))

(declare-fun m!3944177 () Bool)

(assert (=> b!3506323 m!3944177))

(assert (=> b!3506323 m!3941495))

(assert (=> b!3506323 m!3941911))

(assert (=> b!3504807 d!1019079))

(declare-fun b!3506325 () Bool)

(declare-fun e!2170897 () Bool)

(declare-fun lt!1195857 () Bool)

(assert (=> b!3506325 (= e!2170897 (not lt!1195857))))

(declare-fun b!3506326 () Bool)

(declare-fun res!1414395 () Bool)

(declare-fun e!2170894 () Bool)

(assert (=> b!3506326 (=> res!1414395 e!2170894)))

(declare-fun e!2170898 () Bool)

(assert (=> b!3506326 (= res!1414395 e!2170898)))

(declare-fun res!1414396 () Bool)

(assert (=> b!3506326 (=> (not res!1414396) (not e!2170898))))

(assert (=> b!3506326 (= res!1414396 lt!1195857)))

(declare-fun b!3506327 () Bool)

(declare-fun e!2170895 () Bool)

(assert (=> b!3506327 (= e!2170895 e!2170897)))

(declare-fun c!603233 () Bool)

(assert (=> b!3506327 (= c!603233 ((_ is EmptyLang!10227) (derivativeStep!3065 (regex!5468 (rule!8098 separatorToken!241)) (head!7371 lt!1195070))))))

(declare-fun b!3506328 () Bool)

(assert (=> b!3506328 (= e!2170898 (= (head!7371 (tail!5480 lt!1195070)) (c!602786 (derivativeStep!3065 (regex!5468 (rule!8098 separatorToken!241)) (head!7371 lt!1195070)))))))

(declare-fun b!3506329 () Bool)

(declare-fun res!1414391 () Bool)

(assert (=> b!3506329 (=> res!1414391 e!2170894)))

(assert (=> b!3506329 (= res!1414391 (not ((_ is ElementMatch!10227) (derivativeStep!3065 (regex!5468 (rule!8098 separatorToken!241)) (head!7371 lt!1195070)))))))

(assert (=> b!3506329 (= e!2170897 e!2170894)))

(declare-fun b!3506330 () Bool)

(declare-fun e!2170893 () Bool)

(assert (=> b!3506330 (= e!2170893 (nullable!3512 (derivativeStep!3065 (regex!5468 (rule!8098 separatorToken!241)) (head!7371 lt!1195070))))))

(declare-fun b!3506331 () Bool)

(declare-fun res!1414392 () Bool)

(assert (=> b!3506331 (=> (not res!1414392) (not e!2170898))))

(assert (=> b!3506331 (= res!1414392 (isEmpty!21746 (tail!5480 (tail!5480 lt!1195070))))))

(declare-fun b!3506332 () Bool)

(declare-fun e!2170896 () Bool)

(assert (=> b!3506332 (= e!2170896 (not (= (head!7371 (tail!5480 lt!1195070)) (c!602786 (derivativeStep!3065 (regex!5468 (rule!8098 separatorToken!241)) (head!7371 lt!1195070))))))))

(declare-fun b!3506333 () Bool)

(declare-fun e!2170892 () Bool)

(assert (=> b!3506333 (= e!2170894 e!2170892)))

(declare-fun res!1414389 () Bool)

(assert (=> b!3506333 (=> (not res!1414389) (not e!2170892))))

(assert (=> b!3506333 (= res!1414389 (not lt!1195857))))

(declare-fun b!3506334 () Bool)

(assert (=> b!3506334 (= e!2170893 (matchR!4811 (derivativeStep!3065 (derivativeStep!3065 (regex!5468 (rule!8098 separatorToken!241)) (head!7371 lt!1195070)) (head!7371 (tail!5480 lt!1195070))) (tail!5480 (tail!5480 lt!1195070))))))

(declare-fun b!3506335 () Bool)

(assert (=> b!3506335 (= e!2170892 e!2170896)))

(declare-fun res!1414390 () Bool)

(assert (=> b!3506335 (=> res!1414390 e!2170896)))

(declare-fun call!253145 () Bool)

(assert (=> b!3506335 (= res!1414390 call!253145)))

(declare-fun d!1019081 () Bool)

(assert (=> d!1019081 e!2170895))

(declare-fun c!603234 () Bool)

(assert (=> d!1019081 (= c!603234 ((_ is EmptyExpr!10227) (derivativeStep!3065 (regex!5468 (rule!8098 separatorToken!241)) (head!7371 lt!1195070))))))

(assert (=> d!1019081 (= lt!1195857 e!2170893)))

(declare-fun c!603235 () Bool)

(assert (=> d!1019081 (= c!603235 (isEmpty!21746 (tail!5480 lt!1195070)))))

(assert (=> d!1019081 (validRegex!4668 (derivativeStep!3065 (regex!5468 (rule!8098 separatorToken!241)) (head!7371 lt!1195070)))))

(assert (=> d!1019081 (= (matchR!4811 (derivativeStep!3065 (regex!5468 (rule!8098 separatorToken!241)) (head!7371 lt!1195070)) (tail!5480 lt!1195070)) lt!1195857)))

(declare-fun bm!253140 () Bool)

(assert (=> bm!253140 (= call!253145 (isEmpty!21746 (tail!5480 lt!1195070)))))

(declare-fun b!3506336 () Bool)

(declare-fun res!1414393 () Bool)

(assert (=> b!3506336 (=> (not res!1414393) (not e!2170898))))

(assert (=> b!3506336 (= res!1414393 (not call!253145))))

(declare-fun b!3506337 () Bool)

(declare-fun res!1414394 () Bool)

(assert (=> b!3506337 (=> res!1414394 e!2170896)))

(assert (=> b!3506337 (= res!1414394 (not (isEmpty!21746 (tail!5480 (tail!5480 lt!1195070)))))))

(declare-fun b!3506338 () Bool)

(assert (=> b!3506338 (= e!2170895 (= lt!1195857 call!253145))))

(assert (= (and d!1019081 c!603235) b!3506330))

(assert (= (and d!1019081 (not c!603235)) b!3506334))

(assert (= (and d!1019081 c!603234) b!3506338))

(assert (= (and d!1019081 (not c!603234)) b!3506327))

(assert (= (and b!3506327 c!603233) b!3506325))

(assert (= (and b!3506327 (not c!603233)) b!3506329))

(assert (= (and b!3506329 (not res!1414391)) b!3506326))

(assert (= (and b!3506326 res!1414396) b!3506336))

(assert (= (and b!3506336 res!1414393) b!3506331))

(assert (= (and b!3506331 res!1414392) b!3506328))

(assert (= (and b!3506326 (not res!1414395)) b!3506333))

(assert (= (and b!3506333 res!1414389) b!3506335))

(assert (= (and b!3506335 (not res!1414390)) b!3506337))

(assert (= (and b!3506337 (not res!1414394)) b!3506332))

(assert (= (or b!3506338 b!3506336 b!3506335) bm!253140))

(assert (=> b!3506337 m!3942023))

(declare-fun m!3944179 () Bool)

(assert (=> b!3506337 m!3944179))

(assert (=> b!3506337 m!3944179))

(declare-fun m!3944181 () Bool)

(assert (=> b!3506337 m!3944181))

(assert (=> b!3506330 m!3942059))

(declare-fun m!3944183 () Bool)

(assert (=> b!3506330 m!3944183))

(assert (=> b!3506334 m!3942023))

(declare-fun m!3944185 () Bool)

(assert (=> b!3506334 m!3944185))

(assert (=> b!3506334 m!3942059))

(assert (=> b!3506334 m!3944185))

(declare-fun m!3944187 () Bool)

(assert (=> b!3506334 m!3944187))

(assert (=> b!3506334 m!3942023))

(assert (=> b!3506334 m!3944179))

(assert (=> b!3506334 m!3944187))

(assert (=> b!3506334 m!3944179))

(declare-fun m!3944189 () Bool)

(assert (=> b!3506334 m!3944189))

(assert (=> bm!253140 m!3942023))

(assert (=> bm!253140 m!3942025))

(assert (=> b!3506332 m!3942023))

(assert (=> b!3506332 m!3944185))

(assert (=> b!3506328 m!3942023))

(assert (=> b!3506328 m!3944185))

(assert (=> d!1019081 m!3942023))

(assert (=> d!1019081 m!3942025))

(assert (=> d!1019081 m!3942059))

(declare-fun m!3944191 () Bool)

(assert (=> d!1019081 m!3944191))

(assert (=> b!3506331 m!3942023))

(assert (=> b!3506331 m!3944179))

(assert (=> b!3506331 m!3944179))

(assert (=> b!3506331 m!3944181))

(assert (=> b!3504930 d!1019081))

(declare-fun call!253147 () Regex!10227)

(declare-fun c!603238 () Bool)

(declare-fun bm!253141 () Bool)

(declare-fun c!603239 () Bool)

(assert (=> bm!253141 (= call!253147 (derivativeStep!3065 (ite c!603238 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (ite c!603239 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))) (head!7371 lt!1195070)))))

(declare-fun b!3506339 () Bool)

(declare-fun e!2170902 () Regex!10227)

(declare-fun e!2170903 () Regex!10227)

(assert (=> b!3506339 (= e!2170902 e!2170903)))

(assert (=> b!3506339 (= c!603239 ((_ is Star!10227) (regex!5468 (rule!8098 separatorToken!241))))))

(declare-fun b!3506340 () Bool)

(declare-fun e!2170899 () Regex!10227)

(declare-fun call!253146 () Regex!10227)

(assert (=> b!3506340 (= e!2170899 (Union!10227 (Concat!15925 call!253146 (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))) EmptyLang!10227))))

(declare-fun b!3506341 () Bool)

(declare-fun c!603236 () Bool)

(assert (=> b!3506341 (= c!603236 (nullable!3512 (regOne!20966 (regex!5468 (rule!8098 separatorToken!241)))))))

(assert (=> b!3506341 (= e!2170903 e!2170899)))

(declare-fun b!3506342 () Bool)

(declare-fun e!2170901 () Regex!10227)

(declare-fun e!2170900 () Regex!10227)

(assert (=> b!3506342 (= e!2170901 e!2170900)))

(declare-fun c!603240 () Bool)

(assert (=> b!3506342 (= c!603240 ((_ is ElementMatch!10227) (regex!5468 (rule!8098 separatorToken!241))))))

(declare-fun b!3506343 () Bool)

(assert (=> b!3506343 (= e!2170901 EmptyLang!10227)))

(declare-fun b!3506344 () Bool)

(assert (=> b!3506344 (= c!603238 ((_ is Union!10227) (regex!5468 (rule!8098 separatorToken!241))))))

(assert (=> b!3506344 (= e!2170900 e!2170902)))

(declare-fun b!3506345 () Bool)

(declare-fun call!253148 () Regex!10227)

(assert (=> b!3506345 (= e!2170899 (Union!10227 (Concat!15925 call!253146 (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))) call!253148))))

(declare-fun bm!253142 () Bool)

(declare-fun call!253149 () Regex!10227)

(assert (=> bm!253142 (= call!253149 call!253147)))

(declare-fun bm!253143 () Bool)

(assert (=> bm!253143 (= call!253146 call!253149)))

(declare-fun b!3506347 () Bool)

(assert (=> b!3506347 (= e!2170902 (Union!10227 call!253147 call!253148))))

(declare-fun b!3506348 () Bool)

(assert (=> b!3506348 (= e!2170903 (Concat!15925 call!253149 (regex!5468 (rule!8098 separatorToken!241))))))

(declare-fun bm!253144 () Bool)

(assert (=> bm!253144 (= call!253148 (derivativeStep!3065 (ite c!603238 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))) (head!7371 lt!1195070)))))

(declare-fun d!1019083 () Bool)

(declare-fun lt!1195858 () Regex!10227)

(assert (=> d!1019083 (validRegex!4668 lt!1195858)))

(assert (=> d!1019083 (= lt!1195858 e!2170901)))

(declare-fun c!603237 () Bool)

(assert (=> d!1019083 (= c!603237 (or ((_ is EmptyExpr!10227) (regex!5468 (rule!8098 separatorToken!241))) ((_ is EmptyLang!10227) (regex!5468 (rule!8098 separatorToken!241)))))))

(assert (=> d!1019083 (validRegex!4668 (regex!5468 (rule!8098 separatorToken!241)))))

(assert (=> d!1019083 (= (derivativeStep!3065 (regex!5468 (rule!8098 separatorToken!241)) (head!7371 lt!1195070)) lt!1195858)))

(declare-fun b!3506346 () Bool)

(assert (=> b!3506346 (= e!2170900 (ite (= (head!7371 lt!1195070) (c!602786 (regex!5468 (rule!8098 separatorToken!241)))) EmptyExpr!10227 EmptyLang!10227))))

(assert (= (and d!1019083 c!603237) b!3506343))

(assert (= (and d!1019083 (not c!603237)) b!3506342))

(assert (= (and b!3506342 c!603240) b!3506346))

(assert (= (and b!3506342 (not c!603240)) b!3506344))

(assert (= (and b!3506344 c!603238) b!3506347))

(assert (= (and b!3506344 (not c!603238)) b!3506339))

(assert (= (and b!3506339 c!603239) b!3506348))

(assert (= (and b!3506339 (not c!603239)) b!3506341))

(assert (= (and b!3506341 c!603236) b!3506345))

(assert (= (and b!3506341 (not c!603236)) b!3506340))

(assert (= (or b!3506345 b!3506340) bm!253143))

(assert (= (or b!3506348 bm!253143) bm!253142))

(assert (= (or b!3506347 bm!253142) bm!253141))

(assert (= (or b!3506347 b!3506345) bm!253144))

(assert (=> bm!253141 m!3941421))

(declare-fun m!3944193 () Bool)

(assert (=> bm!253141 m!3944193))

(declare-fun m!3944195 () Bool)

(assert (=> b!3506341 m!3944195))

(assert (=> bm!253144 m!3941421))

(declare-fun m!3944197 () Bool)

(assert (=> bm!253144 m!3944197))

(declare-fun m!3944199 () Bool)

(assert (=> d!1019083 m!3944199))

(assert (=> d!1019083 m!3942055))

(assert (=> b!3504930 d!1019083))

(assert (=> b!3504930 d!1018601))

(declare-fun d!1019085 () Bool)

(assert (=> d!1019085 (= (tail!5480 lt!1195070) (t!279240 lt!1195070))))

(assert (=> b!3504930 d!1019085))

(declare-fun d!1019087 () Bool)

(declare-fun e!2170905 () Bool)

(assert (=> d!1019087 e!2170905))

(declare-fun res!1414398 () Bool)

(assert (=> d!1019087 (=> (not res!1414398) (not e!2170905))))

(declare-fun lt!1195859 () List!37429)

(assert (=> d!1019087 (= res!1414398 (= (content!5247 lt!1195859) ((_ map or) (content!5247 (t!279240 lt!1195062)) (content!5247 Nil!37305))))))

(declare-fun e!2170904 () List!37429)

(assert (=> d!1019087 (= lt!1195859 e!2170904)))

(declare-fun c!603241 () Bool)

(assert (=> d!1019087 (= c!603241 ((_ is Nil!37305) (t!279240 lt!1195062)))))

(assert (=> d!1019087 (= (++!9231 (t!279240 lt!1195062) Nil!37305) lt!1195859)))

(declare-fun b!3506350 () Bool)

(assert (=> b!3506350 (= e!2170904 (Cons!37305 (h!42725 (t!279240 lt!1195062)) (++!9231 (t!279240 (t!279240 lt!1195062)) Nil!37305)))))

(declare-fun b!3506349 () Bool)

(assert (=> b!3506349 (= e!2170904 Nil!37305)))

(declare-fun b!3506352 () Bool)

(assert (=> b!3506352 (= e!2170905 (or (not (= Nil!37305 Nil!37305)) (= lt!1195859 (t!279240 lt!1195062))))))

(declare-fun b!3506351 () Bool)

(declare-fun res!1414397 () Bool)

(assert (=> b!3506351 (=> (not res!1414397) (not e!2170905))))

(assert (=> b!3506351 (= res!1414397 (= (size!28365 lt!1195859) (+ (size!28365 (t!279240 lt!1195062)) (size!28365 Nil!37305))))))

(assert (= (and d!1019087 c!603241) b!3506349))

(assert (= (and d!1019087 (not c!603241)) b!3506350))

(assert (= (and d!1019087 res!1414398) b!3506351))

(assert (= (and b!3506351 res!1414397) b!3506352))

(declare-fun m!3944201 () Bool)

(assert (=> d!1019087 m!3944201))

(assert (=> d!1019087 m!3943703))

(assert (=> d!1019087 m!3942071))

(declare-fun m!3944203 () Bool)

(assert (=> b!3506350 m!3944203))

(declare-fun m!3944205 () Bool)

(assert (=> b!3506351 m!3944205))

(assert (=> b!3506351 m!3943325))

(assert (=> b!3506351 m!3942077))

(assert (=> b!3504938 d!1019087))

(declare-fun d!1019089 () Bool)

(declare-fun lt!1195864 () BalanceConc!22236)

(assert (=> d!1019089 (= (list!13629 lt!1195864) (printListTailRec!712 thiss!18206 (dropList!1229 lt!1195078 (+ 0 1)) (list!13629 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195078 0))))))))

(declare-fun e!2170906 () BalanceConc!22236)

(assert (=> d!1019089 (= lt!1195864 e!2170906)))

(declare-fun c!603242 () Bool)

(assert (=> d!1019089 (= c!603242 (>= (+ 0 1) (size!28364 lt!1195078)))))

(declare-fun e!2170907 () Bool)

(assert (=> d!1019089 e!2170907))

(declare-fun res!1414399 () Bool)

(assert (=> d!1019089 (=> (not res!1414399) (not e!2170907))))

(assert (=> d!1019089 (= res!1414399 (>= (+ 0 1) 0))))

(assert (=> d!1019089 (= (printTailRec!1552 thiss!18206 lt!1195078 (+ 0 1) (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195078 0)))) lt!1195864)))

(declare-fun b!3506353 () Bool)

(assert (=> b!3506353 (= e!2170907 (<= (+ 0 1) (size!28364 lt!1195078)))))

(declare-fun b!3506354 () Bool)

(assert (=> b!3506354 (= e!2170906 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195078 0))))))

(declare-fun b!3506355 () Bool)

(assert (=> b!3506355 (= e!2170906 (printTailRec!1552 thiss!18206 lt!1195078 (+ 0 1 1) (++!9233 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195078 0))) (charsOf!3482 (apply!8864 lt!1195078 (+ 0 1))))))))

(declare-fun lt!1195865 () List!37431)

(assert (=> b!3506355 (= lt!1195865 (list!13633 lt!1195078))))

(declare-fun lt!1195866 () Unit!52870)

(assert (=> b!3506355 (= lt!1195866 (lemmaDropApply!1187 lt!1195865 (+ 0 1)))))

(assert (=> b!3506355 (= (head!7373 (drop!2041 lt!1195865 (+ 0 1))) (apply!8868 lt!1195865 (+ 0 1)))))

(declare-fun lt!1195863 () Unit!52870)

(assert (=> b!3506355 (= lt!1195863 lt!1195866)))

(declare-fun lt!1195861 () List!37431)

(assert (=> b!3506355 (= lt!1195861 (list!13633 lt!1195078))))

(declare-fun lt!1195862 () Unit!52870)

(assert (=> b!3506355 (= lt!1195862 (lemmaDropTail!1071 lt!1195861 (+ 0 1)))))

(assert (=> b!3506355 (= (tail!5481 (drop!2041 lt!1195861 (+ 0 1))) (drop!2041 lt!1195861 (+ 0 1 1)))))

(declare-fun lt!1195860 () Unit!52870)

(assert (=> b!3506355 (= lt!1195860 lt!1195862)))

(assert (= (and d!1019089 res!1414399) b!3506353))

(assert (= (and d!1019089 c!603242) b!3506354))

(assert (= (and d!1019089 (not c!603242)) b!3506355))

(declare-fun m!3944207 () Bool)

(assert (=> d!1019089 m!3944207))

(assert (=> d!1019089 m!3944207))

(declare-fun m!3944209 () Bool)

(assert (=> d!1019089 m!3944209))

(declare-fun m!3944211 () Bool)

(assert (=> d!1019089 m!3944211))

(declare-fun m!3944213 () Bool)

(assert (=> d!1019089 m!3944213))

(assert (=> d!1019089 m!3942161))

(assert (=> d!1019089 m!3942171))

(assert (=> d!1019089 m!3944209))

(assert (=> b!3506353 m!3942161))

(declare-fun m!3944215 () Bool)

(assert (=> b!3506355 m!3944215))

(declare-fun m!3944217 () Bool)

(assert (=> b!3506355 m!3944217))

(declare-fun m!3944219 () Bool)

(assert (=> b!3506355 m!3944219))

(assert (=> b!3506355 m!3944215))

(assert (=> b!3506355 m!3942171))

(declare-fun m!3944221 () Bool)

(assert (=> b!3506355 m!3944221))

(declare-fun m!3944223 () Bool)

(assert (=> b!3506355 m!3944223))

(assert (=> b!3506355 m!3944219))

(declare-fun m!3944225 () Bool)

(assert (=> b!3506355 m!3944225))

(declare-fun m!3944227 () Bool)

(assert (=> b!3506355 m!3944227))

(declare-fun m!3944229 () Bool)

(assert (=> b!3506355 m!3944229))

(declare-fun m!3944231 () Bool)

(assert (=> b!3506355 m!3944231))

(assert (=> b!3506355 m!3944223))

(declare-fun m!3944233 () Bool)

(assert (=> b!3506355 m!3944233))

(assert (=> b!3506355 m!3944229))

(assert (=> b!3506355 m!3944221))

(declare-fun m!3944235 () Bool)

(assert (=> b!3506355 m!3944235))

(assert (=> b!3506355 m!3942185))

(declare-fun m!3944237 () Bool)

(assert (=> b!3506355 m!3944237))

(assert (=> b!3504975 d!1019089))

(declare-fun d!1019091 () Bool)

(assert (=> d!1019091 (= (head!7373 (drop!2041 lt!1195235 0)) (h!42727 (drop!2041 lt!1195235 0)))))

(assert (=> b!3504975 d!1019091))

(declare-fun d!1019093 () Bool)

(assert (=> d!1019093 (= (head!7373 (drop!2041 lt!1195235 0)) (apply!8868 lt!1195235 0))))

(declare-fun lt!1195867 () Unit!52870)

(assert (=> d!1019093 (= lt!1195867 (choose!20351 lt!1195235 0))))

(declare-fun e!2170908 () Bool)

(assert (=> d!1019093 e!2170908))

(declare-fun res!1414400 () Bool)

(assert (=> d!1019093 (=> (not res!1414400) (not e!2170908))))

(assert (=> d!1019093 (= res!1414400 (>= 0 0))))

(assert (=> d!1019093 (= (lemmaDropApply!1187 lt!1195235 0) lt!1195867)))

(declare-fun b!3506356 () Bool)

(assert (=> b!3506356 (= e!2170908 (< 0 (size!28370 lt!1195235)))))

(assert (= (and d!1019093 res!1414400) b!3506356))

(assert (=> d!1019093 m!3942163))

(assert (=> d!1019093 m!3942163))

(assert (=> d!1019093 m!3942165))

(assert (=> d!1019093 m!3942183))

(declare-fun m!3944239 () Bool)

(assert (=> d!1019093 m!3944239))

(declare-fun m!3944241 () Bool)

(assert (=> b!3506356 m!3944241))

(assert (=> b!3504975 d!1019093))

(declare-fun d!1019095 () Bool)

(declare-fun lt!1195868 () BalanceConc!22236)

(assert (=> d!1019095 (= (list!13629 lt!1195868) (originalCharacters!6182 (apply!8864 lt!1195078 0)))))

(assert (=> d!1019095 (= lt!1195868 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195078 0)))) (value!176298 (apply!8864 lt!1195078 0))))))

(assert (=> d!1019095 (= (charsOf!3482 (apply!8864 lt!1195078 0)) lt!1195868)))

(declare-fun b_lambda!101991 () Bool)

(assert (=> (not b_lambda!101991) (not d!1019095)))

(declare-fun t!279450 () Bool)

(declare-fun tb!194523 () Bool)

(assert (=> (and b!3504516 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195078 0))))) t!279450) tb!194523))

(declare-fun b!3506357 () Bool)

(declare-fun e!2170909 () Bool)

(declare-fun tp!1084862 () Bool)

(assert (=> b!3506357 (= e!2170909 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195078 0)))) (value!176298 (apply!8864 lt!1195078 0))))) tp!1084862))))

(declare-fun result!238816 () Bool)

(assert (=> tb!194523 (= result!238816 (and (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195078 0)))) (value!176298 (apply!8864 lt!1195078 0)))) e!2170909))))

(assert (= tb!194523 b!3506357))

(declare-fun m!3944243 () Bool)

(assert (=> b!3506357 m!3944243))

(declare-fun m!3944245 () Bool)

(assert (=> tb!194523 m!3944245))

(assert (=> d!1019095 t!279450))

(declare-fun b_and!248895 () Bool)

(assert (= b_and!248885 (and (=> t!279450 result!238816) b_and!248895)))

(declare-fun tb!194525 () Bool)

(declare-fun t!279452 () Bool)

(assert (=> (and b!3504518 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195078 0))))) t!279452) tb!194525))

(declare-fun result!238818 () Bool)

(assert (= result!238818 result!238816))

(assert (=> d!1019095 t!279452))

(declare-fun b_and!248897 () Bool)

(assert (= b_and!248891 (and (=> t!279452 result!238818) b_and!248897)))

(declare-fun tb!194527 () Bool)

(declare-fun t!279454 () Bool)

(assert (=> (and b!3504500 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195078 0))))) t!279454) tb!194527))

(declare-fun result!238820 () Bool)

(assert (= result!238820 result!238816))

(assert (=> d!1019095 t!279454))

(declare-fun b_and!248899 () Bool)

(assert (= b_and!248889 (and (=> t!279454 result!238820) b_and!248899)))

(declare-fun tb!194529 () Bool)

(declare-fun t!279456 () Bool)

(assert (=> (and b!3505488 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195078 0))))) t!279456) tb!194529))

(declare-fun result!238822 () Bool)

(assert (= result!238822 result!238816))

(assert (=> d!1019095 t!279456))

(declare-fun b_and!248901 () Bool)

(assert (= b_and!248893 (and (=> t!279456 result!238822) b_and!248901)))

(declare-fun tb!194531 () Bool)

(declare-fun t!279458 () Bool)

(assert (=> (and b!3505469 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195078 0))))) t!279458) tb!194531))

(declare-fun result!238824 () Bool)

(assert (= result!238824 result!238816))

(assert (=> d!1019095 t!279458))

(declare-fun b_and!248903 () Bool)

(assert (= b_and!248887 (and (=> t!279458 result!238824) b_and!248903)))

(declare-fun m!3944247 () Bool)

(assert (=> d!1019095 m!3944247))

(declare-fun m!3944249 () Bool)

(assert (=> d!1019095 m!3944249))

(assert (=> b!3504975 d!1019095))

(declare-fun b!3506358 () Bool)

(declare-fun e!2170913 () List!37431)

(assert (=> b!3506358 (= e!2170913 Nil!37307)))

(declare-fun b!3506359 () Bool)

(declare-fun e!2170911 () Int)

(assert (=> b!3506359 (= e!2170911 0)))

(declare-fun b!3506360 () Bool)

(declare-fun e!2170914 () Int)

(assert (=> b!3506360 (= e!2170914 e!2170911)))

(declare-fun c!603246 () Bool)

(declare-fun call!253150 () Int)

(assert (=> b!3506360 (= c!603246 (>= 0 call!253150))))

(declare-fun b!3506361 () Bool)

(assert (=> b!3506361 (= e!2170911 (- call!253150 0))))

(declare-fun b!3506362 () Bool)

(assert (=> b!3506362 (= e!2170914 call!253150)))

(declare-fun b!3506363 () Bool)

(declare-fun e!2170910 () List!37431)

(assert (=> b!3506363 (= e!2170910 (drop!2041 (t!279242 lt!1195235) (- 0 1)))))

(declare-fun d!1019097 () Bool)

(declare-fun e!2170912 () Bool)

(assert (=> d!1019097 e!2170912))

(declare-fun res!1414401 () Bool)

(assert (=> d!1019097 (=> (not res!1414401) (not e!2170912))))

(declare-fun lt!1195869 () List!37431)

(assert (=> d!1019097 (= res!1414401 (= ((_ map implies) (content!5251 lt!1195869) (content!5251 lt!1195235)) ((as const (InoxSet Token!10302)) true)))))

(assert (=> d!1019097 (= lt!1195869 e!2170913)))

(declare-fun c!603243 () Bool)

(assert (=> d!1019097 (= c!603243 ((_ is Nil!37307) lt!1195235))))

(assert (=> d!1019097 (= (drop!2041 lt!1195235 0) lt!1195869)))

(declare-fun b!3506364 () Bool)

(assert (=> b!3506364 (= e!2170913 e!2170910)))

(declare-fun c!603244 () Bool)

(assert (=> b!3506364 (= c!603244 (<= 0 0))))

(declare-fun bm!253145 () Bool)

(assert (=> bm!253145 (= call!253150 (size!28370 lt!1195235))))

(declare-fun b!3506365 () Bool)

(assert (=> b!3506365 (= e!2170910 lt!1195235)))

(declare-fun b!3506366 () Bool)

(assert (=> b!3506366 (= e!2170912 (= (size!28370 lt!1195869) e!2170914))))

(declare-fun c!603245 () Bool)

(assert (=> b!3506366 (= c!603245 (<= 0 0))))

(assert (= (and d!1019097 c!603243) b!3506358))

(assert (= (and d!1019097 (not c!603243)) b!3506364))

(assert (= (and b!3506364 c!603244) b!3506365))

(assert (= (and b!3506364 (not c!603244)) b!3506363))

(assert (= (and d!1019097 res!1414401) b!3506366))

(assert (= (and b!3506366 c!603245) b!3506362))

(assert (= (and b!3506366 (not c!603245)) b!3506360))

(assert (= (and b!3506360 c!603246) b!3506359))

(assert (= (and b!3506360 (not c!603246)) b!3506361))

(assert (= (or b!3506362 b!3506360 b!3506361) bm!253145))

(declare-fun m!3944251 () Bool)

(assert (=> b!3506363 m!3944251))

(declare-fun m!3944253 () Bool)

(assert (=> d!1019097 m!3944253))

(declare-fun m!3944255 () Bool)

(assert (=> d!1019097 m!3944255))

(assert (=> bm!253145 m!3944241))

(declare-fun m!3944257 () Bool)

(assert (=> b!3506366 m!3944257))

(assert (=> b!3504975 d!1019097))

(declare-fun b!3506367 () Bool)

(declare-fun e!2170918 () List!37431)

(assert (=> b!3506367 (= e!2170918 Nil!37307)))

(declare-fun b!3506368 () Bool)

(declare-fun e!2170916 () Int)

(assert (=> b!3506368 (= e!2170916 0)))

(declare-fun b!3506369 () Bool)

(declare-fun e!2170919 () Int)

(assert (=> b!3506369 (= e!2170919 e!2170916)))

(declare-fun c!603250 () Bool)

(declare-fun call!253151 () Int)

(assert (=> b!3506369 (= c!603250 (>= 0 call!253151))))

(declare-fun b!3506370 () Bool)

(assert (=> b!3506370 (= e!2170916 (- call!253151 0))))

(declare-fun b!3506371 () Bool)

(assert (=> b!3506371 (= e!2170919 call!253151)))

(declare-fun b!3506372 () Bool)

(declare-fun e!2170915 () List!37431)

(assert (=> b!3506372 (= e!2170915 (drop!2041 (t!279242 lt!1195231) (- 0 1)))))

(declare-fun d!1019099 () Bool)

(declare-fun e!2170917 () Bool)

(assert (=> d!1019099 e!2170917))

(declare-fun res!1414402 () Bool)

(assert (=> d!1019099 (=> (not res!1414402) (not e!2170917))))

(declare-fun lt!1195870 () List!37431)

(assert (=> d!1019099 (= res!1414402 (= ((_ map implies) (content!5251 lt!1195870) (content!5251 lt!1195231)) ((as const (InoxSet Token!10302)) true)))))

(assert (=> d!1019099 (= lt!1195870 e!2170918)))

(declare-fun c!603247 () Bool)

(assert (=> d!1019099 (= c!603247 ((_ is Nil!37307) lt!1195231))))

(assert (=> d!1019099 (= (drop!2041 lt!1195231 0) lt!1195870)))

(declare-fun b!3506373 () Bool)

(assert (=> b!3506373 (= e!2170918 e!2170915)))

(declare-fun c!603248 () Bool)

(assert (=> b!3506373 (= c!603248 (<= 0 0))))

(declare-fun bm!253146 () Bool)

(assert (=> bm!253146 (= call!253151 (size!28370 lt!1195231))))

(declare-fun b!3506374 () Bool)

(assert (=> b!3506374 (= e!2170915 lt!1195231)))

(declare-fun b!3506375 () Bool)

(assert (=> b!3506375 (= e!2170917 (= (size!28370 lt!1195870) e!2170919))))

(declare-fun c!603249 () Bool)

(assert (=> b!3506375 (= c!603249 (<= 0 0))))

(assert (= (and d!1019099 c!603247) b!3506367))

(assert (= (and d!1019099 (not c!603247)) b!3506373))

(assert (= (and b!3506373 c!603248) b!3506374))

(assert (= (and b!3506373 (not c!603248)) b!3506372))

(assert (= (and d!1019099 res!1414402) b!3506375))

(assert (= (and b!3506375 c!603249) b!3506371))

(assert (= (and b!3506375 (not c!603249)) b!3506369))

(assert (= (and b!3506369 c!603250) b!3506368))

(assert (= (and b!3506369 (not c!603250)) b!3506370))

(assert (= (or b!3506371 b!3506369 b!3506370) bm!253146))

(declare-fun m!3944259 () Bool)

(assert (=> b!3506372 m!3944259))

(declare-fun m!3944261 () Bool)

(assert (=> d!1019099 m!3944261))

(declare-fun m!3944263 () Bool)

(assert (=> d!1019099 m!3944263))

(declare-fun m!3944265 () Bool)

(assert (=> bm!253146 m!3944265))

(declare-fun m!3944267 () Bool)

(assert (=> b!3506375 m!3944267))

(assert (=> b!3504975 d!1019099))

(declare-fun d!1019101 () Bool)

(declare-fun lt!1195871 () Token!10302)

(assert (=> d!1019101 (= lt!1195871 (apply!8868 (list!13633 lt!1195078) 0))))

(assert (=> d!1019101 (= lt!1195871 (apply!8869 (c!602788 lt!1195078) 0))))

(declare-fun e!2170920 () Bool)

(assert (=> d!1019101 e!2170920))

(declare-fun res!1414403 () Bool)

(assert (=> d!1019101 (=> (not res!1414403) (not e!2170920))))

(assert (=> d!1019101 (= res!1414403 (<= 0 0))))

(assert (=> d!1019101 (= (apply!8864 lt!1195078 0) lt!1195871)))

(declare-fun b!3506376 () Bool)

(assert (=> b!3506376 (= e!2170920 (< 0 (size!28364 lt!1195078)))))

(assert (= (and d!1019101 res!1414403) b!3506376))

(assert (=> d!1019101 m!3942185))

(assert (=> d!1019101 m!3942185))

(declare-fun m!3944269 () Bool)

(assert (=> d!1019101 m!3944269))

(declare-fun m!3944271 () Bool)

(assert (=> d!1019101 m!3944271))

(assert (=> b!3506376 m!3942161))

(assert (=> b!3504975 d!1019101))

(declare-fun d!1019103 () Bool)

(assert (=> d!1019103 (= (list!13633 lt!1195078) (list!13634 (c!602788 lt!1195078)))))

(declare-fun bs!564031 () Bool)

(assert (= bs!564031 d!1019103))

(assert (=> bs!564031 m!3943723))

(assert (=> b!3504975 d!1019103))

(declare-fun d!1019105 () Bool)

(assert (=> d!1019105 (= (tail!5481 (drop!2041 lt!1195231 0)) (drop!2041 lt!1195231 (+ 0 1)))))

(declare-fun lt!1195872 () Unit!52870)

(assert (=> d!1019105 (= lt!1195872 (choose!20349 lt!1195231 0))))

(declare-fun e!2170921 () Bool)

(assert (=> d!1019105 e!2170921))

(declare-fun res!1414404 () Bool)

(assert (=> d!1019105 (=> (not res!1414404) (not e!2170921))))

(assert (=> d!1019105 (= res!1414404 (>= 0 0))))

(assert (=> d!1019105 (= (lemmaDropTail!1071 lt!1195231 0) lt!1195872)))

(declare-fun b!3506377 () Bool)

(assert (=> b!3506377 (= e!2170921 (< 0 (size!28370 lt!1195231)))))

(assert (= (and d!1019105 res!1414404) b!3506377))

(assert (=> d!1019105 m!3942167))

(assert (=> d!1019105 m!3942167))

(assert (=> d!1019105 m!3942173))

(assert (=> d!1019105 m!3942175))

(declare-fun m!3944273 () Bool)

(assert (=> d!1019105 m!3944273))

(assert (=> b!3506377 m!3944265))

(assert (=> b!3504975 d!1019105))

(declare-fun b!3506378 () Bool)

(declare-fun e!2170925 () List!37431)

(assert (=> b!3506378 (= e!2170925 Nil!37307)))

(declare-fun b!3506379 () Bool)

(declare-fun e!2170923 () Int)

(assert (=> b!3506379 (= e!2170923 0)))

(declare-fun b!3506380 () Bool)

(declare-fun e!2170926 () Int)

(assert (=> b!3506380 (= e!2170926 e!2170923)))

(declare-fun c!603254 () Bool)

(declare-fun call!253152 () Int)

(assert (=> b!3506380 (= c!603254 (>= (+ 0 1) call!253152))))

(declare-fun b!3506381 () Bool)

(assert (=> b!3506381 (= e!2170923 (- call!253152 (+ 0 1)))))

(declare-fun b!3506382 () Bool)

(assert (=> b!3506382 (= e!2170926 call!253152)))

(declare-fun b!3506383 () Bool)

(declare-fun e!2170922 () List!37431)

(assert (=> b!3506383 (= e!2170922 (drop!2041 (t!279242 lt!1195231) (- (+ 0 1) 1)))))

(declare-fun d!1019107 () Bool)

(declare-fun e!2170924 () Bool)

(assert (=> d!1019107 e!2170924))

(declare-fun res!1414405 () Bool)

(assert (=> d!1019107 (=> (not res!1414405) (not e!2170924))))

(declare-fun lt!1195873 () List!37431)

(assert (=> d!1019107 (= res!1414405 (= ((_ map implies) (content!5251 lt!1195873) (content!5251 lt!1195231)) ((as const (InoxSet Token!10302)) true)))))

(assert (=> d!1019107 (= lt!1195873 e!2170925)))

(declare-fun c!603251 () Bool)

(assert (=> d!1019107 (= c!603251 ((_ is Nil!37307) lt!1195231))))

(assert (=> d!1019107 (= (drop!2041 lt!1195231 (+ 0 1)) lt!1195873)))

(declare-fun b!3506384 () Bool)

(assert (=> b!3506384 (= e!2170925 e!2170922)))

(declare-fun c!603252 () Bool)

(assert (=> b!3506384 (= c!603252 (<= (+ 0 1) 0))))

(declare-fun bm!253147 () Bool)

(assert (=> bm!253147 (= call!253152 (size!28370 lt!1195231))))

(declare-fun b!3506385 () Bool)

(assert (=> b!3506385 (= e!2170922 lt!1195231)))

(declare-fun b!3506386 () Bool)

(assert (=> b!3506386 (= e!2170924 (= (size!28370 lt!1195873) e!2170926))))

(declare-fun c!603253 () Bool)

(assert (=> b!3506386 (= c!603253 (<= (+ 0 1) 0))))

(assert (= (and d!1019107 c!603251) b!3506378))

(assert (= (and d!1019107 (not c!603251)) b!3506384))

(assert (= (and b!3506384 c!603252) b!3506385))

(assert (= (and b!3506384 (not c!603252)) b!3506383))

(assert (= (and d!1019107 res!1414405) b!3506386))

(assert (= (and b!3506386 c!603253) b!3506382))

(assert (= (and b!3506386 (not c!603253)) b!3506380))

(assert (= (and b!3506380 c!603254) b!3506379))

(assert (= (and b!3506380 (not c!603254)) b!3506381))

(assert (= (or b!3506382 b!3506380 b!3506381) bm!253147))

(declare-fun m!3944275 () Bool)

(assert (=> b!3506383 m!3944275))

(declare-fun m!3944277 () Bool)

(assert (=> d!1019107 m!3944277))

(assert (=> d!1019107 m!3944263))

(assert (=> bm!253147 m!3944265))

(declare-fun m!3944279 () Bool)

(assert (=> b!3506386 m!3944279))

(assert (=> b!3504975 d!1019107))

(declare-fun d!1019109 () Bool)

(declare-fun e!2170927 () Bool)

(assert (=> d!1019109 e!2170927))

(declare-fun res!1414409 () Bool)

(assert (=> d!1019109 (=> (not res!1414409) (not e!2170927))))

(assert (=> d!1019109 (= res!1414409 (appendAssocInst!812 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195078 0)))))))

(declare-fun lt!1195874 () BalanceConc!22236)

(assert (=> d!1019109 (= lt!1195874 (BalanceConc!22237 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195078 0))))))))

(assert (=> d!1019109 (= (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195078 0))) lt!1195874)))

(declare-fun b!3506389 () Bool)

(declare-fun res!1414406 () Bool)

(assert (=> b!3506389 (=> (not res!1414406) (not e!2170927))))

(assert (=> b!3506389 (= res!1414406 (>= (height!1715 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195078 0))))) (max!0 (height!1715 (c!602787 (BalanceConc!22237 Empty!11311))) (height!1715 (c!602787 (charsOf!3482 (apply!8864 lt!1195078 0)))))))))

(declare-fun b!3506387 () Bool)

(declare-fun res!1414407 () Bool)

(assert (=> b!3506387 (=> (not res!1414407) (not e!2170927))))

(assert (=> b!3506387 (= res!1414407 (isBalanced!3448 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195078 0))))))))

(declare-fun b!3506388 () Bool)

(declare-fun res!1414408 () Bool)

(assert (=> b!3506388 (=> (not res!1414408) (not e!2170927))))

(assert (=> b!3506388 (= res!1414408 (<= (height!1715 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195078 0))))) (+ (max!0 (height!1715 (c!602787 (BalanceConc!22237 Empty!11311))) (height!1715 (c!602787 (charsOf!3482 (apply!8864 lt!1195078 0))))) 1)))))

(declare-fun b!3506390 () Bool)

(assert (=> b!3506390 (= e!2170927 (= (list!13629 lt!1195874) (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (list!13629 (charsOf!3482 (apply!8864 lt!1195078 0))))))))

(assert (= (and d!1019109 res!1414409) b!3506387))

(assert (= (and b!3506387 res!1414407) b!3506388))

(assert (= (and b!3506388 res!1414408) b!3506389))

(assert (= (and b!3506389 res!1414406) b!3506390))

(declare-fun m!3944281 () Bool)

(assert (=> b!3506387 m!3944281))

(assert (=> b!3506387 m!3944281))

(declare-fun m!3944283 () Bool)

(assert (=> b!3506387 m!3944283))

(assert (=> b!3506388 m!3944077))

(declare-fun m!3944285 () Bool)

(assert (=> b!3506388 m!3944285))

(assert (=> b!3506388 m!3944077))

(assert (=> b!3506388 m!3944285))

(declare-fun m!3944287 () Bool)

(assert (=> b!3506388 m!3944287))

(assert (=> b!3506388 m!3944281))

(declare-fun m!3944289 () Bool)

(assert (=> b!3506388 m!3944289))

(assert (=> b!3506388 m!3944281))

(assert (=> b!3506389 m!3944077))

(assert (=> b!3506389 m!3944285))

(assert (=> b!3506389 m!3944077))

(assert (=> b!3506389 m!3944285))

(assert (=> b!3506389 m!3944287))

(assert (=> b!3506389 m!3944281))

(assert (=> b!3506389 m!3944289))

(assert (=> b!3506389 m!3944281))

(declare-fun m!3944291 () Bool)

(assert (=> d!1019109 m!3944291))

(assert (=> d!1019109 m!3944281))

(declare-fun m!3944293 () Bool)

(assert (=> b!3506390 m!3944293))

(assert (=> b!3506390 m!3942155))

(assert (=> b!3506390 m!3942169))

(declare-fun m!3944295 () Bool)

(assert (=> b!3506390 m!3944295))

(assert (=> b!3506390 m!3942155))

(assert (=> b!3506390 m!3944295))

(declare-fun m!3944297 () Bool)

(assert (=> b!3506390 m!3944297))

(assert (=> b!3504975 d!1019109))

(declare-fun d!1019111 () Bool)

(assert (=> d!1019111 (= (tail!5481 (drop!2041 lt!1195231 0)) (t!279242 (drop!2041 lt!1195231 0)))))

(assert (=> b!3504975 d!1019111))

(declare-fun d!1019113 () Bool)

(declare-fun lt!1195875 () Token!10302)

(assert (=> d!1019113 (contains!6982 lt!1195235 lt!1195875)))

(declare-fun e!2170929 () Token!10302)

(assert (=> d!1019113 (= lt!1195875 e!2170929)))

(declare-fun c!603255 () Bool)

(assert (=> d!1019113 (= c!603255 (= 0 0))))

(declare-fun e!2170928 () Bool)

(assert (=> d!1019113 e!2170928))

(declare-fun res!1414410 () Bool)

(assert (=> d!1019113 (=> (not res!1414410) (not e!2170928))))

(assert (=> d!1019113 (= res!1414410 (<= 0 0))))

(assert (=> d!1019113 (= (apply!8868 lt!1195235 0) lt!1195875)))

(declare-fun b!3506391 () Bool)

(assert (=> b!3506391 (= e!2170928 (< 0 (size!28370 lt!1195235)))))

(declare-fun b!3506392 () Bool)

(assert (=> b!3506392 (= e!2170929 (head!7373 lt!1195235))))

(declare-fun b!3506393 () Bool)

(assert (=> b!3506393 (= e!2170929 (apply!8868 (tail!5481 lt!1195235) (- 0 1)))))

(assert (= (and d!1019113 res!1414410) b!3506391))

(assert (= (and d!1019113 c!603255) b!3506392))

(assert (= (and d!1019113 (not c!603255)) b!3506393))

(declare-fun m!3944299 () Bool)

(assert (=> d!1019113 m!3944299))

(assert (=> b!3506391 m!3944241))

(declare-fun m!3944301 () Bool)

(assert (=> b!3506392 m!3944301))

(declare-fun m!3944303 () Bool)

(assert (=> b!3506393 m!3944303))

(assert (=> b!3506393 m!3944303))

(declare-fun m!3944305 () Bool)

(assert (=> b!3506393 m!3944305))

(assert (=> b!3504975 d!1019113))

(declare-fun d!1019115 () Bool)

(assert (=> d!1019115 (dynLambda!15854 lambda!122514 (h!42727 (t!279242 tokens!494)))))

(assert (=> d!1019115 true))

(declare-fun _$7!1345 () Unit!52870)

(assert (=> d!1019115 (= (choose!20337 tokens!494 lambda!122514 (h!42727 (t!279242 tokens!494))) _$7!1345)))

(declare-fun b_lambda!101993 () Bool)

(assert (=> (not b_lambda!101993) (not d!1019115)))

(declare-fun bs!564032 () Bool)

(assert (= bs!564032 d!1019115))

(assert (=> bs!564032 m!3942097))

(assert (=> d!1018437 d!1019115))

(assert (=> d!1018437 d!1018619))

(declare-fun d!1019117 () Bool)

(assert (=> d!1019117 (dynLambda!15854 lambda!122515 (h!42727 (t!279242 tokens!494)))))

(assert (=> d!1019117 true))

(declare-fun _$7!1346 () Unit!52870)

(assert (=> d!1019117 (= (choose!20337 tokens!494 lambda!122515 (h!42727 (t!279242 tokens!494))) _$7!1346)))

(declare-fun b_lambda!101995 () Bool)

(assert (=> (not b_lambda!101995) (not d!1019117)))

(declare-fun bs!564033 () Bool)

(assert (= bs!564033 d!1019117))

(assert (=> bs!564033 m!3942651))

(assert (=> d!1018545 d!1019117))

(declare-fun d!1019119 () Bool)

(declare-fun res!1414411 () Bool)

(declare-fun e!2170930 () Bool)

(assert (=> d!1019119 (=> res!1414411 e!2170930)))

(assert (=> d!1019119 (= res!1414411 ((_ is Nil!37307) tokens!494))))

(assert (=> d!1019119 (= (forall!8003 tokens!494 lambda!122515) e!2170930)))

(declare-fun b!3506394 () Bool)

(declare-fun e!2170931 () Bool)

(assert (=> b!3506394 (= e!2170930 e!2170931)))

(declare-fun res!1414412 () Bool)

(assert (=> b!3506394 (=> (not res!1414412) (not e!2170931))))

(assert (=> b!3506394 (= res!1414412 (dynLambda!15854 lambda!122515 (h!42727 tokens!494)))))

(declare-fun b!3506395 () Bool)

(assert (=> b!3506395 (= e!2170931 (forall!8003 (t!279242 tokens!494) lambda!122515))))

(assert (= (and d!1019119 (not res!1414411)) b!3506394))

(assert (= (and b!3506394 res!1414412) b!3506395))

(declare-fun b_lambda!101997 () Bool)

(assert (=> (not b_lambda!101997) (not b!3506394)))

(declare-fun m!3944307 () Bool)

(assert (=> b!3506394 m!3944307))

(declare-fun m!3944309 () Bool)

(assert (=> b!3506395 m!3944309))

(assert (=> d!1018545 d!1019119))

(declare-fun d!1019121 () Bool)

(declare-fun lt!1195888 () Bool)

(assert (=> d!1019121 (= lt!1195888 (isEmpty!21751 (list!13633 (_1!21690 lt!1195164))))))

(assert (=> d!1019121 (= lt!1195888 (isEmpty!21752 (c!602788 (_1!21690 lt!1195164))))))

(assert (=> d!1019121 (= (isEmpty!21747 (_1!21690 lt!1195164)) lt!1195888)))

(declare-fun bs!564034 () Bool)

(assert (= bs!564034 d!1019121))

(assert (=> bs!564034 m!3941853))

(assert (=> bs!564034 m!3941853))

(declare-fun m!3944311 () Bool)

(assert (=> bs!564034 m!3944311))

(declare-fun m!3944313 () Bool)

(assert (=> bs!564034 m!3944313))

(assert (=> b!3504772 d!1019121))

(declare-fun b!3506396 () Bool)

(declare-fun e!2170937 () Bool)

(declare-fun lt!1195889 () Bool)

(assert (=> b!3506396 (= e!2170937 (not lt!1195889))))

(declare-fun b!3506397 () Bool)

(declare-fun res!1414419 () Bool)

(declare-fun e!2170934 () Bool)

(assert (=> b!3506397 (=> res!1414419 e!2170934)))

(declare-fun e!2170938 () Bool)

(assert (=> b!3506397 (= res!1414419 e!2170938)))

(declare-fun res!1414420 () Bool)

(assert (=> b!3506397 (=> (not res!1414420) (not e!2170938))))

(assert (=> b!3506397 (= res!1414420 lt!1195889)))

(declare-fun b!3506398 () Bool)

(declare-fun e!2170935 () Bool)

(assert (=> b!3506398 (= e!2170935 e!2170937)))

(declare-fun c!603256 () Bool)

(assert (=> b!3506398 (= c!603256 ((_ is EmptyLang!10227) (derivativeStep!3065 (regex!5468 lt!1195076) (head!7371 lt!1195070))))))

(declare-fun b!3506399 () Bool)

(assert (=> b!3506399 (= e!2170938 (= (head!7371 (tail!5480 lt!1195070)) (c!602786 (derivativeStep!3065 (regex!5468 lt!1195076) (head!7371 lt!1195070)))))))

(declare-fun b!3506400 () Bool)

(declare-fun res!1414415 () Bool)

(assert (=> b!3506400 (=> res!1414415 e!2170934)))

(assert (=> b!3506400 (= res!1414415 (not ((_ is ElementMatch!10227) (derivativeStep!3065 (regex!5468 lt!1195076) (head!7371 lt!1195070)))))))

(assert (=> b!3506400 (= e!2170937 e!2170934)))

(declare-fun b!3506401 () Bool)

(declare-fun e!2170933 () Bool)

(assert (=> b!3506401 (= e!2170933 (nullable!3512 (derivativeStep!3065 (regex!5468 lt!1195076) (head!7371 lt!1195070))))))

(declare-fun b!3506402 () Bool)

(declare-fun res!1414416 () Bool)

(assert (=> b!3506402 (=> (not res!1414416) (not e!2170938))))

(assert (=> b!3506402 (= res!1414416 (isEmpty!21746 (tail!5480 (tail!5480 lt!1195070))))))

(declare-fun b!3506403 () Bool)

(declare-fun e!2170936 () Bool)

(assert (=> b!3506403 (= e!2170936 (not (= (head!7371 (tail!5480 lt!1195070)) (c!602786 (derivativeStep!3065 (regex!5468 lt!1195076) (head!7371 lt!1195070))))))))

(declare-fun b!3506404 () Bool)

(declare-fun e!2170932 () Bool)

(assert (=> b!3506404 (= e!2170934 e!2170932)))

(declare-fun res!1414413 () Bool)

(assert (=> b!3506404 (=> (not res!1414413) (not e!2170932))))

(assert (=> b!3506404 (= res!1414413 (not lt!1195889))))

(declare-fun b!3506405 () Bool)

(assert (=> b!3506405 (= e!2170933 (matchR!4811 (derivativeStep!3065 (derivativeStep!3065 (regex!5468 lt!1195076) (head!7371 lt!1195070)) (head!7371 (tail!5480 lt!1195070))) (tail!5480 (tail!5480 lt!1195070))))))

(declare-fun b!3506406 () Bool)

(assert (=> b!3506406 (= e!2170932 e!2170936)))

(declare-fun res!1414414 () Bool)

(assert (=> b!3506406 (=> res!1414414 e!2170936)))

(declare-fun call!253153 () Bool)

(assert (=> b!3506406 (= res!1414414 call!253153)))

(declare-fun d!1019123 () Bool)

(assert (=> d!1019123 e!2170935))

(declare-fun c!603257 () Bool)

(assert (=> d!1019123 (= c!603257 ((_ is EmptyExpr!10227) (derivativeStep!3065 (regex!5468 lt!1195076) (head!7371 lt!1195070))))))

(assert (=> d!1019123 (= lt!1195889 e!2170933)))

(declare-fun c!603258 () Bool)

(assert (=> d!1019123 (= c!603258 (isEmpty!21746 (tail!5480 lt!1195070)))))

(assert (=> d!1019123 (validRegex!4668 (derivativeStep!3065 (regex!5468 lt!1195076) (head!7371 lt!1195070)))))

(assert (=> d!1019123 (= (matchR!4811 (derivativeStep!3065 (regex!5468 lt!1195076) (head!7371 lt!1195070)) (tail!5480 lt!1195070)) lt!1195889)))

(declare-fun bm!253148 () Bool)

(assert (=> bm!253148 (= call!253153 (isEmpty!21746 (tail!5480 lt!1195070)))))

(declare-fun b!3506407 () Bool)

(declare-fun res!1414417 () Bool)

(assert (=> b!3506407 (=> (not res!1414417) (not e!2170938))))

(assert (=> b!3506407 (= res!1414417 (not call!253153))))

(declare-fun b!3506408 () Bool)

(declare-fun res!1414418 () Bool)

(assert (=> b!3506408 (=> res!1414418 e!2170936)))

(assert (=> b!3506408 (= res!1414418 (not (isEmpty!21746 (tail!5480 (tail!5480 lt!1195070)))))))

(declare-fun b!3506409 () Bool)

(assert (=> b!3506409 (= e!2170935 (= lt!1195889 call!253153))))

(assert (= (and d!1019123 c!603258) b!3506401))

(assert (= (and d!1019123 (not c!603258)) b!3506405))

(assert (= (and d!1019123 c!603257) b!3506409))

(assert (= (and d!1019123 (not c!603257)) b!3506398))

(assert (= (and b!3506398 c!603256) b!3506396))

(assert (= (and b!3506398 (not c!603256)) b!3506400))

(assert (= (and b!3506400 (not res!1414415)) b!3506397))

(assert (= (and b!3506397 res!1414420) b!3506407))

(assert (= (and b!3506407 res!1414417) b!3506402))

(assert (= (and b!3506402 res!1414416) b!3506399))

(assert (= (and b!3506397 (not res!1414419)) b!3506404))

(assert (= (and b!3506404 res!1414413) b!3506406))

(assert (= (and b!3506406 (not res!1414414)) b!3506408))

(assert (= (and b!3506408 (not res!1414418)) b!3506403))

(assert (= (or b!3506409 b!3506407 b!3506406) bm!253148))

(assert (=> b!3506408 m!3942023))

(assert (=> b!3506408 m!3944179))

(assert (=> b!3506408 m!3944179))

(assert (=> b!3506408 m!3944181))

(assert (=> b!3506401 m!3942029))

(declare-fun m!3944315 () Bool)

(assert (=> b!3506401 m!3944315))

(assert (=> b!3506405 m!3942023))

(assert (=> b!3506405 m!3944185))

(assert (=> b!3506405 m!3942029))

(assert (=> b!3506405 m!3944185))

(declare-fun m!3944317 () Bool)

(assert (=> b!3506405 m!3944317))

(assert (=> b!3506405 m!3942023))

(assert (=> b!3506405 m!3944179))

(assert (=> b!3506405 m!3944317))

(assert (=> b!3506405 m!3944179))

(declare-fun m!3944319 () Bool)

(assert (=> b!3506405 m!3944319))

(assert (=> bm!253148 m!3942023))

(assert (=> bm!253148 m!3942025))

(assert (=> b!3506403 m!3942023))

(assert (=> b!3506403 m!3944185))

(assert (=> b!3506399 m!3942023))

(assert (=> b!3506399 m!3944185))

(assert (=> d!1019123 m!3942023))

(assert (=> d!1019123 m!3942025))

(assert (=> d!1019123 m!3942029))

(declare-fun m!3944321 () Bool)

(assert (=> d!1019123 m!3944321))

(assert (=> b!3506402 m!3942023))

(assert (=> b!3506402 m!3944179))

(assert (=> b!3506402 m!3944179))

(assert (=> b!3506402 m!3944181))

(assert (=> b!3504909 d!1019123))

(declare-fun bm!253149 () Bool)

(declare-fun c!603266 () Bool)

(declare-fun c!603265 () Bool)

(declare-fun call!253155 () Regex!10227)

(assert (=> bm!253149 (= call!253155 (derivativeStep!3065 (ite c!603265 (regOne!20967 (regex!5468 lt!1195076)) (ite c!603266 (reg!10556 (regex!5468 lt!1195076)) (regOne!20966 (regex!5468 lt!1195076)))) (head!7371 lt!1195070)))))

(declare-fun b!3506418 () Bool)

(declare-fun e!2170946 () Regex!10227)

(declare-fun e!2170947 () Regex!10227)

(assert (=> b!3506418 (= e!2170946 e!2170947)))

(assert (=> b!3506418 (= c!603266 ((_ is Star!10227) (regex!5468 lt!1195076)))))

(declare-fun b!3506419 () Bool)

(declare-fun e!2170942 () Regex!10227)

(declare-fun call!253154 () Regex!10227)

(assert (=> b!3506419 (= e!2170942 (Union!10227 (Concat!15925 call!253154 (regTwo!20966 (regex!5468 lt!1195076))) EmptyLang!10227))))

(declare-fun b!3506420 () Bool)

(declare-fun c!603261 () Bool)

(assert (=> b!3506420 (= c!603261 (nullable!3512 (regOne!20966 (regex!5468 lt!1195076))))))

(assert (=> b!3506420 (= e!2170947 e!2170942)))

(declare-fun b!3506421 () Bool)

(declare-fun e!2170945 () Regex!10227)

(declare-fun e!2170944 () Regex!10227)

(assert (=> b!3506421 (= e!2170945 e!2170944)))

(declare-fun c!603267 () Bool)

(assert (=> b!3506421 (= c!603267 ((_ is ElementMatch!10227) (regex!5468 lt!1195076)))))

(declare-fun b!3506422 () Bool)

(assert (=> b!3506422 (= e!2170945 EmptyLang!10227)))

(declare-fun b!3506423 () Bool)

(assert (=> b!3506423 (= c!603265 ((_ is Union!10227) (regex!5468 lt!1195076)))))

(assert (=> b!3506423 (= e!2170944 e!2170946)))

(declare-fun b!3506424 () Bool)

(declare-fun call!253156 () Regex!10227)

(assert (=> b!3506424 (= e!2170942 (Union!10227 (Concat!15925 call!253154 (regTwo!20966 (regex!5468 lt!1195076))) call!253156))))

(declare-fun bm!253150 () Bool)

(declare-fun call!253157 () Regex!10227)

(assert (=> bm!253150 (= call!253157 call!253155)))

(declare-fun bm!253151 () Bool)

(assert (=> bm!253151 (= call!253154 call!253157)))

(declare-fun b!3506426 () Bool)

(assert (=> b!3506426 (= e!2170946 (Union!10227 call!253155 call!253156))))

(declare-fun b!3506427 () Bool)

(assert (=> b!3506427 (= e!2170947 (Concat!15925 call!253157 (regex!5468 lt!1195076)))))

(declare-fun bm!253152 () Bool)

(assert (=> bm!253152 (= call!253156 (derivativeStep!3065 (ite c!603265 (regTwo!20967 (regex!5468 lt!1195076)) (regTwo!20966 (regex!5468 lt!1195076))) (head!7371 lt!1195070)))))

(declare-fun d!1019125 () Bool)

(declare-fun lt!1195906 () Regex!10227)

(assert (=> d!1019125 (validRegex!4668 lt!1195906)))

(assert (=> d!1019125 (= lt!1195906 e!2170945)))

(declare-fun c!603263 () Bool)

(assert (=> d!1019125 (= c!603263 (or ((_ is EmptyExpr!10227) (regex!5468 lt!1195076)) ((_ is EmptyLang!10227) (regex!5468 lt!1195076))))))

(assert (=> d!1019125 (validRegex!4668 (regex!5468 lt!1195076))))

(assert (=> d!1019125 (= (derivativeStep!3065 (regex!5468 lt!1195076) (head!7371 lt!1195070)) lt!1195906)))

(declare-fun b!3506425 () Bool)

(assert (=> b!3506425 (= e!2170944 (ite (= (head!7371 lt!1195070) (c!602786 (regex!5468 lt!1195076))) EmptyExpr!10227 EmptyLang!10227))))

(assert (= (and d!1019125 c!603263) b!3506422))

(assert (= (and d!1019125 (not c!603263)) b!3506421))

(assert (= (and b!3506421 c!603267) b!3506425))

(assert (= (and b!3506421 (not c!603267)) b!3506423))

(assert (= (and b!3506423 c!603265) b!3506426))

(assert (= (and b!3506423 (not c!603265)) b!3506418))

(assert (= (and b!3506418 c!603266) b!3506427))

(assert (= (and b!3506418 (not c!603266)) b!3506420))

(assert (= (and b!3506420 c!603261) b!3506424))

(assert (= (and b!3506420 (not c!603261)) b!3506419))

(assert (= (or b!3506424 b!3506419) bm!253151))

(assert (= (or b!3506427 bm!253151) bm!253150))

(assert (= (or b!3506426 bm!253150) bm!253149))

(assert (= (or b!3506426 b!3506424) bm!253152))

(assert (=> bm!253149 m!3941421))

(declare-fun m!3944323 () Bool)

(assert (=> bm!253149 m!3944323))

(declare-fun m!3944325 () Bool)

(assert (=> b!3506420 m!3944325))

(assert (=> bm!253152 m!3941421))

(declare-fun m!3944327 () Bool)

(assert (=> bm!253152 m!3944327))

(declare-fun m!3944329 () Bool)

(assert (=> d!1019125 m!3944329))

(assert (=> d!1019125 m!3942035))

(assert (=> b!3504909 d!1019125))

(assert (=> b!3504909 d!1018601))

(assert (=> b!3504909 d!1019085))

(declare-fun d!1019127 () Bool)

(assert (=> d!1019127 (= (list!13633 lt!1195308) (list!13634 (c!602788 lt!1195308)))))

(declare-fun bs!564035 () Bool)

(assert (= bs!564035 d!1019127))

(declare-fun m!3944331 () Bool)

(assert (=> bs!564035 m!3944331))

(assert (=> d!1018487 d!1019127))

(declare-fun d!1019129 () Bool)

(declare-fun e!2170954 () Bool)

(assert (=> d!1019129 e!2170954))

(declare-fun res!1414425 () Bool)

(assert (=> d!1019129 (=> (not res!1414425) (not e!2170954))))

(declare-fun lt!1195949 () BalanceConc!22238)

(assert (=> d!1019129 (= res!1414425 (= (list!13633 lt!1195949) (Cons!37307 separatorToken!241 Nil!37307)))))

(declare-fun choose!20354 (Token!10302) BalanceConc!22238)

(assert (=> d!1019129 (= lt!1195949 (choose!20354 separatorToken!241))))

(assert (=> d!1019129 (= (singleton!1144 separatorToken!241) lt!1195949)))

(declare-fun b!3506436 () Bool)

(assert (=> b!3506436 (= e!2170954 (isBalanced!3447 (c!602788 lt!1195949)))))

(assert (= (and d!1019129 res!1414425) b!3506436))

(declare-fun m!3944333 () Bool)

(assert (=> d!1019129 m!3944333))

(declare-fun m!3944335 () Bool)

(assert (=> d!1019129 m!3944335))

(declare-fun m!3944337 () Bool)

(assert (=> b!3506436 m!3944337))

(assert (=> d!1018487 d!1019129))

(declare-fun d!1019131 () Bool)

(declare-fun lt!1195950 () Bool)

(assert (=> d!1019131 (= lt!1195950 (isEmpty!21751 (list!13633 (_1!21690 lt!1195353))))))

(assert (=> d!1019131 (= lt!1195950 (isEmpty!21752 (c!602788 (_1!21690 lt!1195353))))))

(assert (=> d!1019131 (= (isEmpty!21747 (_1!21690 lt!1195353)) lt!1195950)))

(declare-fun bs!564036 () Bool)

(assert (= bs!564036 d!1019131))

(assert (=> bs!564036 m!3942557))

(assert (=> bs!564036 m!3942557))

(declare-fun m!3944339 () Bool)

(assert (=> bs!564036 m!3944339))

(declare-fun m!3944341 () Bool)

(assert (=> bs!564036 m!3944341))

(assert (=> b!3505162 d!1019131))

(declare-fun d!1019133 () Bool)

(declare-fun res!1414426 () Bool)

(declare-fun e!2170955 () Bool)

(assert (=> d!1019133 (=> (not res!1414426) (not e!2170955))))

(assert (=> d!1019133 (= res!1414426 (rulesValid!2067 thiss!18206 (t!279241 rules!2135)))))

(assert (=> d!1019133 (= (rulesInvariant!4454 thiss!18206 (t!279241 rules!2135)) e!2170955)))

(declare-fun b!3506437 () Bool)

(assert (=> b!3506437 (= e!2170955 (noDuplicateTag!2063 thiss!18206 (t!279241 rules!2135) Nil!37309))))

(assert (= (and d!1019133 res!1414426) b!3506437))

(declare-fun m!3944343 () Bool)

(assert (=> d!1019133 m!3944343))

(declare-fun m!3944345 () Bool)

(assert (=> b!3506437 m!3944345))

(assert (=> b!3505338 d!1019133))

(declare-fun d!1019135 () Bool)

(assert (=> d!1019135 (rulesInvariant!4454 thiss!18206 (t!279241 rules!2135))))

(declare-fun lt!1195953 () Unit!52870)

(declare-fun choose!20355 (LexerInterface!5057 Rule!10736 List!37430) Unit!52870)

(assert (=> d!1019135 (= lt!1195953 (choose!20355 thiss!18206 (h!42726 rules!2135) (t!279241 rules!2135)))))

(assert (=> d!1019135 (rulesInvariant!4454 thiss!18206 (Cons!37306 (h!42726 rules!2135) (t!279241 rules!2135)))))

(assert (=> d!1019135 (= (lemmaInvariantOnRulesThenOnTail!456 thiss!18206 (h!42726 rules!2135) (t!279241 rules!2135)) lt!1195953)))

(declare-fun bs!564037 () Bool)

(assert (= bs!564037 d!1019135))

(assert (=> bs!564037 m!3942629))

(declare-fun m!3944347 () Bool)

(assert (=> bs!564037 m!3944347))

(declare-fun m!3944349 () Bool)

(assert (=> bs!564037 m!3944349))

(assert (=> b!3505338 d!1019135))

(declare-fun b!3506438 () Bool)

(declare-fun e!2170956 () Option!7593)

(assert (=> b!3506438 (= e!2170956 (Some!7592 (h!42726 (t!279241 rules!2135))))))

(declare-fun d!1019137 () Bool)

(declare-fun e!2170957 () Bool)

(assert (=> d!1019137 e!2170957))

(declare-fun res!1414427 () Bool)

(assert (=> d!1019137 (=> res!1414427 e!2170957)))

(declare-fun lt!1195954 () Option!7593)

(assert (=> d!1019137 (= res!1414427 (isEmpty!21756 lt!1195954))))

(assert (=> d!1019137 (= lt!1195954 e!2170956)))

(declare-fun c!603270 () Bool)

(assert (=> d!1019137 (= c!603270 (and ((_ is Cons!37306) (t!279241 rules!2135)) (= (tag!6100 (h!42726 (t!279241 rules!2135))) (tag!6100 (rule!8098 separatorToken!241)))))))

(assert (=> d!1019137 (rulesInvariant!4454 thiss!18206 (t!279241 rules!2135))))

(assert (=> d!1019137 (= (getRuleFromTag!1111 thiss!18206 (t!279241 rules!2135) (tag!6100 (rule!8098 separatorToken!241))) lt!1195954)))

(declare-fun b!3506439 () Bool)

(declare-fun e!2170958 () Bool)

(assert (=> b!3506439 (= e!2170957 e!2170958)))

(declare-fun res!1414428 () Bool)

(assert (=> b!3506439 (=> (not res!1414428) (not e!2170958))))

(assert (=> b!3506439 (= res!1414428 (contains!6979 (t!279241 rules!2135) (get!11969 lt!1195954)))))

(declare-fun b!3506440 () Bool)

(declare-fun e!2170959 () Option!7593)

(assert (=> b!3506440 (= e!2170956 e!2170959)))

(declare-fun c!603271 () Bool)

(assert (=> b!3506440 (= c!603271 (and ((_ is Cons!37306) (t!279241 rules!2135)) (not (= (tag!6100 (h!42726 (t!279241 rules!2135))) (tag!6100 (rule!8098 separatorToken!241))))))))

(declare-fun b!3506441 () Bool)

(assert (=> b!3506441 (= e!2170959 None!7592)))

(declare-fun b!3506442 () Bool)

(assert (=> b!3506442 (= e!2170958 (= (tag!6100 (get!11969 lt!1195954)) (tag!6100 (rule!8098 separatorToken!241))))))

(declare-fun b!3506443 () Bool)

(declare-fun lt!1195956 () Unit!52870)

(declare-fun lt!1195955 () Unit!52870)

(assert (=> b!3506443 (= lt!1195956 lt!1195955)))

(assert (=> b!3506443 (rulesInvariant!4454 thiss!18206 (t!279241 (t!279241 rules!2135)))))

(assert (=> b!3506443 (= lt!1195955 (lemmaInvariantOnRulesThenOnTail!456 thiss!18206 (h!42726 (t!279241 rules!2135)) (t!279241 (t!279241 rules!2135))))))

(assert (=> b!3506443 (= e!2170959 (getRuleFromTag!1111 thiss!18206 (t!279241 (t!279241 rules!2135)) (tag!6100 (rule!8098 separatorToken!241))))))

(assert (= (and d!1019137 c!603270) b!3506438))

(assert (= (and d!1019137 (not c!603270)) b!3506440))

(assert (= (and b!3506440 c!603271) b!3506443))

(assert (= (and b!3506440 (not c!603271)) b!3506441))

(assert (= (and d!1019137 (not res!1414427)) b!3506439))

(assert (= (and b!3506439 res!1414428) b!3506442))

(declare-fun m!3944351 () Bool)

(assert (=> d!1019137 m!3944351))

(assert (=> d!1019137 m!3942629))

(declare-fun m!3944353 () Bool)

(assert (=> b!3506439 m!3944353))

(assert (=> b!3506439 m!3944353))

(declare-fun m!3944355 () Bool)

(assert (=> b!3506439 m!3944355))

(assert (=> b!3506442 m!3944353))

(declare-fun m!3944357 () Bool)

(assert (=> b!3506443 m!3944357))

(declare-fun m!3944359 () Bool)

(assert (=> b!3506443 m!3944359))

(declare-fun m!3944361 () Bool)

(assert (=> b!3506443 m!3944361))

(assert (=> b!3505338 d!1019137))

(declare-fun b!3506446 () Bool)

(declare-fun e!2170961 () List!37429)

(assert (=> b!3506446 (= e!2170961 (list!13636 (xs!14497 (c!602787 lt!1195080))))))

(declare-fun b!3506445 () Bool)

(declare-fun e!2170960 () List!37429)

(assert (=> b!3506445 (= e!2170960 e!2170961)))

(declare-fun c!603273 () Bool)

(assert (=> b!3506445 (= c!603273 ((_ is Leaf!17656) (c!602787 lt!1195080)))))

(declare-fun b!3506444 () Bool)

(assert (=> b!3506444 (= e!2170960 Nil!37305)))

(declare-fun d!1019139 () Bool)

(declare-fun c!603272 () Bool)

(assert (=> d!1019139 (= c!603272 ((_ is Empty!11311) (c!602787 lt!1195080)))))

(assert (=> d!1019139 (= (list!13632 (c!602787 lt!1195080)) e!2170960)))

(declare-fun b!3506447 () Bool)

(assert (=> b!3506447 (= e!2170961 (++!9231 (list!13632 (left!29131 (c!602787 lt!1195080))) (list!13632 (right!29461 (c!602787 lt!1195080)))))))

(assert (= (and d!1019139 c!603272) b!3506444))

(assert (= (and d!1019139 (not c!603272)) b!3506445))

(assert (= (and b!3506445 c!603273) b!3506446))

(assert (= (and b!3506445 (not c!603273)) b!3506447))

(declare-fun m!3944363 () Bool)

(assert (=> b!3506446 m!3944363))

(declare-fun m!3944365 () Bool)

(assert (=> b!3506447 m!3944365))

(declare-fun m!3944367 () Bool)

(assert (=> b!3506447 m!3944367))

(assert (=> b!3506447 m!3944365))

(assert (=> b!3506447 m!3944367))

(declare-fun m!3944369 () Bool)

(assert (=> b!3506447 m!3944369))

(assert (=> d!1018629 d!1019139))

(declare-fun d!1019141 () Bool)

(assert (=> d!1019141 (= (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241))) (isBalanced!3448 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241)))))))

(declare-fun bs!564038 () Bool)

(assert (= bs!564038 d!1019141))

(declare-fun m!3944371 () Bool)

(assert (=> bs!564038 m!3944371))

(assert (=> tb!194367 d!1019141))

(declare-fun d!1019143 () Bool)

(declare-fun e!2170963 () Bool)

(assert (=> d!1019143 e!2170963))

(declare-fun res!1414430 () Bool)

(assert (=> d!1019143 (=> (not res!1414430) (not e!2170963))))

(declare-fun lt!1195957 () List!37429)

(assert (=> d!1019143 (= res!1414430 (= (content!5247 lt!1195957) ((_ map or) (content!5247 (t!279240 lt!1195055)) (content!5247 lt!1195070))))))

(declare-fun e!2170962 () List!37429)

(assert (=> d!1019143 (= lt!1195957 e!2170962)))

(declare-fun c!603274 () Bool)

(assert (=> d!1019143 (= c!603274 ((_ is Nil!37305) (t!279240 lt!1195055)))))

(assert (=> d!1019143 (= (++!9231 (t!279240 lt!1195055) lt!1195070) lt!1195957)))

(declare-fun b!3506449 () Bool)

(assert (=> b!3506449 (= e!2170962 (Cons!37305 (h!42725 (t!279240 lt!1195055)) (++!9231 (t!279240 (t!279240 lt!1195055)) lt!1195070)))))

(declare-fun b!3506448 () Bool)

(assert (=> b!3506448 (= e!2170962 lt!1195070)))

(declare-fun b!3506451 () Bool)

(assert (=> b!3506451 (= e!2170963 (or (not (= lt!1195070 Nil!37305)) (= lt!1195957 (t!279240 lt!1195055))))))

(declare-fun b!3506450 () Bool)

(declare-fun res!1414429 () Bool)

(assert (=> b!3506450 (=> (not res!1414429) (not e!2170963))))

(assert (=> b!3506450 (= res!1414429 (= (size!28365 lt!1195957) (+ (size!28365 (t!279240 lt!1195055)) (size!28365 lt!1195070))))))

(assert (= (and d!1019143 c!603274) b!3506448))

(assert (= (and d!1019143 (not c!603274)) b!3506449))

(assert (= (and d!1019143 res!1414430) b!3506450))

(assert (= (and b!3506450 res!1414429) b!3506451))

(declare-fun m!3944373 () Bool)

(assert (=> d!1019143 m!3944373))

(assert (=> d!1019143 m!3943369))

(assert (=> d!1019143 m!3941887))

(declare-fun m!3944375 () Bool)

(assert (=> b!3506449 m!3944375))

(declare-fun m!3944377 () Bool)

(assert (=> b!3506450 m!3944377))

(assert (=> b!3506450 m!3942573))

(assert (=> b!3506450 m!3941895))

(assert (=> b!3504958 d!1019143))

(declare-fun d!1019145 () Bool)

(declare-fun e!2170965 () Bool)

(assert (=> d!1019145 e!2170965))

(declare-fun res!1414432 () Bool)

(assert (=> d!1019145 (=> (not res!1414432) (not e!2170965))))

(declare-fun lt!1195958 () List!37429)

(assert (=> d!1019145 (= res!1414432 (= (content!5247 lt!1195958) ((_ map or) (content!5247 (list!13629 (charsOf!3482 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))))) (content!5247 (printList!1605 thiss!18206 (t!279242 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))))))

(declare-fun e!2170964 () List!37429)

(assert (=> d!1019145 (= lt!1195958 e!2170964)))

(declare-fun c!603275 () Bool)

(assert (=> d!1019145 (= c!603275 ((_ is Nil!37305) (list!13629 (charsOf!3482 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))))))))

(assert (=> d!1019145 (= (++!9231 (list!13629 (charsOf!3482 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))) (printList!1605 thiss!18206 (t!279242 (Cons!37307 (h!42727 tokens!494) Nil!37307)))) lt!1195958)))

(declare-fun b!3506453 () Bool)

(assert (=> b!3506453 (= e!2170964 (Cons!37305 (h!42725 (list!13629 (charsOf!3482 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))))) (++!9231 (t!279240 (list!13629 (charsOf!3482 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))))) (printList!1605 thiss!18206 (t!279242 (Cons!37307 (h!42727 tokens!494) Nil!37307))))))))

(declare-fun b!3506452 () Bool)

(assert (=> b!3506452 (= e!2170964 (printList!1605 thiss!18206 (t!279242 (Cons!37307 (h!42727 tokens!494) Nil!37307))))))

(declare-fun b!3506455 () Bool)

(assert (=> b!3506455 (= e!2170965 (or (not (= (printList!1605 thiss!18206 (t!279242 (Cons!37307 (h!42727 tokens!494) Nil!37307))) Nil!37305)) (= lt!1195958 (list!13629 (charsOf!3482 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))))))

(declare-fun b!3506454 () Bool)

(declare-fun res!1414431 () Bool)

(assert (=> b!3506454 (=> (not res!1414431) (not e!2170965))))

(assert (=> b!3506454 (= res!1414431 (= (size!28365 lt!1195958) (+ (size!28365 (list!13629 (charsOf!3482 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))))) (size!28365 (printList!1605 thiss!18206 (t!279242 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))))))

(assert (= (and d!1019145 c!603275) b!3506452))

(assert (= (and d!1019145 (not c!603275)) b!3506453))

(assert (= (and d!1019145 res!1414432) b!3506454))

(assert (= (and b!3506454 res!1414431) b!3506455))

(declare-fun m!3944379 () Bool)

(assert (=> d!1019145 m!3944379))

(assert (=> d!1019145 m!3942961))

(declare-fun m!3944381 () Bool)

(assert (=> d!1019145 m!3944381))

(assert (=> d!1019145 m!3942963))

(declare-fun m!3944383 () Bool)

(assert (=> d!1019145 m!3944383))

(assert (=> b!3506453 m!3942963))

(declare-fun m!3944385 () Bool)

(assert (=> b!3506453 m!3944385))

(declare-fun m!3944387 () Bool)

(assert (=> b!3506454 m!3944387))

(assert (=> b!3506454 m!3942961))

(declare-fun m!3944389 () Bool)

(assert (=> b!3506454 m!3944389))

(assert (=> b!3506454 m!3942963))

(declare-fun m!3944391 () Bool)

(assert (=> b!3506454 m!3944391))

(assert (=> b!3505410 d!1019145))

(declare-fun d!1019147 () Bool)

(assert (=> d!1019147 (= (list!13629 (charsOf!3482 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))) (list!13632 (c!602787 (charsOf!3482 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))))))))

(declare-fun bs!564039 () Bool)

(assert (= bs!564039 d!1019147))

(declare-fun m!3944393 () Bool)

(assert (=> bs!564039 m!3944393))

(assert (=> b!3505410 d!1019147))

(declare-fun d!1019149 () Bool)

(declare-fun lt!1195959 () BalanceConc!22236)

(assert (=> d!1019149 (= (list!13629 lt!1195959) (originalCharacters!6182 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))))))

(assert (=> d!1019149 (= lt!1195959 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))))) (value!176298 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))))

(assert (=> d!1019149 (= (charsOf!3482 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))) lt!1195959)))

(declare-fun b_lambda!101999 () Bool)

(assert (=> (not b_lambda!101999) (not d!1019149)))

(declare-fun tb!194533 () Bool)

(declare-fun t!279461 () Bool)

(assert (=> (and b!3505469 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))) t!279461) tb!194533))

(declare-fun b!3506456 () Bool)

(declare-fun e!2170966 () Bool)

(declare-fun tp!1084863 () Bool)

(assert (=> b!3506456 (= e!2170966 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))))) (value!176298 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))) tp!1084863))))

(declare-fun result!238826 () Bool)

(assert (=> tb!194533 (= result!238826 (and (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))))) (value!176298 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307))))) e!2170966))))

(assert (= tb!194533 b!3506456))

(declare-fun m!3944395 () Bool)

(assert (=> b!3506456 m!3944395))

(declare-fun m!3944397 () Bool)

(assert (=> tb!194533 m!3944397))

(assert (=> d!1019149 t!279461))

(declare-fun b_and!248905 () Bool)

(assert (= b_and!248903 (and (=> t!279461 result!238826) b_and!248905)))

(declare-fun t!279463 () Bool)

(declare-fun tb!194535 () Bool)

(assert (=> (and b!3505488 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))) t!279463) tb!194535))

(declare-fun result!238828 () Bool)

(assert (= result!238828 result!238826))

(assert (=> d!1019149 t!279463))

(declare-fun b_and!248907 () Bool)

(assert (= b_and!248901 (and (=> t!279463 result!238828) b_and!248907)))

(declare-fun t!279465 () Bool)

(declare-fun tb!194537 () Bool)

(assert (=> (and b!3504516 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))) t!279465) tb!194537))

(declare-fun result!238830 () Bool)

(assert (= result!238830 result!238826))

(assert (=> d!1019149 t!279465))

(declare-fun b_and!248909 () Bool)

(assert (= b_and!248895 (and (=> t!279465 result!238830) b_and!248909)))

(declare-fun tb!194539 () Bool)

(declare-fun t!279467 () Bool)

(assert (=> (and b!3504518 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))) t!279467) tb!194539))

(declare-fun result!238832 () Bool)

(assert (= result!238832 result!238826))

(assert (=> d!1019149 t!279467))

(declare-fun b_and!248911 () Bool)

(assert (= b_and!248897 (and (=> t!279467 result!238832) b_and!248911)))

(declare-fun t!279469 () Bool)

(declare-fun tb!194541 () Bool)

(assert (=> (and b!3504500 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))) t!279469) tb!194541))

(declare-fun result!238834 () Bool)

(assert (= result!238834 result!238826))

(assert (=> d!1019149 t!279469))

(declare-fun b_and!248913 () Bool)

(assert (= b_and!248899 (and (=> t!279469 result!238834) b_and!248913)))

(declare-fun m!3944399 () Bool)

(assert (=> d!1019149 m!3944399))

(declare-fun m!3944401 () Bool)

(assert (=> d!1019149 m!3944401))

(assert (=> b!3505410 d!1019149))

(declare-fun d!1019151 () Bool)

(declare-fun c!603276 () Bool)

(assert (=> d!1019151 (= c!603276 ((_ is Cons!37307) (t!279242 (Cons!37307 (h!42727 tokens!494) Nil!37307))))))

(declare-fun e!2170967 () List!37429)

(assert (=> d!1019151 (= (printList!1605 thiss!18206 (t!279242 (Cons!37307 (h!42727 tokens!494) Nil!37307))) e!2170967)))

(declare-fun b!3506457 () Bool)

(assert (=> b!3506457 (= e!2170967 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 (Cons!37307 (h!42727 tokens!494) Nil!37307))))) (printList!1605 thiss!18206 (t!279242 (t!279242 (Cons!37307 (h!42727 tokens!494) Nil!37307))))))))

(declare-fun b!3506458 () Bool)

(assert (=> b!3506458 (= e!2170967 Nil!37305)))

(assert (= (and d!1019151 c!603276) b!3506457))

(assert (= (and d!1019151 (not c!603276)) b!3506458))

(declare-fun m!3944403 () Bool)

(assert (=> b!3506457 m!3944403))

(assert (=> b!3506457 m!3944403))

(declare-fun m!3944405 () Bool)

(assert (=> b!3506457 m!3944405))

(declare-fun m!3944407 () Bool)

(assert (=> b!3506457 m!3944407))

(assert (=> b!3506457 m!3944405))

(assert (=> b!3506457 m!3944407))

(declare-fun m!3944409 () Bool)

(assert (=> b!3506457 m!3944409))

(assert (=> b!3505410 d!1019151))

(declare-fun d!1019153 () Bool)

(declare-fun lt!1195994 () Int)

(assert (=> d!1019153 (= lt!1195994 (size!28365 (list!13629 (_2!21690 lt!1195417))))))

(assert (=> d!1019153 (= lt!1195994 (size!28372 (c!602787 (_2!21690 lt!1195417))))))

(assert (=> d!1019153 (= (size!28367 (_2!21690 lt!1195417)) lt!1195994)))

(declare-fun bs!564040 () Bool)

(assert (= bs!564040 d!1019153))

(assert (=> bs!564040 m!3942809))

(assert (=> bs!564040 m!3942809))

(declare-fun m!3944411 () Bool)

(assert (=> bs!564040 m!3944411))

(declare-fun m!3944413 () Bool)

(assert (=> bs!564040 m!3944413))

(assert (=> b!3505326 d!1019153))

(declare-fun d!1019155 () Bool)

(declare-fun lt!1195995 () Int)

(assert (=> d!1019155 (= lt!1195995 (size!28365 (list!13629 lt!1195075)))))

(assert (=> d!1019155 (= lt!1195995 (size!28372 (c!602787 lt!1195075)))))

(assert (=> d!1019155 (= (size!28367 lt!1195075) lt!1195995)))

(declare-fun bs!564041 () Bool)

(assert (= bs!564041 d!1019155))

(assert (=> bs!564041 m!3942799))

(assert (=> bs!564041 m!3942799))

(declare-fun m!3944415 () Bool)

(assert (=> bs!564041 m!3944415))

(declare-fun m!3944417 () Bool)

(assert (=> bs!564041 m!3944417))

(assert (=> b!3505326 d!1019155))

(declare-fun d!1019157 () Bool)

(declare-fun lt!1195996 () Int)

(assert (=> d!1019157 (>= lt!1195996 0)))

(declare-fun e!2170972 () Int)

(assert (=> d!1019157 (= lt!1195996 e!2170972)))

(declare-fun c!603280 () Bool)

(assert (=> d!1019157 (= c!603280 ((_ is Nil!37305) (_2!21691 (get!11971 lt!1195339))))))

(assert (=> d!1019157 (= (size!28365 (_2!21691 (get!11971 lt!1195339))) lt!1195996)))

(declare-fun b!3506466 () Bool)

(assert (=> b!3506466 (= e!2170972 0)))

(declare-fun b!3506467 () Bool)

(assert (=> b!3506467 (= e!2170972 (+ 1 (size!28365 (t!279240 (_2!21691 (get!11971 lt!1195339))))))))

(assert (= (and d!1019157 c!603280) b!3506466))

(assert (= (and d!1019157 (not c!603280)) b!3506467))

(declare-fun m!3944419 () Bool)

(assert (=> b!3506467 m!3944419))

(assert (=> b!3505135 d!1019157))

(assert (=> b!3505135 d!1018901))

(declare-fun d!1019159 () Bool)

(declare-fun lt!1195997 () Int)

(assert (=> d!1019159 (>= lt!1195997 0)))

(declare-fun e!2170973 () Int)

(assert (=> d!1019159 (= lt!1195997 e!2170973)))

(declare-fun c!603281 () Bool)

(assert (=> d!1019159 (= c!603281 ((_ is Nil!37305) lt!1195077))))

(assert (=> d!1019159 (= (size!28365 lt!1195077) lt!1195997)))

(declare-fun b!3506468 () Bool)

(assert (=> b!3506468 (= e!2170973 0)))

(declare-fun b!3506469 () Bool)

(assert (=> b!3506469 (= e!2170973 (+ 1 (size!28365 (t!279240 lt!1195077))))))

(assert (= (and d!1019159 c!603281) b!3506468))

(assert (= (and d!1019159 (not c!603281)) b!3506469))

(declare-fun m!3944421 () Bool)

(assert (=> b!3506469 m!3944421))

(assert (=> b!3505135 d!1019159))

(assert (=> bm!252966 d!1018325))

(assert (=> d!1018625 d!1018385))

(declare-fun d!1019161 () Bool)

(assert (=> d!1019161 (= (++!9231 (++!9231 lt!1195055 lt!1195070) lt!1195084) (++!9231 lt!1195055 (++!9231 lt!1195070 lt!1195084)))))

(assert (=> d!1019161 true))

(declare-fun _$52!1953 () Unit!52870)

(assert (=> d!1019161 (= (choose!20346 lt!1195055 lt!1195070 lt!1195084) _$52!1953)))

(declare-fun bs!564042 () Bool)

(assert (= bs!564042 d!1019161))

(assert (=> bs!564042 m!3941479))

(assert (=> bs!564042 m!3941479))

(assert (=> bs!564042 m!3941481))

(assert (=> bs!564042 m!3941493))

(assert (=> bs!564042 m!3941493))

(assert (=> bs!564042 m!3942911))

(assert (=> d!1018625 d!1019161))

(assert (=> d!1018625 d!1018447))

(assert (=> d!1018625 d!1018449))

(declare-fun d!1019163 () Bool)

(declare-fun e!2170975 () Bool)

(assert (=> d!1019163 e!2170975))

(declare-fun res!1414435 () Bool)

(assert (=> d!1019163 (=> (not res!1414435) (not e!2170975))))

(declare-fun lt!1195998 () List!37429)

(assert (=> d!1019163 (= res!1414435 (= (content!5247 lt!1195998) ((_ map or) (content!5247 lt!1195055) (content!5247 (++!9231 lt!1195070 lt!1195084)))))))

(declare-fun e!2170974 () List!37429)

(assert (=> d!1019163 (= lt!1195998 e!2170974)))

(declare-fun c!603282 () Bool)

(assert (=> d!1019163 (= c!603282 ((_ is Nil!37305) lt!1195055))))

(assert (=> d!1019163 (= (++!9231 lt!1195055 (++!9231 lt!1195070 lt!1195084)) lt!1195998)))

(declare-fun b!3506471 () Bool)

(assert (=> b!3506471 (= e!2170974 (Cons!37305 (h!42725 lt!1195055) (++!9231 (t!279240 lt!1195055) (++!9231 lt!1195070 lt!1195084))))))

(declare-fun b!3506470 () Bool)

(assert (=> b!3506470 (= e!2170974 (++!9231 lt!1195070 lt!1195084))))

(declare-fun b!3506473 () Bool)

(assert (=> b!3506473 (= e!2170975 (or (not (= (++!9231 lt!1195070 lt!1195084) Nil!37305)) (= lt!1195998 lt!1195055)))))

(declare-fun b!3506472 () Bool)

(declare-fun res!1414434 () Bool)

(assert (=> b!3506472 (=> (not res!1414434) (not e!2170975))))

(assert (=> b!3506472 (= res!1414434 (= (size!28365 lt!1195998) (+ (size!28365 lt!1195055) (size!28365 (++!9231 lt!1195070 lt!1195084)))))))

(assert (= (and d!1019163 c!603282) b!3506470))

(assert (= (and d!1019163 (not c!603282)) b!3506471))

(assert (= (and d!1019163 res!1414435) b!3506472))

(assert (= (and b!3506472 res!1414434) b!3506473))

(declare-fun m!3944467 () Bool)

(assert (=> d!1019163 m!3944467))

(assert (=> d!1019163 m!3942137))

(assert (=> d!1019163 m!3941493))

(declare-fun m!3944471 () Bool)

(assert (=> d!1019163 m!3944471))

(assert (=> b!3506471 m!3941493))

(declare-fun m!3944473 () Bool)

(assert (=> b!3506471 m!3944473))

(declare-fun m!3944477 () Bool)

(assert (=> b!3506472 m!3944477))

(assert (=> b!3506472 m!3941467))

(assert (=> b!3506472 m!3941493))

(declare-fun m!3944479 () Bool)

(assert (=> b!3506472 m!3944479))

(assert (=> d!1018625 d!1019163))

(declare-fun d!1019165 () Bool)

(declare-fun lt!1195999 () Token!10302)

(assert (=> d!1019165 (= lt!1195999 (apply!8868 (list!13633 (_1!21690 lt!1195184)) 0))))

(assert (=> d!1019165 (= lt!1195999 (apply!8869 (c!602788 (_1!21690 lt!1195184)) 0))))

(declare-fun e!2170976 () Bool)

(assert (=> d!1019165 e!2170976))

(declare-fun res!1414436 () Bool)

(assert (=> d!1019165 (=> (not res!1414436) (not e!2170976))))

(assert (=> d!1019165 (= res!1414436 (<= 0 0))))

(assert (=> d!1019165 (= (apply!8864 (_1!21690 lt!1195184) 0) lt!1195999)))

(declare-fun b!3506474 () Bool)

(assert (=> b!3506474 (= e!2170976 (< 0 (size!28364 (_1!21690 lt!1195184))))))

(assert (= (and d!1019165 res!1414436) b!3506474))

(declare-fun m!3944495 () Bool)

(assert (=> d!1019165 m!3944495))

(assert (=> d!1019165 m!3944495))

(declare-fun m!3944497 () Bool)

(assert (=> d!1019165 m!3944497))

(declare-fun m!3944499 () Bool)

(assert (=> d!1019165 m!3944499))

(assert (=> b!3506474 m!3941985))

(assert (=> b!3504840 d!1019165))

(declare-fun d!1019167 () Bool)

(assert (=> d!1019167 (= (list!13629 lt!1195372) (list!13632 (c!602787 lt!1195372)))))

(declare-fun bs!564043 () Bool)

(assert (= bs!564043 d!1019167))

(declare-fun m!3944507 () Bool)

(assert (=> bs!564043 m!3944507))

(assert (=> d!1018533 d!1019167))

(declare-fun d!1019169 () Bool)

(declare-fun c!603283 () Bool)

(assert (=> d!1019169 (= c!603283 ((_ is Cons!37307) (list!13633 lt!1195078)))))

(declare-fun e!2170977 () List!37429)

(assert (=> d!1019169 (= (printList!1605 thiss!18206 (list!13633 lt!1195078)) e!2170977)))

(declare-fun b!3506475 () Bool)

(assert (=> b!3506475 (= e!2170977 (++!9231 (list!13629 (charsOf!3482 (h!42727 (list!13633 lt!1195078)))) (printList!1605 thiss!18206 (t!279242 (list!13633 lt!1195078)))))))

(declare-fun b!3506476 () Bool)

(assert (=> b!3506476 (= e!2170977 Nil!37305)))

(assert (= (and d!1019169 c!603283) b!3506475))

(assert (= (and d!1019169 (not c!603283)) b!3506476))

(declare-fun m!3944513 () Bool)

(assert (=> b!3506475 m!3944513))

(assert (=> b!3506475 m!3944513))

(declare-fun m!3944517 () Bool)

(assert (=> b!3506475 m!3944517))

(declare-fun m!3944521 () Bool)

(assert (=> b!3506475 m!3944521))

(assert (=> b!3506475 m!3944517))

(assert (=> b!3506475 m!3944521))

(declare-fun m!3944527 () Bool)

(assert (=> b!3506475 m!3944527))

(assert (=> d!1018533 d!1019169))

(assert (=> d!1018533 d!1019103))

(assert (=> d!1018533 d!1018453))

(declare-fun d!1019171 () Bool)

(declare-fun c!603284 () Bool)

(assert (=> d!1019171 (= c!603284 ((_ is Nil!37305) lt!1195212))))

(declare-fun e!2170978 () (InoxSet C!20640))

(assert (=> d!1019171 (= (content!5247 lt!1195212) e!2170978)))

(declare-fun b!3506477 () Bool)

(assert (=> b!3506477 (= e!2170978 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506478 () Bool)

(assert (=> b!3506478 (= e!2170978 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195212) true) (content!5247 (t!279240 lt!1195212))))))

(assert (= (and d!1019171 c!603284) b!3506477))

(assert (= (and d!1019171 (not c!603284)) b!3506478))

(declare-fun m!3944537 () Bool)

(assert (=> b!3506478 m!3944537))

(declare-fun m!3944539 () Bool)

(assert (=> b!3506478 m!3944539))

(assert (=> d!1018449 d!1019171))

(declare-fun d!1019175 () Bool)

(declare-fun c!603285 () Bool)

(assert (=> d!1019175 (= c!603285 ((_ is Nil!37305) lt!1195055))))

(declare-fun e!2170979 () (InoxSet C!20640))

(assert (=> d!1019175 (= (content!5247 lt!1195055) e!2170979)))

(declare-fun b!3506479 () Bool)

(assert (=> b!3506479 (= e!2170979 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506480 () Bool)

(assert (=> b!3506480 (= e!2170979 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195055) true) (content!5247 (t!279240 lt!1195055))))))

(assert (= (and d!1019175 c!603285) b!3506479))

(assert (= (and d!1019175 (not c!603285)) b!3506480))

(declare-fun m!3944541 () Bool)

(assert (=> b!3506480 m!3944541))

(assert (=> b!3506480 m!3943369))

(assert (=> d!1018449 d!1019175))

(assert (=> d!1018449 d!1018907))

(declare-fun d!1019177 () Bool)

(declare-fun lt!1196001 () List!37429)

(assert (=> d!1019177 (= lt!1196001 (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (printList!1605 thiss!18206 (dropList!1229 lt!1195067 0))))))

(declare-fun e!2170980 () List!37429)

(assert (=> d!1019177 (= lt!1196001 e!2170980)))

(declare-fun c!603286 () Bool)

(assert (=> d!1019177 (= c!603286 ((_ is Cons!37307) (dropList!1229 lt!1195067 0)))))

(assert (=> d!1019177 (= (printListTailRec!712 thiss!18206 (dropList!1229 lt!1195067 0) (list!13629 (BalanceConc!22237 Empty!11311))) lt!1196001)))

(declare-fun b!3506481 () Bool)

(assert (=> b!3506481 (= e!2170980 (printListTailRec!712 thiss!18206 (t!279242 (dropList!1229 lt!1195067 0)) (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (list!13629 (charsOf!3482 (h!42727 (dropList!1229 lt!1195067 0)))))))))

(declare-fun lt!1196004 () List!37429)

(assert (=> b!3506481 (= lt!1196004 (list!13629 (charsOf!3482 (h!42727 (dropList!1229 lt!1195067 0)))))))

(declare-fun lt!1196003 () List!37429)

(assert (=> b!3506481 (= lt!1196003 (printList!1605 thiss!18206 (t!279242 (dropList!1229 lt!1195067 0))))))

(declare-fun lt!1196000 () Unit!52870)

(assert (=> b!3506481 (= lt!1196000 (lemmaConcatAssociativity!1996 (list!13629 (BalanceConc!22237 Empty!11311)) lt!1196004 lt!1196003))))

(assert (=> b!3506481 (= (++!9231 (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) lt!1196004) lt!1196003) (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (++!9231 lt!1196004 lt!1196003)))))

(declare-fun lt!1196002 () Unit!52870)

(assert (=> b!3506481 (= lt!1196002 lt!1196000)))

(declare-fun b!3506482 () Bool)

(assert (=> b!3506482 (= e!2170980 (list!13629 (BalanceConc!22237 Empty!11311)))))

(assert (= (and d!1019177 c!603286) b!3506481))

(assert (= (and d!1019177 (not c!603286)) b!3506482))

(assert (=> d!1019177 m!3942575))

(declare-fun m!3944543 () Bool)

(assert (=> d!1019177 m!3944543))

(assert (=> d!1019177 m!3942155))

(assert (=> d!1019177 m!3944543))

(declare-fun m!3944545 () Bool)

(assert (=> d!1019177 m!3944545))

(assert (=> b!3506481 m!3942155))

(declare-fun m!3944547 () Bool)

(assert (=> b!3506481 m!3944547))

(declare-fun m!3944549 () Bool)

(assert (=> b!3506481 m!3944549))

(assert (=> b!3506481 m!3942155))

(declare-fun m!3944551 () Bool)

(assert (=> b!3506481 m!3944551))

(assert (=> b!3506481 m!3942155))

(declare-fun m!3944553 () Bool)

(assert (=> b!3506481 m!3944553))

(declare-fun m!3944555 () Bool)

(assert (=> b!3506481 m!3944555))

(declare-fun m!3944557 () Bool)

(assert (=> b!3506481 m!3944557))

(assert (=> b!3506481 m!3944553))

(declare-fun m!3944559 () Bool)

(assert (=> b!3506481 m!3944559))

(declare-fun m!3944561 () Bool)

(assert (=> b!3506481 m!3944561))

(assert (=> b!3506481 m!3944547))

(assert (=> b!3506481 m!3942155))

(assert (=> b!3506481 m!3944557))

(declare-fun m!3944563 () Bool)

(assert (=> b!3506481 m!3944563))

(assert (=> b!3506481 m!3944555))

(assert (=> b!3506481 m!3944563))

(declare-fun m!3944565 () Bool)

(assert (=> b!3506481 m!3944565))

(assert (=> d!1018529 d!1019177))

(declare-fun d!1019179 () Bool)

(assert (=> d!1019179 (= (dropList!1229 lt!1195067 0) (drop!2041 (list!13634 (c!602788 lt!1195067)) 0))))

(declare-fun bs!564044 () Bool)

(assert (= bs!564044 d!1019179))

(assert (=> bs!564044 m!3943933))

(assert (=> bs!564044 m!3943933))

(declare-fun m!3944567 () Bool)

(assert (=> bs!564044 m!3944567))

(assert (=> d!1018529 d!1019179))

(declare-fun d!1019181 () Bool)

(declare-fun lt!1196005 () Int)

(assert (=> d!1019181 (= lt!1196005 (size!28370 (list!13633 lt!1195067)))))

(assert (=> d!1019181 (= lt!1196005 (size!28371 (c!602788 lt!1195067)))))

(assert (=> d!1019181 (= (size!28364 lt!1195067) lt!1196005)))

(declare-fun bs!564045 () Bool)

(assert (= bs!564045 d!1019181))

(assert (=> bs!564045 m!3942611))

(assert (=> bs!564045 m!3942611))

(declare-fun m!3944569 () Bool)

(assert (=> bs!564045 m!3944569))

(declare-fun m!3944571 () Bool)

(assert (=> bs!564045 m!3944571))

(assert (=> d!1018529 d!1019181))

(declare-fun d!1019183 () Bool)

(assert (=> d!1019183 (= (list!13629 lt!1195366) (list!13632 (c!602787 lt!1195366)))))

(declare-fun bs!564046 () Bool)

(assert (= bs!564046 d!1019183))

(declare-fun m!3944573 () Bool)

(assert (=> bs!564046 m!3944573))

(assert (=> d!1018529 d!1019183))

(assert (=> d!1018529 d!1018933))

(assert (=> d!1018581 d!1018461))

(declare-fun d!1019185 () Bool)

(assert (=> d!1019185 (= (maxPrefixOneRule!1764 thiss!18206 (rule!8098 (h!42727 tokens!494)) lt!1195055) (Some!7593 (tuple2!37115 (Token!10303 (apply!8865 (transformation!5468 (rule!8098 (h!42727 tokens!494))) (seqFromList!3990 lt!1195055)) (rule!8098 (h!42727 tokens!494)) (size!28365 lt!1195055) lt!1195055) Nil!37305)))))

(assert (=> d!1019185 true))

(declare-fun _$59!526 () Unit!52870)

(assert (=> d!1019185 (= (choose!20345 thiss!18206 rules!2135 lt!1195055 lt!1195055 Nil!37305 (rule!8098 (h!42727 tokens!494))) _$59!526)))

(declare-fun bs!564047 () Bool)

(assert (= bs!564047 d!1019185))

(assert (=> bs!564047 m!3941417))

(assert (=> bs!564047 m!3941371))

(assert (=> bs!564047 m!3941371))

(assert (=> bs!564047 m!3942829))

(assert (=> bs!564047 m!3941467))

(assert (=> d!1018581 d!1019185))

(declare-fun d!1019189 () Bool)

(assert (=> d!1019189 (= (apply!8865 (transformation!5468 (rule!8098 (h!42727 tokens!494))) (seqFromList!3990 lt!1195055)) (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (seqFromList!3990 lt!1195055)))))

(declare-fun b_lambda!102001 () Bool)

(assert (=> (not b_lambda!102001) (not d!1019189)))

(declare-fun tb!194543 () Bool)

(declare-fun t!279471 () Bool)

(assert (=> (and b!3504500 (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279471) tb!194543))

(declare-fun result!238836 () Bool)

(assert (=> tb!194543 (= result!238836 (inv!21 (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (seqFromList!3990 lt!1195055))))))

(declare-fun m!3944579 () Bool)

(assert (=> tb!194543 m!3944579))

(assert (=> d!1019189 t!279471))

(declare-fun b_and!248915 () Bool)

(assert (= b_and!248841 (and (=> t!279471 result!238836) b_and!248915)))

(declare-fun tb!194545 () Bool)

(declare-fun t!279473 () Bool)

(assert (=> (and b!3505469 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279473) tb!194545))

(declare-fun result!238838 () Bool)

(assert (= result!238838 result!238836))

(assert (=> d!1019189 t!279473))

(declare-fun b_and!248917 () Bool)

(assert (= b_and!248837 (and (=> t!279473 result!238838) b_and!248917)))

(declare-fun t!279475 () Bool)

(declare-fun tb!194547 () Bool)

(assert (=> (and b!3505488 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279475) tb!194547))

(declare-fun result!238840 () Bool)

(assert (= result!238840 result!238836))

(assert (=> d!1019189 t!279475))

(declare-fun b_and!248919 () Bool)

(assert (= b_and!248843 (and (=> t!279475 result!238840) b_and!248919)))

(declare-fun tb!194549 () Bool)

(declare-fun t!279477 () Bool)

(assert (=> (and b!3504518 (= (toValue!7712 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279477) tb!194549))

(declare-fun result!238842 () Bool)

(assert (= result!238842 result!238836))

(assert (=> d!1019189 t!279477))

(declare-fun b_and!248921 () Bool)

(assert (= b_and!248839 (and (=> t!279477 result!238842) b_and!248921)))

(declare-fun t!279479 () Bool)

(declare-fun tb!194551 () Bool)

(assert (=> (and b!3504516 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279479) tb!194551))

(declare-fun result!238844 () Bool)

(assert (= result!238844 result!238836))

(assert (=> d!1019189 t!279479))

(declare-fun b_and!248923 () Bool)

(assert (= b_and!248835 (and (=> t!279479 result!238844) b_and!248923)))

(assert (=> d!1019189 m!3941371))

(declare-fun m!3944581 () Bool)

(assert (=> d!1019189 m!3944581))

(assert (=> d!1018581 d!1019189))

(assert (=> d!1018581 d!1018525))

(assert (=> d!1018581 d!1018615))

(assert (=> d!1018581 d!1018377))

(declare-fun d!1019191 () Bool)

(declare-fun e!2170989 () Bool)

(assert (=> d!1019191 e!2170989))

(declare-fun res!1414441 () Bool)

(assert (=> d!1019191 (=> (not res!1414441) (not e!2170989))))

(declare-fun lt!1196006 () List!37429)

(assert (=> d!1019191 (= res!1414441 (= (content!5247 lt!1196006) ((_ map or) (content!5247 (t!279240 lt!1195070)) (content!5247 lt!1195084))))))

(declare-fun e!2170988 () List!37429)

(assert (=> d!1019191 (= lt!1196006 e!2170988)))

(declare-fun c!603290 () Bool)

(assert (=> d!1019191 (= c!603290 ((_ is Nil!37305) (t!279240 lt!1195070)))))

(assert (=> d!1019191 (= (++!9231 (t!279240 lt!1195070) lt!1195084) lt!1196006)))

(declare-fun b!3506493 () Bool)

(assert (=> b!3506493 (= e!2170988 (Cons!37305 (h!42725 (t!279240 lt!1195070)) (++!9231 (t!279240 (t!279240 lt!1195070)) lt!1195084)))))

(declare-fun b!3506492 () Bool)

(assert (=> b!3506492 (= e!2170988 lt!1195084)))

(declare-fun b!3506495 () Bool)

(assert (=> b!3506495 (= e!2170989 (or (not (= lt!1195084 Nil!37305)) (= lt!1196006 (t!279240 lt!1195070))))))

(declare-fun b!3506494 () Bool)

(declare-fun res!1414440 () Bool)

(assert (=> b!3506494 (=> (not res!1414440) (not e!2170989))))

(assert (=> b!3506494 (= res!1414440 (= (size!28365 lt!1196006) (+ (size!28365 (t!279240 lt!1195070)) (size!28365 lt!1195084))))))

(assert (= (and d!1019191 c!603290) b!3506492))

(assert (= (and d!1019191 (not c!603290)) b!3506493))

(assert (= (and d!1019191 res!1414441) b!3506494))

(assert (= (and b!3506494 res!1414440) b!3506495))

(declare-fun m!3944583 () Bool)

(assert (=> d!1019191 m!3944583))

(assert (=> d!1019191 m!3943707))

(assert (=> d!1019191 m!3941889))

(declare-fun m!3944585 () Bool)

(assert (=> b!3506493 m!3944585))

(declare-fun m!3944587 () Bool)

(assert (=> b!3506494 m!3944587))

(assert (=> b!3506494 m!3943327))

(assert (=> b!3506494 m!3941897))

(assert (=> b!3504803 d!1019191))

(declare-fun b!3506496 () Bool)

(declare-fun res!1414445 () Bool)

(declare-fun e!2170992 () Bool)

(assert (=> b!3506496 (=> (not res!1414445) (not e!2170992))))

(declare-fun lt!1196008 () Option!7594)

(assert (=> b!3506496 (= res!1414445 (= (value!176298 (_1!21691 (get!11971 lt!1196008))) (apply!8865 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1196008)))) (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1196008)))))))))

(declare-fun b!3506497 () Bool)

(declare-fun e!2170993 () Option!7594)

(declare-fun lt!1196011 () tuple2!37122)

(assert (=> b!3506497 (= e!2170993 (Some!7593 (tuple2!37115 (Token!10303 (apply!8865 (transformation!5468 (h!42726 rules!2135)) (seqFromList!3990 (_1!21695 lt!1196011))) (h!42726 rules!2135) (size!28367 (seqFromList!3990 (_1!21695 lt!1196011))) (_1!21695 lt!1196011)) (_2!21695 lt!1196011))))))

(declare-fun lt!1196007 () Unit!52870)

(assert (=> b!3506497 (= lt!1196007 (longestMatchIsAcceptedByMatchOrIsEmpty!906 (regex!5468 (h!42726 rules!2135)) lt!1195077))))

(declare-fun res!1414443 () Bool)

(assert (=> b!3506497 (= res!1414443 (isEmpty!21746 (_1!21695 (findLongestMatchInner!933 (regex!5468 (h!42726 rules!2135)) Nil!37305 (size!28365 Nil!37305) lt!1195077 lt!1195077 (size!28365 lt!1195077)))))))

(declare-fun e!2170991 () Bool)

(assert (=> b!3506497 (=> res!1414443 e!2170991)))

(assert (=> b!3506497 e!2170991))

(declare-fun lt!1196010 () Unit!52870)

(assert (=> b!3506497 (= lt!1196010 lt!1196007)))

(declare-fun lt!1196009 () Unit!52870)

(assert (=> b!3506497 (= lt!1196009 (lemmaSemiInverse!1283 (transformation!5468 (h!42726 rules!2135)) (seqFromList!3990 (_1!21695 lt!1196011))))))

(declare-fun b!3506498 () Bool)

(assert (=> b!3506498 (= e!2170991 (matchR!4811 (regex!5468 (h!42726 rules!2135)) (_1!21695 (findLongestMatchInner!933 (regex!5468 (h!42726 rules!2135)) Nil!37305 (size!28365 Nil!37305) lt!1195077 lt!1195077 (size!28365 lt!1195077)))))))

(declare-fun b!3506499 () Bool)

(assert (=> b!3506499 (= e!2170992 (= (size!28363 (_1!21691 (get!11971 lt!1196008))) (size!28365 (originalCharacters!6182 (_1!21691 (get!11971 lt!1196008))))))))

(declare-fun b!3506500 () Bool)

(declare-fun res!1414444 () Bool)

(assert (=> b!3506500 (=> (not res!1414444) (not e!2170992))))

(assert (=> b!3506500 (= res!1414444 (= (++!9231 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1196008)))) (_2!21691 (get!11971 lt!1196008))) lt!1195077))))

(declare-fun b!3506501 () Bool)

(declare-fun res!1414442 () Bool)

(assert (=> b!3506501 (=> (not res!1414442) (not e!2170992))))

(assert (=> b!3506501 (= res!1414442 (< (size!28365 (_2!21691 (get!11971 lt!1196008))) (size!28365 lt!1195077)))))

(declare-fun b!3506503 () Bool)

(assert (=> b!3506503 (= e!2170993 None!7593)))

(declare-fun b!3506504 () Bool)

(declare-fun e!2170990 () Bool)

(assert (=> b!3506504 (= e!2170990 e!2170992)))

(declare-fun res!1414446 () Bool)

(assert (=> b!3506504 (=> (not res!1414446) (not e!2170992))))

(assert (=> b!3506504 (= res!1414446 (matchR!4811 (regex!5468 (h!42726 rules!2135)) (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1196008))))))))

(declare-fun d!1019193 () Bool)

(assert (=> d!1019193 e!2170990))

(declare-fun res!1414448 () Bool)

(assert (=> d!1019193 (=> res!1414448 e!2170990)))

(assert (=> d!1019193 (= res!1414448 (isEmpty!21757 lt!1196008))))

(assert (=> d!1019193 (= lt!1196008 e!2170993)))

(declare-fun c!603291 () Bool)

(assert (=> d!1019193 (= c!603291 (isEmpty!21746 (_1!21695 lt!1196011)))))

(assert (=> d!1019193 (= lt!1196011 (findLongestMatch!848 (regex!5468 (h!42726 rules!2135)) lt!1195077))))

(assert (=> d!1019193 (ruleValid!1764 thiss!18206 (h!42726 rules!2135))))

(assert (=> d!1019193 (= (maxPrefixOneRule!1764 thiss!18206 (h!42726 rules!2135) lt!1195077) lt!1196008)))

(declare-fun b!3506502 () Bool)

(declare-fun res!1414447 () Bool)

(assert (=> b!3506502 (=> (not res!1414447) (not e!2170992))))

(assert (=> b!3506502 (= res!1414447 (= (rule!8098 (_1!21691 (get!11971 lt!1196008))) (h!42726 rules!2135)))))

(assert (= (and d!1019193 c!603291) b!3506503))

(assert (= (and d!1019193 (not c!603291)) b!3506497))

(assert (= (and b!3506497 (not res!1414443)) b!3506498))

(assert (= (and d!1019193 (not res!1414448)) b!3506504))

(assert (= (and b!3506504 res!1414446) b!3506500))

(assert (= (and b!3506500 res!1414444) b!3506501))

(assert (= (and b!3506501 res!1414442) b!3506502))

(assert (= (and b!3506502 res!1414447) b!3506496))

(assert (= (and b!3506496 res!1414445) b!3506499))

(declare-fun m!3944589 () Bool)

(assert (=> b!3506497 m!3944589))

(declare-fun m!3944591 () Bool)

(assert (=> b!3506497 m!3944591))

(assert (=> b!3506497 m!3944589))

(declare-fun m!3944593 () Bool)

(assert (=> b!3506497 m!3944593))

(declare-fun m!3944595 () Bool)

(assert (=> b!3506497 m!3944595))

(assert (=> b!3506497 m!3942077))

(assert (=> b!3506497 m!3942509))

(declare-fun m!3944597 () Bool)

(assert (=> b!3506497 m!3944597))

(assert (=> b!3506497 m!3942077))

(declare-fun m!3944599 () Bool)

(assert (=> b!3506497 m!3944599))

(assert (=> b!3506497 m!3944589))

(declare-fun m!3944601 () Bool)

(assert (=> b!3506497 m!3944601))

(assert (=> b!3506497 m!3944589))

(assert (=> b!3506497 m!3942509))

(declare-fun m!3944603 () Bool)

(assert (=> b!3506499 m!3944603))

(declare-fun m!3944605 () Bool)

(assert (=> b!3506499 m!3944605))

(declare-fun m!3944607 () Bool)

(assert (=> d!1019193 m!3944607))

(declare-fun m!3944609 () Bool)

(assert (=> d!1019193 m!3944609))

(declare-fun m!3944611 () Bool)

(assert (=> d!1019193 m!3944611))

(declare-fun m!3944613 () Bool)

(assert (=> d!1019193 m!3944613))

(assert (=> b!3506501 m!3944603))

(declare-fun m!3944615 () Bool)

(assert (=> b!3506501 m!3944615))

(assert (=> b!3506501 m!3942509))

(assert (=> b!3506500 m!3944603))

(declare-fun m!3944617 () Bool)

(assert (=> b!3506500 m!3944617))

(assert (=> b!3506500 m!3944617))

(declare-fun m!3944619 () Bool)

(assert (=> b!3506500 m!3944619))

(assert (=> b!3506500 m!3944619))

(declare-fun m!3944621 () Bool)

(assert (=> b!3506500 m!3944621))

(assert (=> b!3506498 m!3942077))

(assert (=> b!3506498 m!3942509))

(assert (=> b!3506498 m!3942077))

(assert (=> b!3506498 m!3942509))

(assert (=> b!3506498 m!3944597))

(declare-fun m!3944623 () Bool)

(assert (=> b!3506498 m!3944623))

(assert (=> b!3506496 m!3944603))

(declare-fun m!3944625 () Bool)

(assert (=> b!3506496 m!3944625))

(assert (=> b!3506496 m!3944625))

(declare-fun m!3944627 () Bool)

(assert (=> b!3506496 m!3944627))

(assert (=> b!3506502 m!3944603))

(assert (=> b!3506504 m!3944603))

(assert (=> b!3506504 m!3944617))

(assert (=> b!3506504 m!3944617))

(assert (=> b!3506504 m!3944619))

(assert (=> b!3506504 m!3944619))

(declare-fun m!3944629 () Bool)

(assert (=> b!3506504 m!3944629))

(assert (=> bm!252983 d!1019193))

(declare-fun d!1019195 () Bool)

(assert (=> d!1019195 (= (inv!50519 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))) (= (mod (str.len (value!176297 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))) 2) 0))))

(assert (=> b!3505487 d!1019195))

(declare-fun d!1019197 () Bool)

(declare-fun res!1414449 () Bool)

(declare-fun e!2170994 () Bool)

(assert (=> d!1019197 (=> (not res!1414449) (not e!2170994))))

(assert (=> d!1019197 (= res!1414449 (semiInverseModEq!2307 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))))))

(assert (=> d!1019197 (= (inv!50522 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) e!2170994)))

(declare-fun b!3506505 () Bool)

(assert (=> b!3506505 (= e!2170994 (equivClasses!2206 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))))))

(assert (= (and d!1019197 res!1414449) b!3506505))

(declare-fun m!3944631 () Bool)

(assert (=> d!1019197 m!3944631))

(declare-fun m!3944633 () Bool)

(assert (=> b!3506505 m!3944633))

(assert (=> b!3505487 d!1019197))

(assert (=> b!3505100 d!1019059))

(assert (=> b!3505100 d!1018573))

(declare-fun d!1019199 () Bool)

(declare-fun lt!1196012 () Bool)

(assert (=> d!1019199 (= lt!1196012 (select (content!5248 rules!2135) (get!11969 lt!1195380)))))

(declare-fun e!2170995 () Bool)

(assert (=> d!1019199 (= lt!1196012 e!2170995)))

(declare-fun res!1414451 () Bool)

(assert (=> d!1019199 (=> (not res!1414451) (not e!2170995))))

(assert (=> d!1019199 (= res!1414451 ((_ is Cons!37306) rules!2135))))

(assert (=> d!1019199 (= (contains!6979 rules!2135 (get!11969 lt!1195380)) lt!1196012)))

(declare-fun b!3506506 () Bool)

(declare-fun e!2170996 () Bool)

(assert (=> b!3506506 (= e!2170995 e!2170996)))

(declare-fun res!1414450 () Bool)

(assert (=> b!3506506 (=> res!1414450 e!2170996)))

(assert (=> b!3506506 (= res!1414450 (= (h!42726 rules!2135) (get!11969 lt!1195380)))))

(declare-fun b!3506507 () Bool)

(assert (=> b!3506507 (= e!2170996 (contains!6979 (t!279241 rules!2135) (get!11969 lt!1195380)))))

(assert (= (and d!1019199 res!1414451) b!3506506))

(assert (= (and b!3506506 (not res!1414450)) b!3506507))

(assert (=> d!1019199 m!3942547))

(assert (=> d!1019199 m!3942625))

(declare-fun m!3944635 () Bool)

(assert (=> d!1019199 m!3944635))

(assert (=> b!3506507 m!3942625))

(declare-fun m!3944637 () Bool)

(assert (=> b!3506507 m!3944637))

(assert (=> b!3505191 d!1019199))

(declare-fun d!1019201 () Bool)

(assert (=> d!1019201 (= (get!11969 lt!1195380) (v!37044 lt!1195380))))

(assert (=> b!3505191 d!1019201))

(assert (=> d!1018465 d!1018547))

(declare-fun d!1019203 () Bool)

(assert (=> d!1019203 (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 (t!279242 tokens!494)))))

(assert (=> d!1019203 true))

(declare-fun _$77!1003 () Unit!52870)

(assert (=> d!1019203 (= (choose!20338 thiss!18206 rules!2135 tokens!494 (h!42727 (t!279242 tokens!494))) _$77!1003)))

(declare-fun bs!564048 () Bool)

(assert (= bs!564048 d!1019203))

(assert (=> bs!564048 m!3941447))

(assert (=> d!1018465 d!1019203))

(assert (=> d!1018465 d!1018615))

(declare-fun d!1019205 () Bool)

(declare-fun lt!1196013 () Int)

(assert (=> d!1019205 (>= lt!1196013 0)))

(declare-fun e!2170997 () Int)

(assert (=> d!1019205 (= lt!1196013 e!2170997)))

(declare-fun c!603292 () Bool)

(assert (=> d!1019205 (= c!603292 ((_ is Nil!37305) lt!1195200))))

(assert (=> d!1019205 (= (size!28365 lt!1195200) lt!1196013)))

(declare-fun b!3506508 () Bool)

(assert (=> b!3506508 (= e!2170997 0)))

(declare-fun b!3506509 () Bool)

(assert (=> b!3506509 (= e!2170997 (+ 1 (size!28365 (t!279240 lt!1195200))))))

(assert (= (and d!1019205 c!603292) b!3506508))

(assert (= (and d!1019205 (not c!603292)) b!3506509))

(declare-fun m!3944639 () Bool)

(assert (=> b!3506509 m!3944639))

(assert (=> b!3504939 d!1019205))

(assert (=> b!3504939 d!1018789))

(assert (=> b!3504939 d!1018895))

(declare-fun d!1019207 () Bool)

(declare-fun lt!1196014 () Bool)

(assert (=> d!1019207 (= lt!1196014 (select (content!5248 rules!2135) (get!11969 lt!1195414)))))

(declare-fun e!2170998 () Bool)

(assert (=> d!1019207 (= lt!1196014 e!2170998)))

(declare-fun res!1414453 () Bool)

(assert (=> d!1019207 (=> (not res!1414453) (not e!2170998))))

(assert (=> d!1019207 (= res!1414453 ((_ is Cons!37306) rules!2135))))

(assert (=> d!1019207 (= (contains!6979 rules!2135 (get!11969 lt!1195414)) lt!1196014)))

(declare-fun b!3506510 () Bool)

(declare-fun e!2170999 () Bool)

(assert (=> b!3506510 (= e!2170998 e!2170999)))

(declare-fun res!1414452 () Bool)

(assert (=> b!3506510 (=> res!1414452 e!2170999)))

(assert (=> b!3506510 (= res!1414452 (= (h!42726 rules!2135) (get!11969 lt!1195414)))))

(declare-fun b!3506511 () Bool)

(assert (=> b!3506511 (= e!2170999 (contains!6979 (t!279241 rules!2135) (get!11969 lt!1195414)))))

(assert (= (and d!1019207 res!1414453) b!3506510))

(assert (= (and b!3506510 (not res!1414452)) b!3506511))

(assert (=> d!1019207 m!3942547))

(assert (=> d!1019207 m!3942783))

(declare-fun m!3944641 () Bool)

(assert (=> d!1019207 m!3944641))

(assert (=> b!3506511 m!3942783))

(declare-fun m!3944643 () Bool)

(assert (=> b!3506511 m!3944643))

(assert (=> b!3505316 d!1019207))

(declare-fun d!1019209 () Bool)

(assert (=> d!1019209 (= (get!11969 lt!1195414) (v!37044 lt!1195414))))

(assert (=> b!3505316 d!1019209))

(declare-fun d!1019211 () Bool)

(assert (=> d!1019211 (= (list!13629 (_2!21690 lt!1195164)) (list!13632 (c!602787 (_2!21690 lt!1195164))))))

(declare-fun bs!564049 () Bool)

(assert (= bs!564049 d!1019211))

(declare-fun m!3944645 () Bool)

(assert (=> bs!564049 m!3944645))

(assert (=> b!3504771 d!1019211))

(declare-fun b!3506522 () Bool)

(declare-fun e!2171008 () Bool)

(declare-fun e!2171007 () Bool)

(assert (=> b!3506522 (= e!2171008 e!2171007)))

(declare-fun res!1414456 () Bool)

(declare-fun lt!1196021 () tuple2!37118)

(assert (=> b!3506522 (= res!1414456 (< (size!28365 (_2!21693 lt!1196021)) (size!28365 (list!13629 lt!1195088))))))

(assert (=> b!3506522 (=> (not res!1414456) (not e!2171007))))

(declare-fun b!3506523 () Bool)

(assert (=> b!3506523 (= e!2171007 (not (isEmpty!21751 (_1!21693 lt!1196021))))))

(declare-fun b!3506524 () Bool)

(declare-fun e!2171006 () tuple2!37118)

(declare-fun lt!1196022 () Option!7594)

(declare-fun lt!1196023 () tuple2!37118)

(assert (=> b!3506524 (= e!2171006 (tuple2!37119 (Cons!37307 (_1!21691 (v!37045 lt!1196022)) (_1!21693 lt!1196023)) (_2!21693 lt!1196023)))))

(assert (=> b!3506524 (= lt!1196023 (lexList!1472 thiss!18206 rules!2135 (_2!21691 (v!37045 lt!1196022))))))

(declare-fun d!1019213 () Bool)

(assert (=> d!1019213 e!2171008))

(declare-fun c!603298 () Bool)

(assert (=> d!1019213 (= c!603298 (> (size!28370 (_1!21693 lt!1196021)) 0))))

(assert (=> d!1019213 (= lt!1196021 e!2171006)))

(declare-fun c!603297 () Bool)

(assert (=> d!1019213 (= c!603297 ((_ is Some!7593) lt!1196022))))

(assert (=> d!1019213 (= lt!1196022 (maxPrefix!2597 thiss!18206 rules!2135 (list!13629 lt!1195088)))))

(assert (=> d!1019213 (= (lexList!1472 thiss!18206 rules!2135 (list!13629 lt!1195088)) lt!1196021)))

(declare-fun b!3506525 () Bool)

(assert (=> b!3506525 (= e!2171006 (tuple2!37119 Nil!37307 (list!13629 lt!1195088)))))

(declare-fun b!3506526 () Bool)

(assert (=> b!3506526 (= e!2171008 (= (_2!21693 lt!1196021) (list!13629 lt!1195088)))))

(assert (= (and d!1019213 c!603297) b!3506524))

(assert (= (and d!1019213 (not c!603297)) b!3506525))

(assert (= (and d!1019213 c!603298) b!3506522))

(assert (= (and d!1019213 (not c!603298)) b!3506526))

(assert (= (and b!3506522 res!1414456) b!3506523))

(declare-fun m!3944647 () Bool)

(assert (=> b!3506522 m!3944647))

(assert (=> b!3506522 m!3941855))

(assert (=> b!3506522 m!3943245))

(declare-fun m!3944649 () Bool)

(assert (=> b!3506523 m!3944649))

(declare-fun m!3944651 () Bool)

(assert (=> b!3506524 m!3944651))

(declare-fun m!3944653 () Bool)

(assert (=> d!1019213 m!3944653))

(assert (=> d!1019213 m!3941855))

(declare-fun m!3944655 () Bool)

(assert (=> d!1019213 m!3944655))

(assert (=> b!3504771 d!1019213))

(declare-fun d!1019215 () Bool)

(assert (=> d!1019215 (= (list!13629 lt!1195088) (list!13632 (c!602787 lt!1195088)))))

(declare-fun bs!564050 () Bool)

(assert (= bs!564050 d!1019215))

(declare-fun m!3944657 () Bool)

(assert (=> bs!564050 m!3944657))

(assert (=> b!3504771 d!1019215))

(declare-fun d!1019217 () Bool)

(declare-fun lt!1196024 () Int)

(assert (=> d!1019217 (>= lt!1196024 0)))

(declare-fun e!2171009 () Int)

(assert (=> d!1019217 (= lt!1196024 e!2171009)))

(declare-fun c!603299 () Bool)

(assert (=> d!1019217 (= c!603299 ((_ is Nil!37305) lt!1195212))))

(assert (=> d!1019217 (= (size!28365 lt!1195212) lt!1196024)))

(declare-fun b!3506527 () Bool)

(assert (=> b!3506527 (= e!2171009 0)))

(declare-fun b!3506528 () Bool)

(assert (=> b!3506528 (= e!2171009 (+ 1 (size!28365 (t!279240 lt!1195212))))))

(assert (= (and d!1019217 c!603299) b!3506527))

(assert (= (and d!1019217 (not c!603299)) b!3506528))

(declare-fun m!3944659 () Bool)

(assert (=> b!3506528 m!3944659))

(assert (=> b!3504959 d!1019217))

(assert (=> b!3504959 d!1018525))

(assert (=> b!3504959 d!1018791))

(declare-fun d!1019219 () Bool)

(assert (=> d!1019219 (= (isEmpty!21756 lt!1195063) (not ((_ is Some!7592) lt!1195063)))))

(assert (=> d!1018605 d!1019219))

(assert (=> b!3505136 d!1018901))

(declare-fun d!1019221 () Bool)

(assert (=> d!1019221 (= (apply!8865 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))) (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195339))))) (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339))))) (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195339))))))))

(declare-fun b_lambda!102003 () Bool)

(assert (=> (not b_lambda!102003) (not d!1019221)))

(declare-fun t!279481 () Bool)

(declare-fun tb!194553 () Bool)

(assert (=> (and b!3505469 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279481) tb!194553))

(declare-fun result!238846 () Bool)

(assert (=> tb!194553 (= result!238846 (inv!21 (dynLambda!15856 (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339))))) (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195339)))))))))

(declare-fun m!3944661 () Bool)

(assert (=> tb!194553 m!3944661))

(assert (=> d!1019221 t!279481))

(declare-fun b_and!248925 () Bool)

(assert (= b_and!248917 (and (=> t!279481 result!238846) b_and!248925)))

(declare-fun t!279483 () Bool)

(declare-fun tb!194555 () Bool)

(assert (=> (and b!3505488 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279483) tb!194555))

(declare-fun result!238848 () Bool)

(assert (= result!238848 result!238846))

(assert (=> d!1019221 t!279483))

(declare-fun b_and!248927 () Bool)

(assert (= b_and!248919 (and (=> t!279483 result!238848) b_and!248927)))

(declare-fun tb!194557 () Bool)

(declare-fun t!279485 () Bool)

(assert (=> (and b!3504518 (= (toValue!7712 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279485) tb!194557))

(declare-fun result!238850 () Bool)

(assert (= result!238850 result!238846))

(assert (=> d!1019221 t!279485))

(declare-fun b_and!248929 () Bool)

(assert (= b_and!248921 (and (=> t!279485 result!238850) b_and!248929)))

(declare-fun tb!194559 () Bool)

(declare-fun t!279487 () Bool)

(assert (=> (and b!3504500 (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279487) tb!194559))

(declare-fun result!238852 () Bool)

(assert (= result!238852 result!238846))

(assert (=> d!1019221 t!279487))

(declare-fun b_and!248931 () Bool)

(assert (= b_and!248915 (and (=> t!279487 result!238852) b_and!248931)))

(declare-fun tb!194561 () Bool)

(declare-fun t!279489 () Bool)

(assert (=> (and b!3504516 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279489) tb!194561))

(declare-fun result!238854 () Bool)

(assert (= result!238854 result!238846))

(assert (=> d!1019221 t!279489))

(declare-fun b_and!248933 () Bool)

(assert (= b_and!248923 (and (=> t!279489 result!238854) b_and!248933)))

(assert (=> d!1019221 m!3942521))

(declare-fun m!3944663 () Bool)

(assert (=> d!1019221 m!3944663))

(assert (=> b!3505136 d!1019221))

(declare-fun d!1019223 () Bool)

(assert (=> d!1019223 (= (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195339)))) (fromListB!1829 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195339)))))))

(declare-fun bs!564051 () Bool)

(assert (= bs!564051 d!1019223))

(declare-fun m!3944665 () Bool)

(assert (=> bs!564051 m!3944665))

(assert (=> b!3505136 d!1019223))

(declare-fun d!1019225 () Bool)

(assert (=> d!1019225 (= (list!13629 (_2!21690 lt!1195417)) (list!13632 (c!602787 (_2!21690 lt!1195417))))))

(declare-fun bs!564052 () Bool)

(assert (= bs!564052 d!1019225))

(declare-fun m!3944667 () Bool)

(assert (=> bs!564052 m!3944667))

(assert (=> b!3505327 d!1019225))

(declare-fun b!3506529 () Bool)

(declare-fun e!2171013 () Bool)

(declare-fun e!2171012 () Bool)

(assert (=> b!3506529 (= e!2171013 e!2171012)))

(declare-fun res!1414457 () Bool)

(declare-fun lt!1196025 () tuple2!37118)

(assert (=> b!3506529 (= res!1414457 (< (size!28365 (_2!21693 lt!1196025)) (size!28365 (list!13629 lt!1195075))))))

(assert (=> b!3506529 (=> (not res!1414457) (not e!2171012))))

(declare-fun b!3506530 () Bool)

(assert (=> b!3506530 (= e!2171012 (not (isEmpty!21751 (_1!21693 lt!1196025))))))

(declare-fun b!3506531 () Bool)

(declare-fun e!2171011 () tuple2!37118)

(declare-fun lt!1196026 () Option!7594)

(declare-fun lt!1196027 () tuple2!37118)

(assert (=> b!3506531 (= e!2171011 (tuple2!37119 (Cons!37307 (_1!21691 (v!37045 lt!1196026)) (_1!21693 lt!1196027)) (_2!21693 lt!1196027)))))

(assert (=> b!3506531 (= lt!1196027 (lexList!1472 thiss!18206 rules!2135 (_2!21691 (v!37045 lt!1196026))))))

(declare-fun d!1019227 () Bool)

(assert (=> d!1019227 e!2171013))

(declare-fun c!603301 () Bool)

(assert (=> d!1019227 (= c!603301 (> (size!28370 (_1!21693 lt!1196025)) 0))))

(assert (=> d!1019227 (= lt!1196025 e!2171011)))

(declare-fun c!603300 () Bool)

(assert (=> d!1019227 (= c!603300 ((_ is Some!7593) lt!1196026))))

(assert (=> d!1019227 (= lt!1196026 (maxPrefix!2597 thiss!18206 rules!2135 (list!13629 lt!1195075)))))

(assert (=> d!1019227 (= (lexList!1472 thiss!18206 rules!2135 (list!13629 lt!1195075)) lt!1196025)))

(declare-fun b!3506532 () Bool)

(assert (=> b!3506532 (= e!2171011 (tuple2!37119 Nil!37307 (list!13629 lt!1195075)))))

(declare-fun b!3506533 () Bool)

(assert (=> b!3506533 (= e!2171013 (= (_2!21693 lt!1196025) (list!13629 lt!1195075)))))

(assert (= (and d!1019227 c!603300) b!3506531))

(assert (= (and d!1019227 (not c!603300)) b!3506532))

(assert (= (and d!1019227 c!603301) b!3506529))

(assert (= (and d!1019227 (not c!603301)) b!3506533))

(assert (= (and b!3506529 res!1414457) b!3506530))

(declare-fun m!3944669 () Bool)

(assert (=> b!3506529 m!3944669))

(assert (=> b!3506529 m!3942799))

(assert (=> b!3506529 m!3944415))

(declare-fun m!3944671 () Bool)

(assert (=> b!3506530 m!3944671))

(declare-fun m!3944673 () Bool)

(assert (=> b!3506531 m!3944673))

(declare-fun m!3944675 () Bool)

(assert (=> d!1019227 m!3944675))

(assert (=> d!1019227 m!3942799))

(declare-fun m!3944677 () Bool)

(assert (=> d!1019227 m!3944677))

(assert (=> b!3505327 d!1019227))

(declare-fun d!1019229 () Bool)

(assert (=> d!1019229 (= (list!13629 lt!1195075) (list!13632 (c!602787 lt!1195075)))))

(declare-fun bs!564053 () Bool)

(assert (= bs!564053 d!1019229))

(declare-fun m!3944679 () Bool)

(assert (=> bs!564053 m!3944679))

(assert (=> b!3505327 d!1019229))

(assert (=> d!1018413 d!1018325))

(declare-fun c!603303 () Bool)

(declare-fun c!603302 () Bool)

(declare-fun bm!253153 () Bool)

(declare-fun call!253160 () Bool)

(assert (=> bm!253153 (= call!253160 (validRegex!4668 (ite c!603302 (reg!10556 (regex!5468 lt!1195087)) (ite c!603303 (regOne!20967 (regex!5468 lt!1195087)) (regOne!20966 (regex!5468 lt!1195087))))))))

(declare-fun b!3506534 () Bool)

(declare-fun e!2171014 () Bool)

(declare-fun call!253159 () Bool)

(assert (=> b!3506534 (= e!2171014 call!253159)))

(declare-fun bm!253154 () Bool)

(assert (=> bm!253154 (= call!253159 (validRegex!4668 (ite c!603303 (regTwo!20967 (regex!5468 lt!1195087)) (regTwo!20966 (regex!5468 lt!1195087)))))))

(declare-fun b!3506535 () Bool)

(declare-fun res!1414459 () Bool)

(declare-fun e!2171018 () Bool)

(assert (=> b!3506535 (=> (not res!1414459) (not e!2171018))))

(declare-fun call!253158 () Bool)

(assert (=> b!3506535 (= res!1414459 call!253158)))

(declare-fun e!2171015 () Bool)

(assert (=> b!3506535 (= e!2171015 e!2171018)))

(declare-fun b!3506536 () Bool)

(declare-fun res!1414461 () Bool)

(declare-fun e!2171020 () Bool)

(assert (=> b!3506536 (=> res!1414461 e!2171020)))

(assert (=> b!3506536 (= res!1414461 (not ((_ is Concat!15925) (regex!5468 lt!1195087))))))

(assert (=> b!3506536 (= e!2171015 e!2171020)))

(declare-fun d!1019231 () Bool)

(declare-fun res!1414462 () Bool)

(declare-fun e!2171017 () Bool)

(assert (=> d!1019231 (=> res!1414462 e!2171017)))

(assert (=> d!1019231 (= res!1414462 ((_ is ElementMatch!10227) (regex!5468 lt!1195087)))))

(assert (=> d!1019231 (= (validRegex!4668 (regex!5468 lt!1195087)) e!2171017)))

(declare-fun b!3506537 () Bool)

(assert (=> b!3506537 (= e!2171018 call!253159)))

(declare-fun b!3506538 () Bool)

(declare-fun e!2171016 () Bool)

(assert (=> b!3506538 (= e!2171017 e!2171016)))

(assert (=> b!3506538 (= c!603302 ((_ is Star!10227) (regex!5468 lt!1195087)))))

(declare-fun b!3506539 () Bool)

(assert (=> b!3506539 (= e!2171020 e!2171014)))

(declare-fun res!1414458 () Bool)

(assert (=> b!3506539 (=> (not res!1414458) (not e!2171014))))

(assert (=> b!3506539 (= res!1414458 call!253158)))

(declare-fun b!3506540 () Bool)

(declare-fun e!2171019 () Bool)

(assert (=> b!3506540 (= e!2171016 e!2171019)))

(declare-fun res!1414460 () Bool)

(assert (=> b!3506540 (= res!1414460 (not (nullable!3512 (reg!10556 (regex!5468 lt!1195087)))))))

(assert (=> b!3506540 (=> (not res!1414460) (not e!2171019))))

(declare-fun bm!253155 () Bool)

(assert (=> bm!253155 (= call!253158 call!253160)))

(declare-fun b!3506541 () Bool)

(assert (=> b!3506541 (= e!2171019 call!253160)))

(declare-fun b!3506542 () Bool)

(assert (=> b!3506542 (= e!2171016 e!2171015)))

(assert (=> b!3506542 (= c!603303 ((_ is Union!10227) (regex!5468 lt!1195087)))))

(assert (= (and d!1019231 (not res!1414462)) b!3506538))

(assert (= (and b!3506538 c!603302) b!3506540))

(assert (= (and b!3506538 (not c!603302)) b!3506542))

(assert (= (and b!3506540 res!1414460) b!3506541))

(assert (= (and b!3506542 c!603303) b!3506535))

(assert (= (and b!3506542 (not c!603303)) b!3506536))

(assert (= (and b!3506535 res!1414459) b!3506537))

(assert (= (and b!3506536 (not res!1414461)) b!3506539))

(assert (= (and b!3506539 res!1414458) b!3506534))

(assert (= (or b!3506537 b!3506534) bm!253154))

(assert (= (or b!3506535 b!3506539) bm!253155))

(assert (= (or b!3506541 bm!253155) bm!253153))

(declare-fun m!3944681 () Bool)

(assert (=> bm!253153 m!3944681))

(declare-fun m!3944683 () Bool)

(assert (=> bm!253154 m!3944683))

(declare-fun m!3944685 () Bool)

(assert (=> b!3506540 m!3944685))

(assert (=> d!1018413 d!1019231))

(declare-fun d!1019233 () Bool)

(assert (=> d!1019233 (= (list!13633 (_1!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494)))))) (list!13634 (c!602788 (_1!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494))))))))))

(declare-fun bs!564054 () Bool)

(assert (= bs!564054 d!1019233))

(declare-fun m!3944687 () Bool)

(assert (=> bs!564054 m!3944687))

(assert (=> d!1018435 d!1019233))

(declare-fun d!1019235 () Bool)

(declare-fun lt!1196028 () Int)

(assert (=> d!1019235 (= lt!1196028 (size!28370 (list!13633 (_1!21690 lt!1195201))))))

(assert (=> d!1019235 (= lt!1196028 (size!28371 (c!602788 (_1!21690 lt!1195201))))))

(assert (=> d!1019235 (= (size!28364 (_1!21690 lt!1195201)) lt!1196028)))

(declare-fun bs!564055 () Bool)

(assert (= bs!564055 d!1019235))

(declare-fun m!3944689 () Bool)

(assert (=> bs!564055 m!3944689))

(assert (=> bs!564055 m!3944689))

(declare-fun m!3944691 () Bool)

(assert (=> bs!564055 m!3944691))

(declare-fun m!3944693 () Bool)

(assert (=> bs!564055 m!3944693))

(assert (=> d!1018435 d!1019235))

(declare-fun b!3506543 () Bool)

(declare-fun res!1414465 () Bool)

(declare-fun e!2171022 () Bool)

(assert (=> b!3506543 (=> (not res!1414465) (not e!2171022))))

(declare-fun lt!1196029 () tuple2!37112)

(assert (=> b!3506543 (= res!1414465 (= (list!13633 (_1!21690 lt!1196029)) (_1!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494))))))))))

(declare-fun e!2171023 () Bool)

(declare-fun b!3506544 () Bool)

(assert (=> b!3506544 (= e!2171023 (= (_2!21690 lt!1196029) (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494)))))))

(declare-fun b!3506545 () Bool)

(declare-fun e!2171021 () Bool)

(assert (=> b!3506545 (= e!2171023 e!2171021)))

(declare-fun res!1414463 () Bool)

(assert (=> b!3506545 (= res!1414463 (< (size!28367 (_2!21690 lt!1196029)) (size!28367 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494))))))))

(assert (=> b!3506545 (=> (not res!1414463) (not e!2171021))))

(declare-fun b!3506546 () Bool)

(assert (=> b!3506546 (= e!2171022 (= (list!13629 (_2!21690 lt!1196029)) (_2!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494))))))))))

(declare-fun b!3506547 () Bool)

(assert (=> b!3506547 (= e!2171021 (not (isEmpty!21747 (_1!21690 lt!1196029))))))

(declare-fun d!1019237 () Bool)

(assert (=> d!1019237 e!2171022))

(declare-fun res!1414464 () Bool)

(assert (=> d!1019237 (=> (not res!1414464) (not e!2171022))))

(assert (=> d!1019237 (= res!1414464 e!2171023)))

(declare-fun c!603304 () Bool)

(assert (=> d!1019237 (= c!603304 (> (size!28364 (_1!21690 lt!1196029)) 0))))

(assert (=> d!1019237 (= lt!1196029 (lexTailRecV2!1080 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494))) (BalanceConc!22237 Empty!11311) (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494))) (BalanceConc!22239 Empty!11312)))))

(assert (=> d!1019237 (= (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494)))) lt!1196029)))

(assert (= (and d!1019237 c!603304) b!3506545))

(assert (= (and d!1019237 (not c!603304)) b!3506544))

(assert (= (and b!3506545 res!1414463) b!3506547))

(assert (= (and d!1019237 res!1414464) b!3506543))

(assert (= (and b!3506543 res!1414465) b!3506546))

(declare-fun m!3944695 () Bool)

(assert (=> b!3506545 m!3944695))

(assert (=> b!3506545 m!3942083))

(declare-fun m!3944697 () Bool)

(assert (=> b!3506545 m!3944697))

(declare-fun m!3944699 () Bool)

(assert (=> b!3506543 m!3944699))

(assert (=> b!3506543 m!3942083))

(declare-fun m!3944701 () Bool)

(assert (=> b!3506543 m!3944701))

(assert (=> b!3506543 m!3944701))

(declare-fun m!3944703 () Bool)

(assert (=> b!3506543 m!3944703))

(declare-fun m!3944705 () Bool)

(assert (=> d!1019237 m!3944705))

(assert (=> d!1019237 m!3942083))

(assert (=> d!1019237 m!3942083))

(declare-fun m!3944707 () Bool)

(assert (=> d!1019237 m!3944707))

(declare-fun m!3944709 () Bool)

(assert (=> b!3506547 m!3944709))

(declare-fun m!3944711 () Bool)

(assert (=> b!3506546 m!3944711))

(assert (=> b!3506546 m!3942083))

(assert (=> b!3506546 m!3944701))

(assert (=> b!3506546 m!3944701))

(assert (=> b!3506546 m!3944703))

(assert (=> d!1018435 d!1019237))

(declare-fun d!1019239 () Bool)

(declare-fun lt!1196030 () BalanceConc!22236)

(assert (=> d!1019239 (= (list!13629 lt!1196030) (printList!1605 thiss!18206 (list!13633 (singletonSeq!2564 (h!42727 tokens!494)))))))

(assert (=> d!1019239 (= lt!1196030 (printTailRec!1552 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494)) 0 (BalanceConc!22237 Empty!11311)))))

(assert (=> d!1019239 (= (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494))) lt!1196030)))

(declare-fun bs!564056 () Bool)

(assert (= bs!564056 d!1019239))

(declare-fun m!3944713 () Bool)

(assert (=> bs!564056 m!3944713))

(assert (=> bs!564056 m!3941345))

(assert (=> bs!564056 m!3942087))

(assert (=> bs!564056 m!3942087))

(declare-fun m!3944715 () Bool)

(assert (=> bs!564056 m!3944715))

(assert (=> bs!564056 m!3941345))

(declare-fun m!3944717 () Bool)

(assert (=> bs!564056 m!3944717))

(assert (=> d!1018435 d!1019239))

(declare-fun d!1019241 () Bool)

(assert (=> d!1019241 (= (list!13633 (singletonSeq!2564 (h!42727 tokens!494))) (list!13634 (c!602788 (singletonSeq!2564 (h!42727 tokens!494)))))))

(declare-fun bs!564057 () Bool)

(assert (= bs!564057 d!1019241))

(declare-fun m!3944719 () Bool)

(assert (=> bs!564057 m!3944719))

(assert (=> d!1018435 d!1019241))

(assert (=> d!1018435 d!1018633))

(assert (=> d!1018435 d!1018615))

(declare-fun b!3506548 () Bool)

(declare-fun res!1414468 () Bool)

(declare-fun e!2171025 () Bool)

(assert (=> b!3506548 (=> (not res!1414468) (not e!2171025))))

(declare-fun lt!1196031 () tuple2!37112)

(assert (=> b!3506548 (= res!1414468 (= (list!13633 (_1!21690 lt!1196031)) (_1!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494)))))))))))

(declare-fun e!2171026 () Bool)

(declare-fun b!3506549 () Bool)

(assert (=> b!3506549 (= e!2171026 (= (_2!21690 lt!1196031) (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))))))))

(declare-fun b!3506550 () Bool)

(declare-fun e!2171024 () Bool)

(assert (=> b!3506550 (= e!2171026 e!2171024)))

(declare-fun res!1414466 () Bool)

(assert (=> b!3506550 (= res!1414466 (< (size!28367 (_2!21690 lt!1196031)) (size!28367 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494)))))))))

(assert (=> b!3506550 (=> (not res!1414466) (not e!2171024))))

(declare-fun b!3506551 () Bool)

(assert (=> b!3506551 (= e!2171025 (= (list!13629 (_2!21690 lt!1196031)) (_2!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494)))))))))))

(declare-fun b!3506552 () Bool)

(assert (=> b!3506552 (= e!2171024 (not (isEmpty!21747 (_1!21690 lt!1196031))))))

(declare-fun d!1019243 () Bool)

(assert (=> d!1019243 e!2171025))

(declare-fun res!1414467 () Bool)

(assert (=> d!1019243 (=> (not res!1414467) (not e!2171025))))

(assert (=> d!1019243 (= res!1414467 e!2171026)))

(declare-fun c!603305 () Bool)

(assert (=> d!1019243 (= c!603305 (> (size!28364 (_1!21690 lt!1196031)) 0))))

(assert (=> d!1019243 (= lt!1196031 (lexTailRecV2!1080 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494)))) (BalanceConc!22237 Empty!11311) (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494)))) (BalanceConc!22239 Empty!11312)))))

(assert (=> d!1019243 (= (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))))) lt!1196031)))

(assert (= (and d!1019243 c!603305) b!3506550))

(assert (= (and d!1019243 (not c!603305)) b!3506549))

(assert (= (and b!3506550 res!1414466) b!3506552))

(assert (= (and d!1019243 res!1414467) b!3506548))

(assert (= (and b!3506548 res!1414468) b!3506551))

(declare-fun m!3944721 () Bool)

(assert (=> b!3506550 m!3944721))

(assert (=> b!3506550 m!3942687))

(declare-fun m!3944723 () Bool)

(assert (=> b!3506550 m!3944723))

(declare-fun m!3944725 () Bool)

(assert (=> b!3506548 m!3944725))

(assert (=> b!3506548 m!3942687))

(declare-fun m!3944727 () Bool)

(assert (=> b!3506548 m!3944727))

(assert (=> b!3506548 m!3944727))

(declare-fun m!3944729 () Bool)

(assert (=> b!3506548 m!3944729))

(declare-fun m!3944731 () Bool)

(assert (=> d!1019243 m!3944731))

(assert (=> d!1019243 m!3942687))

(assert (=> d!1019243 m!3942687))

(declare-fun m!3944733 () Bool)

(assert (=> d!1019243 m!3944733))

(declare-fun m!3944735 () Bool)

(assert (=> b!3506552 m!3944735))

(declare-fun m!3944737 () Bool)

(assert (=> b!3506551 m!3944737))

(assert (=> b!3506551 m!3942687))

(assert (=> b!3506551 m!3944727))

(assert (=> b!3506551 m!3944727))

(assert (=> b!3506551 m!3944729))

(assert (=> d!1018547 d!1019243))

(declare-fun d!1019245 () Bool)

(assert (=> d!1019245 (= (list!13633 (_1!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))))))) (list!13634 (c!602788 (_1!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494)))))))))))

(declare-fun bs!564058 () Bool)

(assert (= bs!564058 d!1019245))

(declare-fun m!3944739 () Bool)

(assert (=> bs!564058 m!3944739))

(assert (=> d!1018547 d!1019245))

(assert (=> d!1018547 d!1018589))

(declare-fun d!1019247 () Bool)

(declare-fun lt!1196032 () Int)

(assert (=> d!1019247 (= lt!1196032 (size!28370 (list!13633 (_1!21690 lt!1195401))))))

(assert (=> d!1019247 (= lt!1196032 (size!28371 (c!602788 (_1!21690 lt!1195401))))))

(assert (=> d!1019247 (= (size!28364 (_1!21690 lt!1195401)) lt!1196032)))

(declare-fun bs!564059 () Bool)

(assert (= bs!564059 d!1019247))

(declare-fun m!3944741 () Bool)

(assert (=> bs!564059 m!3944741))

(assert (=> bs!564059 m!3944741))

(declare-fun m!3944743 () Bool)

(assert (=> bs!564059 m!3944743))

(declare-fun m!3944745 () Bool)

(assert (=> bs!564059 m!3944745))

(assert (=> d!1018547 d!1019247))

(declare-fun d!1019249 () Bool)

(declare-fun lt!1196033 () BalanceConc!22236)

(assert (=> d!1019249 (= (list!13629 lt!1196033) (printList!1605 thiss!18206 (list!13633 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))))))))

(assert (=> d!1019249 (= lt!1196033 (printTailRec!1552 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))) 0 (BalanceConc!22237 Empty!11311)))))

(assert (=> d!1019249 (= (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494)))) lt!1196033)))

(declare-fun bs!564060 () Bool)

(assert (= bs!564060 d!1019249))

(declare-fun m!3944747 () Bool)

(assert (=> bs!564060 m!3944747))

(assert (=> bs!564060 m!3941415))

(assert (=> bs!564060 m!3942693))

(assert (=> bs!564060 m!3942693))

(declare-fun m!3944749 () Bool)

(assert (=> bs!564060 m!3944749))

(assert (=> bs!564060 m!3941415))

(declare-fun m!3944751 () Bool)

(assert (=> bs!564060 m!3944751))

(assert (=> d!1018547 d!1019249))

(assert (=> d!1018547 d!1018615))

(declare-fun d!1019251 () Bool)

(assert (=> d!1019251 (= (list!13633 (singletonSeq!2564 (h!42727 (t!279242 tokens!494)))) (list!13634 (c!602788 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))))))))

(declare-fun bs!564061 () Bool)

(assert (= bs!564061 d!1019251))

(declare-fun m!3944753 () Bool)

(assert (=> bs!564061 m!3944753))

(assert (=> d!1018547 d!1019251))

(declare-fun d!1019253 () Bool)

(assert (=> d!1019253 (= (list!13633 lt!1195450) (list!13634 (c!602788 lt!1195450)))))

(declare-fun bs!564062 () Bool)

(assert (= bs!564062 d!1019253))

(declare-fun m!3944755 () Bool)

(assert (=> bs!564062 m!3944755))

(assert (=> d!1018633 d!1019253))

(declare-fun d!1019255 () Bool)

(declare-fun e!2171027 () Bool)

(assert (=> d!1019255 e!2171027))

(declare-fun res!1414469 () Bool)

(assert (=> d!1019255 (=> (not res!1414469) (not e!2171027))))

(declare-fun lt!1196034 () BalanceConc!22238)

(assert (=> d!1019255 (= res!1414469 (= (list!13633 lt!1196034) (Cons!37307 (h!42727 tokens!494) Nil!37307)))))

(assert (=> d!1019255 (= lt!1196034 (choose!20354 (h!42727 tokens!494)))))

(assert (=> d!1019255 (= (singleton!1144 (h!42727 tokens!494)) lt!1196034)))

(declare-fun b!3506553 () Bool)

(assert (=> b!3506553 (= e!2171027 (isBalanced!3447 (c!602788 lt!1196034)))))

(assert (= (and d!1019255 res!1414469) b!3506553))

(declare-fun m!3944757 () Bool)

(assert (=> d!1019255 m!3944757))

(declare-fun m!3944759 () Bool)

(assert (=> d!1019255 m!3944759))

(declare-fun m!3944761 () Bool)

(assert (=> b!3506553 m!3944761))

(assert (=> d!1018633 d!1019255))

(declare-fun d!1019257 () Bool)

(declare-fun charsToBigInt!1 (List!37428) Int)

(assert (=> d!1019257 (= (inv!17 (value!176298 (h!42727 tokens!494))) (= (charsToBigInt!1 (text!40334 (value!176298 (h!42727 tokens!494)))) (value!176290 (value!176298 (h!42727 tokens!494)))))))

(declare-fun bs!564063 () Bool)

(assert (= bs!564063 d!1019257))

(declare-fun m!3944763 () Bool)

(assert (=> bs!564063 m!3944763))

(assert (=> b!3505388 d!1019257))

(declare-fun bs!564064 () Bool)

(declare-fun d!1019259 () Bool)

(assert (= bs!564064 (and d!1019259 d!1018959)))

(declare-fun lambda!122548 () Int)

(assert (=> bs!564064 (= (= (toValue!7712 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241)))) (= lambda!122548 lambda!122541))))

(assert (=> d!1019259 true))

(assert (=> d!1019259 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (h!42726 rules!2135)))) (dynLambda!15858 order!20027 lambda!122548))))

(assert (=> d!1019259 (= (equivClasses!2206 (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (h!42726 rules!2135)))) (Forall2!943 lambda!122548))))

(declare-fun bs!564065 () Bool)

(assert (= bs!564065 d!1019259))

(declare-fun m!3944765 () Bool)

(assert (=> bs!564065 m!3944765))

(assert (=> b!3505382 d!1019259))

(declare-fun d!1019261 () Bool)

(assert (=> d!1019261 (= (isEmpty!21746 (tail!5480 lt!1195055)) ((_ is Nil!37305) (tail!5480 lt!1195055)))))

(assert (=> b!3505425 d!1019261))

(assert (=> b!3505425 d!1018723))

(assert (=> b!3505397 d!1018593))

(declare-fun d!1019263 () Bool)

(assert (=> d!1019263 (= (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241)))) (v!37044 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241)))))))

(assert (=> b!3505363 d!1019263))

(assert (=> b!3505363 d!1018577))

(declare-fun d!1019265 () Bool)

(assert (=> d!1019265 (= (inv!50519 (tag!6100 (h!42726 (t!279241 rules!2135)))) (= (mod (str.len (value!176297 (tag!6100 (h!42726 (t!279241 rules!2135))))) 2) 0))))

(assert (=> b!3505468 d!1019265))

(declare-fun d!1019267 () Bool)

(declare-fun res!1414470 () Bool)

(declare-fun e!2171028 () Bool)

(assert (=> d!1019267 (=> (not res!1414470) (not e!2171028))))

(assert (=> d!1019267 (= res!1414470 (semiInverseModEq!2307 (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135))))))))

(assert (=> d!1019267 (= (inv!50522 (transformation!5468 (h!42726 (t!279241 rules!2135)))) e!2171028)))

(declare-fun b!3506554 () Bool)

(assert (=> b!3506554 (= e!2171028 (equivClasses!2206 (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135))))))))

(assert (= (and d!1019267 res!1414470) b!3506554))

(declare-fun m!3944767 () Bool)

(assert (=> d!1019267 m!3944767))

(declare-fun m!3944769 () Bool)

(assert (=> b!3506554 m!3944769))

(assert (=> b!3505468 d!1019267))

(declare-fun d!1019269 () Bool)

(declare-fun lt!1196035 () BalanceConc!22236)

(assert (=> d!1019269 (= (list!13629 lt!1196035) (originalCharacters!6182 (h!42727 (t!279242 (t!279242 tokens!494)))))))

(assert (=> d!1019269 (= lt!1196035 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (value!176298 (h!42727 (t!279242 (t!279242 tokens!494))))))))

(assert (=> d!1019269 (= (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494)))) lt!1196035)))

(declare-fun b_lambda!102005 () Bool)

(assert (=> (not b_lambda!102005) (not d!1019269)))

(declare-fun t!279491 () Bool)

(declare-fun tb!194563 () Bool)

(assert (=> (and b!3505488 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494))))))) t!279491) tb!194563))

(declare-fun b!3506555 () Bool)

(declare-fun e!2171029 () Bool)

(declare-fun tp!1084864 () Bool)

(assert (=> b!3506555 (= e!2171029 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (value!176298 (h!42727 (t!279242 (t!279242 tokens!494))))))) tp!1084864))))

(declare-fun result!238856 () Bool)

(assert (=> tb!194563 (= result!238856 (and (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (value!176298 (h!42727 (t!279242 (t!279242 tokens!494)))))) e!2171029))))

(assert (= tb!194563 b!3506555))

(declare-fun m!3944771 () Bool)

(assert (=> b!3506555 m!3944771))

(declare-fun m!3944773 () Bool)

(assert (=> tb!194563 m!3944773))

(assert (=> d!1019269 t!279491))

(declare-fun b_and!248935 () Bool)

(assert (= b_and!248907 (and (=> t!279491 result!238856) b_and!248935)))

(declare-fun tb!194565 () Bool)

(declare-fun t!279493 () Bool)

(assert (=> (and b!3504518 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494))))))) t!279493) tb!194565))

(declare-fun result!238858 () Bool)

(assert (= result!238858 result!238856))

(assert (=> d!1019269 t!279493))

(declare-fun b_and!248937 () Bool)

(assert (= b_and!248911 (and (=> t!279493 result!238858) b_and!248937)))

(declare-fun tb!194567 () Bool)

(declare-fun t!279495 () Bool)

(assert (=> (and b!3505469 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494))))))) t!279495) tb!194567))

(declare-fun result!238860 () Bool)

(assert (= result!238860 result!238856))

(assert (=> d!1019269 t!279495))

(declare-fun b_and!248939 () Bool)

(assert (= b_and!248905 (and (=> t!279495 result!238860) b_and!248939)))

(declare-fun t!279497 () Bool)

(declare-fun tb!194569 () Bool)

(assert (=> (and b!3504516 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494))))))) t!279497) tb!194569))

(declare-fun result!238862 () Bool)

(assert (= result!238862 result!238856))

(assert (=> d!1019269 t!279497))

(declare-fun b_and!248941 () Bool)

(assert (= b_and!248909 (and (=> t!279497 result!238862) b_and!248941)))

(declare-fun tb!194571 () Bool)

(declare-fun t!279499 () Bool)

(assert (=> (and b!3504500 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494))))))) t!279499) tb!194571))

(declare-fun result!238864 () Bool)

(assert (= result!238864 result!238856))

(assert (=> d!1019269 t!279499))

(declare-fun b_and!248943 () Bool)

(assert (= b_and!248913 (and (=> t!279499 result!238864) b_and!248943)))

(declare-fun m!3944775 () Bool)

(assert (=> d!1019269 m!3944775))

(declare-fun m!3944777 () Bool)

(assert (=> d!1019269 m!3944777))

(assert (=> b!3504811 d!1019269))

(declare-fun d!1019271 () Bool)

(assert (=> d!1019271 (= (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494))))) (list!13632 (c!602787 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494)))))))))

(declare-fun bs!564066 () Bool)

(assert (= bs!564066 d!1019271))

(declare-fun m!3944779 () Bool)

(assert (=> bs!564066 m!3944779))

(assert (=> b!3504811 d!1019271))

(declare-fun d!1019273 () Bool)

(declare-fun c!603306 () Bool)

(assert (=> d!1019273 (= c!603306 ((_ is Cons!37307) (t!279242 (t!279242 (t!279242 tokens!494)))))))

(declare-fun e!2171030 () List!37429)

(assert (=> d!1019273 (= (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 (t!279242 tokens!494))) separatorToken!241) e!2171030)))

(declare-fun b!3506556 () Bool)

(assert (=> b!3506556 (= e!2171030 (++!9231 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 (t!279242 tokens!494)))))) (list!13629 (charsOf!3482 separatorToken!241))) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 (t!279242 (t!279242 tokens!494)))) separatorToken!241)))))

(declare-fun b!3506557 () Bool)

(assert (=> b!3506557 (= e!2171030 Nil!37305)))

(assert (= (and d!1019273 c!603306) b!3506556))

(assert (= (and d!1019273 (not c!603306)) b!3506557))

(assert (=> b!3506556 m!3941487))

(declare-fun m!3944781 () Bool)

(assert (=> b!3506556 m!3944781))

(declare-fun m!3944783 () Bool)

(assert (=> b!3506556 m!3944783))

(declare-fun m!3944785 () Bool)

(assert (=> b!3506556 m!3944785))

(declare-fun m!3944787 () Bool)

(assert (=> b!3506556 m!3944787))

(assert (=> b!3506556 m!3941497))

(assert (=> b!3506556 m!3944781))

(declare-fun m!3944789 () Bool)

(assert (=> b!3506556 m!3944789))

(assert (=> b!3506556 m!3941487))

(assert (=> b!3506556 m!3941497))

(assert (=> b!3506556 m!3944789))

(assert (=> b!3506556 m!3944787))

(assert (=> b!3506556 m!3944783))

(assert (=> b!3504811 d!1019273))

(declare-fun d!1019275 () Bool)

(declare-fun e!2171032 () Bool)

(assert (=> d!1019275 e!2171032))

(declare-fun res!1414472 () Bool)

(assert (=> d!1019275 (=> (not res!1414472) (not e!2171032))))

(declare-fun lt!1196036 () List!37429)

(assert (=> d!1019275 (= res!1414472 (= (content!5247 lt!1196036) ((_ map or) (content!5247 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494)))))) (content!5247 (list!13629 (charsOf!3482 separatorToken!241))))))))

(declare-fun e!2171031 () List!37429)

(assert (=> d!1019275 (= lt!1196036 e!2171031)))

(declare-fun c!603307 () Bool)

(assert (=> d!1019275 (= c!603307 ((_ is Nil!37305) (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494)))))))))

(assert (=> d!1019275 (= (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494))))) (list!13629 (charsOf!3482 separatorToken!241))) lt!1196036)))

(declare-fun b!3506559 () Bool)

(assert (=> b!3506559 (= e!2171031 (Cons!37305 (h!42725 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494)))))) (++!9231 (t!279240 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494)))))) (list!13629 (charsOf!3482 separatorToken!241)))))))

(declare-fun b!3506558 () Bool)

(assert (=> b!3506558 (= e!2171031 (list!13629 (charsOf!3482 separatorToken!241)))))

(declare-fun b!3506561 () Bool)

(assert (=> b!3506561 (= e!2171032 (or (not (= (list!13629 (charsOf!3482 separatorToken!241)) Nil!37305)) (= lt!1196036 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494))))))))))

(declare-fun b!3506560 () Bool)

(declare-fun res!1414471 () Bool)

(assert (=> b!3506560 (=> (not res!1414471) (not e!2171032))))

(assert (=> b!3506560 (= res!1414471 (= (size!28365 lt!1196036) (+ (size!28365 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494)))))) (size!28365 (list!13629 (charsOf!3482 separatorToken!241))))))))

(assert (= (and d!1019275 c!603307) b!3506558))

(assert (= (and d!1019275 (not c!603307)) b!3506559))

(assert (= (and d!1019275 res!1414472) b!3506560))

(assert (= (and b!3506560 res!1414471) b!3506561))

(declare-fun m!3944791 () Bool)

(assert (=> d!1019275 m!3944791))

(assert (=> d!1019275 m!3941927))

(declare-fun m!3944793 () Bool)

(assert (=> d!1019275 m!3944793))

(assert (=> d!1019275 m!3941497))

(declare-fun m!3944795 () Bool)

(assert (=> d!1019275 m!3944795))

(assert (=> b!3506559 m!3941497))

(declare-fun m!3944797 () Bool)

(assert (=> b!3506559 m!3944797))

(declare-fun m!3944799 () Bool)

(assert (=> b!3506560 m!3944799))

(assert (=> b!3506560 m!3941927))

(declare-fun m!3944801 () Bool)

(assert (=> b!3506560 m!3944801))

(assert (=> b!3506560 m!3941497))

(declare-fun m!3944803 () Bool)

(assert (=> b!3506560 m!3944803))

(assert (=> b!3504811 d!1019275))

(assert (=> b!3504811 d!1018389))

(assert (=> b!3504811 d!1018399))

(declare-fun d!1019277 () Bool)

(declare-fun e!2171034 () Bool)

(assert (=> d!1019277 e!2171034))

(declare-fun res!1414474 () Bool)

(assert (=> d!1019277 (=> (not res!1414474) (not e!2171034))))

(declare-fun lt!1196037 () List!37429)

(assert (=> d!1019277 (= res!1414474 (= (content!5247 lt!1196037) ((_ map or) (content!5247 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494))))) (list!13629 (charsOf!3482 separatorToken!241)))) (content!5247 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 (t!279242 tokens!494))) separatorToken!241)))))))

(declare-fun e!2171033 () List!37429)

(assert (=> d!1019277 (= lt!1196037 e!2171033)))

(declare-fun c!603308 () Bool)

(assert (=> d!1019277 (= c!603308 ((_ is Nil!37305) (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494))))) (list!13629 (charsOf!3482 separatorToken!241)))))))

(assert (=> d!1019277 (= (++!9231 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494))))) (list!13629 (charsOf!3482 separatorToken!241))) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 (t!279242 tokens!494))) separatorToken!241)) lt!1196037)))

(declare-fun b!3506563 () Bool)

(assert (=> b!3506563 (= e!2171033 (Cons!37305 (h!42725 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494))))) (list!13629 (charsOf!3482 separatorToken!241)))) (++!9231 (t!279240 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494))))) (list!13629 (charsOf!3482 separatorToken!241)))) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 (t!279242 tokens!494))) separatorToken!241))))))

(declare-fun b!3506562 () Bool)

(assert (=> b!3506562 (= e!2171033 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 (t!279242 tokens!494))) separatorToken!241))))

(declare-fun b!3506565 () Bool)

(assert (=> b!3506565 (= e!2171034 (or (not (= (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 (t!279242 tokens!494))) separatorToken!241) Nil!37305)) (= lt!1196037 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494))))) (list!13629 (charsOf!3482 separatorToken!241))))))))

(declare-fun b!3506564 () Bool)

(declare-fun res!1414473 () Bool)

(assert (=> b!3506564 (=> (not res!1414473) (not e!2171034))))

(assert (=> b!3506564 (= res!1414473 (= (size!28365 lt!1196037) (+ (size!28365 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 (t!279242 tokens!494))))) (list!13629 (charsOf!3482 separatorToken!241)))) (size!28365 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 (t!279242 tokens!494))) separatorToken!241)))))))

(assert (= (and d!1019277 c!603308) b!3506562))

(assert (= (and d!1019277 (not c!603308)) b!3506563))

(assert (= (and d!1019277 res!1414474) b!3506564))

(assert (= (and b!3506564 res!1414473) b!3506565))

(declare-fun m!3944805 () Bool)

(assert (=> d!1019277 m!3944805))

(assert (=> d!1019277 m!3941921))

(declare-fun m!3944807 () Bool)

(assert (=> d!1019277 m!3944807))

(assert (=> d!1019277 m!3941923))

(declare-fun m!3944809 () Bool)

(assert (=> d!1019277 m!3944809))

(assert (=> b!3506563 m!3941923))

(declare-fun m!3944811 () Bool)

(assert (=> b!3506563 m!3944811))

(declare-fun m!3944813 () Bool)

(assert (=> b!3506564 m!3944813))

(assert (=> b!3506564 m!3941921))

(declare-fun m!3944815 () Bool)

(assert (=> b!3506564 m!3944815))

(assert (=> b!3506564 m!3941923))

(declare-fun m!3944817 () Bool)

(assert (=> b!3506564 m!3944817))

(assert (=> b!3504811 d!1019277))

(declare-fun d!1019279 () Bool)

(declare-fun e!2171036 () Bool)

(assert (=> d!1019279 e!2171036))

(declare-fun res!1414476 () Bool)

(assert (=> d!1019279 (=> (not res!1414476) (not e!2171036))))

(declare-fun lt!1196038 () List!37429)

(assert (=> d!1019279 (= res!1414476 (= (content!5247 lt!1196038) ((_ map or) (content!5247 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))) (content!5247 (_2!21691 (get!11971 lt!1195251))))))))

(declare-fun e!2171035 () List!37429)

(assert (=> d!1019279 (= lt!1196038 e!2171035)))

(declare-fun c!603309 () Bool)

(assert (=> d!1019279 (= c!603309 ((_ is Nil!37305) (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))))))

(assert (=> d!1019279 (= (++!9231 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251)))) (_2!21691 (get!11971 lt!1195251))) lt!1196038)))

(declare-fun b!3506567 () Bool)

(assert (=> b!3506567 (= e!2171035 (Cons!37305 (h!42725 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))) (++!9231 (t!279240 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))) (_2!21691 (get!11971 lt!1195251)))))))

(declare-fun b!3506566 () Bool)

(assert (=> b!3506566 (= e!2171035 (_2!21691 (get!11971 lt!1195251)))))

(declare-fun b!3506569 () Bool)

(assert (=> b!3506569 (= e!2171036 (or (not (= (_2!21691 (get!11971 lt!1195251)) Nil!37305)) (= lt!1196038 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251)))))))))

(declare-fun b!3506568 () Bool)

(declare-fun res!1414475 () Bool)

(assert (=> b!3506568 (=> (not res!1414475) (not e!2171036))))

(assert (=> b!3506568 (= res!1414475 (= (size!28365 lt!1196038) (+ (size!28365 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195251))))) (size!28365 (_2!21691 (get!11971 lt!1195251))))))))

(assert (= (and d!1019279 c!603309) b!3506566))

(assert (= (and d!1019279 (not c!603309)) b!3506567))

(assert (= (and d!1019279 res!1414476) b!3506568))

(assert (= (and b!3506568 res!1414475) b!3506569))

(declare-fun m!3944819 () Bool)

(assert (=> d!1019279 m!3944819))

(assert (=> d!1019279 m!3942227))

(declare-fun m!3944821 () Bool)

(assert (=> d!1019279 m!3944821))

(declare-fun m!3944823 () Bool)

(assert (=> d!1019279 m!3944823))

(declare-fun m!3944825 () Bool)

(assert (=> b!3506567 m!3944825))

(declare-fun m!3944827 () Bool)

(assert (=> b!3506568 m!3944827))

(assert (=> b!3506568 m!3942227))

(declare-fun m!3944829 () Bool)

(assert (=> b!3506568 m!3944829))

(assert (=> b!3506568 m!3942221))

(assert (=> b!3504998 d!1019279))

(assert (=> b!3504998 d!1018691))

(assert (=> b!3504998 d!1018693))

(assert (=> b!3504998 d!1018695))

(assert (=> b!3505173 d!1019181))

(assert (=> b!3504792 d!1018361))

(assert (=> b!3504792 d!1018357))

(declare-fun d!1019281 () Bool)

(declare-fun e!2171038 () Bool)

(assert (=> d!1019281 e!2171038))

(declare-fun res!1414478 () Bool)

(assert (=> d!1019281 (=> (not res!1414478) (not e!2171038))))

(declare-fun lt!1196039 () List!37429)

(assert (=> d!1019281 (= res!1414478 (= (content!5247 lt!1196039) ((_ map or) (content!5247 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) (list!13629 (charsOf!3482 separatorToken!241)))) (content!5247 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 tokens!494) separatorToken!241)))))))

(declare-fun e!2171037 () List!37429)

(assert (=> d!1019281 (= lt!1196039 e!2171037)))

(declare-fun c!603310 () Bool)

(assert (=> d!1019281 (= c!603310 ((_ is Nil!37305) (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) (list!13629 (charsOf!3482 separatorToken!241)))))))

(assert (=> d!1019281 (= (++!9231 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) (list!13629 (charsOf!3482 separatorToken!241))) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 tokens!494) separatorToken!241)) lt!1196039)))

(declare-fun b!3506571 () Bool)

(assert (=> b!3506571 (= e!2171037 (Cons!37305 (h!42725 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) (list!13629 (charsOf!3482 separatorToken!241)))) (++!9231 (t!279240 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) (list!13629 (charsOf!3482 separatorToken!241)))) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 tokens!494) separatorToken!241))))))

(declare-fun b!3506570 () Bool)

(assert (=> b!3506570 (= e!2171037 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 tokens!494) separatorToken!241))))

(declare-fun b!3506573 () Bool)

(assert (=> b!3506573 (= e!2171038 (or (not (= (printWithSeparatorTokenList!344 thiss!18206 (t!279242 tokens!494) separatorToken!241) Nil!37305)) (= lt!1196039 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) (list!13629 (charsOf!3482 separatorToken!241))))))))

(declare-fun b!3506572 () Bool)

(declare-fun res!1414477 () Bool)

(assert (=> b!3506572 (=> (not res!1414477) (not e!2171038))))

(assert (=> b!3506572 (= res!1414477 (= (size!28365 lt!1196039) (+ (size!28365 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) (list!13629 (charsOf!3482 separatorToken!241)))) (size!28365 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 tokens!494) separatorToken!241)))))))

(assert (= (and d!1019281 c!603310) b!3506570))

(assert (= (and d!1019281 (not c!603310)) b!3506571))

(assert (= (and d!1019281 res!1414478) b!3506572))

(assert (= (and b!3506572 res!1414477) b!3506573))

(declare-fun m!3944831 () Bool)

(assert (=> d!1019281 m!3944831))

(assert (=> d!1019281 m!3941881))

(declare-fun m!3944833 () Bool)

(assert (=> d!1019281 m!3944833))

(assert (=> d!1019281 m!3941503))

(declare-fun m!3944835 () Bool)

(assert (=> d!1019281 m!3944835))

(assert (=> b!3506571 m!3941503))

(declare-fun m!3944837 () Bool)

(assert (=> b!3506571 m!3944837))

(declare-fun m!3944839 () Bool)

(assert (=> b!3506572 m!3944839))

(assert (=> b!3506572 m!3941881))

(declare-fun m!3944841 () Bool)

(assert (=> b!3506572 m!3944841))

(assert (=> b!3506572 m!3941503))

(declare-fun m!3944843 () Bool)

(assert (=> b!3506572 m!3944843))

(assert (=> b!3504792 d!1019281))

(assert (=> b!3504792 d!1018389))

(assert (=> b!3504792 d!1018399))

(declare-fun d!1019283 () Bool)

(declare-fun e!2171040 () Bool)

(assert (=> d!1019283 e!2171040))

(declare-fun res!1414480 () Bool)

(assert (=> d!1019283 (=> (not res!1414480) (not e!2171040))))

(declare-fun lt!1196040 () List!37429)

(assert (=> d!1019283 (= res!1414480 (= (content!5247 lt!1196040) ((_ map or) (content!5247 (list!13629 (charsOf!3482 (h!42727 tokens!494)))) (content!5247 (list!13629 (charsOf!3482 separatorToken!241))))))))

(declare-fun e!2171039 () List!37429)

(assert (=> d!1019283 (= lt!1196040 e!2171039)))

(declare-fun c!603311 () Bool)

(assert (=> d!1019283 (= c!603311 ((_ is Nil!37305) (list!13629 (charsOf!3482 (h!42727 tokens!494)))))))

(assert (=> d!1019283 (= (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) (list!13629 (charsOf!3482 separatorToken!241))) lt!1196040)))

(declare-fun b!3506575 () Bool)

(assert (=> b!3506575 (= e!2171039 (Cons!37305 (h!42725 (list!13629 (charsOf!3482 (h!42727 tokens!494)))) (++!9231 (t!279240 (list!13629 (charsOf!3482 (h!42727 tokens!494)))) (list!13629 (charsOf!3482 separatorToken!241)))))))

(declare-fun b!3506574 () Bool)

(assert (=> b!3506574 (= e!2171039 (list!13629 (charsOf!3482 separatorToken!241)))))

(declare-fun b!3506577 () Bool)

(assert (=> b!3506577 (= e!2171040 (or (not (= (list!13629 (charsOf!3482 separatorToken!241)) Nil!37305)) (= lt!1196040 (list!13629 (charsOf!3482 (h!42727 tokens!494))))))))

(declare-fun b!3506576 () Bool)

(declare-fun res!1414479 () Bool)

(assert (=> b!3506576 (=> (not res!1414479) (not e!2171040))))

(assert (=> b!3506576 (= res!1414479 (= (size!28365 lt!1196040) (+ (size!28365 (list!13629 (charsOf!3482 (h!42727 tokens!494)))) (size!28365 (list!13629 (charsOf!3482 separatorToken!241))))))))

(assert (= (and d!1019283 c!603311) b!3506574))

(assert (= (and d!1019283 (not c!603311)) b!3506575))

(assert (= (and d!1019283 res!1414480) b!3506576))

(assert (= (and b!3506576 res!1414479) b!3506577))

(declare-fun m!3944845 () Bool)

(assert (=> d!1019283 m!3944845))

(assert (=> d!1019283 m!3941389))

(declare-fun m!3944847 () Bool)

(assert (=> d!1019283 m!3944847))

(assert (=> d!1019283 m!3941497))

(assert (=> d!1019283 m!3944795))

(assert (=> b!3506575 m!3941497))

(declare-fun m!3944849 () Bool)

(assert (=> b!3506575 m!3944849))

(declare-fun m!3944851 () Bool)

(assert (=> b!3506576 m!3944851))

(assert (=> b!3506576 m!3941389))

(declare-fun m!3944853 () Bool)

(assert (=> b!3506576 m!3944853))

(assert (=> b!3506576 m!3941497))

(assert (=> b!3506576 m!3944803))

(assert (=> b!3504792 d!1019283))

(assert (=> b!3504792 d!1018393))

(declare-fun d!1019285 () Bool)

(declare-fun lt!1196041 () Bool)

(assert (=> d!1019285 (= lt!1196041 (isEmpty!21746 (list!13629 (_2!21690 lt!1195201))))))

(assert (=> d!1019285 (= lt!1196041 (isEmpty!21753 (c!602787 (_2!21690 lt!1195201))))))

(assert (=> d!1019285 (= (isEmpty!21744 (_2!21690 lt!1195201)) lt!1196041)))

(declare-fun bs!564067 () Bool)

(assert (= bs!564067 d!1019285))

(declare-fun m!3944855 () Bool)

(assert (=> bs!564067 m!3944855))

(assert (=> bs!564067 m!3944855))

(declare-fun m!3944857 () Bool)

(assert (=> bs!564067 m!3944857))

(declare-fun m!3944859 () Bool)

(assert (=> bs!564067 m!3944859))

(assert (=> b!3504942 d!1019285))

(declare-fun d!1019287 () Bool)

(assert (=> d!1019287 (= (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339)))) (list!13632 (c!602787 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))))))

(declare-fun bs!564068 () Bool)

(assert (= bs!564068 d!1019287))

(declare-fun m!3944861 () Bool)

(assert (=> bs!564068 m!3944861))

(assert (=> b!3505141 d!1019287))

(declare-fun d!1019289 () Bool)

(declare-fun lt!1196042 () BalanceConc!22236)

(assert (=> d!1019289 (= (list!13629 lt!1196042) (originalCharacters!6182 (_1!21691 (get!11971 lt!1195339))))))

(assert (=> d!1019289 (= lt!1196042 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339))))) (value!176298 (_1!21691 (get!11971 lt!1195339)))))))

(assert (=> d!1019289 (= (charsOf!3482 (_1!21691 (get!11971 lt!1195339))) lt!1196042)))

(declare-fun b_lambda!102007 () Bool)

(assert (=> (not b_lambda!102007) (not d!1019289)))

(declare-fun tb!194573 () Bool)

(declare-fun t!279501 () Bool)

(assert (=> (and b!3504500 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279501) tb!194573))

(declare-fun b!3506578 () Bool)

(declare-fun e!2171041 () Bool)

(declare-fun tp!1084865 () Bool)

(assert (=> b!3506578 (= e!2171041 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339))))) (value!176298 (_1!21691 (get!11971 lt!1195339)))))) tp!1084865))))

(declare-fun result!238866 () Bool)

(assert (=> tb!194573 (= result!238866 (and (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339))))) (value!176298 (_1!21691 (get!11971 lt!1195339))))) e!2171041))))

(assert (= tb!194573 b!3506578))

(declare-fun m!3944863 () Bool)

(assert (=> b!3506578 m!3944863))

(declare-fun m!3944865 () Bool)

(assert (=> tb!194573 m!3944865))

(assert (=> d!1019289 t!279501))

(declare-fun b_and!248945 () Bool)

(assert (= b_and!248943 (and (=> t!279501 result!238866) b_and!248945)))

(declare-fun tb!194575 () Bool)

(declare-fun t!279503 () Bool)

(assert (=> (and b!3504516 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279503) tb!194575))

(declare-fun result!238868 () Bool)

(assert (= result!238868 result!238866))

(assert (=> d!1019289 t!279503))

(declare-fun b_and!248947 () Bool)

(assert (= b_and!248941 (and (=> t!279503 result!238868) b_and!248947)))

(declare-fun tb!194577 () Bool)

(declare-fun t!279505 () Bool)

(assert (=> (and b!3505488 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279505) tb!194577))

(declare-fun result!238870 () Bool)

(assert (= result!238870 result!238866))

(assert (=> d!1019289 t!279505))

(declare-fun b_and!248949 () Bool)

(assert (= b_and!248935 (and (=> t!279505 result!238870) b_and!248949)))

(declare-fun tb!194579 () Bool)

(declare-fun t!279507 () Bool)

(assert (=> (and b!3504518 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279507) tb!194579))

(declare-fun result!238872 () Bool)

(assert (= result!238872 result!238866))

(assert (=> d!1019289 t!279507))

(declare-fun b_and!248951 () Bool)

(assert (= b_and!248937 (and (=> t!279507 result!238872) b_and!248951)))

(declare-fun t!279509 () Bool)

(declare-fun tb!194581 () Bool)

(assert (=> (and b!3505469 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279509) tb!194581))

(declare-fun result!238874 () Bool)

(assert (= result!238874 result!238866))

(assert (=> d!1019289 t!279509))

(declare-fun b_and!248953 () Bool)

(assert (= b_and!248939 (and (=> t!279509 result!238874) b_and!248953)))

(declare-fun m!3944867 () Bool)

(assert (=> d!1019289 m!3944867))

(declare-fun m!3944869 () Bool)

(assert (=> d!1019289 m!3944869))

(assert (=> b!3505141 d!1019289))

(assert (=> b!3505141 d!1018901))

(declare-fun d!1019291 () Bool)

(declare-fun nullableFct!1020 (Regex!10227) Bool)

(assert (=> d!1019291 (= (nullable!3512 (regex!5468 lt!1195056)) (nullableFct!1020 (regex!5468 lt!1195056)))))

(declare-fun bs!564069 () Bool)

(assert (= bs!564069 d!1019291))

(declare-fun m!3944871 () Bool)

(assert (=> bs!564069 m!3944871))

(assert (=> b!3505418 d!1019291))

(declare-fun d!1019293 () Bool)

(assert (=> d!1019293 (= (nullable!3512 (regex!5468 lt!1195087)) (nullableFct!1020 (regex!5468 lt!1195087)))))

(declare-fun bs!564070 () Bool)

(assert (= bs!564070 d!1019293))

(declare-fun m!3944873 () Bool)

(assert (=> bs!564070 m!3944873))

(assert (=> b!3504876 d!1019293))

(declare-fun d!1019295 () Bool)

(declare-fun c!603312 () Bool)

(assert (=> d!1019295 (= c!603312 ((_ is Node!11311) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494)))))))))

(declare-fun e!2171042 () Bool)

(assert (=> d!1019295 (= (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494)))))) e!2171042)))

(declare-fun b!3506579 () Bool)

(assert (=> b!3506579 (= e!2171042 (inv!50528 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494)))))))))

(declare-fun b!3506580 () Bool)

(declare-fun e!2171043 () Bool)

(assert (=> b!3506580 (= e!2171042 e!2171043)))

(declare-fun res!1414481 () Bool)

(assert (=> b!3506580 (= res!1414481 (not ((_ is Leaf!17656) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494))))))))))

(assert (=> b!3506580 (=> res!1414481 e!2171043)))

(declare-fun b!3506581 () Bool)

(assert (=> b!3506581 (= e!2171043 (inv!50529 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494)))))))))

(assert (= (and d!1019295 c!603312) b!3506579))

(assert (= (and d!1019295 (not c!603312)) b!3506580))

(assert (= (and b!3506580 (not res!1414481)) b!3506581))

(declare-fun m!3944875 () Bool)

(assert (=> b!3506579 m!3944875))

(declare-fun m!3944877 () Bool)

(assert (=> b!3506581 m!3944877))

(assert (=> b!3504819 d!1019295))

(declare-fun d!1019297 () Bool)

(assert (=> d!1019297 (= (isEmpty!21746 (originalCharacters!6182 (h!42727 tokens!494))) ((_ is Nil!37305) (originalCharacters!6182 (h!42727 tokens!494))))))

(assert (=> d!1018443 d!1019297))

(declare-fun d!1019299 () Bool)

(declare-fun lt!1196043 () Bool)

(assert (=> d!1019299 (= lt!1196043 (isEmpty!21746 (list!13629 (_2!21690 lt!1195401))))))

(assert (=> d!1019299 (= lt!1196043 (isEmpty!21753 (c!602787 (_2!21690 lt!1195401))))))

(assert (=> d!1019299 (= (isEmpty!21744 (_2!21690 lt!1195401)) lt!1196043)))

(declare-fun bs!564071 () Bool)

(assert (= bs!564071 d!1019299))

(declare-fun m!3944879 () Bool)

(assert (=> bs!564071 m!3944879))

(assert (=> bs!564071 m!3944879))

(declare-fun m!3944881 () Bool)

(assert (=> bs!564071 m!3944881))

(declare-fun m!3944883 () Bool)

(assert (=> bs!564071 m!3944883))

(assert (=> b!3505251 d!1019299))

(assert (=> b!3504928 d!1018601))

(assert (=> b!3504973 d!1018911))

(declare-fun b!3506584 () Bool)

(declare-fun e!2171045 () List!37429)

(assert (=> b!3506584 (= e!2171045 (list!13636 (xs!14497 (c!602787 (charsOf!3482 separatorToken!241)))))))

(declare-fun b!3506583 () Bool)

(declare-fun e!2171044 () List!37429)

(assert (=> b!3506583 (= e!2171044 e!2171045)))

(declare-fun c!603314 () Bool)

(assert (=> b!3506583 (= c!603314 ((_ is Leaf!17656) (c!602787 (charsOf!3482 separatorToken!241))))))

(declare-fun b!3506582 () Bool)

(assert (=> b!3506582 (= e!2171044 Nil!37305)))

(declare-fun d!1019301 () Bool)

(declare-fun c!603313 () Bool)

(assert (=> d!1019301 (= c!603313 ((_ is Empty!11311) (c!602787 (charsOf!3482 separatorToken!241))))))

(assert (=> d!1019301 (= (list!13632 (c!602787 (charsOf!3482 separatorToken!241))) e!2171044)))

(declare-fun b!3506585 () Bool)

(assert (=> b!3506585 (= e!2171045 (++!9231 (list!13632 (left!29131 (c!602787 (charsOf!3482 separatorToken!241)))) (list!13632 (right!29461 (c!602787 (charsOf!3482 separatorToken!241))))))))

(assert (= (and d!1019301 c!603313) b!3506582))

(assert (= (and d!1019301 (not c!603313)) b!3506583))

(assert (= (and b!3506583 c!603314) b!3506584))

(assert (= (and b!3506583 (not c!603314)) b!3506585))

(declare-fun m!3944885 () Bool)

(assert (=> b!3506584 m!3944885))

(declare-fun m!3944887 () Bool)

(assert (=> b!3506585 m!3944887))

(declare-fun m!3944889 () Bool)

(assert (=> b!3506585 m!3944889))

(assert (=> b!3506585 m!3944887))

(assert (=> b!3506585 m!3944889))

(declare-fun m!3944891 () Bool)

(assert (=> b!3506585 m!3944891))

(assert (=> d!1018399 d!1019301))

(declare-fun d!1019303 () Bool)

(assert (=> d!1019303 (= (list!13633 lt!1195427) (list!13634 (c!602788 lt!1195427)))))

(declare-fun bs!564072 () Bool)

(assert (= bs!564072 d!1019303))

(declare-fun m!3944893 () Bool)

(assert (=> bs!564072 m!3944893))

(assert (=> d!1018589 d!1019303))

(declare-fun d!1019305 () Bool)

(declare-fun e!2171046 () Bool)

(assert (=> d!1019305 e!2171046))

(declare-fun res!1414482 () Bool)

(assert (=> d!1019305 (=> (not res!1414482) (not e!2171046))))

(declare-fun lt!1196044 () BalanceConc!22238)

(assert (=> d!1019305 (= res!1414482 (= (list!13633 lt!1196044) (Cons!37307 (h!42727 (t!279242 tokens!494)) Nil!37307)))))

(assert (=> d!1019305 (= lt!1196044 (choose!20354 (h!42727 (t!279242 tokens!494))))))

(assert (=> d!1019305 (= (singleton!1144 (h!42727 (t!279242 tokens!494))) lt!1196044)))

(declare-fun b!3506586 () Bool)

(assert (=> b!3506586 (= e!2171046 (isBalanced!3447 (c!602788 lt!1196044)))))

(assert (= (and d!1019305 res!1414482) b!3506586))

(declare-fun m!3944895 () Bool)

(assert (=> d!1019305 m!3944895))

(declare-fun m!3944897 () Bool)

(assert (=> d!1019305 m!3944897))

(declare-fun m!3944899 () Bool)

(assert (=> b!3506586 m!3944899))

(assert (=> d!1018589 d!1019305))

(assert (=> b!3504907 d!1018601))

(declare-fun d!1019307 () Bool)

(declare-fun lt!1196045 () Int)

(assert (=> d!1019307 (= lt!1196045 (size!28365 (list!13629 (_2!21690 lt!1195353))))))

(assert (=> d!1019307 (= lt!1196045 (size!28372 (c!602787 (_2!21690 lt!1195353))))))

(assert (=> d!1019307 (= (size!28367 (_2!21690 lt!1195353)) lt!1196045)))

(declare-fun bs!564073 () Bool)

(assert (= bs!564073 d!1019307))

(assert (=> bs!564073 m!3942569))

(assert (=> bs!564073 m!3942569))

(declare-fun m!3944901 () Bool)

(assert (=> bs!564073 m!3944901))

(declare-fun m!3944903 () Bool)

(assert (=> bs!564073 m!3944903))

(assert (=> b!3505160 d!1019307))

(declare-fun d!1019309 () Bool)

(declare-fun lt!1196046 () Int)

(assert (=> d!1019309 (= lt!1196046 (size!28365 (list!13629 lt!1195057)))))

(assert (=> d!1019309 (= lt!1196046 (size!28372 (c!602787 lt!1195057)))))

(assert (=> d!1019309 (= (size!28367 lt!1195057) lt!1196046)))

(declare-fun bs!564074 () Bool)

(assert (= bs!564074 d!1019309))

(assert (=> bs!564074 m!3942559))

(assert (=> bs!564074 m!3942559))

(declare-fun m!3944905 () Bool)

(assert (=> bs!564074 m!3944905))

(declare-fun m!3944907 () Bool)

(assert (=> bs!564074 m!3944907))

(assert (=> b!3505160 d!1019309))

(declare-fun d!1019311 () Bool)

(assert (=> d!1019311 (= (isDefined!5854 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494))))) (not (isEmpty!21756 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))))))))

(declare-fun bs!564075 () Bool)

(assert (= bs!564075 d!1019311))

(assert (=> bs!564075 m!3941443))

(declare-fun m!3944909 () Bool)

(assert (=> bs!564075 m!3944909))

(assert (=> d!1018491 d!1019311))

(assert (=> d!1018491 d!1018573))

(declare-fun d!1019313 () Bool)

(declare-fun e!2171047 () Bool)

(assert (=> d!1019313 e!2171047))

(declare-fun res!1414483 () Bool)

(assert (=> d!1019313 (=> (not res!1414483) (not e!2171047))))

(assert (=> d!1019313 (= res!1414483 (isDefined!5854 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494))))))))

(assert (=> d!1019313 true))

(declare-fun _$52!1954 () Unit!52870)

(assert (=> d!1019313 (= (choose!20340 thiss!18206 rules!2135 lt!1195055 (h!42727 tokens!494)) _$52!1954)))

(declare-fun b!3506587 () Bool)

(declare-fun res!1414484 () Bool)

(assert (=> b!3506587 (=> (not res!1414484) (not e!2171047))))

(assert (=> b!3506587 (= res!1414484 (matchR!4811 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))))) (list!13629 (charsOf!3482 (h!42727 tokens!494)))))))

(declare-fun b!3506588 () Bool)

(assert (=> b!3506588 (= e!2171047 (= (rule!8098 (h!42727 tokens!494)) (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 tokens!494)))))))))

(assert (= (and d!1019313 res!1414483) b!3506587))

(assert (= (and b!3506587 res!1414484) b!3506588))

(assert (=> d!1019313 m!3941443))

(assert (=> d!1019313 m!3941443))

(assert (=> d!1019313 m!3942427))

(assert (=> b!3506587 m!3941389))

(assert (=> b!3506587 m!3942431))

(assert (=> b!3506587 m!3941387))

(assert (=> b!3506587 m!3941389))

(assert (=> b!3506587 m!3941387))

(assert (=> b!3506587 m!3941443))

(assert (=> b!3506587 m!3942433))

(assert (=> b!3506587 m!3941443))

(assert (=> b!3506588 m!3941443))

(assert (=> b!3506588 m!3941443))

(assert (=> b!3506588 m!3942433))

(assert (=> d!1018491 d!1019313))

(assert (=> d!1018491 d!1018417))

(declare-fun d!1019315 () Bool)

(declare-fun lt!1196047 () Int)

(assert (=> d!1019315 (>= lt!1196047 0)))

(declare-fun e!2171048 () Int)

(assert (=> d!1019315 (= lt!1196047 e!2171048)))

(declare-fun c!603315 () Bool)

(assert (=> d!1019315 (= c!603315 ((_ is Nil!37305) (originalCharacters!6182 separatorToken!241)))))

(assert (=> d!1019315 (= (size!28365 (originalCharacters!6182 separatorToken!241)) lt!1196047)))

(declare-fun b!3506589 () Bool)

(assert (=> b!3506589 (= e!2171048 0)))

(declare-fun b!3506590 () Bool)

(assert (=> b!3506590 (= e!2171048 (+ 1 (size!28365 (t!279240 (originalCharacters!6182 separatorToken!241)))))))

(assert (= (and d!1019315 c!603315) b!3506589))

(assert (= (and d!1019315 (not c!603315)) b!3506590))

(declare-fun m!3944911 () Bool)

(assert (=> b!3506590 m!3944911))

(assert (=> b!3504899 d!1019315))

(declare-fun d!1019317 () Bool)

(declare-fun lt!1196048 () Int)

(assert (=> d!1019317 (= lt!1196048 (size!28370 (list!13633 (_1!21690 lt!1195164))))))

(assert (=> d!1019317 (= lt!1196048 (size!28371 (c!602788 (_1!21690 lt!1195164))))))

(assert (=> d!1019317 (= (size!28364 (_1!21690 lt!1195164)) lt!1196048)))

(declare-fun bs!564076 () Bool)

(assert (= bs!564076 d!1019317))

(assert (=> bs!564076 m!3941853))

(assert (=> bs!564076 m!3941853))

(declare-fun m!3944913 () Bool)

(assert (=> bs!564076 m!3944913))

(declare-fun m!3944915 () Bool)

(assert (=> bs!564076 m!3944915))

(assert (=> d!1018371 d!1019317))

(declare-fun e!2171167 () tuple2!37112)

(declare-fun lt!1196206 () BalanceConc!22236)

(declare-datatypes ((tuple2!37126 0))(
  ( (tuple2!37127 (_1!21697 Token!10302) (_2!21697 BalanceConc!22236)) )
))
(declare-datatypes ((Option!7596 0))(
  ( (None!7595) (Some!7595 (v!37057 tuple2!37126)) )
))
(declare-fun lt!1196185 () Option!7596)

(declare-fun b!3506796 () Bool)

(declare-fun append!981 (BalanceConc!22238 Token!10302) BalanceConc!22238)

(assert (=> b!3506796 (= e!2171167 (lexTailRecV2!1080 thiss!18206 rules!2135 lt!1195088 lt!1196206 (_2!21697 (v!37057 lt!1196185)) (append!981 (BalanceConc!22239 Empty!11312) (_1!21697 (v!37057 lt!1196185)))))))

(declare-fun lt!1196191 () tuple2!37112)

(declare-fun lexRec!759 (LexerInterface!5057 List!37430 BalanceConc!22236) tuple2!37112)

(assert (=> b!3506796 (= lt!1196191 (lexRec!759 thiss!18206 rules!2135 (_2!21697 (v!37057 lt!1196185))))))

(declare-fun lt!1196186 () List!37429)

(assert (=> b!3506796 (= lt!1196186 (list!13629 (BalanceConc!22237 Empty!11311)))))

(declare-fun lt!1196180 () List!37429)

(assert (=> b!3506796 (= lt!1196180 (list!13629 (charsOf!3482 (_1!21697 (v!37057 lt!1196185)))))))

(declare-fun lt!1196209 () List!37429)

(assert (=> b!3506796 (= lt!1196209 (list!13629 (_2!21697 (v!37057 lt!1196185))))))

(declare-fun lt!1196192 () Unit!52870)

(assert (=> b!3506796 (= lt!1196192 (lemmaConcatAssociativity!1996 lt!1196186 lt!1196180 lt!1196209))))

(assert (=> b!3506796 (= (++!9231 (++!9231 lt!1196186 lt!1196180) lt!1196209) (++!9231 lt!1196186 (++!9231 lt!1196180 lt!1196209)))))

(declare-fun lt!1196193 () Unit!52870)

(assert (=> b!3506796 (= lt!1196193 lt!1196192)))

(declare-fun lt!1196207 () Option!7596)

(declare-fun maxPrefixZipperSequence!1152 (LexerInterface!5057 List!37430 BalanceConc!22236) Option!7596)

(assert (=> b!3506796 (= lt!1196207 (maxPrefixZipperSequence!1152 thiss!18206 rules!2135 lt!1195088))))

(declare-fun c!603370 () Bool)

(assert (=> b!3506796 (= c!603370 ((_ is Some!7595) lt!1196207))))

(declare-fun e!2171166 () tuple2!37112)

(assert (=> b!3506796 (= (lexRec!759 thiss!18206 rules!2135 lt!1195088) e!2171166)))

(declare-fun lt!1196178 () Unit!52870)

(declare-fun Unit!52882 () Unit!52870)

(assert (=> b!3506796 (= lt!1196178 Unit!52882)))

(declare-fun lt!1196187 () List!37431)

(assert (=> b!3506796 (= lt!1196187 (list!13633 (BalanceConc!22239 Empty!11312)))))

(declare-fun lt!1196184 () List!37431)

(assert (=> b!3506796 (= lt!1196184 (Cons!37307 (_1!21697 (v!37057 lt!1196185)) Nil!37307))))

(declare-fun lt!1196194 () List!37431)

(assert (=> b!3506796 (= lt!1196194 (list!13633 (_1!21690 lt!1196191)))))

(declare-fun lt!1196195 () Unit!52870)

(declare-fun lemmaConcatAssociativity!1998 (List!37431 List!37431 List!37431) Unit!52870)

(assert (=> b!3506796 (= lt!1196195 (lemmaConcatAssociativity!1998 lt!1196187 lt!1196184 lt!1196194))))

(declare-fun ++!9237 (List!37431 List!37431) List!37431)

(assert (=> b!3506796 (= (++!9237 (++!9237 lt!1196187 lt!1196184) lt!1196194) (++!9237 lt!1196187 (++!9237 lt!1196184 lt!1196194)))))

(declare-fun lt!1196177 () Unit!52870)

(assert (=> b!3506796 (= lt!1196177 lt!1196195)))

(declare-fun lt!1196204 () List!37429)

(assert (=> b!3506796 (= lt!1196204 (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (list!13629 (charsOf!3482 (_1!21697 (v!37057 lt!1196185))))))))

(declare-fun lt!1196201 () List!37429)

(assert (=> b!3506796 (= lt!1196201 (list!13629 (_2!21697 (v!37057 lt!1196185))))))

(declare-fun lt!1196205 () List!37431)

(assert (=> b!3506796 (= lt!1196205 (list!13633 (append!981 (BalanceConc!22239 Empty!11312) (_1!21697 (v!37057 lt!1196185)))))))

(declare-fun lt!1196188 () Unit!52870)

(declare-fun lemmaLexThenLexPrefix!524 (LexerInterface!5057 List!37430 List!37429 List!37429 List!37431 List!37431 List!37429) Unit!52870)

(assert (=> b!3506796 (= lt!1196188 (lemmaLexThenLexPrefix!524 thiss!18206 rules!2135 lt!1196204 lt!1196201 lt!1196205 (list!13633 (_1!21690 lt!1196191)) (list!13629 (_2!21690 lt!1196191))))))

(assert (=> b!3506796 (= (lexList!1472 thiss!18206 rules!2135 lt!1196204) (tuple2!37119 lt!1196205 Nil!37305))))

(declare-fun lt!1196210 () Unit!52870)

(assert (=> b!3506796 (= lt!1196210 lt!1196188)))

(declare-fun lt!1196182 () BalanceConc!22236)

(assert (=> b!3506796 (= lt!1196182 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (_1!21697 (v!37057 lt!1196185)))))))

(declare-fun lt!1196197 () Option!7596)

(assert (=> b!3506796 (= lt!1196197 (maxPrefixZipperSequence!1152 thiss!18206 rules!2135 lt!1196182))))

(declare-fun c!603368 () Bool)

(assert (=> b!3506796 (= c!603368 ((_ is Some!7595) lt!1196197))))

(declare-fun e!2171169 () tuple2!37112)

(assert (=> b!3506796 (= (lexRec!759 thiss!18206 rules!2135 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (_1!21697 (v!37057 lt!1196185))))) e!2171169)))

(declare-fun lt!1196200 () Unit!52870)

(declare-fun Unit!52883 () Unit!52870)

(assert (=> b!3506796 (= lt!1196200 Unit!52883)))

(assert (=> b!3506796 (= lt!1196206 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (_1!21697 (v!37057 lt!1196185)))))))

(declare-fun lt!1196190 () List!37429)

(assert (=> b!3506796 (= lt!1196190 (list!13629 lt!1196206))))

(declare-fun lt!1196189 () List!37429)

(assert (=> b!3506796 (= lt!1196189 (list!13629 (_2!21697 (v!37057 lt!1196185))))))

(declare-fun lt!1196202 () Unit!52870)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!606 (List!37429 List!37429) Unit!52870)

(assert (=> b!3506796 (= lt!1196202 (lemmaConcatTwoListThenFSndIsSuffix!606 lt!1196190 lt!1196189))))

(declare-fun isSuffix!921 (List!37429 List!37429) Bool)

(assert (=> b!3506796 (isSuffix!921 lt!1196189 (++!9231 lt!1196190 lt!1196189))))

(declare-fun lt!1196181 () Unit!52870)

(assert (=> b!3506796 (= lt!1196181 lt!1196202)))

(declare-fun b!3506797 () Bool)

(assert (=> b!3506797 (= e!2171167 (tuple2!37113 (BalanceConc!22239 Empty!11312) lt!1195088))))

(declare-fun lt!1196196 () tuple2!37112)

(declare-fun b!3506798 () Bool)

(assert (=> b!3506798 (= lt!1196196 (lexRec!759 thiss!18206 rules!2135 (_2!21697 (v!37057 lt!1196207))))))

(declare-fun prepend!1277 (BalanceConc!22238 Token!10302) BalanceConc!22238)

(assert (=> b!3506798 (= e!2171166 (tuple2!37113 (prepend!1277 (_1!21690 lt!1196196) (_1!21697 (v!37057 lt!1196207))) (_2!21690 lt!1196196)))))

(declare-fun b!3506799 () Bool)

(assert (=> b!3506799 (= e!2171169 (tuple2!37113 (BalanceConc!22239 Empty!11312) lt!1196182))))

(declare-fun b!3506800 () Bool)

(declare-fun lt!1196183 () tuple2!37112)

(assert (=> b!3506800 (= lt!1196183 (lexRec!759 thiss!18206 rules!2135 (_2!21697 (v!37057 lt!1196197))))))

(assert (=> b!3506800 (= e!2171169 (tuple2!37113 (prepend!1277 (_1!21690 lt!1196183) (_1!21697 (v!37057 lt!1196197))) (_2!21690 lt!1196183)))))

(declare-fun lt!1196198 () tuple2!37112)

(declare-fun b!3506801 () Bool)

(declare-fun e!2171168 () Bool)

(assert (=> b!3506801 (= e!2171168 (= (list!13629 (_2!21690 lt!1196198)) (list!13629 (_2!21690 (lexRec!759 thiss!18206 rules!2135 lt!1195088)))))))

(declare-fun b!3506802 () Bool)

(assert (=> b!3506802 (= e!2171166 (tuple2!37113 (BalanceConc!22239 Empty!11312) lt!1195088))))

(declare-fun d!1019319 () Bool)

(assert (=> d!1019319 e!2171168))

(declare-fun res!1414575 () Bool)

(assert (=> d!1019319 (=> (not res!1414575) (not e!2171168))))

(assert (=> d!1019319 (= res!1414575 (= (list!13633 (_1!21690 lt!1196198)) (list!13633 (_1!21690 (lexRec!759 thiss!18206 rules!2135 lt!1195088)))))))

(assert (=> d!1019319 (= lt!1196198 e!2171167)))

(declare-fun c!603369 () Bool)

(assert (=> d!1019319 (= c!603369 ((_ is Some!7595) lt!1196185))))

(declare-fun maxPrefixZipperSequenceV2!546 (LexerInterface!5057 List!37430 BalanceConc!22236 BalanceConc!22236) Option!7596)

(assert (=> d!1019319 (= lt!1196185 (maxPrefixZipperSequenceV2!546 thiss!18206 rules!2135 lt!1195088 lt!1195088))))

(declare-fun lt!1196203 () Unit!52870)

(declare-fun lt!1196199 () Unit!52870)

(assert (=> d!1019319 (= lt!1196203 lt!1196199)))

(declare-fun lt!1196208 () List!37429)

(declare-fun lt!1196179 () List!37429)

(assert (=> d!1019319 (isSuffix!921 lt!1196208 (++!9231 lt!1196179 lt!1196208))))

(assert (=> d!1019319 (= lt!1196199 (lemmaConcatTwoListThenFSndIsSuffix!606 lt!1196179 lt!1196208))))

(assert (=> d!1019319 (= lt!1196208 (list!13629 lt!1195088))))

(assert (=> d!1019319 (= lt!1196179 (list!13629 (BalanceConc!22237 Empty!11311)))))

(assert (=> d!1019319 (= (lexTailRecV2!1080 thiss!18206 rules!2135 lt!1195088 (BalanceConc!22237 Empty!11311) lt!1195088 (BalanceConc!22239 Empty!11312)) lt!1196198)))

(assert (= (and d!1019319 c!603369) b!3506796))

(assert (= (and d!1019319 (not c!603369)) b!3506797))

(assert (= (and b!3506796 c!603370) b!3506798))

(assert (= (and b!3506796 (not c!603370)) b!3506802))

(assert (= (and b!3506796 c!603368) b!3506800))

(assert (= (and b!3506796 (not c!603368)) b!3506799))

(assert (= (and d!1019319 res!1414575) b!3506801))

(declare-fun m!3945357 () Bool)

(assert (=> d!1019319 m!3945357))

(assert (=> d!1019319 m!3941855))

(declare-fun m!3945361 () Bool)

(assert (=> d!1019319 m!3945361))

(assert (=> d!1019319 m!3942155))

(declare-fun m!3945363 () Bool)

(assert (=> d!1019319 m!3945363))

(declare-fun m!3945365 () Bool)

(assert (=> d!1019319 m!3945365))

(declare-fun m!3945367 () Bool)

(assert (=> d!1019319 m!3945367))

(assert (=> d!1019319 m!3945367))

(declare-fun m!3945369 () Bool)

(assert (=> d!1019319 m!3945369))

(declare-fun m!3945373 () Bool)

(assert (=> d!1019319 m!3945373))

(declare-fun m!3945375 () Bool)

(assert (=> b!3506801 m!3945375))

(assert (=> b!3506801 m!3945365))

(declare-fun m!3945377 () Bool)

(assert (=> b!3506801 m!3945377))

(declare-fun m!3945379 () Bool)

(assert (=> b!3506796 m!3945379))

(declare-fun m!3945381 () Bool)

(assert (=> b!3506796 m!3945381))

(declare-fun m!3945383 () Bool)

(assert (=> b!3506796 m!3945383))

(declare-fun m!3945387 () Bool)

(assert (=> b!3506796 m!3945387))

(assert (=> b!3506796 m!3942155))

(declare-fun m!3945389 () Bool)

(assert (=> b!3506796 m!3945389))

(declare-fun m!3945391 () Bool)

(assert (=> b!3506796 m!3945391))

(declare-fun m!3945393 () Bool)

(assert (=> b!3506796 m!3945393))

(declare-fun m!3945395 () Bool)

(assert (=> b!3506796 m!3945395))

(declare-fun m!3945397 () Bool)

(assert (=> b!3506796 m!3945397))

(assert (=> b!3506796 m!3945365))

(declare-fun m!3945399 () Bool)

(assert (=> b!3506796 m!3945399))

(declare-fun m!3945401 () Bool)

(assert (=> b!3506796 m!3945401))

(declare-fun m!3945403 () Bool)

(assert (=> b!3506796 m!3945403))

(declare-fun m!3945405 () Bool)

(assert (=> b!3506796 m!3945405))

(assert (=> b!3506796 m!3945379))

(assert (=> b!3506796 m!3945389))

(assert (=> b!3506796 m!3945387))

(declare-fun m!3945413 () Bool)

(assert (=> b!3506796 m!3945413))

(declare-fun m!3945415 () Bool)

(assert (=> b!3506796 m!3945415))

(declare-fun m!3945417 () Bool)

(assert (=> b!3506796 m!3945417))

(assert (=> b!3506796 m!3945395))

(declare-fun m!3945419 () Bool)

(assert (=> b!3506796 m!3945419))

(declare-fun m!3945421 () Bool)

(assert (=> b!3506796 m!3945421))

(declare-fun m!3945423 () Bool)

(assert (=> b!3506796 m!3945423))

(assert (=> b!3506796 m!3945387))

(declare-fun m!3945425 () Bool)

(assert (=> b!3506796 m!3945425))

(declare-fun m!3945427 () Bool)

(assert (=> b!3506796 m!3945427))

(assert (=> b!3506796 m!3945427))

(declare-fun m!3945429 () Bool)

(assert (=> b!3506796 m!3945429))

(assert (=> b!3506796 m!3945399))

(declare-fun m!3945431 () Bool)

(assert (=> b!3506796 m!3945431))

(declare-fun m!3945433 () Bool)

(assert (=> b!3506796 m!3945433))

(assert (=> b!3506796 m!3945421))

(declare-fun m!3945435 () Bool)

(assert (=> b!3506796 m!3945435))

(declare-fun m!3945437 () Bool)

(assert (=> b!3506796 m!3945437))

(declare-fun m!3945439 () Bool)

(assert (=> b!3506796 m!3945439))

(declare-fun m!3945441 () Bool)

(assert (=> b!3506796 m!3945441))

(assert (=> b!3506796 m!3945403))

(declare-fun m!3945443 () Bool)

(assert (=> b!3506796 m!3945443))

(assert (=> b!3506796 m!3942155))

(assert (=> b!3506796 m!3945381))

(declare-fun m!3945445 () Bool)

(assert (=> b!3506796 m!3945445))

(assert (=> b!3506796 m!3945379))

(assert (=> b!3506796 m!3945435))

(declare-fun m!3945451 () Bool)

(assert (=> b!3506796 m!3945451))

(assert (=> b!3506796 m!3945431))

(declare-fun m!3945453 () Bool)

(assert (=> b!3506798 m!3945453))

(declare-fun m!3945457 () Bool)

(assert (=> b!3506798 m!3945457))

(declare-fun m!3945459 () Bool)

(assert (=> b!3506800 m!3945459))

(declare-fun m!3945461 () Bool)

(assert (=> b!3506800 m!3945461))

(assert (=> d!1018371 d!1019319))

(declare-fun d!1019505 () Bool)

(assert (=> d!1019505 (= (isEmpty!21746 (tail!5480 lt!1195062)) ((_ is Nil!37305) (tail!5480 lt!1195062)))))

(assert (=> b!3504883 d!1019505))

(assert (=> b!3504883 d!1018767))

(declare-fun d!1019509 () Bool)

(assert (=> d!1019509 (= (list!13633 (_1!21690 lt!1195417)) (list!13634 (c!602788 (_1!21690 lt!1195417))))))

(declare-fun bs!564123 () Bool)

(assert (= bs!564123 d!1019509))

(declare-fun m!3945471 () Bool)

(assert (=> bs!564123 m!3945471))

(assert (=> b!3505324 d!1019509))

(assert (=> b!3505324 d!1019227))

(assert (=> b!3505324 d!1019229))

(declare-fun d!1019513 () Bool)

(declare-fun lt!1196225 () Int)

(assert (=> d!1019513 (>= lt!1196225 0)))

(declare-fun e!2171187 () Int)

(assert (=> d!1019513 (= lt!1196225 e!2171187)))

(declare-fun c!603383 () Bool)

(assert (=> d!1019513 (= c!603383 ((_ is Nil!37307) (list!13633 (_1!21690 lt!1195068))))))

(assert (=> d!1019513 (= (size!28370 (list!13633 (_1!21690 lt!1195068))) lt!1196225)))

(declare-fun b!3506835 () Bool)

(assert (=> b!3506835 (= e!2171187 0)))

(declare-fun b!3506836 () Bool)

(assert (=> b!3506836 (= e!2171187 (+ 1 (size!28370 (t!279242 (list!13633 (_1!21690 lt!1195068))))))))

(assert (= (and d!1019513 c!603383) b!3506835))

(assert (= (and d!1019513 (not c!603383)) b!3506836))

(declare-fun m!3945477 () Bool)

(assert (=> b!3506836 m!3945477))

(assert (=> d!1018593 d!1019513))

(assert (=> d!1018593 d!1018731))

(declare-fun d!1019519 () Bool)

(declare-fun lt!1196232 () Int)

(assert (=> d!1019519 (= lt!1196232 (size!28370 (list!13634 (c!602788 (_1!21690 lt!1195068)))))))

(assert (=> d!1019519 (= lt!1196232 (ite ((_ is Empty!11312) (c!602788 (_1!21690 lt!1195068))) 0 (ite ((_ is Leaf!17657) (c!602788 (_1!21690 lt!1195068))) (csize!22855 (c!602788 (_1!21690 lt!1195068))) (csize!22854 (c!602788 (_1!21690 lt!1195068))))))))

(assert (=> d!1019519 (= (size!28371 (c!602788 (_1!21690 lt!1195068))) lt!1196232)))

(declare-fun bs!564124 () Bool)

(assert (= bs!564124 d!1019519))

(assert (=> bs!564124 m!3943205))

(assert (=> bs!564124 m!3943205))

(declare-fun m!3945491 () Bool)

(assert (=> bs!564124 m!3945491))

(assert (=> d!1018593 d!1019519))

(declare-fun lt!1196233 () Bool)

(declare-fun d!1019523 () Bool)

(assert (=> d!1019523 (= lt!1196233 (isEmpty!21746 (list!13629 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241)))))))))

(assert (=> d!1019523 (= lt!1196233 (isEmpty!21753 (c!602787 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241)))))))))

(assert (=> d!1019523 (= (isEmpty!21744 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241))))) lt!1196233)))

(declare-fun bs!564125 () Bool)

(assert (= bs!564125 d!1019523))

(declare-fun m!3945497 () Bool)

(assert (=> bs!564125 m!3945497))

(assert (=> bs!564125 m!3945497))

(declare-fun m!3945499 () Bool)

(assert (=> bs!564125 m!3945499))

(declare-fun m!3945501 () Bool)

(assert (=> bs!564125 m!3945501))

(assert (=> b!3504842 d!1019523))

(declare-fun b!3506848 () Bool)

(declare-fun res!1414593 () Bool)

(declare-fun e!2171196 () Bool)

(assert (=> b!3506848 (=> (not res!1414593) (not e!2171196))))

(declare-fun lt!1196235 () tuple2!37112)

(assert (=> b!3506848 (= res!1414593 (= (list!13633 (_1!21690 lt!1196235)) (_1!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241)))))))))

(declare-fun b!3506849 () Bool)

(declare-fun e!2171197 () Bool)

(assert (=> b!3506849 (= e!2171197 (= (_2!21690 lt!1196235) (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241))))))

(declare-fun b!3506850 () Bool)

(declare-fun e!2171195 () Bool)

(assert (=> b!3506850 (= e!2171197 e!2171195)))

(declare-fun res!1414591 () Bool)

(assert (=> b!3506850 (= res!1414591 (< (size!28367 (_2!21690 lt!1196235)) (size!28367 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241)))))))

(assert (=> b!3506850 (=> (not res!1414591) (not e!2171195))))

(declare-fun b!3506851 () Bool)

(assert (=> b!3506851 (= e!2171196 (= (list!13629 (_2!21690 lt!1196235)) (_2!21693 (lexList!1472 thiss!18206 rules!2135 (list!13629 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241)))))))))

(declare-fun b!3506852 () Bool)

(assert (=> b!3506852 (= e!2171195 (not (isEmpty!21747 (_1!21690 lt!1196235))))))

(declare-fun d!1019527 () Bool)

(assert (=> d!1019527 e!2171196))

(declare-fun res!1414592 () Bool)

(assert (=> d!1019527 (=> (not res!1414592) (not e!2171196))))

(assert (=> d!1019527 (= res!1414592 e!2171197)))

(declare-fun c!603387 () Bool)

(assert (=> d!1019527 (= c!603387 (> (size!28364 (_1!21690 lt!1196235)) 0))))

(assert (=> d!1019527 (= lt!1196235 (lexTailRecV2!1080 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241)) (BalanceConc!22237 Empty!11311) (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241)) (BalanceConc!22239 Empty!11312)))))

(assert (=> d!1019527 (= (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241))) lt!1196235)))

(assert (= (and d!1019527 c!603387) b!3506850))

(assert (= (and d!1019527 (not c!603387)) b!3506849))

(assert (= (and b!3506850 res!1414591) b!3506852))

(assert (= (and d!1019527 res!1414592) b!3506848))

(assert (= (and b!3506848 res!1414593) b!3506851))

(declare-fun m!3945513 () Bool)

(assert (=> b!3506850 m!3945513))

(assert (=> b!3506850 m!3941987))

(declare-fun m!3945515 () Bool)

(assert (=> b!3506850 m!3945515))

(declare-fun m!3945517 () Bool)

(assert (=> b!3506848 m!3945517))

(assert (=> b!3506848 m!3941987))

(declare-fun m!3945519 () Bool)

(assert (=> b!3506848 m!3945519))

(assert (=> b!3506848 m!3945519))

(declare-fun m!3945521 () Bool)

(assert (=> b!3506848 m!3945521))

(declare-fun m!3945523 () Bool)

(assert (=> d!1019527 m!3945523))

(assert (=> d!1019527 m!3941987))

(assert (=> d!1019527 m!3941987))

(declare-fun m!3945525 () Bool)

(assert (=> d!1019527 m!3945525))

(declare-fun m!3945527 () Bool)

(assert (=> b!3506852 m!3945527))

(declare-fun m!3945529 () Bool)

(assert (=> b!3506851 m!3945529))

(assert (=> b!3506851 m!3941987))

(assert (=> b!3506851 m!3945519))

(assert (=> b!3506851 m!3945519))

(assert (=> b!3506851 m!3945521))

(assert (=> b!3504842 d!1019527))

(declare-fun d!1019533 () Bool)

(declare-fun lt!1196236 () BalanceConc!22236)

(assert (=> d!1019533 (= (list!13629 lt!1196236) (printList!1605 thiss!18206 (list!13633 (singletonSeq!2564 separatorToken!241))))))

(assert (=> d!1019533 (= lt!1196236 (printTailRec!1552 thiss!18206 (singletonSeq!2564 separatorToken!241) 0 (BalanceConc!22237 Empty!11311)))))

(assert (=> d!1019533 (= (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241)) lt!1196236)))

(declare-fun bs!564126 () Bool)

(assert (= bs!564126 d!1019533))

(declare-fun m!3945531 () Bool)

(assert (=> bs!564126 m!3945531))

(assert (=> bs!564126 m!3941445))

(assert (=> bs!564126 m!3941991))

(assert (=> bs!564126 m!3941991))

(declare-fun m!3945533 () Bool)

(assert (=> bs!564126 m!3945533))

(assert (=> bs!564126 m!3941445))

(declare-fun m!3945535 () Bool)

(assert (=> bs!564126 m!3945535))

(assert (=> b!3504842 d!1019533))

(assert (=> b!3504842 d!1018487))

(declare-fun d!1019535 () Bool)

(declare-fun charsToInt!0 (List!37428) (_ BitVec 32))

(assert (=> d!1019535 (= (inv!16 (value!176298 (h!42727 tokens!494))) (= (charsToInt!0 (text!40333 (value!176298 (h!42727 tokens!494)))) (value!176289 (value!176298 (h!42727 tokens!494)))))))

(declare-fun bs!564127 () Bool)

(assert (= bs!564127 d!1019535))

(declare-fun m!3945537 () Bool)

(assert (=> bs!564127 m!3945537))

(assert (=> b!3505389 d!1019535))

(declare-fun d!1019537 () Bool)

(declare-fun c!603389 () Bool)

(assert (=> d!1019537 (= c!603389 ((_ is Nil!37305) lt!1195200))))

(declare-fun e!2171198 () (InoxSet C!20640))

(assert (=> d!1019537 (= (content!5247 lt!1195200) e!2171198)))

(declare-fun b!3506853 () Bool)

(assert (=> b!3506853 (= e!2171198 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506854 () Bool)

(assert (=> b!3506854 (= e!2171198 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195200) true) (content!5247 (t!279240 lt!1195200))))))

(assert (= (and d!1019537 c!603389) b!3506853))

(assert (= (and d!1019537 (not c!603389)) b!3506854))

(declare-fun m!3945539 () Bool)

(assert (=> b!3506854 m!3945539))

(declare-fun m!3945541 () Bool)

(assert (=> b!3506854 m!3945541))

(assert (=> d!1018431 d!1019537))

(assert (=> d!1018431 d!1018905))

(declare-fun d!1019539 () Bool)

(assert (=> d!1019539 (= (content!5247 Nil!37305) ((as const (Array C!20640 Bool)) false))))

(assert (=> d!1018431 d!1019539))

(declare-fun c!603392 () Bool)

(declare-fun bm!253163 () Bool)

(declare-fun c!603391 () Bool)

(declare-fun call!253168 () List!37429)

(assert (=> bm!253163 (= call!253168 (usedCharacters!702 (ite c!603392 (reg!10556 (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))) (ite c!603391 (regOne!20967 (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))) (regTwo!20966 (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))))))))

(declare-fun b!3506860 () Bool)

(declare-fun e!2171204 () List!37429)

(declare-fun call!253169 () List!37429)

(assert (=> b!3506860 (= e!2171204 call!253169)))

(declare-fun bm!253164 () Bool)

(declare-fun call!253170 () List!37429)

(assert (=> bm!253164 (= call!253170 call!253168)))

(declare-fun b!3506861 () Bool)

(declare-fun e!2171206 () List!37429)

(assert (=> b!3506861 (= e!2171206 call!253168)))

(declare-fun b!3506862 () Bool)

(assert (=> b!3506862 (= e!2171206 e!2171204)))

(assert (=> b!3506862 (= c!603391 ((_ is Union!10227) (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))))

(declare-fun e!2171205 () List!37429)

(declare-fun b!3506863 () Bool)

(assert (=> b!3506863 (= e!2171205 (Cons!37305 (c!602786 (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))) Nil!37305))))

(declare-fun b!3506864 () Bool)

(assert (=> b!3506864 (= e!2171204 call!253169)))

(declare-fun bm!253165 () Bool)

(declare-fun call!253171 () List!37429)

(assert (=> bm!253165 (= call!253169 (++!9231 (ite c!603391 call!253170 call!253171) (ite c!603391 call!253171 call!253170)))))

(declare-fun b!3506865 () Bool)

(declare-fun e!2171207 () List!37429)

(assert (=> b!3506865 (= e!2171207 Nil!37305)))

(declare-fun d!1019543 () Bool)

(declare-fun c!603393 () Bool)

(assert (=> d!1019543 (= c!603393 (or ((_ is EmptyExpr!10227) (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))) ((_ is EmptyLang!10227) (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))))))

(assert (=> d!1019543 (= (usedCharacters!702 (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))) e!2171207)))

(declare-fun bm!253166 () Bool)

(assert (=> bm!253166 (= call!253171 (usedCharacters!702 (ite c!603391 (regTwo!20967 (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))) (regOne!20966 (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))))))

(declare-fun b!3506866 () Bool)

(assert (=> b!3506866 (= e!2171207 e!2171205)))

(declare-fun c!603390 () Bool)

(assert (=> b!3506866 (= c!603390 ((_ is ElementMatch!10227) (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))))

(declare-fun b!3506867 () Bool)

(assert (=> b!3506867 (= c!603392 ((_ is Star!10227) (ite c!602938 (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (ite c!602937 (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))))

(assert (=> b!3506867 (= e!2171205 e!2171206)))

(assert (= (and d!1019543 c!603393) b!3506865))

(assert (= (and d!1019543 (not c!603393)) b!3506866))

(assert (= (and b!3506866 c!603390) b!3506863))

(assert (= (and b!3506866 (not c!603390)) b!3506867))

(assert (= (and b!3506867 c!603392) b!3506861))

(assert (= (and b!3506867 (not c!603392)) b!3506862))

(assert (= (and b!3506862 c!603391) b!3506860))

(assert (= (and b!3506862 (not c!603391)) b!3506864))

(assert (= (or b!3506860 b!3506864) bm!253166))

(assert (= (or b!3506860 b!3506864) bm!253164))

(assert (= (or b!3506860 b!3506864) bm!253165))

(assert (= (or b!3506861 bm!253164) bm!253163))

(declare-fun m!3945559 () Bool)

(assert (=> bm!253163 m!3945559))

(declare-fun m!3945561 () Bool)

(assert (=> bm!253165 m!3945561))

(declare-fun m!3945563 () Bool)

(assert (=> bm!253166 m!3945563))

(assert (=> bm!252994 d!1019543))

(declare-fun d!1019551 () Bool)

(assert (=> d!1019551 (= (list!13629 lt!1195442) (list!13632 (c!602787 lt!1195442)))))

(declare-fun bs!564128 () Bool)

(assert (= bs!564128 d!1019551))

(declare-fun m!3945565 () Bool)

(assert (=> bs!564128 m!3945565))

(assert (=> d!1018627 d!1019551))

(declare-fun d!1019553 () Bool)

(declare-fun c!603394 () Bool)

(assert (=> d!1019553 (= c!603394 ((_ is Cons!37307) (list!13633 lt!1195069)))))

(declare-fun e!2171210 () List!37429)

(assert (=> d!1019553 (= (printList!1605 thiss!18206 (list!13633 lt!1195069)) e!2171210)))

(declare-fun b!3506870 () Bool)

(assert (=> b!3506870 (= e!2171210 (++!9231 (list!13629 (charsOf!3482 (h!42727 (list!13633 lt!1195069)))) (printList!1605 thiss!18206 (t!279242 (list!13633 lt!1195069)))))))

(declare-fun b!3506871 () Bool)

(assert (=> b!3506871 (= e!2171210 Nil!37305)))

(assert (= (and d!1019553 c!603394) b!3506870))

(assert (= (and d!1019553 (not c!603394)) b!3506871))

(declare-fun m!3945567 () Bool)

(assert (=> b!3506870 m!3945567))

(assert (=> b!3506870 m!3945567))

(declare-fun m!3945569 () Bool)

(assert (=> b!3506870 m!3945569))

(declare-fun m!3945571 () Bool)

(assert (=> b!3506870 m!3945571))

(assert (=> b!3506870 m!3945569))

(assert (=> b!3506870 m!3945571))

(declare-fun m!3945573 () Bool)

(assert (=> b!3506870 m!3945573))

(assert (=> d!1018627 d!1019553))

(declare-fun d!1019557 () Bool)

(assert (=> d!1019557 (= (list!13633 lt!1195069) (list!13634 (c!602788 lt!1195069)))))

(declare-fun bs!564129 () Bool)

(assert (= bs!564129 d!1019557))

(declare-fun m!3945575 () Bool)

(assert (=> bs!564129 m!3945575))

(assert (=> d!1018627 d!1019557))

(assert (=> d!1018627 d!1018631))

(declare-fun d!1019559 () Bool)

(declare-fun e!2171212 () Bool)

(assert (=> d!1019559 e!2171212))

(declare-fun res!1414602 () Bool)

(assert (=> d!1019559 (=> (not res!1414602) (not e!2171212))))

(declare-fun lt!1196242 () List!37429)

(assert (=> d!1019559 (= res!1414602 (= (content!5247 lt!1196242) ((_ map or) (content!5247 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))) (content!5247 (list!13629 (charsOf!3482 separatorToken!241))))))))

(declare-fun e!2171211 () List!37429)

(assert (=> d!1019559 (= lt!1196242 e!2171211)))

(declare-fun c!603395 () Bool)

(assert (=> d!1019559 (= c!603395 ((_ is Nil!37305) (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))))))

(assert (=> d!1019559 (= (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))) (list!13629 (charsOf!3482 separatorToken!241))) lt!1196242)))

(declare-fun b!3506873 () Bool)

(assert (=> b!3506873 (= e!2171211 (Cons!37305 (h!42725 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))) (++!9231 (t!279240 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))) (list!13629 (charsOf!3482 separatorToken!241)))))))

(declare-fun b!3506872 () Bool)

(assert (=> b!3506872 (= e!2171211 (list!13629 (charsOf!3482 separatorToken!241)))))

(declare-fun b!3506875 () Bool)

(assert (=> b!3506875 (= e!2171212 (or (not (= (list!13629 (charsOf!3482 separatorToken!241)) Nil!37305)) (= lt!1196242 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))))))))

(declare-fun b!3506874 () Bool)

(declare-fun res!1414601 () Bool)

(assert (=> b!3506874 (=> (not res!1414601) (not e!2171212))))

(assert (=> b!3506874 (= res!1414601 (= (size!28365 lt!1196242) (+ (size!28365 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))) (size!28365 (list!13629 (charsOf!3482 separatorToken!241))))))))

(assert (= (and d!1019559 c!603395) b!3506872))

(assert (= (and d!1019559 (not c!603395)) b!3506873))

(assert (= (and d!1019559 res!1414602) b!3506874))

(assert (= (and b!3506874 res!1414601) b!3506875))

(declare-fun m!3945577 () Bool)

(assert (=> d!1019559 m!3945577))

(assert (=> d!1019559 m!3941491))

(declare-fun m!3945579 () Bool)

(assert (=> d!1019559 m!3945579))

(assert (=> d!1019559 m!3941497))

(assert (=> d!1019559 m!3944795))

(assert (=> b!3506873 m!3941497))

(declare-fun m!3945581 () Bool)

(assert (=> b!3506873 m!3945581))

(declare-fun m!3945583 () Bool)

(assert (=> b!3506874 m!3945583))

(assert (=> b!3506874 m!3941491))

(declare-fun m!3945585 () Bool)

(assert (=> b!3506874 m!3945585))

(assert (=> b!3506874 m!3941497))

(assert (=> b!3506874 m!3944803))

(assert (=> b!3504813 d!1019559))

(assert (=> b!3504813 d!1018391))

(assert (=> b!3504813 d!1018389))

(assert (=> b!3504813 d!1018395))

(declare-fun d!1019561 () Bool)

(declare-fun e!2171214 () Bool)

(assert (=> d!1019561 e!2171214))

(declare-fun res!1414604 () Bool)

(assert (=> d!1019561 (=> (not res!1414604) (not e!2171214))))

(declare-fun lt!1196243 () List!37429)

(assert (=> d!1019561 (= res!1414604 (= (content!5247 lt!1196243) ((_ map or) (content!5247 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))) (list!13629 (charsOf!3482 separatorToken!241)))) (content!5247 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))))

(declare-fun e!2171213 () List!37429)

(assert (=> d!1019561 (= lt!1196243 e!2171213)))

(declare-fun c!603396 () Bool)

(assert (=> d!1019561 (= c!603396 ((_ is Nil!37305) (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))) (list!13629 (charsOf!3482 separatorToken!241)))))))

(assert (=> d!1019561 (= (++!9231 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))) (list!13629 (charsOf!3482 separatorToken!241))) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)) lt!1196243)))

(declare-fun b!3506877 () Bool)

(assert (=> b!3506877 (= e!2171213 (Cons!37305 (h!42725 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))) (list!13629 (charsOf!3482 separatorToken!241)))) (++!9231 (t!279240 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))) (list!13629 (charsOf!3482 separatorToken!241)))) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241))))))

(declare-fun b!3506876 () Bool)

(assert (=> b!3506876 (= e!2171213 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241))))

(declare-fun b!3506879 () Bool)

(assert (=> b!3506879 (= e!2171214 (or (not (= (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241) Nil!37305)) (= lt!1196243 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))) (list!13629 (charsOf!3482 separatorToken!241))))))))

(declare-fun b!3506878 () Bool)

(declare-fun res!1414603 () Bool)

(assert (=> b!3506878 (=> (not res!1414603) (not e!2171214))))

(assert (=> b!3506878 (= res!1414603 (= (size!28365 lt!1196243) (+ (size!28365 (++!9231 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))) (list!13629 (charsOf!3482 separatorToken!241)))) (size!28365 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))))

(assert (= (and d!1019561 c!603396) b!3506876))

(assert (= (and d!1019561 (not c!603396)) b!3506877))

(assert (= (and d!1019561 res!1414604) b!3506878))

(assert (= (and b!3506878 res!1414603) b!3506879))

(declare-fun m!3945587 () Bool)

(assert (=> d!1019561 m!3945587))

(assert (=> d!1019561 m!3941931))

(declare-fun m!3945589 () Bool)

(assert (=> d!1019561 m!3945589))

(assert (=> d!1019561 m!3941495))

(assert (=> d!1019561 m!3941903))

(assert (=> b!3506877 m!3941495))

(declare-fun m!3945591 () Bool)

(assert (=> b!3506877 m!3945591))

(declare-fun m!3945593 () Bool)

(assert (=> b!3506878 m!3945593))

(assert (=> b!3506878 m!3941931))

(declare-fun m!3945595 () Bool)

(assert (=> b!3506878 m!3945595))

(assert (=> b!3506878 m!3941495))

(assert (=> b!3506878 m!3941911))

(assert (=> b!3504813 d!1019561))

(assert (=> b!3504813 d!1018399))

(assert (=> b!3504813 d!1018401))

(declare-fun d!1019563 () Bool)

(assert (=> d!1019563 (dynLambda!15854 lambda!122514 (h!42727 tokens!494))))

(assert (=> d!1019563 true))

(declare-fun _$7!1348 () Unit!52870)

(assert (=> d!1019563 (= (choose!20337 tokens!494 lambda!122514 (h!42727 tokens!494)) _$7!1348)))

(declare-fun b_lambda!102019 () Bool)

(assert (=> (not b_lambda!102019) (not d!1019563)))

(declare-fun bs!564130 () Bool)

(assert (= bs!564130 d!1019563))

(assert (=> bs!564130 m!3942107))

(assert (=> d!1018439 d!1019563))

(assert (=> d!1018439 d!1018619))

(assert (=> b!3505196 d!1018991))

(declare-fun b!3506888 () Bool)

(declare-fun e!2171226 () Bool)

(declare-fun lt!1196246 () Bool)

(assert (=> b!3506888 (= e!2171226 (not lt!1196246))))

(declare-fun b!3506889 () Bool)

(declare-fun res!1414619 () Bool)

(declare-fun e!2171223 () Bool)

(assert (=> b!3506889 (=> res!1414619 e!2171223)))

(declare-fun e!2171227 () Bool)

(assert (=> b!3506889 (= res!1414619 e!2171227)))

(declare-fun res!1414620 () Bool)

(assert (=> b!3506889 (=> (not res!1414620) (not e!2171227))))

(assert (=> b!3506889 (= res!1414620 lt!1196246)))

(declare-fun b!3506890 () Bool)

(declare-fun e!2171224 () Bool)

(assert (=> b!3506890 (= e!2171224 e!2171226)))

(declare-fun c!603397 () Bool)

(assert (=> b!3506890 (= c!603397 ((_ is EmptyLang!10227) (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))))))))

(declare-fun b!3506891 () Bool)

(assert (=> b!3506891 (= e!2171227 (= (head!7371 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))) (c!602786 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))))))

(declare-fun b!3506892 () Bool)

(declare-fun res!1414615 () Bool)

(assert (=> b!3506892 (=> res!1414615 e!2171223)))

(assert (=> b!3506892 (= res!1414615 (not ((_ is ElementMatch!10227) (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))))))

(assert (=> b!3506892 (= e!2171226 e!2171223)))

(declare-fun e!2171222 () Bool)

(declare-fun b!3506893 () Bool)

(assert (=> b!3506893 (= e!2171222 (nullable!3512 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))))))))

(declare-fun b!3506894 () Bool)

(declare-fun res!1414616 () Bool)

(assert (=> b!3506894 (=> (not res!1414616) (not e!2171227))))

(assert (=> b!3506894 (= res!1414616 (isEmpty!21746 (tail!5480 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))))))))

(declare-fun e!2171225 () Bool)

(declare-fun b!3506895 () Bool)

(assert (=> b!3506895 (= e!2171225 (not (= (head!7371 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))) (c!602786 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))))))))))

(declare-fun b!3506896 () Bool)

(declare-fun e!2171221 () Bool)

(assert (=> b!3506896 (= e!2171223 e!2171221)))

(declare-fun res!1414613 () Bool)

(assert (=> b!3506896 (=> (not res!1414613) (not e!2171221))))

(assert (=> b!3506896 (= res!1414613 (not lt!1196246))))

(declare-fun b!3506897 () Bool)

(assert (=> b!3506897 (= e!2171222 (matchR!4811 (derivativeStep!3065 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (head!7371 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))))) (tail!5480 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494)))))))))

(declare-fun b!3506898 () Bool)

(assert (=> b!3506898 (= e!2171221 e!2171225)))

(declare-fun res!1414614 () Bool)

(assert (=> b!3506898 (=> res!1414614 e!2171225)))

(declare-fun call!253172 () Bool)

(assert (=> b!3506898 (= res!1414614 call!253172)))

(declare-fun d!1019565 () Bool)

(assert (=> d!1019565 e!2171224))

(declare-fun c!603398 () Bool)

(assert (=> d!1019565 (= c!603398 ((_ is EmptyExpr!10227) (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))))))))

(assert (=> d!1019565 (= lt!1196246 e!2171222)))

(declare-fun c!603399 () Bool)

(assert (=> d!1019565 (= c!603399 (isEmpty!21746 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))))))

(assert (=> d!1019565 (validRegex!4668 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))))

(assert (=> d!1019565 (= (matchR!4811 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))) lt!1196246)))

(declare-fun bm!253167 () Bool)

(assert (=> bm!253167 (= call!253172 (isEmpty!21746 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))))))

(declare-fun b!3506899 () Bool)

(declare-fun res!1414617 () Bool)

(assert (=> b!3506899 (=> (not res!1414617) (not e!2171227))))

(assert (=> b!3506899 (= res!1414617 (not call!253172))))

(declare-fun b!3506900 () Bool)

(declare-fun res!1414618 () Bool)

(assert (=> b!3506900 (=> res!1414618 e!2171225)))

(assert (=> b!3506900 (= res!1414618 (not (isEmpty!21746 (tail!5480 (list!13629 (charsOf!3482 (h!42727 (t!279242 tokens!494))))))))))

(declare-fun b!3506901 () Bool)

(assert (=> b!3506901 (= e!2171224 (= lt!1196246 call!253172))))

(assert (= (and d!1019565 c!603399) b!3506893))

(assert (= (and d!1019565 (not c!603399)) b!3506897))

(assert (= (and d!1019565 c!603398) b!3506901))

(assert (= (and d!1019565 (not c!603398)) b!3506890))

(assert (= (and b!3506890 c!603397) b!3506888))

(assert (= (and b!3506890 (not c!603397)) b!3506892))

(assert (= (and b!3506892 (not res!1414615)) b!3506889))

(assert (= (and b!3506889 res!1414620) b!3506899))

(assert (= (and b!3506899 res!1414617) b!3506894))

(assert (= (and b!3506894 res!1414616) b!3506891))

(assert (= (and b!3506889 (not res!1414619)) b!3506896))

(assert (= (and b!3506896 res!1414613) b!3506898))

(assert (= (and b!3506898 (not res!1414614)) b!3506900))

(assert (= (and b!3506900 (not res!1414618)) b!3506895))

(assert (= (or b!3506901 b!3506899 b!3506898) bm!253167))

(assert (=> b!3506900 m!3941491))

(declare-fun m!3945597 () Bool)

(assert (=> b!3506900 m!3945597))

(assert (=> b!3506900 m!3945597))

(declare-fun m!3945599 () Bool)

(assert (=> b!3506900 m!3945599))

(declare-fun m!3945601 () Bool)

(assert (=> b!3506893 m!3945601))

(assert (=> b!3506897 m!3941491))

(declare-fun m!3945603 () Bool)

(assert (=> b!3506897 m!3945603))

(assert (=> b!3506897 m!3945603))

(declare-fun m!3945605 () Bool)

(assert (=> b!3506897 m!3945605))

(assert (=> b!3506897 m!3941491))

(assert (=> b!3506897 m!3945597))

(assert (=> b!3506897 m!3945605))

(assert (=> b!3506897 m!3945597))

(declare-fun m!3945611 () Bool)

(assert (=> b!3506897 m!3945611))

(assert (=> bm!253167 m!3941491))

(declare-fun m!3945615 () Bool)

(assert (=> bm!253167 m!3945615))

(assert (=> b!3506895 m!3941491))

(assert (=> b!3506895 m!3945603))

(assert (=> b!3506891 m!3941491))

(assert (=> b!3506891 m!3945603))

(assert (=> d!1019565 m!3941491))

(assert (=> d!1019565 m!3945615))

(declare-fun m!3945617 () Bool)

(assert (=> d!1019565 m!3945617))

(assert (=> b!3506894 m!3941491))

(assert (=> b!3506894 m!3945597))

(assert (=> b!3506894 m!3945597))

(assert (=> b!3506894 m!3945599))

(assert (=> b!3505196 d!1019565))

(assert (=> b!3505196 d!1018395))

(assert (=> b!3505196 d!1018401))

(assert (=> b!3505196 d!1018537))

(declare-fun bs!564131 () Bool)

(declare-fun d!1019569 () Bool)

(assert (= bs!564131 (and d!1019569 d!1018959)))

(declare-fun lambda!122559 () Int)

(assert (=> bs!564131 (= (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241)))) (= lambda!122559 lambda!122541))))

(declare-fun bs!564132 () Bool)

(assert (= bs!564132 (and d!1019569 d!1019259)))

(assert (=> bs!564132 (= (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (h!42726 rules!2135)))) (= lambda!122559 lambda!122548))))

(assert (=> d!1019569 true))

(assert (=> d!1019569 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) (dynLambda!15858 order!20027 lambda!122559))))

(assert (=> d!1019569 (= (equivClasses!2206 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) (Forall2!943 lambda!122559))))

(declare-fun bs!564133 () Bool)

(assert (= bs!564133 d!1019569))

(declare-fun m!3945619 () Bool)

(assert (=> bs!564133 m!3945619))

(assert (=> b!3504731 d!1019569))

(declare-fun d!1019571 () Bool)

(declare-fun lt!1196250 () Int)

(assert (=> d!1019571 (>= lt!1196250 0)))

(declare-fun e!2171231 () Int)

(assert (=> d!1019571 (= lt!1196250 e!2171231)))

(declare-fun c!603400 () Bool)

(assert (=> d!1019571 (= c!603400 ((_ is Nil!37305) (_2!21691 (get!11971 lt!1195251))))))

(assert (=> d!1019571 (= (size!28365 (_2!21691 (get!11971 lt!1195251))) lt!1196250)))

(declare-fun b!3506906 () Bool)

(assert (=> b!3506906 (= e!2171231 0)))

(declare-fun b!3506907 () Bool)

(assert (=> b!3506907 (= e!2171231 (+ 1 (size!28365 (t!279240 (_2!21691 (get!11971 lt!1195251))))))))

(assert (= (and d!1019571 c!603400) b!3506906))

(assert (= (and d!1019571 (not c!603400)) b!3506907))

(declare-fun m!3945623 () Bool)

(assert (=> b!3506907 m!3945623))

(assert (=> b!3504999 d!1019571))

(assert (=> b!3504999 d!1018695))

(assert (=> b!3504999 d!1018525))

(declare-fun d!1019575 () Bool)

(assert (=> d!1019575 (= (list!13629 lt!1195172) (list!13632 (c!602787 lt!1195172)))))

(declare-fun bs!564135 () Bool)

(assert (= bs!564135 d!1019575))

(declare-fun m!3945625 () Bool)

(assert (=> bs!564135 m!3945625))

(assert (=> d!1018389 d!1019575))

(assert (=> b!3505419 d!1019261))

(assert (=> b!3505419 d!1018723))

(declare-fun b!3506908 () Bool)

(declare-fun e!2171237 () Bool)

(declare-fun lt!1196252 () Bool)

(assert (=> b!3506908 (= e!2171237 (not lt!1196252))))

(declare-fun b!3506909 () Bool)

(declare-fun res!1414631 () Bool)

(declare-fun e!2171234 () Bool)

(assert (=> b!3506909 (=> res!1414631 e!2171234)))

(declare-fun e!2171238 () Bool)

(assert (=> b!3506909 (= res!1414631 e!2171238)))

(declare-fun res!1414632 () Bool)

(assert (=> b!3506909 (=> (not res!1414632) (not e!2171238))))

(assert (=> b!3506909 (= res!1414632 lt!1196252)))

(declare-fun b!3506910 () Bool)

(declare-fun e!2171235 () Bool)

(assert (=> b!3506910 (= e!2171235 e!2171237)))

(declare-fun c!603401 () Bool)

(assert (=> b!3506910 (= c!603401 ((_ is EmptyLang!10227) (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339))))))))

(declare-fun b!3506911 () Bool)

(assert (=> b!3506911 (= e!2171238 (= (head!7371 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))) (c!602786 (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))))))

(declare-fun b!3506912 () Bool)

(declare-fun res!1414627 () Bool)

(assert (=> b!3506912 (=> res!1414627 e!2171234)))

(assert (=> b!3506912 (= res!1414627 (not ((_ is ElementMatch!10227) (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))))))

(assert (=> b!3506912 (= e!2171237 e!2171234)))

(declare-fun b!3506913 () Bool)

(declare-fun e!2171233 () Bool)

(assert (=> b!3506913 (= e!2171233 (nullable!3512 (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339))))))))

(declare-fun b!3506914 () Bool)

(declare-fun res!1414628 () Bool)

(assert (=> b!3506914 (=> (not res!1414628) (not e!2171238))))

(assert (=> b!3506914 (= res!1414628 (isEmpty!21746 (tail!5480 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339)))))))))

(declare-fun b!3506915 () Bool)

(declare-fun e!2171236 () Bool)

(assert (=> b!3506915 (= e!2171236 (not (= (head!7371 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))) (c!602786 (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339))))))))))

(declare-fun b!3506916 () Bool)

(declare-fun e!2171232 () Bool)

(assert (=> b!3506916 (= e!2171234 e!2171232)))

(declare-fun res!1414625 () Bool)

(assert (=> b!3506916 (=> (not res!1414625) (not e!2171232))))

(assert (=> b!3506916 (= res!1414625 (not lt!1196252))))

(declare-fun b!3506917 () Bool)

(assert (=> b!3506917 (= e!2171233 (matchR!4811 (derivativeStep!3065 (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))) (head!7371 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339)))))) (tail!5480 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339)))))))))

(declare-fun b!3506918 () Bool)

(assert (=> b!3506918 (= e!2171232 e!2171236)))

(declare-fun res!1414626 () Bool)

(assert (=> b!3506918 (=> res!1414626 e!2171236)))

(declare-fun call!253173 () Bool)

(assert (=> b!3506918 (= res!1414626 call!253173)))

(declare-fun d!1019577 () Bool)

(assert (=> d!1019577 e!2171235))

(declare-fun c!603402 () Bool)

(assert (=> d!1019577 (= c!603402 ((_ is EmptyExpr!10227) (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339))))))))

(assert (=> d!1019577 (= lt!1196252 e!2171233)))

(declare-fun c!603403 () Bool)

(assert (=> d!1019577 (= c!603403 (isEmpty!21746 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))))))

(assert (=> d!1019577 (validRegex!4668 (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))))

(assert (=> d!1019577 (= (matchR!4811 (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))) (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))) lt!1196252)))

(declare-fun bm!253168 () Bool)

(assert (=> bm!253168 (= call!253173 (isEmpty!21746 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))))))

(declare-fun b!3506919 () Bool)

(declare-fun res!1414629 () Bool)

(assert (=> b!3506919 (=> (not res!1414629) (not e!2171238))))

(assert (=> b!3506919 (= res!1414629 (not call!253173))))

(declare-fun b!3506920 () Bool)

(declare-fun res!1414630 () Bool)

(assert (=> b!3506920 (=> res!1414630 e!2171236)))

(assert (=> b!3506920 (= res!1414630 (not (isEmpty!21746 (tail!5480 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))))))))

(declare-fun b!3506921 () Bool)

(assert (=> b!3506921 (= e!2171235 (= lt!1196252 call!253173))))

(assert (= (and d!1019577 c!603403) b!3506913))

(assert (= (and d!1019577 (not c!603403)) b!3506917))

(assert (= (and d!1019577 c!603402) b!3506921))

(assert (= (and d!1019577 (not c!603402)) b!3506910))

(assert (= (and b!3506910 c!603401) b!3506908))

(assert (= (and b!3506910 (not c!603401)) b!3506912))

(assert (= (and b!3506912 (not res!1414627)) b!3506909))

(assert (= (and b!3506909 res!1414632) b!3506919))

(assert (= (and b!3506919 res!1414629) b!3506914))

(assert (= (and b!3506914 res!1414628) b!3506911))

(assert (= (and b!3506909 (not res!1414631)) b!3506916))

(assert (= (and b!3506916 res!1414625) b!3506918))

(assert (= (and b!3506918 (not res!1414626)) b!3506920))

(assert (= (and b!3506920 (not res!1414630)) b!3506915))

(assert (= (or b!3506921 b!3506919 b!3506918) bm!253168))

(assert (=> b!3506920 m!3942501))

(declare-fun m!3945627 () Bool)

(assert (=> b!3506920 m!3945627))

(assert (=> b!3506920 m!3945627))

(declare-fun m!3945629 () Bool)

(assert (=> b!3506920 m!3945629))

(declare-fun m!3945631 () Bool)

(assert (=> b!3506913 m!3945631))

(assert (=> b!3506917 m!3942501))

(declare-fun m!3945633 () Bool)

(assert (=> b!3506917 m!3945633))

(assert (=> b!3506917 m!3945633))

(declare-fun m!3945635 () Bool)

(assert (=> b!3506917 m!3945635))

(assert (=> b!3506917 m!3942501))

(assert (=> b!3506917 m!3945627))

(assert (=> b!3506917 m!3945635))

(assert (=> b!3506917 m!3945627))

(declare-fun m!3945637 () Bool)

(assert (=> b!3506917 m!3945637))

(assert (=> bm!253168 m!3942501))

(declare-fun m!3945639 () Bool)

(assert (=> bm!253168 m!3945639))

(assert (=> b!3506915 m!3942501))

(assert (=> b!3506915 m!3945633))

(assert (=> b!3506911 m!3942501))

(assert (=> b!3506911 m!3945633))

(assert (=> d!1019577 m!3942501))

(assert (=> d!1019577 m!3945639))

(declare-fun m!3945641 () Bool)

(assert (=> d!1019577 m!3945641))

(assert (=> b!3506914 m!3942501))

(assert (=> b!3506914 m!3945627))

(assert (=> b!3506914 m!3945627))

(assert (=> b!3506914 m!3945629))

(assert (=> b!3505142 d!1019577))

(assert (=> b!3505142 d!1018901))

(assert (=> b!3505142 d!1019287))

(assert (=> b!3505142 d!1019289))

(declare-fun d!1019579 () Bool)

(declare-fun lt!1196255 () Bool)

(assert (=> d!1019579 (= lt!1196255 (isEmpty!21746 (list!13629 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494))))))))))

(assert (=> d!1019579 (= lt!1196255 (isEmpty!21753 (c!602787 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494))))))))))

(assert (=> d!1019579 (= (isEmpty!21744 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 tokens!494)))))) lt!1196255)))

(declare-fun bs!564136 () Bool)

(assert (= bs!564136 d!1019579))

(declare-fun m!3945643 () Bool)

(assert (=> bs!564136 m!3945643))

(assert (=> bs!564136 m!3945643))

(declare-fun m!3945645 () Bool)

(assert (=> bs!564136 m!3945645))

(declare-fun m!3945647 () Bool)

(assert (=> bs!564136 m!3945647))

(assert (=> b!3504943 d!1019579))

(assert (=> b!3504943 d!1019237))

(assert (=> b!3504943 d!1019239))

(assert (=> b!3504943 d!1018633))

(declare-fun d!1019581 () Bool)

(declare-fun charsToBigInt!0 (List!37428 Int) Int)

(assert (=> d!1019581 (= (inv!15 (value!176298 separatorToken!241)) (= (charsToBigInt!0 (text!40335 (value!176298 separatorToken!241)) 0) (value!176293 (value!176298 separatorToken!241))))))

(declare-fun bs!564138 () Bool)

(assert (= bs!564138 d!1019581))

(declare-fun m!3945651 () Bool)

(assert (=> bs!564138 m!3945651))

(assert (=> b!3504783 d!1019581))

(declare-fun d!1019585 () Bool)

(declare-fun lt!1196258 () Bool)

(assert (=> d!1019585 (= lt!1196258 (isEmpty!21746 (list!13629 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494)))))))))))

(assert (=> d!1019585 (= lt!1196258 (isEmpty!21753 (c!602787 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494)))))))))))

(assert (=> d!1019585 (= (isEmpty!21744 (_2!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 (h!42727 (t!279242 tokens!494))))))) lt!1196258)))

(declare-fun bs!564139 () Bool)

(assert (= bs!564139 d!1019585))

(declare-fun m!3945653 () Bool)

(assert (=> bs!564139 m!3945653))

(assert (=> bs!564139 m!3945653))

(declare-fun m!3945655 () Bool)

(assert (=> bs!564139 m!3945655))

(declare-fun m!3945657 () Bool)

(assert (=> bs!564139 m!3945657))

(assert (=> b!3505252 d!1019585))

(assert (=> b!3505252 d!1019243))

(assert (=> b!3505252 d!1019249))

(assert (=> b!3505252 d!1018589))

(declare-fun d!1019587 () Bool)

(declare-fun res!1414647 () Bool)

(declare-fun e!2171252 () Bool)

(assert (=> d!1019587 (=> (not res!1414647) (not e!2171252))))

(assert (=> d!1019587 (= res!1414647 (not (isEmpty!21746 (originalCharacters!6182 (h!42727 (t!279242 tokens!494))))))))

(assert (=> d!1019587 (= (inv!50523 (h!42727 (t!279242 tokens!494))) e!2171252)))

(declare-fun b!3506942 () Bool)

(declare-fun res!1414648 () Bool)

(assert (=> b!3506942 (=> (not res!1414648) (not e!2171252))))

(assert (=> b!3506942 (= res!1414648 (= (originalCharacters!6182 (h!42727 (t!279242 tokens!494))) (list!13629 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494)))))))))

(declare-fun b!3506943 () Bool)

(assert (=> b!3506943 (= e!2171252 (= (size!28363 (h!42727 (t!279242 tokens!494))) (size!28365 (originalCharacters!6182 (h!42727 (t!279242 tokens!494))))))))

(assert (= (and d!1019587 res!1414647) b!3506942))

(assert (= (and b!3506942 res!1414648) b!3506943))

(declare-fun b_lambda!102021 () Bool)

(assert (=> (not b_lambda!102021) (not b!3506942)))

(assert (=> b!3506942 t!279337))

(declare-fun b_and!248985 () Bool)

(assert (= b_and!248949 (and (=> t!279337 result!238714) b_and!248985)))

(assert (=> b!3506942 t!279279))

(declare-fun b_and!248987 () Bool)

(assert (= b_and!248945 (and (=> t!279279 result!238650) b_and!248987)))

(assert (=> b!3506942 t!279277))

(declare-fun b_and!248989 () Bool)

(assert (= b_and!248951 (and (=> t!279277 result!238648) b_and!248989)))

(assert (=> b!3506942 t!279275))

(declare-fun b_and!248991 () Bool)

(assert (= b_and!248947 (and (=> t!279275 result!238646) b_and!248991)))

(assert (=> b!3506942 t!279329))

(declare-fun b_and!248993 () Bool)

(assert (= b_and!248953 (and (=> t!279329 result!238704) b_and!248993)))

(declare-fun m!3945673 () Bool)

(assert (=> d!1019587 m!3945673))

(assert (=> b!3506942 m!3941955))

(assert (=> b!3506942 m!3941955))

(declare-fun m!3945675 () Bool)

(assert (=> b!3506942 m!3945675))

(declare-fun m!3945677 () Bool)

(assert (=> b!3506943 m!3945677))

(assert (=> b!3505485 d!1019587))

(declare-fun d!1019591 () Bool)

(declare-fun lt!1196260 () Int)

(assert (=> d!1019591 (>= lt!1196260 0)))

(declare-fun e!2171258 () Int)

(assert (=> d!1019591 (= lt!1196260 e!2171258)))

(declare-fun c!603412 () Bool)

(assert (=> d!1019591 (= c!603412 ((_ is Nil!37305) lt!1195171))))

(assert (=> d!1019591 (= (size!28365 lt!1195171) lt!1196260)))

(declare-fun b!3506953 () Bool)

(assert (=> b!3506953 (= e!2171258 0)))

(declare-fun b!3506955 () Bool)

(assert (=> b!3506955 (= e!2171258 (+ 1 (size!28365 (t!279240 lt!1195171))))))

(assert (= (and d!1019591 c!603412) b!3506953))

(assert (= (and d!1019591 (not c!603412)) b!3506955))

(declare-fun m!3945679 () Bool)

(assert (=> b!3506955 m!3945679))

(assert (=> b!3504808 d!1019591))

(declare-fun d!1019593 () Bool)

(declare-fun lt!1196261 () Int)

(assert (=> d!1019593 (>= lt!1196261 0)))

(declare-fun e!2171259 () Int)

(assert (=> d!1019593 (= lt!1196261 e!2171259)))

(declare-fun c!603413 () Bool)

(assert (=> d!1019593 (= c!603413 ((_ is Nil!37305) (++!9231 lt!1195062 lt!1195070)))))

(assert (=> d!1019593 (= (size!28365 (++!9231 lt!1195062 lt!1195070)) lt!1196261)))

(declare-fun b!3506956 () Bool)

(assert (=> b!3506956 (= e!2171259 0)))

(declare-fun b!3506957 () Bool)

(assert (=> b!3506957 (= e!2171259 (+ 1 (size!28365 (t!279240 (++!9231 lt!1195062 lt!1195070)))))))

(assert (= (and d!1019593 c!603413) b!3506956))

(assert (= (and d!1019593 (not c!603413)) b!3506957))

(assert (=> b!3506957 m!3944177))

(assert (=> b!3504808 d!1019593))

(declare-fun d!1019595 () Bool)

(declare-fun lt!1196262 () Int)

(assert (=> d!1019595 (>= lt!1196262 0)))

(declare-fun e!2171260 () Int)

(assert (=> d!1019595 (= lt!1196262 e!2171260)))

(declare-fun c!603414 () Bool)

(assert (=> d!1019595 (= c!603414 ((_ is Nil!37305) (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))

(assert (=> d!1019595 (= (size!28365 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)) lt!1196262)))

(declare-fun b!3506958 () Bool)

(assert (=> b!3506958 (= e!2171260 0)))

(declare-fun b!3506959 () Bool)

(assert (=> b!3506959 (= e!2171260 (+ 1 (size!28365 (t!279240 (printWithSeparatorTokenList!344 thiss!18206 (t!279242 (t!279242 tokens!494)) separatorToken!241)))))))

(assert (= (and d!1019595 c!603414) b!3506958))

(assert (= (and d!1019595 (not c!603414)) b!3506959))

(declare-fun m!3945681 () Bool)

(assert (=> b!3506959 m!3945681))

(assert (=> b!3504808 d!1019595))

(assert (=> d!1018421 d!1018737))

(declare-fun call!253181 () Bool)

(declare-fun c!603416 () Bool)

(declare-fun bm!253174 () Bool)

(declare-fun c!603415 () Bool)

(assert (=> bm!253174 (= call!253181 (validRegex!4668 (ite c!603415 (reg!10556 (regex!5468 lt!1195076)) (ite c!603416 (regOne!20967 (regex!5468 lt!1195076)) (regOne!20966 (regex!5468 lt!1195076))))))))

(declare-fun b!3506960 () Bool)

(declare-fun e!2171261 () Bool)

(declare-fun call!253180 () Bool)

(assert (=> b!3506960 (= e!2171261 call!253180)))

(declare-fun bm!253175 () Bool)

(assert (=> bm!253175 (= call!253180 (validRegex!4668 (ite c!603416 (regTwo!20967 (regex!5468 lt!1195076)) (regTwo!20966 (regex!5468 lt!1195076)))))))

(declare-fun b!3506961 () Bool)

(declare-fun res!1414650 () Bool)

(declare-fun e!2171265 () Bool)

(assert (=> b!3506961 (=> (not res!1414650) (not e!2171265))))

(declare-fun call!253179 () Bool)

(assert (=> b!3506961 (= res!1414650 call!253179)))

(declare-fun e!2171262 () Bool)

(assert (=> b!3506961 (= e!2171262 e!2171265)))

(declare-fun b!3506962 () Bool)

(declare-fun res!1414652 () Bool)

(declare-fun e!2171267 () Bool)

(assert (=> b!3506962 (=> res!1414652 e!2171267)))

(assert (=> b!3506962 (= res!1414652 (not ((_ is Concat!15925) (regex!5468 lt!1195076))))))

(assert (=> b!3506962 (= e!2171262 e!2171267)))

(declare-fun d!1019597 () Bool)

(declare-fun res!1414653 () Bool)

(declare-fun e!2171264 () Bool)

(assert (=> d!1019597 (=> res!1414653 e!2171264)))

(assert (=> d!1019597 (= res!1414653 ((_ is ElementMatch!10227) (regex!5468 lt!1195076)))))

(assert (=> d!1019597 (= (validRegex!4668 (regex!5468 lt!1195076)) e!2171264)))

(declare-fun b!3506963 () Bool)

(assert (=> b!3506963 (= e!2171265 call!253180)))

(declare-fun b!3506964 () Bool)

(declare-fun e!2171263 () Bool)

(assert (=> b!3506964 (= e!2171264 e!2171263)))

(assert (=> b!3506964 (= c!603415 ((_ is Star!10227) (regex!5468 lt!1195076)))))

(declare-fun b!3506965 () Bool)

(assert (=> b!3506965 (= e!2171267 e!2171261)))

(declare-fun res!1414649 () Bool)

(assert (=> b!3506965 (=> (not res!1414649) (not e!2171261))))

(assert (=> b!3506965 (= res!1414649 call!253179)))

(declare-fun b!3506966 () Bool)

(declare-fun e!2171266 () Bool)

(assert (=> b!3506966 (= e!2171263 e!2171266)))

(declare-fun res!1414651 () Bool)

(assert (=> b!3506966 (= res!1414651 (not (nullable!3512 (reg!10556 (regex!5468 lt!1195076)))))))

(assert (=> b!3506966 (=> (not res!1414651) (not e!2171266))))

(declare-fun bm!253176 () Bool)

(assert (=> bm!253176 (= call!253179 call!253181)))

(declare-fun b!3506967 () Bool)

(assert (=> b!3506967 (= e!2171266 call!253181)))

(declare-fun b!3506968 () Bool)

(assert (=> b!3506968 (= e!2171263 e!2171262)))

(assert (=> b!3506968 (= c!603416 ((_ is Union!10227) (regex!5468 lt!1195076)))))

(assert (= (and d!1019597 (not res!1414653)) b!3506964))

(assert (= (and b!3506964 c!603415) b!3506966))

(assert (= (and b!3506964 (not c!603415)) b!3506968))

(assert (= (and b!3506966 res!1414651) b!3506967))

(assert (= (and b!3506968 c!603416) b!3506961))

(assert (= (and b!3506968 (not c!603416)) b!3506962))

(assert (= (and b!3506961 res!1414650) b!3506963))

(assert (= (and b!3506962 (not res!1414652)) b!3506965))

(assert (= (and b!3506965 res!1414649) b!3506960))

(assert (= (or b!3506963 b!3506960) bm!253175))

(assert (= (or b!3506961 b!3506965) bm!253176))

(assert (= (or b!3506967 bm!253176) bm!253174))

(declare-fun m!3945695 () Bool)

(assert (=> bm!253174 m!3945695))

(declare-fun m!3945701 () Bool)

(assert (=> bm!253175 m!3945701))

(declare-fun m!3945703 () Bool)

(assert (=> b!3506966 m!3945703))

(assert (=> d!1018421 d!1019597))

(declare-fun d!1019605 () Bool)

(declare-fun lt!1196263 () Int)

(assert (=> d!1019605 (>= lt!1196263 0)))

(declare-fun e!2171271 () Int)

(assert (=> d!1019605 (= lt!1196263 e!2171271)))

(declare-fun c!603420 () Bool)

(assert (=> d!1019605 (= c!603420 ((_ is Nil!37305) (t!279240 lt!1195055)))))

(assert (=> d!1019605 (= (size!28365 (t!279240 lt!1195055)) lt!1196263)))

(declare-fun b!3506975 () Bool)

(assert (=> b!3506975 (= e!2171271 0)))

(declare-fun b!3506976 () Bool)

(assert (=> b!3506976 (= e!2171271 (+ 1 (size!28365 (t!279240 (t!279240 lt!1195055)))))))

(assert (= (and d!1019605 c!603420) b!3506975))

(assert (= (and d!1019605 (not c!603420)) b!3506976))

(declare-fun m!3945709 () Bool)

(assert (=> b!3506976 m!3945709))

(assert (=> b!3505170 d!1019605))

(declare-fun c!603422 () Bool)

(declare-fun call!253182 () List!37429)

(declare-fun c!603423 () Bool)

(declare-fun bm!253177 () Bool)

(assert (=> bm!253177 (= call!253182 (usedCharacters!702 (ite c!603423 (reg!10556 (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) (ite c!603422 (regOne!20967 (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) (regTwo!20966 (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))))))

(declare-fun b!3506977 () Bool)

(declare-fun e!2171272 () List!37429)

(declare-fun call!253183 () List!37429)

(assert (=> b!3506977 (= e!2171272 call!253183)))

(declare-fun bm!253178 () Bool)

(declare-fun call!253184 () List!37429)

(assert (=> bm!253178 (= call!253184 call!253182)))

(declare-fun b!3506978 () Bool)

(declare-fun e!2171274 () List!37429)

(assert (=> b!3506978 (= e!2171274 call!253182)))

(declare-fun b!3506979 () Bool)

(assert (=> b!3506979 (= e!2171274 e!2171272)))

(assert (=> b!3506979 (= c!603422 ((_ is Union!10227) (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))))

(declare-fun b!3506980 () Bool)

(declare-fun e!2171273 () List!37429)

(assert (=> b!3506980 (= e!2171273 (Cons!37305 (c!602786 (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) Nil!37305))))

(declare-fun b!3506981 () Bool)

(assert (=> b!3506981 (= e!2171272 call!253183)))

(declare-fun bm!253179 () Bool)

(declare-fun call!253185 () List!37429)

(assert (=> bm!253179 (= call!253183 (++!9231 (ite c!603422 call!253184 call!253185) (ite c!603422 call!253185 call!253184)))))

(declare-fun b!3506982 () Bool)

(declare-fun e!2171275 () List!37429)

(assert (=> b!3506982 (= e!2171275 Nil!37305)))

(declare-fun d!1019609 () Bool)

(declare-fun c!603424 () Bool)

(assert (=> d!1019609 (= c!603424 (or ((_ is EmptyExpr!10227) (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) ((_ is EmptyLang!10227) (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))))

(assert (=> d!1019609 (= (usedCharacters!702 (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) e!2171275)))

(declare-fun bm!253180 () Bool)

(assert (=> bm!253180 (= call!253185 (usedCharacters!702 (ite c!603422 (regTwo!20967 (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) (regOne!20966 (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))))))

(declare-fun b!3506983 () Bool)

(assert (=> b!3506983 (= e!2171275 e!2171273)))

(declare-fun c!603421 () Bool)

(assert (=> b!3506983 (= c!603421 ((_ is ElementMatch!10227) (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))))

(declare-fun b!3506984 () Bool)

(assert (=> b!3506984 (= c!603423 ((_ is Star!10227) (ite c!602937 (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))))

(assert (=> b!3506984 (= e!2171273 e!2171274)))

(assert (= (and d!1019609 c!603424) b!3506982))

(assert (= (and d!1019609 (not c!603424)) b!3506983))

(assert (= (and b!3506983 c!603421) b!3506980))

(assert (= (and b!3506983 (not c!603421)) b!3506984))

(assert (= (and b!3506984 c!603423) b!3506978))

(assert (= (and b!3506984 (not c!603423)) b!3506979))

(assert (= (and b!3506979 c!603422) b!3506977))

(assert (= (and b!3506979 (not c!603422)) b!3506981))

(assert (= (or b!3506977 b!3506981) bm!253180))

(assert (= (or b!3506977 b!3506981) bm!253178))

(assert (= (or b!3506977 b!3506981) bm!253179))

(assert (= (or b!3506978 bm!253178) bm!253177))

(declare-fun m!3945711 () Bool)

(assert (=> bm!253177 m!3945711))

(declare-fun m!3945713 () Bool)

(assert (=> bm!253179 m!3945713))

(declare-fun m!3945715 () Bool)

(assert (=> bm!253180 m!3945715))

(assert (=> bm!252997 d!1019609))

(declare-fun d!1019611 () Bool)

(declare-fun c!603425 () Bool)

(assert (=> d!1019611 (= c!603425 ((_ is Nil!37305) (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241)))))))

(declare-fun e!2171276 () (InoxSet C!20640))

(assert (=> d!1019611 (= (content!5247 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241)))) e!2171276)))

(declare-fun b!3506985 () Bool)

(assert (=> b!3506985 (= e!2171276 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506986 () Bool)

(assert (=> b!3506986 (= e!2171276 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241)))) true) (content!5247 (t!279240 (usedCharacters!702 (regex!5468 (rule!8098 separatorToken!241)))))))))

(assert (= (and d!1019611 c!603425) b!3506985))

(assert (= (and d!1019611 (not c!603425)) b!3506986))

(declare-fun m!3945719 () Bool)

(assert (=> b!3506986 m!3945719))

(assert (=> b!3506986 m!3944165))

(assert (=> d!1018597 d!1019611))

(declare-fun d!1019615 () Bool)

(assert (=> d!1019615 (= (get!11969 lt!1195418) (v!37044 lt!1195418))))

(assert (=> b!3505337 d!1019615))

(declare-fun d!1019619 () Bool)

(assert (=> d!1019619 (= (list!13629 (_2!21690 lt!1195353)) (list!13632 (c!602787 (_2!21690 lt!1195353))))))

(declare-fun bs!564144 () Bool)

(assert (= bs!564144 d!1019619))

(declare-fun m!3945727 () Bool)

(assert (=> bs!564144 m!3945727))

(assert (=> b!3505161 d!1019619))

(declare-fun b!3506989 () Bool)

(declare-fun e!2171281 () Bool)

(declare-fun e!2171280 () Bool)

(assert (=> b!3506989 (= e!2171281 e!2171280)))

(declare-fun res!1414656 () Bool)

(declare-fun lt!1196265 () tuple2!37118)

(assert (=> b!3506989 (= res!1414656 (< (size!28365 (_2!21693 lt!1196265)) (size!28365 (list!13629 lt!1195057))))))

(assert (=> b!3506989 (=> (not res!1414656) (not e!2171280))))

(declare-fun b!3506990 () Bool)

(assert (=> b!3506990 (= e!2171280 (not (isEmpty!21751 (_1!21693 lt!1196265))))))

(declare-fun b!3506991 () Bool)

(declare-fun e!2171279 () tuple2!37118)

(declare-fun lt!1196266 () Option!7594)

(declare-fun lt!1196267 () tuple2!37118)

(assert (=> b!3506991 (= e!2171279 (tuple2!37119 (Cons!37307 (_1!21691 (v!37045 lt!1196266)) (_1!21693 lt!1196267)) (_2!21693 lt!1196267)))))

(assert (=> b!3506991 (= lt!1196267 (lexList!1472 thiss!18206 rules!2135 (_2!21691 (v!37045 lt!1196266))))))

(declare-fun d!1019621 () Bool)

(assert (=> d!1019621 e!2171281))

(declare-fun c!603427 () Bool)

(assert (=> d!1019621 (= c!603427 (> (size!28370 (_1!21693 lt!1196265)) 0))))

(assert (=> d!1019621 (= lt!1196265 e!2171279)))

(declare-fun c!603426 () Bool)

(assert (=> d!1019621 (= c!603426 ((_ is Some!7593) lt!1196266))))

(assert (=> d!1019621 (= lt!1196266 (maxPrefix!2597 thiss!18206 rules!2135 (list!13629 lt!1195057)))))

(assert (=> d!1019621 (= (lexList!1472 thiss!18206 rules!2135 (list!13629 lt!1195057)) lt!1196265)))

(declare-fun b!3506992 () Bool)

(assert (=> b!3506992 (= e!2171279 (tuple2!37119 Nil!37307 (list!13629 lt!1195057)))))

(declare-fun b!3506993 () Bool)

(assert (=> b!3506993 (= e!2171281 (= (_2!21693 lt!1196265) (list!13629 lt!1195057)))))

(assert (= (and d!1019621 c!603426) b!3506991))

(assert (= (and d!1019621 (not c!603426)) b!3506992))

(assert (= (and d!1019621 c!603427) b!3506989))

(assert (= (and d!1019621 (not c!603427)) b!3506993))

(assert (= (and b!3506989 res!1414656) b!3506990))

(declare-fun m!3945733 () Bool)

(assert (=> b!3506989 m!3945733))

(assert (=> b!3506989 m!3942559))

(assert (=> b!3506989 m!3944905))

(declare-fun m!3945735 () Bool)

(assert (=> b!3506990 m!3945735))

(declare-fun m!3945737 () Bool)

(assert (=> b!3506991 m!3945737))

(declare-fun m!3945739 () Bool)

(assert (=> d!1019621 m!3945739))

(assert (=> d!1019621 m!3942559))

(declare-fun m!3945741 () Bool)

(assert (=> d!1019621 m!3945741))

(assert (=> b!3505161 d!1019621))

(declare-fun d!1019625 () Bool)

(assert (=> d!1019625 (= (list!13629 lt!1195057) (list!13632 (c!602787 lt!1195057)))))

(declare-fun bs!564145 () Bool)

(assert (= bs!564145 d!1019625))

(declare-fun m!3945743 () Bool)

(assert (=> bs!564145 m!3945743))

(assert (=> b!3505161 d!1019625))

(declare-fun d!1019627 () Bool)

(assert (=> d!1019627 (= (list!13629 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241))) (list!13632 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241)))))))

(declare-fun bs!564146 () Bool)

(assert (= bs!564146 d!1019627))

(declare-fun m!3945745 () Bool)

(assert (=> bs!564146 m!3945745))

(assert (=> b!3504898 d!1019627))

(declare-fun d!1019629 () Bool)

(declare-fun c!603428 () Bool)

(assert (=> d!1019629 (= c!603428 ((_ is Nil!37305) lt!1195170))))

(declare-fun e!2171282 () (InoxSet C!20640))

(assert (=> d!1019629 (= (content!5247 lt!1195170) e!2171282)))

(declare-fun b!3506994 () Bool)

(assert (=> b!3506994 (= e!2171282 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506995 () Bool)

(assert (=> b!3506995 (= e!2171282 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195170) true) (content!5247 (t!279240 lt!1195170))))))

(assert (= (and d!1019629 c!603428) b!3506994))

(assert (= (and d!1019629 (not c!603428)) b!3506995))

(declare-fun m!3945747 () Bool)

(assert (=> b!3506995 m!3945747))

(declare-fun m!3945749 () Bool)

(assert (=> b!3506995 m!3945749))

(assert (=> d!1018385 d!1019629))

(assert (=> d!1018385 d!1018907))

(declare-fun d!1019631 () Bool)

(declare-fun c!603429 () Bool)

(assert (=> d!1019631 (= c!603429 ((_ is Nil!37305) lt!1195084))))

(declare-fun e!2171283 () (InoxSet C!20640))

(assert (=> d!1019631 (= (content!5247 lt!1195084) e!2171283)))

(declare-fun b!3506996 () Bool)

(assert (=> b!3506996 (= e!2171283 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506997 () Bool)

(assert (=> b!3506997 (= e!2171283 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195084) true) (content!5247 (t!279240 lt!1195084))))))

(assert (= (and d!1019631 c!603429) b!3506996))

(assert (= (and d!1019631 (not c!603429)) b!3506997))

(declare-fun m!3945751 () Bool)

(assert (=> b!3506997 m!3945751))

(declare-fun m!3945753 () Bool)

(assert (=> b!3506997 m!3945753))

(assert (=> d!1018385 d!1019631))

(declare-fun d!1019633 () Bool)

(assert (=> d!1019633 (= (isEmpty!21746 (originalCharacters!6182 separatorToken!241)) ((_ is Nil!37305) (originalCharacters!6182 separatorToken!241)))))

(assert (=> d!1018419 d!1019633))

(declare-fun d!1019635 () Bool)

(declare-fun c!603430 () Bool)

(assert (=> d!1019635 (= c!603430 ((_ is Nil!37305) lt!1195438))))

(declare-fun e!2171284 () (InoxSet C!20640))

(assert (=> d!1019635 (= (content!5247 lt!1195438) e!2171284)))

(declare-fun b!3506998 () Bool)

(assert (=> b!3506998 (= e!2171284 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3506999 () Bool)

(assert (=> b!3506999 (= e!2171284 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195438) true) (content!5247 (t!279240 lt!1195438))))))

(assert (= (and d!1019635 c!603430) b!3506998))

(assert (= (and d!1019635 (not c!603430)) b!3506999))

(declare-fun m!3945755 () Bool)

(assert (=> b!3506999 m!3945755))

(declare-fun m!3945757 () Bool)

(assert (=> b!3506999 m!3945757))

(assert (=> d!1018623 d!1019635))

(assert (=> d!1018623 d!1019175))

(declare-fun d!1019637 () Bool)

(declare-fun c!603431 () Bool)

(assert (=> d!1019637 (= c!603431 ((_ is Nil!37305) lt!1195059))))

(declare-fun e!2171285 () (InoxSet C!20640))

(assert (=> d!1019637 (= (content!5247 lt!1195059) e!2171285)))

(declare-fun b!3507000 () Bool)

(assert (=> b!3507000 (= e!2171285 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3507001 () Bool)

(assert (=> b!3507001 (= e!2171285 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195059) true) (content!5247 (t!279240 lt!1195059))))))

(assert (= (and d!1019637 c!603431) b!3507000))

(assert (= (and d!1019637 (not c!603431)) b!3507001))

(declare-fun m!3945759 () Bool)

(assert (=> b!3507001 m!3945759))

(declare-fun m!3945761 () Bool)

(assert (=> b!3507001 m!3945761))

(assert (=> d!1018623 d!1019637))

(declare-fun d!1019639 () Bool)

(assert (=> d!1019639 (= (list!13633 (singletonSeq!2564 separatorToken!241)) (list!13634 (c!602788 (singletonSeq!2564 separatorToken!241))))))

(declare-fun bs!564147 () Bool)

(assert (= bs!564147 d!1019639))

(declare-fun m!3945763 () Bool)

(assert (=> bs!564147 m!3945763))

(assert (=> d!1018403 d!1019639))

(declare-fun d!1019641 () Bool)

(assert (=> d!1019641 (= (list!13633 (_1!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241))))) (list!13634 (c!602788 (_1!21690 (lex!2383 thiss!18206 rules!2135 (print!2122 thiss!18206 (singletonSeq!2564 separatorToken!241)))))))))

(declare-fun bs!564148 () Bool)

(assert (= bs!564148 d!1019641))

(declare-fun m!3945765 () Bool)

(assert (=> bs!564148 m!3945765))

(assert (=> d!1018403 d!1019641))

(assert (=> d!1018403 d!1018487))

(assert (=> d!1018403 d!1019533))

(assert (=> d!1018403 d!1018615))

(declare-fun d!1019643 () Bool)

(declare-fun lt!1196270 () Int)

(assert (=> d!1019643 (= lt!1196270 (size!28370 (list!13633 (_1!21690 lt!1195184))))))

(assert (=> d!1019643 (= lt!1196270 (size!28371 (c!602788 (_1!21690 lt!1195184))))))

(assert (=> d!1019643 (= (size!28364 (_1!21690 lt!1195184)) lt!1196270)))

(declare-fun bs!564149 () Bool)

(assert (= bs!564149 d!1019643))

(assert (=> bs!564149 m!3944495))

(assert (=> bs!564149 m!3944495))

(declare-fun m!3945767 () Bool)

(assert (=> bs!564149 m!3945767))

(declare-fun m!3945769 () Bool)

(assert (=> bs!564149 m!3945769))

(assert (=> d!1018403 d!1019643))

(assert (=> d!1018403 d!1019527))

(declare-fun b!3507004 () Bool)

(declare-fun e!2171287 () List!37429)

(assert (=> b!3507004 (= e!2171287 (list!13636 (xs!14497 (c!602787 (charsOf!3482 (h!42727 tokens!494))))))))

(declare-fun b!3507003 () Bool)

(declare-fun e!2171286 () List!37429)

(assert (=> b!3507003 (= e!2171286 e!2171287)))

(declare-fun c!603433 () Bool)

(assert (=> b!3507003 (= c!603433 ((_ is Leaf!17656) (c!602787 (charsOf!3482 (h!42727 tokens!494)))))))

(declare-fun b!3507002 () Bool)

(assert (=> b!3507002 (= e!2171286 Nil!37305)))

(declare-fun d!1019645 () Bool)

(declare-fun c!603432 () Bool)

(assert (=> d!1019645 (= c!603432 ((_ is Empty!11311) (c!602787 (charsOf!3482 (h!42727 tokens!494)))))))

(assert (=> d!1019645 (= (list!13632 (c!602787 (charsOf!3482 (h!42727 tokens!494)))) e!2171286)))

(declare-fun b!3507005 () Bool)

(assert (=> b!3507005 (= e!2171287 (++!9231 (list!13632 (left!29131 (c!602787 (charsOf!3482 (h!42727 tokens!494))))) (list!13632 (right!29461 (c!602787 (charsOf!3482 (h!42727 tokens!494)))))))))

(assert (= (and d!1019645 c!603432) b!3507002))

(assert (= (and d!1019645 (not c!603432)) b!3507003))

(assert (= (and b!3507003 c!603433) b!3507004))

(assert (= (and b!3507003 (not c!603433)) b!3507005))

(declare-fun m!3945771 () Bool)

(assert (=> b!3507004 m!3945771))

(declare-fun m!3945773 () Bool)

(assert (=> b!3507005 m!3945773))

(declare-fun m!3945775 () Bool)

(assert (=> b!3507005 m!3945775))

(assert (=> b!3507005 m!3945773))

(assert (=> b!3507005 m!3945775))

(declare-fun m!3945779 () Bool)

(assert (=> b!3507005 m!3945779))

(assert (=> d!1018357 d!1019645))

(declare-fun d!1019647 () Bool)

(declare-fun c!603434 () Bool)

(assert (=> d!1019647 (= c!603434 ((_ is Node!11311) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241)))))))

(declare-fun e!2171288 () Bool)

(assert (=> d!1019647 (= (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241)))) e!2171288)))

(declare-fun b!3507006 () Bool)

(assert (=> b!3507006 (= e!2171288 (inv!50528 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241)))))))

(declare-fun b!3507007 () Bool)

(declare-fun e!2171289 () Bool)

(assert (=> b!3507007 (= e!2171288 e!2171289)))

(declare-fun res!1414657 () Bool)

(assert (=> b!3507007 (= res!1414657 (not ((_ is Leaf!17656) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241))))))))

(assert (=> b!3507007 (=> res!1414657 e!2171289)))

(declare-fun b!3507008 () Bool)

(assert (=> b!3507008 (= e!2171289 (inv!50529 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241)))))))

(assert (= (and d!1019647 c!603434) b!3507006))

(assert (= (and d!1019647 (not c!603434)) b!3507007))

(assert (= (and b!3507007 (not res!1414657)) b!3507008))

(declare-fun m!3945781 () Bool)

(assert (=> b!3507006 m!3945781))

(declare-fun m!3945783 () Bool)

(assert (=> b!3507008 m!3945783))

(assert (=> b!3504810 d!1019647))

(assert (=> d!1018429 d!1018737))

(assert (=> d!1018429 d!1018975))

(declare-fun d!1019651 () Bool)

(assert (=> d!1019651 (= (isEmpty!21746 (list!13629 (_2!21690 lt!1195061))) ((_ is Nil!37305) (list!13629 (_2!21690 lt!1195061))))))

(assert (=> d!1018381 d!1019651))

(declare-fun d!1019653 () Bool)

(assert (=> d!1019653 (= (list!13629 (_2!21690 lt!1195061)) (list!13632 (c!602787 (_2!21690 lt!1195061))))))

(declare-fun bs!564151 () Bool)

(assert (= bs!564151 d!1019653))

(declare-fun m!3945785 () Bool)

(assert (=> bs!564151 m!3945785))

(assert (=> d!1018381 d!1019653))

(declare-fun d!1019655 () Bool)

(declare-fun lt!1196272 () Bool)

(assert (=> d!1019655 (= lt!1196272 (isEmpty!21746 (list!13632 (c!602787 (_2!21690 lt!1195061)))))))

(assert (=> d!1019655 (= lt!1196272 (= (size!28372 (c!602787 (_2!21690 lt!1195061))) 0))))

(assert (=> d!1019655 (= (isEmpty!21753 (c!602787 (_2!21690 lt!1195061))) lt!1196272)))

(declare-fun bs!564152 () Bool)

(assert (= bs!564152 d!1019655))

(assert (=> bs!564152 m!3945785))

(assert (=> bs!564152 m!3945785))

(declare-fun m!3945787 () Bool)

(assert (=> bs!564152 m!3945787))

(declare-fun m!3945791 () Bool)

(assert (=> bs!564152 m!3945791))

(assert (=> d!1018381 d!1019655))

(declare-fun d!1019657 () Bool)

(assert (=> d!1019657 (= (isEmpty!21757 lt!1195339) (not ((_ is Some!7593) lt!1195339)))))

(assert (=> d!1018499 d!1019657))

(declare-fun b!3507041 () Bool)

(declare-fun e!2171309 () Bool)

(declare-fun e!2171310 () Bool)

(assert (=> b!3507041 (= e!2171309 e!2171310)))

(declare-fun res!1414677 () Bool)

(assert (=> b!3507041 (=> (not res!1414677) (not e!2171310))))

(assert (=> b!3507041 (= res!1414677 (not ((_ is Nil!37305) lt!1195077)))))

(declare-fun b!3507042 () Bool)

(declare-fun res!1414678 () Bool)

(assert (=> b!3507042 (=> (not res!1414678) (not e!2171310))))

(assert (=> b!3507042 (= res!1414678 (= (head!7371 lt!1195077) (head!7371 lt!1195077)))))

(declare-fun b!3507044 () Bool)

(declare-fun e!2171308 () Bool)

(assert (=> b!3507044 (= e!2171308 (>= (size!28365 lt!1195077) (size!28365 lt!1195077)))))

(declare-fun d!1019659 () Bool)

(assert (=> d!1019659 e!2171308))

(declare-fun res!1414676 () Bool)

(assert (=> d!1019659 (=> res!1414676 e!2171308)))

(declare-fun lt!1196277 () Bool)

(assert (=> d!1019659 (= res!1414676 (not lt!1196277))))

(assert (=> d!1019659 (= lt!1196277 e!2171309)))

(declare-fun res!1414679 () Bool)

(assert (=> d!1019659 (=> res!1414679 e!2171309)))

(assert (=> d!1019659 (= res!1414679 ((_ is Nil!37305) lt!1195077))))

(assert (=> d!1019659 (= (isPrefix!2867 lt!1195077 lt!1195077) lt!1196277)))

(declare-fun b!3507043 () Bool)

(assert (=> b!3507043 (= e!2171310 (isPrefix!2867 (tail!5480 lt!1195077) (tail!5480 lt!1195077)))))

(assert (= (and d!1019659 (not res!1414679)) b!3507041))

(assert (= (and b!3507041 res!1414677) b!3507042))

(assert (= (and b!3507042 res!1414678) b!3507043))

(assert (= (and d!1019659 (not res!1414676)) b!3507044))

(declare-fun m!3945829 () Bool)

(assert (=> b!3507042 m!3945829))

(assert (=> b!3507042 m!3945829))

(assert (=> b!3507044 m!3942509))

(assert (=> b!3507044 m!3942509))

(declare-fun m!3945831 () Bool)

(assert (=> b!3507043 m!3945831))

(assert (=> b!3507043 m!3945831))

(assert (=> b!3507043 m!3945831))

(assert (=> b!3507043 m!3945831))

(declare-fun m!3945833 () Bool)

(assert (=> b!3507043 m!3945833))

(assert (=> d!1018499 d!1019659))

(declare-fun d!1019675 () Bool)

(assert (=> d!1019675 (isPrefix!2867 lt!1195077 lt!1195077)))

(declare-fun lt!1196280 () Unit!52870)

(declare-fun choose!20357 (List!37429 List!37429) Unit!52870)

(assert (=> d!1019675 (= lt!1196280 (choose!20357 lt!1195077 lt!1195077))))

(assert (=> d!1019675 (= (lemmaIsPrefixRefl!1826 lt!1195077 lt!1195077) lt!1196280)))

(declare-fun bs!564157 () Bool)

(assert (= bs!564157 d!1019675))

(assert (=> bs!564157 m!3942533))

(declare-fun m!3945835 () Bool)

(assert (=> bs!564157 m!3945835))

(assert (=> d!1018499 d!1019675))

(declare-fun bs!564158 () Bool)

(declare-fun d!1019677 () Bool)

(assert (= bs!564158 (and d!1019677 d!1018681)))

(declare-fun lambda!122567 () Int)

(assert (=> bs!564158 (= lambda!122567 lambda!122528)))

(assert (=> d!1019677 true))

(declare-fun lt!1196284 () Bool)

(assert (=> d!1019677 (= lt!1196284 (forall!8006 rules!2135 lambda!122567))))

(declare-fun e!2171332 () Bool)

(assert (=> d!1019677 (= lt!1196284 e!2171332)))

(declare-fun res!1414699 () Bool)

(assert (=> d!1019677 (=> res!1414699 e!2171332)))

(assert (=> d!1019677 (= res!1414699 (not ((_ is Cons!37306) rules!2135)))))

(assert (=> d!1019677 (= (rulesValidInductive!1876 thiss!18206 rules!2135) lt!1196284)))

(declare-fun b!3507075 () Bool)

(declare-fun e!2171331 () Bool)

(assert (=> b!3507075 (= e!2171332 e!2171331)))

(declare-fun res!1414698 () Bool)

(assert (=> b!3507075 (=> (not res!1414698) (not e!2171331))))

(assert (=> b!3507075 (= res!1414698 (ruleValid!1764 thiss!18206 (h!42726 rules!2135)))))

(declare-fun b!3507076 () Bool)

(assert (=> b!3507076 (= e!2171331 (rulesValidInductive!1876 thiss!18206 (t!279241 rules!2135)))))

(assert (= (and d!1019677 (not res!1414699)) b!3507075))

(assert (= (and b!3507075 res!1414698) b!3507076))

(declare-fun m!3945853 () Bool)

(assert (=> d!1019677 m!3945853))

(assert (=> b!3507075 m!3944613))

(assert (=> b!3507076 m!3944147))

(assert (=> d!1018499 d!1019677))

(declare-fun d!1019681 () Bool)

(declare-fun res!1414700 () Bool)

(declare-fun e!2171333 () Bool)

(assert (=> d!1019681 (=> res!1414700 e!2171333)))

(assert (=> d!1019681 (= res!1414700 ((_ is Nil!37307) (list!13633 (seqFromList!3989 tokens!494))))))

(assert (=> d!1019681 (= (forall!8003 (list!13633 (seqFromList!3989 tokens!494)) lambda!122525) e!2171333)))

(declare-fun b!3507077 () Bool)

(declare-fun e!2171334 () Bool)

(assert (=> b!3507077 (= e!2171333 e!2171334)))

(declare-fun res!1414701 () Bool)

(assert (=> b!3507077 (=> (not res!1414701) (not e!2171334))))

(assert (=> b!3507077 (= res!1414701 (dynLambda!15854 lambda!122525 (h!42727 (list!13633 (seqFromList!3989 tokens!494)))))))

(declare-fun b!3507078 () Bool)

(assert (=> b!3507078 (= e!2171334 (forall!8003 (t!279242 (list!13633 (seqFromList!3989 tokens!494))) lambda!122525))))

(assert (= (and d!1019681 (not res!1414700)) b!3507077))

(assert (= (and b!3507077 res!1414701) b!3507078))

(declare-fun b_lambda!102027 () Bool)

(assert (=> (not b_lambda!102027) (not b!3507077)))

(declare-fun m!3945857 () Bool)

(assert (=> b!3507077 m!3945857))

(declare-fun m!3945859 () Bool)

(assert (=> b!3507078 m!3945859))

(assert (=> d!1018645 d!1019681))

(assert (=> d!1018645 d!1019063))

(declare-fun d!1019685 () Bool)

(declare-fun lt!1196292 () Bool)

(assert (=> d!1019685 (= lt!1196292 (forall!8003 (list!13633 (seqFromList!3989 tokens!494)) lambda!122525))))

(declare-fun forall!8008 (Conc!11312 Int) Bool)

(assert (=> d!1019685 (= lt!1196292 (forall!8008 (c!602788 (seqFromList!3989 tokens!494)) lambda!122525))))

(assert (=> d!1019685 (= (forall!8005 (seqFromList!3989 tokens!494) lambda!122525) lt!1196292)))

(declare-fun bs!564162 () Bool)

(assert (= bs!564162 d!1019685))

(assert (=> bs!564162 m!3941391))

(assert (=> bs!564162 m!3942987))

(assert (=> bs!564162 m!3942987))

(assert (=> bs!564162 m!3942989))

(declare-fun m!3945887 () Bool)

(assert (=> bs!564162 m!3945887))

(assert (=> d!1018645 d!1019685))

(assert (=> d!1018645 d!1018615))

(declare-fun d!1019701 () Bool)

(declare-fun e!2171344 () Bool)

(assert (=> d!1019701 e!2171344))

(declare-fun res!1414703 () Bool)

(assert (=> d!1019701 (=> (not res!1414703) (not e!2171344))))

(declare-fun lt!1196293 () List!37429)

(assert (=> d!1019701 (= res!1414703 (= (content!5247 lt!1196293) ((_ map or) (content!5247 (t!279240 lt!1195062)) (content!5247 lt!1195070))))))

(declare-fun e!2171343 () List!37429)

(assert (=> d!1019701 (= lt!1196293 e!2171343)))

(declare-fun c!603456 () Bool)

(assert (=> d!1019701 (= c!603456 ((_ is Nil!37305) (t!279240 lt!1195062)))))

(assert (=> d!1019701 (= (++!9231 (t!279240 lt!1195062) lt!1195070) lt!1196293)))

(declare-fun b!3507096 () Bool)

(assert (=> b!3507096 (= e!2171343 (Cons!37305 (h!42725 (t!279240 lt!1195062)) (++!9231 (t!279240 (t!279240 lt!1195062)) lt!1195070)))))

(declare-fun b!3507095 () Bool)

(assert (=> b!3507095 (= e!2171343 lt!1195070)))

(declare-fun b!3507098 () Bool)

(assert (=> b!3507098 (= e!2171344 (or (not (= lt!1195070 Nil!37305)) (= lt!1196293 (t!279240 lt!1195062))))))

(declare-fun b!3507097 () Bool)

(declare-fun res!1414702 () Bool)

(assert (=> b!3507097 (=> (not res!1414702) (not e!2171344))))

(assert (=> b!3507097 (= res!1414702 (= (size!28365 lt!1196293) (+ (size!28365 (t!279240 lt!1195062)) (size!28365 lt!1195070))))))

(assert (= (and d!1019701 c!603456) b!3507095))

(assert (= (and d!1019701 (not c!603456)) b!3507096))

(assert (= (and d!1019701 res!1414703) b!3507097))

(assert (= (and b!3507097 res!1414702) b!3507098))

(declare-fun m!3945891 () Bool)

(assert (=> d!1019701 m!3945891))

(assert (=> d!1019701 m!3943703))

(assert (=> d!1019701 m!3941887))

(declare-fun m!3945893 () Bool)

(assert (=> b!3507096 m!3945893))

(declare-fun m!3945895 () Bool)

(assert (=> b!3507097 m!3945895))

(assert (=> b!3507097 m!3943325))

(assert (=> b!3507097 m!3941895))

(assert (=> b!3504816 d!1019701))

(declare-fun d!1019707 () Bool)

(declare-fun c!603457 () Bool)

(assert (=> d!1019707 (= c!603457 ((_ is Nil!37305) lt!1195211))))

(declare-fun e!2171345 () (InoxSet C!20640))

(assert (=> d!1019707 (= (content!5247 lt!1195211) e!2171345)))

(declare-fun b!3507099 () Bool)

(assert (=> b!3507099 (= e!2171345 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3507100 () Bool)

(assert (=> b!3507100 (= e!2171345 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 lt!1195211) true) (content!5247 (t!279240 lt!1195211))))))

(assert (= (and d!1019707 c!603457) b!3507099))

(assert (= (and d!1019707 (not c!603457)) b!3507100))

(declare-fun m!3945897 () Bool)

(assert (=> b!3507100 m!3945897))

(declare-fun m!3945899 () Bool)

(assert (=> b!3507100 m!3945899))

(assert (=> d!1018447 d!1019707))

(declare-fun d!1019709 () Bool)

(declare-fun c!603458 () Bool)

(assert (=> d!1019709 (= c!603458 ((_ is Nil!37305) (++!9231 lt!1195055 lt!1195070)))))

(declare-fun e!2171346 () (InoxSet C!20640))

(assert (=> d!1019709 (= (content!5247 (++!9231 lt!1195055 lt!1195070)) e!2171346)))

(declare-fun b!3507101 () Bool)

(assert (=> b!3507101 (= e!2171346 ((as const (Array C!20640 Bool)) false))))

(declare-fun b!3507102 () Bool)

(assert (=> b!3507102 (= e!2171346 ((_ map or) (store ((as const (Array C!20640 Bool)) false) (h!42725 (++!9231 lt!1195055 lt!1195070)) true) (content!5247 (t!279240 (++!9231 lt!1195055 lt!1195070)))))))

(assert (= (and d!1019709 c!603458) b!3507101))

(assert (= (and d!1019709 (not c!603458)) b!3507102))

(declare-fun m!3945903 () Bool)

(assert (=> b!3507102 m!3945903))

(assert (=> b!3507102 m!3943711))

(assert (=> d!1018447 d!1019709))

(assert (=> d!1018447 d!1019631))

(declare-fun d!1019711 () Bool)

(assert (=> d!1019711 (= (isEmpty!21756 lt!1195079) (not ((_ is Some!7592) lt!1195079)))))

(assert (=> d!1018451 d!1019711))

(declare-fun d!1019713 () Bool)

(assert (=> d!1019713 (= (isEmpty!21746 lt!1195055) ((_ is Nil!37305) lt!1195055))))

(assert (=> bm!253007 d!1019713))

(declare-fun d!1019715 () Bool)

(assert (=> d!1019715 (= (inv!15 (value!176298 (h!42727 tokens!494))) (= (charsToBigInt!0 (text!40335 (value!176298 (h!42727 tokens!494))) 0) (value!176293 (value!176298 (h!42727 tokens!494)))))))

(declare-fun bs!564164 () Bool)

(assert (= bs!564164 d!1019715))

(declare-fun m!3945905 () Bool)

(assert (=> bs!564164 m!3945905))

(assert (=> b!3505386 d!1019715))

(declare-fun d!1019717 () Bool)

(declare-fun lt!1196298 () Bool)

(assert (=> d!1019717 (= lt!1196298 (select (content!5251 tokens!494) (h!42727 (t!279242 tokens!494))))))

(declare-fun e!2171355 () Bool)

(assert (=> d!1019717 (= lt!1196298 e!2171355)))

(declare-fun res!1414711 () Bool)

(assert (=> d!1019717 (=> (not res!1414711) (not e!2171355))))

(assert (=> d!1019717 (= res!1414711 ((_ is Cons!37307) tokens!494))))

(assert (=> d!1019717 (= (contains!6982 tokens!494 (h!42727 (t!279242 tokens!494))) lt!1196298)))

(declare-fun b!3507111 () Bool)

(declare-fun e!2171354 () Bool)

(assert (=> b!3507111 (= e!2171355 e!2171354)))

(declare-fun res!1414710 () Bool)

(assert (=> b!3507111 (=> res!1414710 e!2171354)))

(assert (=> b!3507111 (= res!1414710 (= (h!42727 tokens!494) (h!42727 (t!279242 tokens!494))))))

(declare-fun b!3507112 () Bool)

(assert (=> b!3507112 (= e!2171354 (contains!6982 (t!279242 tokens!494) (h!42727 (t!279242 tokens!494))))))

(assert (= (and d!1019717 res!1414711) b!3507111))

(assert (= (and b!3507111 (not res!1414710)) b!3507112))

(declare-fun m!3945925 () Bool)

(assert (=> d!1019717 m!3945925))

(declare-fun m!3945927 () Bool)

(assert (=> d!1019717 m!3945927))

(declare-fun m!3945929 () Bool)

(assert (=> b!3507112 m!3945929))

(assert (=> b!3504948 d!1019717))

(assert (=> b!3505194 d!1019201))

(declare-fun d!1019729 () Bool)

(declare-fun res!1414712 () Bool)

(declare-fun e!2171356 () Bool)

(assert (=> d!1019729 (=> res!1414712 e!2171356)))

(assert (=> d!1019729 (= res!1414712 (not ((_ is Cons!37306) (t!279241 rules!2135))))))

(assert (=> d!1019729 (= (sepAndNonSepRulesDisjointChars!1662 rules!2135 (t!279241 rules!2135)) e!2171356)))

(declare-fun b!3507113 () Bool)

(declare-fun e!2171357 () Bool)

(assert (=> b!3507113 (= e!2171356 e!2171357)))

(declare-fun res!1414713 () Bool)

(assert (=> b!3507113 (=> (not res!1414713) (not e!2171357))))

(assert (=> b!3507113 (= res!1414713 (ruleDisjointCharsFromAllFromOtherType!742 (h!42726 (t!279241 rules!2135)) rules!2135))))

(declare-fun b!3507114 () Bool)

(assert (=> b!3507114 (= e!2171357 (sepAndNonSepRulesDisjointChars!1662 rules!2135 (t!279241 (t!279241 rules!2135))))))

(assert (= (and d!1019729 (not res!1414712)) b!3507113))

(assert (= (and b!3507113 res!1414713) b!3507114))

(declare-fun m!3945931 () Bool)

(assert (=> b!3507113 m!3945931))

(declare-fun m!3945933 () Bool)

(assert (=> b!3507114 m!3945933))

(assert (=> b!3504700 d!1019729))

(declare-fun d!1019731 () Bool)

(declare-fun lt!1196333 () Int)

(assert (=> d!1019731 (= lt!1196333 (size!28370 (list!13633 (_1!21690 lt!1195353))))))

(assert (=> d!1019731 (= lt!1196333 (size!28371 (c!602788 (_1!21690 lt!1195353))))))

(assert (=> d!1019731 (= (size!28364 (_1!21690 lt!1195353)) lt!1196333)))

(declare-fun bs!564170 () Bool)

(assert (= bs!564170 d!1019731))

(assert (=> bs!564170 m!3942557))

(assert (=> bs!564170 m!3942557))

(declare-fun m!3945935 () Bool)

(assert (=> bs!564170 m!3945935))

(declare-fun m!3945937 () Bool)

(assert (=> bs!564170 m!3945937))

(assert (=> d!1018523 d!1019731))

(declare-fun lt!1196342 () Option!7596)

(declare-fun e!2171363 () tuple2!37112)

(declare-fun lt!1196363 () BalanceConc!22236)

(declare-fun b!3507122 () Bool)

(assert (=> b!3507122 (= e!2171363 (lexTailRecV2!1080 thiss!18206 rules!2135 lt!1195057 lt!1196363 (_2!21697 (v!37057 lt!1196342)) (append!981 (BalanceConc!22239 Empty!11312) (_1!21697 (v!37057 lt!1196342)))))))

(declare-fun lt!1196348 () tuple2!37112)

(assert (=> b!3507122 (= lt!1196348 (lexRec!759 thiss!18206 rules!2135 (_2!21697 (v!37057 lt!1196342))))))

(declare-fun lt!1196343 () List!37429)

(assert (=> b!3507122 (= lt!1196343 (list!13629 (BalanceConc!22237 Empty!11311)))))

(declare-fun lt!1196337 () List!37429)

(assert (=> b!3507122 (= lt!1196337 (list!13629 (charsOf!3482 (_1!21697 (v!37057 lt!1196342)))))))

(declare-fun lt!1196366 () List!37429)

(assert (=> b!3507122 (= lt!1196366 (list!13629 (_2!21697 (v!37057 lt!1196342))))))

(declare-fun lt!1196349 () Unit!52870)

(assert (=> b!3507122 (= lt!1196349 (lemmaConcatAssociativity!1996 lt!1196343 lt!1196337 lt!1196366))))

(assert (=> b!3507122 (= (++!9231 (++!9231 lt!1196343 lt!1196337) lt!1196366) (++!9231 lt!1196343 (++!9231 lt!1196337 lt!1196366)))))

(declare-fun lt!1196350 () Unit!52870)

(assert (=> b!3507122 (= lt!1196350 lt!1196349)))

(declare-fun lt!1196364 () Option!7596)

(assert (=> b!3507122 (= lt!1196364 (maxPrefixZipperSequence!1152 thiss!18206 rules!2135 lt!1195057))))

(declare-fun c!603465 () Bool)

(assert (=> b!3507122 (= c!603465 ((_ is Some!7595) lt!1196364))))

(declare-fun e!2171362 () tuple2!37112)

(assert (=> b!3507122 (= (lexRec!759 thiss!18206 rules!2135 lt!1195057) e!2171362)))

(declare-fun lt!1196335 () Unit!52870)

(declare-fun Unit!52884 () Unit!52870)

(assert (=> b!3507122 (= lt!1196335 Unit!52884)))

(declare-fun lt!1196344 () List!37431)

(assert (=> b!3507122 (= lt!1196344 (list!13633 (BalanceConc!22239 Empty!11312)))))

(declare-fun lt!1196341 () List!37431)

(assert (=> b!3507122 (= lt!1196341 (Cons!37307 (_1!21697 (v!37057 lt!1196342)) Nil!37307))))

(declare-fun lt!1196351 () List!37431)

(assert (=> b!3507122 (= lt!1196351 (list!13633 (_1!21690 lt!1196348)))))

(declare-fun lt!1196352 () Unit!52870)

(assert (=> b!3507122 (= lt!1196352 (lemmaConcatAssociativity!1998 lt!1196344 lt!1196341 lt!1196351))))

(assert (=> b!3507122 (= (++!9237 (++!9237 lt!1196344 lt!1196341) lt!1196351) (++!9237 lt!1196344 (++!9237 lt!1196341 lt!1196351)))))

(declare-fun lt!1196334 () Unit!52870)

(assert (=> b!3507122 (= lt!1196334 lt!1196352)))

(declare-fun lt!1196361 () List!37429)

(assert (=> b!3507122 (= lt!1196361 (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (list!13629 (charsOf!3482 (_1!21697 (v!37057 lt!1196342))))))))

(declare-fun lt!1196358 () List!37429)

(assert (=> b!3507122 (= lt!1196358 (list!13629 (_2!21697 (v!37057 lt!1196342))))))

(declare-fun lt!1196362 () List!37431)

(assert (=> b!3507122 (= lt!1196362 (list!13633 (append!981 (BalanceConc!22239 Empty!11312) (_1!21697 (v!37057 lt!1196342)))))))

(declare-fun lt!1196345 () Unit!52870)

(assert (=> b!3507122 (= lt!1196345 (lemmaLexThenLexPrefix!524 thiss!18206 rules!2135 lt!1196361 lt!1196358 lt!1196362 (list!13633 (_1!21690 lt!1196348)) (list!13629 (_2!21690 lt!1196348))))))

(assert (=> b!3507122 (= (lexList!1472 thiss!18206 rules!2135 lt!1196361) (tuple2!37119 lt!1196362 Nil!37305))))

(declare-fun lt!1196367 () Unit!52870)

(assert (=> b!3507122 (= lt!1196367 lt!1196345)))

(declare-fun lt!1196339 () BalanceConc!22236)

(assert (=> b!3507122 (= lt!1196339 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (_1!21697 (v!37057 lt!1196342)))))))

(declare-fun lt!1196354 () Option!7596)

(assert (=> b!3507122 (= lt!1196354 (maxPrefixZipperSequence!1152 thiss!18206 rules!2135 lt!1196339))))

(declare-fun c!603463 () Bool)

(assert (=> b!3507122 (= c!603463 ((_ is Some!7595) lt!1196354))))

(declare-fun e!2171365 () tuple2!37112)

(assert (=> b!3507122 (= (lexRec!759 thiss!18206 rules!2135 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (_1!21697 (v!37057 lt!1196342))))) e!2171365)))

(declare-fun lt!1196357 () Unit!52870)

(declare-fun Unit!52885 () Unit!52870)

(assert (=> b!3507122 (= lt!1196357 Unit!52885)))

(assert (=> b!3507122 (= lt!1196363 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (_1!21697 (v!37057 lt!1196342)))))))

(declare-fun lt!1196347 () List!37429)

(assert (=> b!3507122 (= lt!1196347 (list!13629 lt!1196363))))

(declare-fun lt!1196346 () List!37429)

(assert (=> b!3507122 (= lt!1196346 (list!13629 (_2!21697 (v!37057 lt!1196342))))))

(declare-fun lt!1196359 () Unit!52870)

(assert (=> b!3507122 (= lt!1196359 (lemmaConcatTwoListThenFSndIsSuffix!606 lt!1196347 lt!1196346))))

(assert (=> b!3507122 (isSuffix!921 lt!1196346 (++!9231 lt!1196347 lt!1196346))))

(declare-fun lt!1196338 () Unit!52870)

(assert (=> b!3507122 (= lt!1196338 lt!1196359)))

(declare-fun b!3507123 () Bool)

(assert (=> b!3507123 (= e!2171363 (tuple2!37113 (BalanceConc!22239 Empty!11312) lt!1195057))))

(declare-fun b!3507124 () Bool)

(declare-fun lt!1196353 () tuple2!37112)

(assert (=> b!3507124 (= lt!1196353 (lexRec!759 thiss!18206 rules!2135 (_2!21697 (v!37057 lt!1196364))))))

(assert (=> b!3507124 (= e!2171362 (tuple2!37113 (prepend!1277 (_1!21690 lt!1196353) (_1!21697 (v!37057 lt!1196364))) (_2!21690 lt!1196353)))))

(declare-fun b!3507125 () Bool)

(assert (=> b!3507125 (= e!2171365 (tuple2!37113 (BalanceConc!22239 Empty!11312) lt!1196339))))

(declare-fun lt!1196340 () tuple2!37112)

(declare-fun b!3507126 () Bool)

(assert (=> b!3507126 (= lt!1196340 (lexRec!759 thiss!18206 rules!2135 (_2!21697 (v!37057 lt!1196354))))))

(assert (=> b!3507126 (= e!2171365 (tuple2!37113 (prepend!1277 (_1!21690 lt!1196340) (_1!21697 (v!37057 lt!1196354))) (_2!21690 lt!1196340)))))

(declare-fun e!2171364 () Bool)

(declare-fun b!3507127 () Bool)

(declare-fun lt!1196355 () tuple2!37112)

(assert (=> b!3507127 (= e!2171364 (= (list!13629 (_2!21690 lt!1196355)) (list!13629 (_2!21690 (lexRec!759 thiss!18206 rules!2135 lt!1195057)))))))

(declare-fun b!3507128 () Bool)

(assert (=> b!3507128 (= e!2171362 (tuple2!37113 (BalanceConc!22239 Empty!11312) lt!1195057))))

(declare-fun d!1019733 () Bool)

(assert (=> d!1019733 e!2171364))

(declare-fun res!1414715 () Bool)

(assert (=> d!1019733 (=> (not res!1414715) (not e!2171364))))

(assert (=> d!1019733 (= res!1414715 (= (list!13633 (_1!21690 lt!1196355)) (list!13633 (_1!21690 (lexRec!759 thiss!18206 rules!2135 lt!1195057)))))))

(assert (=> d!1019733 (= lt!1196355 e!2171363)))

(declare-fun c!603464 () Bool)

(assert (=> d!1019733 (= c!603464 ((_ is Some!7595) lt!1196342))))

(assert (=> d!1019733 (= lt!1196342 (maxPrefixZipperSequenceV2!546 thiss!18206 rules!2135 lt!1195057 lt!1195057))))

(declare-fun lt!1196360 () Unit!52870)

(declare-fun lt!1196356 () Unit!52870)

(assert (=> d!1019733 (= lt!1196360 lt!1196356)))

(declare-fun lt!1196365 () List!37429)

(declare-fun lt!1196336 () List!37429)

(assert (=> d!1019733 (isSuffix!921 lt!1196365 (++!9231 lt!1196336 lt!1196365))))

(assert (=> d!1019733 (= lt!1196356 (lemmaConcatTwoListThenFSndIsSuffix!606 lt!1196336 lt!1196365))))

(assert (=> d!1019733 (= lt!1196365 (list!13629 lt!1195057))))

(assert (=> d!1019733 (= lt!1196336 (list!13629 (BalanceConc!22237 Empty!11311)))))

(assert (=> d!1019733 (= (lexTailRecV2!1080 thiss!18206 rules!2135 lt!1195057 (BalanceConc!22237 Empty!11311) lt!1195057 (BalanceConc!22239 Empty!11312)) lt!1196355)))

(assert (= (and d!1019733 c!603464) b!3507122))

(assert (= (and d!1019733 (not c!603464)) b!3507123))

(assert (= (and b!3507122 c!603465) b!3507124))

(assert (= (and b!3507122 (not c!603465)) b!3507128))

(assert (= (and b!3507122 c!603463) b!3507126))

(assert (= (and b!3507122 (not c!603463)) b!3507125))

(assert (= (and d!1019733 res!1414715) b!3507127))

(declare-fun m!3945979 () Bool)

(assert (=> d!1019733 m!3945979))

(assert (=> d!1019733 m!3942559))

(declare-fun m!3945983 () Bool)

(assert (=> d!1019733 m!3945983))

(assert (=> d!1019733 m!3942155))

(declare-fun m!3945987 () Bool)

(assert (=> d!1019733 m!3945987))

(declare-fun m!3945991 () Bool)

(assert (=> d!1019733 m!3945991))

(declare-fun m!3945993 () Bool)

(assert (=> d!1019733 m!3945993))

(assert (=> d!1019733 m!3945993))

(declare-fun m!3945995 () Bool)

(assert (=> d!1019733 m!3945995))

(declare-fun m!3945997 () Bool)

(assert (=> d!1019733 m!3945997))

(declare-fun m!3946001 () Bool)

(assert (=> b!3507127 m!3946001))

(assert (=> b!3507127 m!3945991))

(declare-fun m!3946005 () Bool)

(assert (=> b!3507127 m!3946005))

(declare-fun m!3946009 () Bool)

(assert (=> b!3507122 m!3946009))

(declare-fun m!3946013 () Bool)

(assert (=> b!3507122 m!3946013))

(declare-fun m!3946015 () Bool)

(assert (=> b!3507122 m!3946015))

(declare-fun m!3946017 () Bool)

(assert (=> b!3507122 m!3946017))

(assert (=> b!3507122 m!3942155))

(declare-fun m!3946021 () Bool)

(assert (=> b!3507122 m!3946021))

(declare-fun m!3946025 () Bool)

(assert (=> b!3507122 m!3946025))

(declare-fun m!3946029 () Bool)

(assert (=> b!3507122 m!3946029))

(declare-fun m!3946031 () Bool)

(assert (=> b!3507122 m!3946031))

(declare-fun m!3946033 () Bool)

(assert (=> b!3507122 m!3946033))

(assert (=> b!3507122 m!3945991))

(declare-fun m!3946037 () Bool)

(assert (=> b!3507122 m!3946037))

(declare-fun m!3946041 () Bool)

(assert (=> b!3507122 m!3946041))

(declare-fun m!3946045 () Bool)

(assert (=> b!3507122 m!3946045))

(declare-fun m!3946047 () Bool)

(assert (=> b!3507122 m!3946047))

(assert (=> b!3507122 m!3946009))

(assert (=> b!3507122 m!3946021))

(assert (=> b!3507122 m!3946017))

(declare-fun m!3946053 () Bool)

(assert (=> b!3507122 m!3946053))

(declare-fun m!3946057 () Bool)

(assert (=> b!3507122 m!3946057))

(declare-fun m!3946063 () Bool)

(assert (=> b!3507122 m!3946063))

(assert (=> b!3507122 m!3946031))

(declare-fun m!3946067 () Bool)

(assert (=> b!3507122 m!3946067))

(declare-fun m!3946069 () Bool)

(assert (=> b!3507122 m!3946069))

(declare-fun m!3946073 () Bool)

(assert (=> b!3507122 m!3946073))

(assert (=> b!3507122 m!3946017))

(declare-fun m!3946079 () Bool)

(assert (=> b!3507122 m!3946079))

(declare-fun m!3946083 () Bool)

(assert (=> b!3507122 m!3946083))

(assert (=> b!3507122 m!3946083))

(declare-fun m!3946085 () Bool)

(assert (=> b!3507122 m!3946085))

(assert (=> b!3507122 m!3946037))

(declare-fun m!3946087 () Bool)

(assert (=> b!3507122 m!3946087))

(declare-fun m!3946089 () Bool)

(assert (=> b!3507122 m!3946089))

(assert (=> b!3507122 m!3946069))

(declare-fun m!3946091 () Bool)

(assert (=> b!3507122 m!3946091))

(declare-fun m!3946093 () Bool)

(assert (=> b!3507122 m!3946093))

(assert (=> b!3507122 m!3945439))

(declare-fun m!3946095 () Bool)

(assert (=> b!3507122 m!3946095))

(assert (=> b!3507122 m!3946045))

(declare-fun m!3946097 () Bool)

(assert (=> b!3507122 m!3946097))

(assert (=> b!3507122 m!3942155))

(assert (=> b!3507122 m!3946013))

(declare-fun m!3946099 () Bool)

(assert (=> b!3507122 m!3946099))

(assert (=> b!3507122 m!3946009))

(assert (=> b!3507122 m!3946091))

(declare-fun m!3946101 () Bool)

(assert (=> b!3507122 m!3946101))

(assert (=> b!3507122 m!3946087))

(declare-fun m!3946107 () Bool)

(assert (=> b!3507124 m!3946107))

(declare-fun m!3946109 () Bool)

(assert (=> b!3507124 m!3946109))

(declare-fun m!3946111 () Bool)

(assert (=> b!3507126 m!3946111))

(declare-fun m!3946113 () Bool)

(assert (=> b!3507126 m!3946113))

(assert (=> d!1018523 d!1019733))

(assert (=> b!3505319 d!1019209))

(declare-fun d!1019741 () Bool)

(assert (=> d!1019741 (= (isEmpty!21746 (tail!5480 lt!1195070)) ((_ is Nil!37305) (tail!5480 lt!1195070)))))

(assert (=> b!3504933 d!1019741))

(assert (=> b!3504933 d!1019085))

(declare-fun d!1019743 () Bool)

(declare-fun lt!1196369 () Int)

(assert (=> d!1019743 (>= lt!1196369 0)))

(declare-fun e!2171369 () Int)

(assert (=> d!1019743 (= lt!1196369 e!2171369)))

(declare-fun c!603467 () Bool)

(assert (=> d!1019743 (= c!603467 ((_ is Nil!37305) lt!1195438))))

(assert (=> d!1019743 (= (size!28365 lt!1195438) lt!1196369)))

(declare-fun b!3507134 () Bool)

(assert (=> b!3507134 (= e!2171369 0)))

(declare-fun b!3507135 () Bool)

(assert (=> b!3507135 (= e!2171369 (+ 1 (size!28365 (t!279240 lt!1195438))))))

(assert (= (and d!1019743 c!603467) b!3507134))

(assert (= (and d!1019743 (not c!603467)) b!3507135))

(declare-fun m!3946121 () Bool)

(assert (=> b!3507135 m!3946121))

(assert (=> b!3505400 d!1019743))

(assert (=> b!3505400 d!1018525))

(declare-fun d!1019747 () Bool)

(declare-fun lt!1196371 () Int)

(assert (=> d!1019747 (>= lt!1196371 0)))

(declare-fun e!2171370 () Int)

(assert (=> d!1019747 (= lt!1196371 e!2171370)))

(declare-fun c!603468 () Bool)

(assert (=> d!1019747 (= c!603468 ((_ is Nil!37305) lt!1195059))))

(assert (=> d!1019747 (= (size!28365 lt!1195059) lt!1196371)))

(declare-fun b!3507136 () Bool)

(assert (=> b!3507136 (= e!2171370 0)))

(declare-fun b!3507137 () Bool)

(assert (=> b!3507137 (= e!2171370 (+ 1 (size!28365 (t!279240 lt!1195059))))))

(assert (= (and d!1019747 c!603468) b!3507136))

(assert (= (and d!1019747 (not c!603468)) b!3507137))

(declare-fun m!3946125 () Bool)

(assert (=> b!3507137 m!3946125))

(assert (=> b!3505400 d!1019747))

(assert (=> b!3505249 d!1019717))

(declare-fun d!1019749 () Bool)

(assert (=> d!1019749 (= (list!13629 lt!1195155) (list!13632 (c!602787 lt!1195155)))))

(declare-fun bs!564172 () Bool)

(assert (= bs!564172 d!1019749))

(declare-fun m!3946131 () Bool)

(assert (=> bs!564172 m!3946131))

(assert (=> d!1018361 d!1019749))

(declare-fun c!603471 () Bool)

(declare-fun bm!253190 () Bool)

(declare-fun c!603472 () Bool)

(declare-fun call!253195 () List!37429)

(assert (=> bm!253190 (= call!253195 (usedCharacters!702 (ite c!603472 (reg!10556 (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))))) (ite c!603471 (regOne!20967 (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))))) (regTwo!20966 (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241))))))))))))

(declare-fun b!3507142 () Bool)

(declare-fun e!2171373 () List!37429)

(declare-fun call!253196 () List!37429)

(assert (=> b!3507142 (= e!2171373 call!253196)))

(declare-fun bm!253191 () Bool)

(declare-fun call!253197 () List!37429)

(assert (=> bm!253191 (= call!253197 call!253195)))

(declare-fun b!3507143 () Bool)

(declare-fun e!2171375 () List!37429)

(assert (=> b!3507143 (= e!2171375 call!253195)))

(declare-fun b!3507144 () Bool)

(assert (=> b!3507144 (= e!2171375 e!2171373)))

(assert (=> b!3507144 (= c!603471 ((_ is Union!10227) (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))))))))

(declare-fun b!3507145 () Bool)

(declare-fun e!2171374 () List!37429)

(assert (=> b!3507145 (= e!2171374 (Cons!37305 (c!602786 (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))))) Nil!37305))))

(declare-fun b!3507146 () Bool)

(assert (=> b!3507146 (= e!2171373 call!253196)))

(declare-fun bm!253192 () Bool)

(declare-fun call!253198 () List!37429)

(assert (=> bm!253192 (= call!253196 (++!9231 (ite c!603471 call!253197 call!253198) (ite c!603471 call!253198 call!253197)))))

(declare-fun b!3507147 () Bool)

(declare-fun e!2171376 () List!37429)

(assert (=> b!3507147 (= e!2171376 Nil!37305)))

(declare-fun c!603473 () Bool)

(declare-fun d!1019753 () Bool)

(assert (=> d!1019753 (= c!603473 (or ((_ is EmptyExpr!10227) (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))))) ((_ is EmptyLang!10227) (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241))))))))))

(assert (=> d!1019753 (= (usedCharacters!702 (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))))) e!2171376)))

(declare-fun bm!253193 () Bool)

(assert (=> bm!253193 (= call!253198 (usedCharacters!702 (ite c!603471 (regTwo!20967 (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))))) (regOne!20966 (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))))))))))

(declare-fun b!3507148 () Bool)

(assert (=> b!3507148 (= e!2171376 e!2171374)))

(declare-fun c!603470 () Bool)

(assert (=> b!3507148 (= c!603470 ((_ is ElementMatch!10227) (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))))))))

(declare-fun b!3507149 () Bool)

(assert (=> b!3507149 (= c!603472 ((_ is Star!10227) (ite c!602957 (reg!10556 (regex!5468 (rule!8098 separatorToken!241))) (ite c!602956 (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241)))))))))

(assert (=> b!3507149 (= e!2171374 e!2171375)))

(assert (= (and d!1019753 c!603473) b!3507147))

(assert (= (and d!1019753 (not c!603473)) b!3507148))

(assert (= (and b!3507148 c!603470) b!3507145))

(assert (= (and b!3507148 (not c!603470)) b!3507149))

(assert (= (and b!3507149 c!603472) b!3507143))

(assert (= (and b!3507149 (not c!603472)) b!3507144))

(assert (= (and b!3507144 c!603471) b!3507142))

(assert (= (and b!3507144 (not c!603471)) b!3507146))

(assert (= (or b!3507142 b!3507146) bm!253193))

(assert (= (or b!3507142 b!3507146) bm!253191))

(assert (= (or b!3507142 b!3507146) bm!253192))

(assert (= (or b!3507143 bm!253191) bm!253190))

(declare-fun m!3946139 () Bool)

(assert (=> bm!253190 m!3946139))

(declare-fun m!3946141 () Bool)

(assert (=> bm!253192 m!3946141))

(declare-fun m!3946143 () Bool)

(assert (=> bm!253193 m!3946143))

(assert (=> bm!253003 d!1019753))

(declare-fun d!1019757 () Bool)

(assert (=> d!1019757 (= (list!13633 (_1!21690 lt!1195164)) (list!13634 (c!602788 (_1!21690 lt!1195164))))))

(declare-fun bs!564173 () Bool)

(assert (= bs!564173 d!1019757))

(declare-fun m!3946145 () Bool)

(assert (=> bs!564173 m!3946145))

(assert (=> b!3504768 d!1019757))

(assert (=> b!3504768 d!1019213))

(assert (=> b!3504768 d!1019215))

(assert (=> b!3504912 d!1019741))

(assert (=> b!3504912 d!1019085))

(declare-fun b!3507158 () Bool)

(declare-fun e!2171386 () Bool)

(declare-fun lt!1196373 () Bool)

(assert (=> b!3507158 (= e!2171386 (not lt!1196373))))

(declare-fun b!3507159 () Bool)

(declare-fun res!1414727 () Bool)

(declare-fun e!2171383 () Bool)

(assert (=> b!3507159 (=> res!1414727 e!2171383)))

(declare-fun e!2171387 () Bool)

(assert (=> b!3507159 (= res!1414727 e!2171387)))

(declare-fun res!1414728 () Bool)

(assert (=> b!3507159 (=> (not res!1414728) (not e!2171387))))

(assert (=> b!3507159 (= res!1414728 lt!1196373)))

(declare-fun b!3507160 () Bool)

(declare-fun e!2171384 () Bool)

(assert (=> b!3507160 (= e!2171384 e!2171386)))

(declare-fun c!603478 () Bool)

(assert (=> b!3507160 (= c!603478 ((_ is EmptyLang!10227) (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(declare-fun b!3507161 () Bool)

(assert (=> b!3507161 (= e!2171387 (= (head!7371 (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))) (c!602786 (regex!5468 (rule!8098 (h!42727 tokens!494))))))))

(declare-fun b!3507162 () Bool)

(declare-fun res!1414723 () Bool)

(assert (=> b!3507162 (=> res!1414723 e!2171383)))

(assert (=> b!3507162 (= res!1414723 (not ((_ is ElementMatch!10227) (regex!5468 (rule!8098 (h!42727 tokens!494))))))))

(assert (=> b!3507162 (= e!2171386 e!2171383)))

(declare-fun b!3507163 () Bool)

(declare-fun e!2171382 () Bool)

(assert (=> b!3507163 (= e!2171382 (nullable!3512 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(declare-fun b!3507164 () Bool)

(declare-fun res!1414724 () Bool)

(assert (=> b!3507164 (=> (not res!1414724) (not e!2171387))))

(assert (=> b!3507164 (= res!1414724 (isEmpty!21746 (tail!5480 (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055))))))))

(declare-fun b!3507165 () Bool)

(declare-fun e!2171385 () Bool)

(assert (=> b!3507165 (= e!2171385 (not (= (head!7371 (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))) (c!602786 (regex!5468 (rule!8098 (h!42727 tokens!494)))))))))

(declare-fun b!3507166 () Bool)

(declare-fun e!2171381 () Bool)

(assert (=> b!3507166 (= e!2171383 e!2171381)))

(declare-fun res!1414721 () Bool)

(assert (=> b!3507166 (=> (not res!1414721) (not e!2171381))))

(assert (=> b!3507166 (= res!1414721 (not lt!1196373))))

(declare-fun b!3507167 () Bool)

(assert (=> b!3507167 (= e!2171382 (matchR!4811 (derivativeStep!3065 (regex!5468 (rule!8098 (h!42727 tokens!494))) (head!7371 (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055))))) (tail!5480 (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055))))))))

(declare-fun b!3507168 () Bool)

(assert (=> b!3507168 (= e!2171381 e!2171385)))

(declare-fun res!1414722 () Bool)

(assert (=> b!3507168 (=> res!1414722 e!2171385)))

(declare-fun call!253203 () Bool)

(assert (=> b!3507168 (= res!1414722 call!253203)))

(declare-fun d!1019759 () Bool)

(assert (=> d!1019759 e!2171384))

(declare-fun c!603479 () Bool)

(assert (=> d!1019759 (= c!603479 ((_ is EmptyExpr!10227) (regex!5468 (rule!8098 (h!42727 tokens!494)))))))

(assert (=> d!1019759 (= lt!1196373 e!2171382)))

(declare-fun c!603480 () Bool)

(assert (=> d!1019759 (= c!603480 (isEmpty!21746 (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))))))

(assert (=> d!1019759 (validRegex!4668 (regex!5468 (rule!8098 (h!42727 tokens!494))))))

(assert (=> d!1019759 (= (matchR!4811 (regex!5468 (rule!8098 (h!42727 tokens!494))) (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))) lt!1196373)))

(declare-fun bm!253198 () Bool)

(assert (=> bm!253198 (= call!253203 (isEmpty!21746 (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))))))

(declare-fun b!3507169 () Bool)

(declare-fun res!1414725 () Bool)

(assert (=> b!3507169 (=> (not res!1414725) (not e!2171387))))

(assert (=> b!3507169 (= res!1414725 (not call!253203))))

(declare-fun b!3507170 () Bool)

(declare-fun res!1414726 () Bool)

(assert (=> b!3507170 (=> res!1414726 e!2171385)))

(assert (=> b!3507170 (= res!1414726 (not (isEmpty!21746 (tail!5480 (_1!21695 (findLongestMatchInner!933 (regex!5468 (rule!8098 (h!42727 tokens!494))) Nil!37305 (size!28365 Nil!37305) lt!1195055 lt!1195055 (size!28365 lt!1195055)))))))))

(declare-fun b!3507171 () Bool)

(assert (=> b!3507171 (= e!2171384 (= lt!1196373 call!253203))))

(assert (= (and d!1019759 c!603480) b!3507163))

(assert (= (and d!1019759 (not c!603480)) b!3507167))

(assert (= (and d!1019759 c!603479) b!3507171))

(assert (= (and d!1019759 (not c!603479)) b!3507160))

(assert (= (and b!3507160 c!603478) b!3507158))

(assert (= (and b!3507160 (not c!603478)) b!3507162))

(assert (= (and b!3507162 (not res!1414723)) b!3507159))

(assert (= (and b!3507159 res!1414728) b!3507169))

(assert (= (and b!3507169 res!1414725) b!3507164))

(assert (= (and b!3507164 res!1414724) b!3507161))

(assert (= (and b!3507159 (not res!1414727)) b!3507166))

(assert (= (and b!3507166 res!1414721) b!3507168))

(assert (= (and b!3507168 (not res!1414722)) b!3507170))

(assert (= (and b!3507170 (not res!1414726)) b!3507165))

(assert (= (or b!3507171 b!3507169 b!3507168) bm!253198))

(declare-fun m!3946159 () Bool)

(assert (=> b!3507170 m!3946159))

(assert (=> b!3507170 m!3946159))

(declare-fun m!3946161 () Bool)

(assert (=> b!3507170 m!3946161))

(assert (=> b!3507163 m!3943085))

(declare-fun m!3946163 () Bool)

(assert (=> b!3507167 m!3946163))

(assert (=> b!3507167 m!3946163))

(declare-fun m!3946165 () Bool)

(assert (=> b!3507167 m!3946165))

(assert (=> b!3507167 m!3946159))

(assert (=> b!3507167 m!3946165))

(assert (=> b!3507167 m!3946159))

(declare-fun m!3946171 () Bool)

(assert (=> b!3507167 m!3946171))

(assert (=> bm!253198 m!3942201))

(assert (=> b!3507165 m!3946163))

(assert (=> b!3507161 m!3946163))

(assert (=> d!1019759 m!3942201))

(assert (=> d!1019759 m!3943095))

(assert (=> b!3507164 m!3946159))

(assert (=> b!3507164 m!3946159))

(assert (=> b!3507164 m!3946161))

(assert (=> b!3504996 d!1019759))

(assert (=> b!3504996 d!1018811))

(assert (=> b!3504996 d!1018895))

(assert (=> b!3504996 d!1018525))

(assert (=> b!3505416 d!1018721))

(declare-fun d!1019769 () Bool)

(declare-fun res!1414734 () Bool)

(declare-fun e!2171396 () Bool)

(assert (=> d!1019769 (=> res!1414734 e!2171396)))

(assert (=> d!1019769 (= res!1414734 ((_ is Nil!37307) (t!279242 tokens!494)))))

(assert (=> d!1019769 (= (forall!8003 (t!279242 tokens!494) lambda!122514) e!2171396)))

(declare-fun b!3507183 () Bool)

(declare-fun e!2171397 () Bool)

(assert (=> b!3507183 (= e!2171396 e!2171397)))

(declare-fun res!1414735 () Bool)

(assert (=> b!3507183 (=> (not res!1414735) (not e!2171397))))

(assert (=> b!3507183 (= res!1414735 (dynLambda!15854 lambda!122514 (h!42727 (t!279242 tokens!494))))))

(declare-fun b!3507184 () Bool)

(assert (=> b!3507184 (= e!2171397 (forall!8003 (t!279242 (t!279242 tokens!494)) lambda!122514))))

(assert (= (and d!1019769 (not res!1414734)) b!3507183))

(assert (= (and b!3507183 res!1414735) b!3507184))

(declare-fun b_lambda!102031 () Bool)

(assert (=> (not b_lambda!102031) (not b!3507183)))

(assert (=> b!3507183 m!3942097))

(declare-fun m!3946179 () Bool)

(assert (=> b!3507184 m!3946179))

(assert (=> b!3505396 d!1019769))

(declare-fun d!1019771 () Bool)

(assert (=> d!1019771 (= (isDefined!5855 lt!1195339) (not (isEmpty!21757 lt!1195339)))))

(declare-fun bs!564176 () Bool)

(assert (= bs!564176 d!1019771))

(assert (=> bs!564176 m!3942531))

(assert (=> b!3505139 d!1019771))

(declare-fun d!1019777 () Bool)

(assert (=> d!1019777 (= (inv!16 (value!176298 separatorToken!241)) (= (charsToInt!0 (text!40333 (value!176298 separatorToken!241))) (value!176289 (value!176298 separatorToken!241))))))

(declare-fun bs!564177 () Bool)

(assert (= bs!564177 d!1019777))

(declare-fun m!3946189 () Bool)

(assert (=> bs!564177 m!3946189))

(assert (=> b!3504786 d!1019777))

(assert (=> b!3504878 d!1018765))

(declare-fun d!1019779 () Bool)

(declare-fun e!2171401 () Bool)

(assert (=> d!1019779 e!2171401))

(declare-fun res!1414742 () Bool)

(assert (=> d!1019779 (=> (not res!1414742) (not e!2171401))))

(assert (=> d!1019779 (= res!1414742 (appendAssocInst!812 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195069 0)))))))

(declare-fun lt!1196380 () BalanceConc!22236)

(assert (=> d!1019779 (= lt!1196380 (BalanceConc!22237 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195069 0))))))))

(assert (=> d!1019779 (= (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195069 0))) lt!1196380)))

(declare-fun b!3507192 () Bool)

(declare-fun res!1414739 () Bool)

(assert (=> b!3507192 (=> (not res!1414739) (not e!2171401))))

(assert (=> b!3507192 (= res!1414739 (>= (height!1715 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195069 0))))) (max!0 (height!1715 (c!602787 (BalanceConc!22237 Empty!11311))) (height!1715 (c!602787 (charsOf!3482 (apply!8864 lt!1195069 0)))))))))

(declare-fun b!3507190 () Bool)

(declare-fun res!1414740 () Bool)

(assert (=> b!3507190 (=> (not res!1414740) (not e!2171401))))

(assert (=> b!3507190 (= res!1414740 (isBalanced!3448 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195069 0))))))))

(declare-fun b!3507191 () Bool)

(declare-fun res!1414741 () Bool)

(assert (=> b!3507191 (=> (not res!1414741) (not e!2171401))))

(assert (=> b!3507191 (= res!1414741 (<= (height!1715 (++!9234 (c!602787 (BalanceConc!22237 Empty!11311)) (c!602787 (charsOf!3482 (apply!8864 lt!1195069 0))))) (+ (max!0 (height!1715 (c!602787 (BalanceConc!22237 Empty!11311))) (height!1715 (c!602787 (charsOf!3482 (apply!8864 lt!1195069 0))))) 1)))))

(declare-fun b!3507193 () Bool)

(assert (=> b!3507193 (= e!2171401 (= (list!13629 lt!1196380) (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (list!13629 (charsOf!3482 (apply!8864 lt!1195069 0))))))))

(assert (= (and d!1019779 res!1414742) b!3507190))

(assert (= (and b!3507190 res!1414740) b!3507191))

(assert (= (and b!3507191 res!1414741) b!3507192))

(assert (= (and b!3507192 res!1414739) b!3507193))

(declare-fun m!3946215 () Bool)

(assert (=> b!3507190 m!3946215))

(assert (=> b!3507190 m!3946215))

(declare-fun m!3946217 () Bool)

(assert (=> b!3507190 m!3946217))

(assert (=> b!3507191 m!3944077))

(declare-fun m!3946219 () Bool)

(assert (=> b!3507191 m!3946219))

(assert (=> b!3507191 m!3944077))

(assert (=> b!3507191 m!3946219))

(declare-fun m!3946221 () Bool)

(assert (=> b!3507191 m!3946221))

(assert (=> b!3507191 m!3946215))

(declare-fun m!3946225 () Bool)

(assert (=> b!3507191 m!3946225))

(assert (=> b!3507191 m!3946215))

(assert (=> b!3507192 m!3944077))

(assert (=> b!3507192 m!3946219))

(assert (=> b!3507192 m!3944077))

(assert (=> b!3507192 m!3946219))

(assert (=> b!3507192 m!3946221))

(assert (=> b!3507192 m!3946215))

(assert (=> b!3507192 m!3946225))

(assert (=> b!3507192 m!3946215))

(declare-fun m!3946231 () Bool)

(assert (=> d!1019779 m!3946231))

(assert (=> d!1019779 m!3946215))

(declare-fun m!3946233 () Bool)

(assert (=> b!3507193 m!3946233))

(assert (=> b!3507193 m!3942155))

(assert (=> b!3507193 m!3942935))

(declare-fun m!3946235 () Bool)

(assert (=> b!3507193 m!3946235))

(assert (=> b!3507193 m!3942155))

(assert (=> b!3507193 m!3946235))

(declare-fun m!3946237 () Bool)

(assert (=> b!3507193 m!3946237))

(assert (=> b!3505404 d!1019779))

(declare-fun d!1019787 () Bool)

(assert (=> d!1019787 (= (head!7373 (drop!2041 lt!1195448 0)) (apply!8868 lt!1195448 0))))

(declare-fun lt!1196382 () Unit!52870)

(assert (=> d!1019787 (= lt!1196382 (choose!20351 lt!1195448 0))))

(declare-fun e!2171405 () Bool)

(assert (=> d!1019787 e!2171405))

(declare-fun res!1414744 () Bool)

(assert (=> d!1019787 (=> (not res!1414744) (not e!2171405))))

(assert (=> d!1019787 (= res!1414744 (>= 0 0))))

(assert (=> d!1019787 (= (lemmaDropApply!1187 lt!1195448 0) lt!1196382)))

(declare-fun b!3507199 () Bool)

(assert (=> b!3507199 (= e!2171405 (< 0 (size!28370 lt!1195448)))))

(assert (= (and d!1019787 res!1414744) b!3507199))

(assert (=> d!1019787 m!3942929))

(assert (=> d!1019787 m!3942929))

(assert (=> d!1019787 m!3942931))

(assert (=> d!1019787 m!3942949))

(declare-fun m!3946239 () Bool)

(assert (=> d!1019787 m!3946239))

(declare-fun m!3946241 () Bool)

(assert (=> b!3507199 m!3946241))

(assert (=> b!3505404 d!1019787))

(declare-fun d!1019789 () Bool)

(declare-fun lt!1196383 () Token!10302)

(assert (=> d!1019789 (contains!6982 lt!1195448 lt!1196383)))

(declare-fun e!2171407 () Token!10302)

(assert (=> d!1019789 (= lt!1196383 e!2171407)))

(declare-fun c!603487 () Bool)

(assert (=> d!1019789 (= c!603487 (= 0 0))))

(declare-fun e!2171406 () Bool)

(assert (=> d!1019789 e!2171406))

(declare-fun res!1414745 () Bool)

(assert (=> d!1019789 (=> (not res!1414745) (not e!2171406))))

(assert (=> d!1019789 (= res!1414745 (<= 0 0))))

(assert (=> d!1019789 (= (apply!8868 lt!1195448 0) lt!1196383)))

(declare-fun b!3507200 () Bool)

(assert (=> b!3507200 (= e!2171406 (< 0 (size!28370 lt!1195448)))))

(declare-fun b!3507201 () Bool)

(assert (=> b!3507201 (= e!2171407 (head!7373 lt!1195448))))

(declare-fun b!3507202 () Bool)

(assert (=> b!3507202 (= e!2171407 (apply!8868 (tail!5481 lt!1195448) (- 0 1)))))

(assert (= (and d!1019789 res!1414745) b!3507200))

(assert (= (and d!1019789 c!603487) b!3507201))

(assert (= (and d!1019789 (not c!603487)) b!3507202))

(declare-fun m!3946243 () Bool)

(assert (=> d!1019789 m!3946243))

(assert (=> b!3507200 m!3946241))

(declare-fun m!3946245 () Bool)

(assert (=> b!3507201 m!3946245))

(declare-fun m!3946247 () Bool)

(assert (=> b!3507202 m!3946247))

(assert (=> b!3507202 m!3946247))

(declare-fun m!3946249 () Bool)

(assert (=> b!3507202 m!3946249))

(assert (=> b!3505404 d!1019789))

(declare-fun d!1019791 () Bool)

(assert (=> d!1019791 (= (tail!5481 (drop!2041 lt!1195444 0)) (drop!2041 lt!1195444 (+ 0 1)))))

(declare-fun lt!1196384 () Unit!52870)

(assert (=> d!1019791 (= lt!1196384 (choose!20349 lt!1195444 0))))

(declare-fun e!2171408 () Bool)

(assert (=> d!1019791 e!2171408))

(declare-fun res!1414746 () Bool)

(assert (=> d!1019791 (=> (not res!1414746) (not e!2171408))))

(assert (=> d!1019791 (= res!1414746 (>= 0 0))))

(assert (=> d!1019791 (= (lemmaDropTail!1071 lt!1195444 0) lt!1196384)))

(declare-fun b!3507203 () Bool)

(assert (=> b!3507203 (= e!2171408 (< 0 (size!28370 lt!1195444)))))

(assert (= (and d!1019791 res!1414746) b!3507203))

(assert (=> d!1019791 m!3942933))

(assert (=> d!1019791 m!3942933))

(assert (=> d!1019791 m!3942939))

(assert (=> d!1019791 m!3942941))

(declare-fun m!3946251 () Bool)

(assert (=> d!1019791 m!3946251))

(declare-fun m!3946253 () Bool)

(assert (=> b!3507203 m!3946253))

(assert (=> b!3505404 d!1019791))

(declare-fun b!3507204 () Bool)

(declare-fun e!2171412 () List!37431)

(assert (=> b!3507204 (= e!2171412 Nil!37307)))

(declare-fun b!3507205 () Bool)

(declare-fun e!2171410 () Int)

(assert (=> b!3507205 (= e!2171410 0)))

(declare-fun b!3507206 () Bool)

(declare-fun e!2171413 () Int)

(assert (=> b!3507206 (= e!2171413 e!2171410)))

(declare-fun c!603491 () Bool)

(declare-fun call!253204 () Int)

(assert (=> b!3507206 (= c!603491 (>= 0 call!253204))))

(declare-fun b!3507207 () Bool)

(assert (=> b!3507207 (= e!2171410 (- call!253204 0))))

(declare-fun b!3507208 () Bool)

(assert (=> b!3507208 (= e!2171413 call!253204)))

(declare-fun b!3507209 () Bool)

(declare-fun e!2171409 () List!37431)

(assert (=> b!3507209 (= e!2171409 (drop!2041 (t!279242 lt!1195444) (- 0 1)))))

(declare-fun d!1019793 () Bool)

(declare-fun e!2171411 () Bool)

(assert (=> d!1019793 e!2171411))

(declare-fun res!1414747 () Bool)

(assert (=> d!1019793 (=> (not res!1414747) (not e!2171411))))

(declare-fun lt!1196385 () List!37431)

(assert (=> d!1019793 (= res!1414747 (= ((_ map implies) (content!5251 lt!1196385) (content!5251 lt!1195444)) ((as const (InoxSet Token!10302)) true)))))

(assert (=> d!1019793 (= lt!1196385 e!2171412)))

(declare-fun c!603488 () Bool)

(assert (=> d!1019793 (= c!603488 ((_ is Nil!37307) lt!1195444))))

(assert (=> d!1019793 (= (drop!2041 lt!1195444 0) lt!1196385)))

(declare-fun b!3507210 () Bool)

(assert (=> b!3507210 (= e!2171412 e!2171409)))

(declare-fun c!603489 () Bool)

(assert (=> b!3507210 (= c!603489 (<= 0 0))))

(declare-fun bm!253199 () Bool)

(assert (=> bm!253199 (= call!253204 (size!28370 lt!1195444))))

(declare-fun b!3507211 () Bool)

(assert (=> b!3507211 (= e!2171409 lt!1195444)))

(declare-fun b!3507212 () Bool)

(assert (=> b!3507212 (= e!2171411 (= (size!28370 lt!1196385) e!2171413))))

(declare-fun c!603490 () Bool)

(assert (=> b!3507212 (= c!603490 (<= 0 0))))

(assert (= (and d!1019793 c!603488) b!3507204))

(assert (= (and d!1019793 (not c!603488)) b!3507210))

(assert (= (and b!3507210 c!603489) b!3507211))

(assert (= (and b!3507210 (not c!603489)) b!3507209))

(assert (= (and d!1019793 res!1414747) b!3507212))

(assert (= (and b!3507212 c!603490) b!3507208))

(assert (= (and b!3507212 (not c!603490)) b!3507206))

(assert (= (and b!3507206 c!603491) b!3507205))

(assert (= (and b!3507206 (not c!603491)) b!3507207))

(assert (= (or b!3507208 b!3507206 b!3507207) bm!253199))

(declare-fun m!3946255 () Bool)

(assert (=> b!3507209 m!3946255))

(declare-fun m!3946257 () Bool)

(assert (=> d!1019793 m!3946257))

(declare-fun m!3946259 () Bool)

(assert (=> d!1019793 m!3946259))

(assert (=> bm!253199 m!3946253))

(declare-fun m!3946261 () Bool)

(assert (=> b!3507212 m!3946261))

(assert (=> b!3505404 d!1019793))

(declare-fun d!1019795 () Bool)

(declare-fun lt!1196390 () BalanceConc!22236)

(assert (=> d!1019795 (= (list!13629 lt!1196390) (printListTailRec!712 thiss!18206 (dropList!1229 lt!1195069 (+ 0 1)) (list!13629 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195069 0))))))))

(declare-fun e!2171414 () BalanceConc!22236)

(assert (=> d!1019795 (= lt!1196390 e!2171414)))

(declare-fun c!603492 () Bool)

(assert (=> d!1019795 (= c!603492 (>= (+ 0 1) (size!28364 lt!1195069)))))

(declare-fun e!2171415 () Bool)

(assert (=> d!1019795 e!2171415))

(declare-fun res!1414748 () Bool)

(assert (=> d!1019795 (=> (not res!1414748) (not e!2171415))))

(assert (=> d!1019795 (= res!1414748 (>= (+ 0 1) 0))))

(assert (=> d!1019795 (= (printTailRec!1552 thiss!18206 lt!1195069 (+ 0 1) (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195069 0)))) lt!1196390)))

(declare-fun b!3507213 () Bool)

(assert (=> b!3507213 (= e!2171415 (<= (+ 0 1) (size!28364 lt!1195069)))))

(declare-fun b!3507214 () Bool)

(assert (=> b!3507214 (= e!2171414 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195069 0))))))

(declare-fun b!3507215 () Bool)

(assert (=> b!3507215 (= e!2171414 (printTailRec!1552 thiss!18206 lt!1195069 (+ 0 1 1) (++!9233 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (apply!8864 lt!1195069 0))) (charsOf!3482 (apply!8864 lt!1195069 (+ 0 1))))))))

(declare-fun lt!1196391 () List!37431)

(assert (=> b!3507215 (= lt!1196391 (list!13633 lt!1195069))))

(declare-fun lt!1196392 () Unit!52870)

(assert (=> b!3507215 (= lt!1196392 (lemmaDropApply!1187 lt!1196391 (+ 0 1)))))

(assert (=> b!3507215 (= (head!7373 (drop!2041 lt!1196391 (+ 0 1))) (apply!8868 lt!1196391 (+ 0 1)))))

(declare-fun lt!1196389 () Unit!52870)

(assert (=> b!3507215 (= lt!1196389 lt!1196392)))

(declare-fun lt!1196387 () List!37431)

(assert (=> b!3507215 (= lt!1196387 (list!13633 lt!1195069))))

(declare-fun lt!1196388 () Unit!52870)

(assert (=> b!3507215 (= lt!1196388 (lemmaDropTail!1071 lt!1196387 (+ 0 1)))))

(assert (=> b!3507215 (= (tail!5481 (drop!2041 lt!1196387 (+ 0 1))) (drop!2041 lt!1196387 (+ 0 1 1)))))

(declare-fun lt!1196386 () Unit!52870)

(assert (=> b!3507215 (= lt!1196386 lt!1196388)))

(assert (= (and d!1019795 res!1414748) b!3507213))

(assert (= (and d!1019795 c!603492) b!3507214))

(assert (= (and d!1019795 (not c!603492)) b!3507215))

(declare-fun m!3946263 () Bool)

(assert (=> d!1019795 m!3946263))

(assert (=> d!1019795 m!3946263))

(declare-fun m!3946265 () Bool)

(assert (=> d!1019795 m!3946265))

(declare-fun m!3946267 () Bool)

(assert (=> d!1019795 m!3946267))

(declare-fun m!3946269 () Bool)

(assert (=> d!1019795 m!3946269))

(assert (=> d!1019795 m!3942927))

(assert (=> d!1019795 m!3942937))

(assert (=> d!1019795 m!3946265))

(assert (=> b!3507213 m!3942927))

(declare-fun m!3946271 () Bool)

(assert (=> b!3507215 m!3946271))

(declare-fun m!3946273 () Bool)

(assert (=> b!3507215 m!3946273))

(declare-fun m!3946275 () Bool)

(assert (=> b!3507215 m!3946275))

(assert (=> b!3507215 m!3946271))

(assert (=> b!3507215 m!3942937))

(declare-fun m!3946277 () Bool)

(assert (=> b!3507215 m!3946277))

(declare-fun m!3946279 () Bool)

(assert (=> b!3507215 m!3946279))

(assert (=> b!3507215 m!3946275))

(declare-fun m!3946281 () Bool)

(assert (=> b!3507215 m!3946281))

(declare-fun m!3946283 () Bool)

(assert (=> b!3507215 m!3946283))

(declare-fun m!3946285 () Bool)

(assert (=> b!3507215 m!3946285))

(declare-fun m!3946287 () Bool)

(assert (=> b!3507215 m!3946287))

(assert (=> b!3507215 m!3946279))

(declare-fun m!3946289 () Bool)

(assert (=> b!3507215 m!3946289))

(assert (=> b!3507215 m!3946285))

(assert (=> b!3507215 m!3946277))

(declare-fun m!3946291 () Bool)

(assert (=> b!3507215 m!3946291))

(assert (=> b!3507215 m!3942915))

(declare-fun m!3946293 () Bool)

(assert (=> b!3507215 m!3946293))

(assert (=> b!3505404 d!1019795))

(declare-fun b!3507216 () Bool)

(declare-fun e!2171419 () List!37431)

(assert (=> b!3507216 (= e!2171419 Nil!37307)))

(declare-fun b!3507217 () Bool)

(declare-fun e!2171417 () Int)

(assert (=> b!3507217 (= e!2171417 0)))

(declare-fun b!3507218 () Bool)

(declare-fun e!2171420 () Int)

(assert (=> b!3507218 (= e!2171420 e!2171417)))

(declare-fun c!603496 () Bool)

(declare-fun call!253205 () Int)

(assert (=> b!3507218 (= c!603496 (>= (+ 0 1) call!253205))))

(declare-fun b!3507219 () Bool)

(assert (=> b!3507219 (= e!2171417 (- call!253205 (+ 0 1)))))

(declare-fun b!3507220 () Bool)

(assert (=> b!3507220 (= e!2171420 call!253205)))

(declare-fun b!3507221 () Bool)

(declare-fun e!2171416 () List!37431)

(assert (=> b!3507221 (= e!2171416 (drop!2041 (t!279242 lt!1195444) (- (+ 0 1) 1)))))

(declare-fun d!1019797 () Bool)

(declare-fun e!2171418 () Bool)

(assert (=> d!1019797 e!2171418))

(declare-fun res!1414749 () Bool)

(assert (=> d!1019797 (=> (not res!1414749) (not e!2171418))))

(declare-fun lt!1196393 () List!37431)

(assert (=> d!1019797 (= res!1414749 (= ((_ map implies) (content!5251 lt!1196393) (content!5251 lt!1195444)) ((as const (InoxSet Token!10302)) true)))))

(assert (=> d!1019797 (= lt!1196393 e!2171419)))

(declare-fun c!603493 () Bool)

(assert (=> d!1019797 (= c!603493 ((_ is Nil!37307) lt!1195444))))

(assert (=> d!1019797 (= (drop!2041 lt!1195444 (+ 0 1)) lt!1196393)))

(declare-fun b!3507222 () Bool)

(assert (=> b!3507222 (= e!2171419 e!2171416)))

(declare-fun c!603494 () Bool)

(assert (=> b!3507222 (= c!603494 (<= (+ 0 1) 0))))

(declare-fun bm!253200 () Bool)

(assert (=> bm!253200 (= call!253205 (size!28370 lt!1195444))))

(declare-fun b!3507223 () Bool)

(assert (=> b!3507223 (= e!2171416 lt!1195444)))

(declare-fun b!3507224 () Bool)

(assert (=> b!3507224 (= e!2171418 (= (size!28370 lt!1196393) e!2171420))))

(declare-fun c!603495 () Bool)

(assert (=> b!3507224 (= c!603495 (<= (+ 0 1) 0))))

(assert (= (and d!1019797 c!603493) b!3507216))

(assert (= (and d!1019797 (not c!603493)) b!3507222))

(assert (= (and b!3507222 c!603494) b!3507223))

(assert (= (and b!3507222 (not c!603494)) b!3507221))

(assert (= (and d!1019797 res!1414749) b!3507224))

(assert (= (and b!3507224 c!603495) b!3507220))

(assert (= (and b!3507224 (not c!603495)) b!3507218))

(assert (= (and b!3507218 c!603496) b!3507217))

(assert (= (and b!3507218 (not c!603496)) b!3507219))

(assert (= (or b!3507220 b!3507218 b!3507219) bm!253200))

(declare-fun m!3946295 () Bool)

(assert (=> b!3507221 m!3946295))

(declare-fun m!3946297 () Bool)

(assert (=> d!1019797 m!3946297))

(assert (=> d!1019797 m!3946259))

(assert (=> bm!253200 m!3946253))

(declare-fun m!3946299 () Bool)

(assert (=> b!3507224 m!3946299))

(assert (=> b!3505404 d!1019797))

(declare-fun d!1019799 () Bool)

(declare-fun lt!1196394 () BalanceConc!22236)

(assert (=> d!1019799 (= (list!13629 lt!1196394) (originalCharacters!6182 (apply!8864 lt!1195069 0)))))

(assert (=> d!1019799 (= lt!1196394 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195069 0)))) (value!176298 (apply!8864 lt!1195069 0))))))

(assert (=> d!1019799 (= (charsOf!3482 (apply!8864 lt!1195069 0)) lt!1196394)))

(declare-fun b_lambda!102033 () Bool)

(assert (=> (not b_lambda!102033) (not d!1019799)))

(declare-fun t!279559 () Bool)

(declare-fun tb!194623 () Bool)

(assert (=> (and b!3504516 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195069 0))))) t!279559) tb!194623))

(declare-fun b!3507225 () Bool)

(declare-fun e!2171421 () Bool)

(declare-fun tp!1084868 () Bool)

(assert (=> b!3507225 (= e!2171421 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195069 0)))) (value!176298 (apply!8864 lt!1195069 0))))) tp!1084868))))

(declare-fun result!238916 () Bool)

(assert (=> tb!194623 (= result!238916 (and (inv!50527 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195069 0)))) (value!176298 (apply!8864 lt!1195069 0)))) e!2171421))))

(assert (= tb!194623 b!3507225))

(declare-fun m!3946301 () Bool)

(assert (=> b!3507225 m!3946301))

(declare-fun m!3946303 () Bool)

(assert (=> tb!194623 m!3946303))

(assert (=> d!1019799 t!279559))

(declare-fun b_and!249015 () Bool)

(assert (= b_and!248991 (and (=> t!279559 result!238916) b_and!249015)))

(declare-fun tb!194625 () Bool)

(declare-fun t!279561 () Bool)

(assert (=> (and b!3504518 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195069 0))))) t!279561) tb!194625))

(declare-fun result!238918 () Bool)

(assert (= result!238918 result!238916))

(assert (=> d!1019799 t!279561))

(declare-fun b_and!249017 () Bool)

(assert (= b_and!248989 (and (=> t!279561 result!238918) b_and!249017)))

(declare-fun t!279563 () Bool)

(declare-fun tb!194627 () Bool)

(assert (=> (and b!3504500 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195069 0))))) t!279563) tb!194627))

(declare-fun result!238920 () Bool)

(assert (= result!238920 result!238916))

(assert (=> d!1019799 t!279563))

(declare-fun b_and!249019 () Bool)

(assert (= b_and!248987 (and (=> t!279563 result!238920) b_and!249019)))

(declare-fun tb!194629 () Bool)

(declare-fun t!279565 () Bool)

(assert (=> (and b!3505488 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195069 0))))) t!279565) tb!194629))

(declare-fun result!238922 () Bool)

(assert (= result!238922 result!238916))

(assert (=> d!1019799 t!279565))

(declare-fun b_and!249021 () Bool)

(assert (= b_and!248985 (and (=> t!279565 result!238922) b_and!249021)))

(declare-fun t!279567 () Bool)

(declare-fun tb!194631 () Bool)

(assert (=> (and b!3505469 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195069 0))))) t!279567) tb!194631))

(declare-fun result!238924 () Bool)

(assert (= result!238924 result!238916))

(assert (=> d!1019799 t!279567))

(declare-fun b_and!249023 () Bool)

(assert (= b_and!248993 (and (=> t!279567 result!238924) b_and!249023)))

(declare-fun m!3946305 () Bool)

(assert (=> d!1019799 m!3946305))

(declare-fun m!3946307 () Bool)

(assert (=> d!1019799 m!3946307))

(assert (=> b!3505404 d!1019799))

(declare-fun d!1019801 () Bool)

(assert (=> d!1019801 (= (head!7373 (drop!2041 lt!1195448 0)) (h!42727 (drop!2041 lt!1195448 0)))))

(assert (=> b!3505404 d!1019801))

(declare-fun d!1019803 () Bool)

(declare-fun lt!1196395 () Token!10302)

(assert (=> d!1019803 (= lt!1196395 (apply!8868 (list!13633 lt!1195069) 0))))

(assert (=> d!1019803 (= lt!1196395 (apply!8869 (c!602788 lt!1195069) 0))))

(declare-fun e!2171422 () Bool)

(assert (=> d!1019803 e!2171422))

(declare-fun res!1414750 () Bool)

(assert (=> d!1019803 (=> (not res!1414750) (not e!2171422))))

(assert (=> d!1019803 (= res!1414750 (<= 0 0))))

(assert (=> d!1019803 (= (apply!8864 lt!1195069 0) lt!1196395)))

(declare-fun b!3507226 () Bool)

(assert (=> b!3507226 (= e!2171422 (< 0 (size!28364 lt!1195069)))))

(assert (= (and d!1019803 res!1414750) b!3507226))

(assert (=> d!1019803 m!3942915))

(assert (=> d!1019803 m!3942915))

(declare-fun m!3946309 () Bool)

(assert (=> d!1019803 m!3946309))

(declare-fun m!3946311 () Bool)

(assert (=> d!1019803 m!3946311))

(assert (=> b!3507226 m!3942927))

(assert (=> b!3505404 d!1019803))

(declare-fun b!3507227 () Bool)

(declare-fun e!2171426 () List!37431)

(assert (=> b!3507227 (= e!2171426 Nil!37307)))

(declare-fun b!3507228 () Bool)

(declare-fun e!2171424 () Int)

(assert (=> b!3507228 (= e!2171424 0)))

(declare-fun b!3507229 () Bool)

(declare-fun e!2171427 () Int)

(assert (=> b!3507229 (= e!2171427 e!2171424)))

(declare-fun c!603500 () Bool)

(declare-fun call!253206 () Int)

(assert (=> b!3507229 (= c!603500 (>= 0 call!253206))))

(declare-fun b!3507230 () Bool)

(assert (=> b!3507230 (= e!2171424 (- call!253206 0))))

(declare-fun b!3507231 () Bool)

(assert (=> b!3507231 (= e!2171427 call!253206)))

(declare-fun b!3507232 () Bool)

(declare-fun e!2171423 () List!37431)

(assert (=> b!3507232 (= e!2171423 (drop!2041 (t!279242 lt!1195448) (- 0 1)))))

(declare-fun d!1019805 () Bool)

(declare-fun e!2171425 () Bool)

(assert (=> d!1019805 e!2171425))

(declare-fun res!1414751 () Bool)

(assert (=> d!1019805 (=> (not res!1414751) (not e!2171425))))

(declare-fun lt!1196396 () List!37431)

(assert (=> d!1019805 (= res!1414751 (= ((_ map implies) (content!5251 lt!1196396) (content!5251 lt!1195448)) ((as const (InoxSet Token!10302)) true)))))

(assert (=> d!1019805 (= lt!1196396 e!2171426)))

(declare-fun c!603497 () Bool)

(assert (=> d!1019805 (= c!603497 ((_ is Nil!37307) lt!1195448))))

(assert (=> d!1019805 (= (drop!2041 lt!1195448 0) lt!1196396)))

(declare-fun b!3507233 () Bool)

(assert (=> b!3507233 (= e!2171426 e!2171423)))

(declare-fun c!603498 () Bool)

(assert (=> b!3507233 (= c!603498 (<= 0 0))))

(declare-fun bm!253201 () Bool)

(assert (=> bm!253201 (= call!253206 (size!28370 lt!1195448))))

(declare-fun b!3507234 () Bool)

(assert (=> b!3507234 (= e!2171423 lt!1195448)))

(declare-fun b!3507235 () Bool)

(assert (=> b!3507235 (= e!2171425 (= (size!28370 lt!1196396) e!2171427))))

(declare-fun c!603499 () Bool)

(assert (=> b!3507235 (= c!603499 (<= 0 0))))

(assert (= (and d!1019805 c!603497) b!3507227))

(assert (= (and d!1019805 (not c!603497)) b!3507233))

(assert (= (and b!3507233 c!603498) b!3507234))

(assert (= (and b!3507233 (not c!603498)) b!3507232))

(assert (= (and d!1019805 res!1414751) b!3507235))

(assert (= (and b!3507235 c!603499) b!3507231))

(assert (= (and b!3507235 (not c!603499)) b!3507229))

(assert (= (and b!3507229 c!603500) b!3507228))

(assert (= (and b!3507229 (not c!603500)) b!3507230))

(assert (= (or b!3507231 b!3507229 b!3507230) bm!253201))

(declare-fun m!3946313 () Bool)

(assert (=> b!3507232 m!3946313))

(declare-fun m!3946315 () Bool)

(assert (=> d!1019805 m!3946315))

(declare-fun m!3946317 () Bool)

(assert (=> d!1019805 m!3946317))

(assert (=> bm!253201 m!3946241))

(declare-fun m!3946319 () Bool)

(assert (=> b!3507235 m!3946319))

(assert (=> b!3505404 d!1019805))

(assert (=> b!3505404 d!1019557))

(declare-fun d!1019807 () Bool)

(assert (=> d!1019807 (= (tail!5481 (drop!2041 lt!1195444 0)) (t!279242 (drop!2041 lt!1195444 0)))))

(assert (=> b!3505404 d!1019807))

(declare-fun d!1019809 () Bool)

(declare-fun lt!1196397 () Int)

(assert (=> d!1019809 (>= lt!1196397 0)))

(declare-fun e!2171428 () Int)

(assert (=> d!1019809 (= lt!1196397 e!2171428)))

(declare-fun c!603501 () Bool)

(assert (=> d!1019809 (= c!603501 ((_ is Nil!37305) lt!1195211))))

(assert (=> d!1019809 (= (size!28365 lt!1195211) lt!1196397)))

(declare-fun b!3507236 () Bool)

(assert (=> b!3507236 (= e!2171428 0)))

(declare-fun b!3507237 () Bool)

(assert (=> b!3507237 (= e!2171428 (+ 1 (size!28365 (t!279240 lt!1195211))))))

(assert (= (and d!1019809 c!603501) b!3507236))

(assert (= (and d!1019809 (not c!603501)) b!3507237))

(declare-fun m!3946321 () Bool)

(assert (=> b!3507237 m!3946321))

(assert (=> b!3504955 d!1019809))

(declare-fun d!1019811 () Bool)

(declare-fun lt!1196398 () Int)

(assert (=> d!1019811 (>= lt!1196398 0)))

(declare-fun e!2171429 () Int)

(assert (=> d!1019811 (= lt!1196398 e!2171429)))

(declare-fun c!603502 () Bool)

(assert (=> d!1019811 (= c!603502 ((_ is Nil!37305) (++!9231 lt!1195055 lt!1195070)))))

(assert (=> d!1019811 (= (size!28365 (++!9231 lt!1195055 lt!1195070)) lt!1196398)))

(declare-fun b!3507238 () Bool)

(assert (=> b!3507238 (= e!2171429 0)))

(declare-fun b!3507239 () Bool)

(assert (=> b!3507239 (= e!2171429 (+ 1 (size!28365 (t!279240 (++!9231 lt!1195055 lt!1195070)))))))

(assert (= (and d!1019811 c!603502) b!3507238))

(assert (= (and d!1019811 (not c!603502)) b!3507239))

(assert (=> b!3507239 m!3943717))

(assert (=> b!3504955 d!1019811))

(assert (=> b!3504955 d!1018995))

(declare-fun d!1019813 () Bool)

(declare-fun lt!1196399 () Bool)

(assert (=> d!1019813 (= lt!1196399 (select (content!5248 (t!279241 rules!2135)) (rule!8098 (h!42727 (t!279242 tokens!494)))))))

(declare-fun e!2171430 () Bool)

(assert (=> d!1019813 (= lt!1196399 e!2171430)))

(declare-fun res!1414753 () Bool)

(assert (=> d!1019813 (=> (not res!1414753) (not e!2171430))))

(assert (=> d!1019813 (= res!1414753 ((_ is Cons!37306) (t!279241 rules!2135)))))

(assert (=> d!1019813 (= (contains!6979 (t!279241 rules!2135) (rule!8098 (h!42727 (t!279242 tokens!494)))) lt!1196399)))

(declare-fun b!3507240 () Bool)

(declare-fun e!2171431 () Bool)

(assert (=> b!3507240 (= e!2171430 e!2171431)))

(declare-fun res!1414752 () Bool)

(assert (=> b!3507240 (=> res!1414752 e!2171431)))

(assert (=> b!3507240 (= res!1414752 (= (h!42726 (t!279241 rules!2135)) (rule!8098 (h!42727 (t!279242 tokens!494)))))))

(declare-fun b!3507241 () Bool)

(assert (=> b!3507241 (= e!2171431 (contains!6979 (t!279241 (t!279241 rules!2135)) (rule!8098 (h!42727 (t!279242 tokens!494)))))))

(assert (= (and d!1019813 res!1414753) b!3507240))

(assert (= (and b!3507240 (not res!1414752)) b!3507241))

(assert (=> d!1019813 m!3943349))

(declare-fun m!3946323 () Bool)

(assert (=> d!1019813 m!3946323))

(declare-fun m!3946325 () Bool)

(assert (=> b!3507241 m!3946325))

(assert (=> b!3505157 d!1019813))

(declare-fun d!1019815 () Bool)

(assert (=> d!1019815 (= (nullable!3512 (regex!5468 (rule!8098 separatorToken!241))) (nullableFct!1020 (regex!5468 (rule!8098 separatorToken!241))))))

(declare-fun bs!564179 () Bool)

(assert (= bs!564179 d!1019815))

(declare-fun m!3946327 () Bool)

(assert (=> bs!564179 m!3946327))

(assert (=> b!3504926 d!1019815))

(declare-fun d!1019817 () Bool)

(declare-fun lt!1196400 () Int)

(assert (=> d!1019817 (>= lt!1196400 0)))

(declare-fun e!2171432 () Int)

(assert (=> d!1019817 (= lt!1196400 e!2171432)))

(declare-fun c!603503 () Bool)

(assert (=> d!1019817 (= c!603503 ((_ is Nil!37307) (list!13633 (_1!21690 lt!1195061))))))

(assert (=> d!1019817 (= (size!28370 (list!13633 (_1!21690 lt!1195061))) lt!1196400)))

(declare-fun b!3507242 () Bool)

(assert (=> b!3507242 (= e!2171432 0)))

(declare-fun b!3507243 () Bool)

(assert (=> b!3507243 (= e!2171432 (+ 1 (size!28370 (t!279242 (list!13633 (_1!21690 lt!1195061))))))))

(assert (= (and d!1019817 c!603503) b!3507242))

(assert (= (and d!1019817 (not c!603503)) b!3507243))

(declare-fun m!3946329 () Bool)

(assert (=> b!3507243 m!3946329))

(assert (=> d!1018459 d!1019817))

(assert (=> d!1018459 d!1018937))

(declare-fun d!1019819 () Bool)

(declare-fun lt!1196401 () Int)

(assert (=> d!1019819 (= lt!1196401 (size!28370 (list!13634 (c!602788 (_1!21690 lt!1195061)))))))

(assert (=> d!1019819 (= lt!1196401 (ite ((_ is Empty!11312) (c!602788 (_1!21690 lt!1195061))) 0 (ite ((_ is Leaf!17657) (c!602788 (_1!21690 lt!1195061))) (csize!22855 (c!602788 (_1!21690 lt!1195061))) (csize!22854 (c!602788 (_1!21690 lt!1195061))))))))

(assert (=> d!1019819 (= (size!28371 (c!602788 (_1!21690 lt!1195061))) lt!1196401)))

(declare-fun bs!564180 () Bool)

(assert (= bs!564180 d!1019819))

(assert (=> bs!564180 m!3943793))

(assert (=> bs!564180 m!3943793))

(declare-fun m!3946331 () Bool)

(assert (=> bs!564180 m!3946331))

(assert (=> d!1018459 d!1019819))

(declare-fun d!1019821 () Bool)

(declare-fun lt!1196402 () Int)

(assert (=> d!1019821 (= lt!1196402 (size!28370 (list!13633 (_1!21690 lt!1195417))))))

(assert (=> d!1019821 (= lt!1196402 (size!28371 (c!602788 (_1!21690 lt!1195417))))))

(assert (=> d!1019821 (= (size!28364 (_1!21690 lt!1195417)) lt!1196402)))

(declare-fun bs!564181 () Bool)

(assert (= bs!564181 d!1019821))

(assert (=> bs!564181 m!3942797))

(assert (=> bs!564181 m!3942797))

(declare-fun m!3946333 () Bool)

(assert (=> bs!564181 m!3946333))

(declare-fun m!3946335 () Bool)

(assert (=> bs!564181 m!3946335))

(assert (=> d!1018575 d!1019821))

(declare-fun b!3507244 () Bool)

(declare-fun e!2171434 () tuple2!37112)

(declare-fun lt!1196432 () BalanceConc!22236)

(declare-fun lt!1196411 () Option!7596)

(assert (=> b!3507244 (= e!2171434 (lexTailRecV2!1080 thiss!18206 rules!2135 lt!1195075 lt!1196432 (_2!21697 (v!37057 lt!1196411)) (append!981 (BalanceConc!22239 Empty!11312) (_1!21697 (v!37057 lt!1196411)))))))

(declare-fun lt!1196417 () tuple2!37112)

(assert (=> b!3507244 (= lt!1196417 (lexRec!759 thiss!18206 rules!2135 (_2!21697 (v!37057 lt!1196411))))))

(declare-fun lt!1196412 () List!37429)

(assert (=> b!3507244 (= lt!1196412 (list!13629 (BalanceConc!22237 Empty!11311)))))

(declare-fun lt!1196406 () List!37429)

(assert (=> b!3507244 (= lt!1196406 (list!13629 (charsOf!3482 (_1!21697 (v!37057 lt!1196411)))))))

(declare-fun lt!1196435 () List!37429)

(assert (=> b!3507244 (= lt!1196435 (list!13629 (_2!21697 (v!37057 lt!1196411))))))

(declare-fun lt!1196418 () Unit!52870)

(assert (=> b!3507244 (= lt!1196418 (lemmaConcatAssociativity!1996 lt!1196412 lt!1196406 lt!1196435))))

(assert (=> b!3507244 (= (++!9231 (++!9231 lt!1196412 lt!1196406) lt!1196435) (++!9231 lt!1196412 (++!9231 lt!1196406 lt!1196435)))))

(declare-fun lt!1196419 () Unit!52870)

(assert (=> b!3507244 (= lt!1196419 lt!1196418)))

(declare-fun lt!1196433 () Option!7596)

(assert (=> b!3507244 (= lt!1196433 (maxPrefixZipperSequence!1152 thiss!18206 rules!2135 lt!1195075))))

(declare-fun c!603506 () Bool)

(assert (=> b!3507244 (= c!603506 ((_ is Some!7595) lt!1196433))))

(declare-fun e!2171433 () tuple2!37112)

(assert (=> b!3507244 (= (lexRec!759 thiss!18206 rules!2135 lt!1195075) e!2171433)))

(declare-fun lt!1196404 () Unit!52870)

(declare-fun Unit!52886 () Unit!52870)

(assert (=> b!3507244 (= lt!1196404 Unit!52886)))

(declare-fun lt!1196413 () List!37431)

(assert (=> b!3507244 (= lt!1196413 (list!13633 (BalanceConc!22239 Empty!11312)))))

(declare-fun lt!1196410 () List!37431)

(assert (=> b!3507244 (= lt!1196410 (Cons!37307 (_1!21697 (v!37057 lt!1196411)) Nil!37307))))

(declare-fun lt!1196420 () List!37431)

(assert (=> b!3507244 (= lt!1196420 (list!13633 (_1!21690 lt!1196417)))))

(declare-fun lt!1196421 () Unit!52870)

(assert (=> b!3507244 (= lt!1196421 (lemmaConcatAssociativity!1998 lt!1196413 lt!1196410 lt!1196420))))

(assert (=> b!3507244 (= (++!9237 (++!9237 lt!1196413 lt!1196410) lt!1196420) (++!9237 lt!1196413 (++!9237 lt!1196410 lt!1196420)))))

(declare-fun lt!1196403 () Unit!52870)

(assert (=> b!3507244 (= lt!1196403 lt!1196421)))

(declare-fun lt!1196430 () List!37429)

(assert (=> b!3507244 (= lt!1196430 (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (list!13629 (charsOf!3482 (_1!21697 (v!37057 lt!1196411))))))))

(declare-fun lt!1196427 () List!37429)

(assert (=> b!3507244 (= lt!1196427 (list!13629 (_2!21697 (v!37057 lt!1196411))))))

(declare-fun lt!1196431 () List!37431)

(assert (=> b!3507244 (= lt!1196431 (list!13633 (append!981 (BalanceConc!22239 Empty!11312) (_1!21697 (v!37057 lt!1196411)))))))

(declare-fun lt!1196414 () Unit!52870)

(assert (=> b!3507244 (= lt!1196414 (lemmaLexThenLexPrefix!524 thiss!18206 rules!2135 lt!1196430 lt!1196427 lt!1196431 (list!13633 (_1!21690 lt!1196417)) (list!13629 (_2!21690 lt!1196417))))))

(assert (=> b!3507244 (= (lexList!1472 thiss!18206 rules!2135 lt!1196430) (tuple2!37119 lt!1196431 Nil!37305))))

(declare-fun lt!1196436 () Unit!52870)

(assert (=> b!3507244 (= lt!1196436 lt!1196414)))

(declare-fun lt!1196408 () BalanceConc!22236)

(assert (=> b!3507244 (= lt!1196408 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (_1!21697 (v!37057 lt!1196411)))))))

(declare-fun lt!1196423 () Option!7596)

(assert (=> b!3507244 (= lt!1196423 (maxPrefixZipperSequence!1152 thiss!18206 rules!2135 lt!1196408))))

(declare-fun c!603504 () Bool)

(assert (=> b!3507244 (= c!603504 ((_ is Some!7595) lt!1196423))))

(declare-fun e!2171436 () tuple2!37112)

(assert (=> b!3507244 (= (lexRec!759 thiss!18206 rules!2135 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (_1!21697 (v!37057 lt!1196411))))) e!2171436)))

(declare-fun lt!1196426 () Unit!52870)

(declare-fun Unit!52887 () Unit!52870)

(assert (=> b!3507244 (= lt!1196426 Unit!52887)))

(assert (=> b!3507244 (= lt!1196432 (++!9233 (BalanceConc!22237 Empty!11311) (charsOf!3482 (_1!21697 (v!37057 lt!1196411)))))))

(declare-fun lt!1196416 () List!37429)

(assert (=> b!3507244 (= lt!1196416 (list!13629 lt!1196432))))

(declare-fun lt!1196415 () List!37429)

(assert (=> b!3507244 (= lt!1196415 (list!13629 (_2!21697 (v!37057 lt!1196411))))))

(declare-fun lt!1196428 () Unit!52870)

(assert (=> b!3507244 (= lt!1196428 (lemmaConcatTwoListThenFSndIsSuffix!606 lt!1196416 lt!1196415))))

(assert (=> b!3507244 (isSuffix!921 lt!1196415 (++!9231 lt!1196416 lt!1196415))))

(declare-fun lt!1196407 () Unit!52870)

(assert (=> b!3507244 (= lt!1196407 lt!1196428)))

(declare-fun b!3507245 () Bool)

(assert (=> b!3507245 (= e!2171434 (tuple2!37113 (BalanceConc!22239 Empty!11312) lt!1195075))))

(declare-fun b!3507246 () Bool)

(declare-fun lt!1196422 () tuple2!37112)

(assert (=> b!3507246 (= lt!1196422 (lexRec!759 thiss!18206 rules!2135 (_2!21697 (v!37057 lt!1196433))))))

(assert (=> b!3507246 (= e!2171433 (tuple2!37113 (prepend!1277 (_1!21690 lt!1196422) (_1!21697 (v!37057 lt!1196433))) (_2!21690 lt!1196422)))))

(declare-fun b!3507247 () Bool)

(assert (=> b!3507247 (= e!2171436 (tuple2!37113 (BalanceConc!22239 Empty!11312) lt!1196408))))

(declare-fun b!3507248 () Bool)

(declare-fun lt!1196409 () tuple2!37112)

(assert (=> b!3507248 (= lt!1196409 (lexRec!759 thiss!18206 rules!2135 (_2!21697 (v!37057 lt!1196423))))))

(assert (=> b!3507248 (= e!2171436 (tuple2!37113 (prepend!1277 (_1!21690 lt!1196409) (_1!21697 (v!37057 lt!1196423))) (_2!21690 lt!1196409)))))

(declare-fun b!3507249 () Bool)

(declare-fun e!2171435 () Bool)

(declare-fun lt!1196424 () tuple2!37112)

(assert (=> b!3507249 (= e!2171435 (= (list!13629 (_2!21690 lt!1196424)) (list!13629 (_2!21690 (lexRec!759 thiss!18206 rules!2135 lt!1195075)))))))

(declare-fun b!3507250 () Bool)

(assert (=> b!3507250 (= e!2171433 (tuple2!37113 (BalanceConc!22239 Empty!11312) lt!1195075))))

(declare-fun d!1019823 () Bool)

(assert (=> d!1019823 e!2171435))

(declare-fun res!1414754 () Bool)

(assert (=> d!1019823 (=> (not res!1414754) (not e!2171435))))

(assert (=> d!1019823 (= res!1414754 (= (list!13633 (_1!21690 lt!1196424)) (list!13633 (_1!21690 (lexRec!759 thiss!18206 rules!2135 lt!1195075)))))))

(assert (=> d!1019823 (= lt!1196424 e!2171434)))

(declare-fun c!603505 () Bool)

(assert (=> d!1019823 (= c!603505 ((_ is Some!7595) lt!1196411))))

(assert (=> d!1019823 (= lt!1196411 (maxPrefixZipperSequenceV2!546 thiss!18206 rules!2135 lt!1195075 lt!1195075))))

(declare-fun lt!1196429 () Unit!52870)

(declare-fun lt!1196425 () Unit!52870)

(assert (=> d!1019823 (= lt!1196429 lt!1196425)))

(declare-fun lt!1196434 () List!37429)

(declare-fun lt!1196405 () List!37429)

(assert (=> d!1019823 (isSuffix!921 lt!1196434 (++!9231 lt!1196405 lt!1196434))))

(assert (=> d!1019823 (= lt!1196425 (lemmaConcatTwoListThenFSndIsSuffix!606 lt!1196405 lt!1196434))))

(assert (=> d!1019823 (= lt!1196434 (list!13629 lt!1195075))))

(assert (=> d!1019823 (= lt!1196405 (list!13629 (BalanceConc!22237 Empty!11311)))))

(assert (=> d!1019823 (= (lexTailRecV2!1080 thiss!18206 rules!2135 lt!1195075 (BalanceConc!22237 Empty!11311) lt!1195075 (BalanceConc!22239 Empty!11312)) lt!1196424)))

(assert (= (and d!1019823 c!603505) b!3507244))

(assert (= (and d!1019823 (not c!603505)) b!3507245))

(assert (= (and b!3507244 c!603506) b!3507246))

(assert (= (and b!3507244 (not c!603506)) b!3507250))

(assert (= (and b!3507244 c!603504) b!3507248))

(assert (= (and b!3507244 (not c!603504)) b!3507247))

(assert (= (and d!1019823 res!1414754) b!3507249))

(declare-fun m!3946341 () Bool)

(assert (=> d!1019823 m!3946341))

(assert (=> d!1019823 m!3942799))

(declare-fun m!3946343 () Bool)

(assert (=> d!1019823 m!3946343))

(assert (=> d!1019823 m!3942155))

(declare-fun m!3946345 () Bool)

(assert (=> d!1019823 m!3946345))

(declare-fun m!3946347 () Bool)

(assert (=> d!1019823 m!3946347))

(declare-fun m!3946349 () Bool)

(assert (=> d!1019823 m!3946349))

(assert (=> d!1019823 m!3946349))

(declare-fun m!3946351 () Bool)

(assert (=> d!1019823 m!3946351))

(declare-fun m!3946353 () Bool)

(assert (=> d!1019823 m!3946353))

(declare-fun m!3946355 () Bool)

(assert (=> b!3507249 m!3946355))

(assert (=> b!3507249 m!3946347))

(declare-fun m!3946357 () Bool)

(assert (=> b!3507249 m!3946357))

(declare-fun m!3946359 () Bool)

(assert (=> b!3507244 m!3946359))

(declare-fun m!3946361 () Bool)

(assert (=> b!3507244 m!3946361))

(declare-fun m!3946365 () Bool)

(assert (=> b!3507244 m!3946365))

(declare-fun m!3946369 () Bool)

(assert (=> b!3507244 m!3946369))

(assert (=> b!3507244 m!3942155))

(declare-fun m!3946375 () Bool)

(assert (=> b!3507244 m!3946375))

(declare-fun m!3946377 () Bool)

(assert (=> b!3507244 m!3946377))

(declare-fun m!3946379 () Bool)

(assert (=> b!3507244 m!3946379))

(declare-fun m!3946381 () Bool)

(assert (=> b!3507244 m!3946381))

(declare-fun m!3946383 () Bool)

(assert (=> b!3507244 m!3946383))

(assert (=> b!3507244 m!3946347))

(declare-fun m!3946385 () Bool)

(assert (=> b!3507244 m!3946385))

(declare-fun m!3946387 () Bool)

(assert (=> b!3507244 m!3946387))

(declare-fun m!3946389 () Bool)

(assert (=> b!3507244 m!3946389))

(declare-fun m!3946391 () Bool)

(assert (=> b!3507244 m!3946391))

(assert (=> b!3507244 m!3946359))

(assert (=> b!3507244 m!3946375))

(assert (=> b!3507244 m!3946369))

(declare-fun m!3946393 () Bool)

(assert (=> b!3507244 m!3946393))

(declare-fun m!3946395 () Bool)

(assert (=> b!3507244 m!3946395))

(declare-fun m!3946399 () Bool)

(assert (=> b!3507244 m!3946399))

(assert (=> b!3507244 m!3946381))

(declare-fun m!3946403 () Bool)

(assert (=> b!3507244 m!3946403))

(declare-fun m!3946405 () Bool)

(assert (=> b!3507244 m!3946405))

(declare-fun m!3946407 () Bool)

(assert (=> b!3507244 m!3946407))

(assert (=> b!3507244 m!3946369))

(declare-fun m!3946409 () Bool)

(assert (=> b!3507244 m!3946409))

(declare-fun m!3946411 () Bool)

(assert (=> b!3507244 m!3946411))

(assert (=> b!3507244 m!3946411))

(declare-fun m!3946413 () Bool)

(assert (=> b!3507244 m!3946413))

(assert (=> b!3507244 m!3946385))

(declare-fun m!3946415 () Bool)

(assert (=> b!3507244 m!3946415))

(declare-fun m!3946417 () Bool)

(assert (=> b!3507244 m!3946417))

(assert (=> b!3507244 m!3946405))

(declare-fun m!3946419 () Bool)

(assert (=> b!3507244 m!3946419))

(declare-fun m!3946421 () Bool)

(assert (=> b!3507244 m!3946421))

(assert (=> b!3507244 m!3945439))

(declare-fun m!3946423 () Bool)

(assert (=> b!3507244 m!3946423))

(assert (=> b!3507244 m!3946389))

(declare-fun m!3946425 () Bool)

(assert (=> b!3507244 m!3946425))

(assert (=> b!3507244 m!3942155))

(assert (=> b!3507244 m!3946361))

(declare-fun m!3946427 () Bool)

(assert (=> b!3507244 m!3946427))

(assert (=> b!3507244 m!3946359))

(assert (=> b!3507244 m!3946419))

(declare-fun m!3946429 () Bool)

(assert (=> b!3507244 m!3946429))

(assert (=> b!3507244 m!3946415))

(declare-fun m!3946431 () Bool)

(assert (=> b!3507246 m!3946431))

(declare-fun m!3946433 () Bool)

(assert (=> b!3507246 m!3946433))

(declare-fun m!3946435 () Bool)

(assert (=> b!3507248 m!3946435))

(declare-fun m!3946437 () Bool)

(assert (=> b!3507248 m!3946437))

(assert (=> d!1018575 d!1019823))

(declare-fun d!1019837 () Bool)

(assert (=> d!1019837 (= (nullable!3512 (regex!5468 lt!1195076)) (nullableFct!1020 (regex!5468 lt!1195076)))))

(declare-fun bs!564183 () Bool)

(assert (= bs!564183 d!1019837))

(declare-fun m!3946439 () Bool)

(assert (=> bs!564183 m!3946439))

(assert (=> b!3504905 d!1019837))

(declare-fun d!1019839 () Bool)

(assert (=> d!1019839 (= (list!13633 (_1!21690 lt!1195353)) (list!13634 (c!602788 (_1!21690 lt!1195353))))))

(declare-fun bs!564184 () Bool)

(assert (= bs!564184 d!1019839))

(declare-fun m!3946441 () Bool)

(assert (=> bs!564184 m!3946441))

(assert (=> b!3505158 d!1019839))

(assert (=> b!3505158 d!1019621))

(assert (=> b!3505158 d!1019625))

(declare-fun d!1019841 () Bool)

(declare-fun lt!1196438 () Bool)

(assert (=> d!1019841 (= lt!1196438 (select (content!5248 rules!2135) (get!11969 lt!1195418)))))

(declare-fun e!2171442 () Bool)

(assert (=> d!1019841 (= lt!1196438 e!2171442)))

(declare-fun res!1414758 () Bool)

(assert (=> d!1019841 (=> (not res!1414758) (not e!2171442))))

(assert (=> d!1019841 (= res!1414758 ((_ is Cons!37306) rules!2135))))

(assert (=> d!1019841 (= (contains!6979 rules!2135 (get!11969 lt!1195418)) lt!1196438)))

(declare-fun b!3507257 () Bool)

(declare-fun e!2171443 () Bool)

(assert (=> b!3507257 (= e!2171442 e!2171443)))

(declare-fun res!1414757 () Bool)

(assert (=> b!3507257 (=> res!1414757 e!2171443)))

(assert (=> b!3507257 (= res!1414757 (= (h!42726 rules!2135) (get!11969 lt!1195418)))))

(declare-fun b!3507258 () Bool)

(assert (=> b!3507258 (= e!2171443 (contains!6979 (t!279241 rules!2135) (get!11969 lt!1195418)))))

(assert (= (and d!1019841 res!1414758) b!3507257))

(assert (= (and b!3507257 (not res!1414757)) b!3507258))

(assert (=> d!1019841 m!3942547))

(assert (=> d!1019841 m!3942813))

(declare-fun m!3946443 () Bool)

(assert (=> d!1019841 m!3946443))

(assert (=> b!3507258 m!3942813))

(declare-fun m!3946445 () Bool)

(assert (=> b!3507258 m!3946445))

(assert (=> b!3505334 d!1019841))

(assert (=> b!3505334 d!1019615))

(declare-fun d!1019843 () Bool)

(declare-fun lt!1196439 () Bool)

(assert (=> d!1019843 (= lt!1196439 (select (content!5251 tokens!494) (h!42727 tokens!494)))))

(declare-fun e!2171445 () Bool)

(assert (=> d!1019843 (= lt!1196439 e!2171445)))

(declare-fun res!1414760 () Bool)

(assert (=> d!1019843 (=> (not res!1414760) (not e!2171445))))

(assert (=> d!1019843 (= res!1414760 ((_ is Cons!37307) tokens!494))))

(assert (=> d!1019843 (= (contains!6982 tokens!494 (h!42727 tokens!494)) lt!1196439)))

(declare-fun b!3507259 () Bool)

(declare-fun e!2171444 () Bool)

(assert (=> b!3507259 (= e!2171445 e!2171444)))

(declare-fun res!1414759 () Bool)

(assert (=> b!3507259 (=> res!1414759 e!2171444)))

(assert (=> b!3507259 (= res!1414759 (= (h!42727 tokens!494) (h!42727 tokens!494)))))

(declare-fun b!3507260 () Bool)

(assert (=> b!3507260 (= e!2171444 (contains!6982 (t!279242 tokens!494) (h!42727 tokens!494)))))

(assert (= (and d!1019843 res!1414760) b!3507259))

(assert (= (and b!3507259 (not res!1414759)) b!3507260))

(assert (=> d!1019843 m!3945925))

(declare-fun m!3946447 () Bool)

(assert (=> d!1019843 m!3946447))

(declare-fun m!3946449 () Bool)

(assert (=> b!3507260 m!3946449))

(assert (=> b!3504950 d!1019843))

(declare-fun bm!253202 () Bool)

(declare-fun c!603510 () Bool)

(declare-fun call!253207 () List!37429)

(declare-fun c!603511 () Bool)

(assert (=> bm!253202 (= call!253207 (usedCharacters!702 (ite c!603511 (reg!10556 (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))) (ite c!603510 (regOne!20967 (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))) (regTwo!20966 (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241)))))))))))

(declare-fun b!3507261 () Bool)

(declare-fun e!2171446 () List!37429)

(declare-fun call!253208 () List!37429)

(assert (=> b!3507261 (= e!2171446 call!253208)))

(declare-fun bm!253203 () Bool)

(declare-fun call!253209 () List!37429)

(assert (=> bm!253203 (= call!253209 call!253207)))

(declare-fun b!3507262 () Bool)

(declare-fun e!2171448 () List!37429)

(assert (=> b!3507262 (= e!2171448 call!253207)))

(declare-fun b!3507263 () Bool)

(assert (=> b!3507263 (= e!2171448 e!2171446)))

(assert (=> b!3507263 (= c!603510 ((_ is Union!10227) (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))))))

(declare-fun b!3507264 () Bool)

(declare-fun e!2171447 () List!37429)

(assert (=> b!3507264 (= e!2171447 (Cons!37305 (c!602786 (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))) Nil!37305))))

(declare-fun b!3507265 () Bool)

(assert (=> b!3507265 (= e!2171446 call!253208)))

(declare-fun call!253210 () List!37429)

(declare-fun bm!253204 () Bool)

(assert (=> bm!253204 (= call!253208 (++!9231 (ite c!603510 call!253209 call!253210) (ite c!603510 call!253210 call!253209)))))

(declare-fun b!3507266 () Bool)

(declare-fun e!2171449 () List!37429)

(assert (=> b!3507266 (= e!2171449 Nil!37305)))

(declare-fun d!1019845 () Bool)

(declare-fun c!603512 () Bool)

(assert (=> d!1019845 (= c!603512 (or ((_ is EmptyExpr!10227) (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))) ((_ is EmptyLang!10227) (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241)))))))))

(assert (=> d!1019845 (= (usedCharacters!702 (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))) e!2171449)))

(declare-fun bm!253205 () Bool)

(assert (=> bm!253205 (= call!253210 (usedCharacters!702 (ite c!603510 (regTwo!20967 (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))) (regOne!20966 (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))))))))

(declare-fun b!3507267 () Bool)

(assert (=> b!3507267 (= e!2171449 e!2171447)))

(declare-fun c!603509 () Bool)

(assert (=> b!3507267 (= c!603509 ((_ is ElementMatch!10227) (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))))))

(declare-fun b!3507268 () Bool)

(assert (=> b!3507268 (= c!603511 ((_ is Star!10227) (ite c!602956 (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))))))

(assert (=> b!3507268 (= e!2171447 e!2171448)))

(assert (= (and d!1019845 c!603512) b!3507266))

(assert (= (and d!1019845 (not c!603512)) b!3507267))

(assert (= (and b!3507267 c!603509) b!3507264))

(assert (= (and b!3507267 (not c!603509)) b!3507268))

(assert (= (and b!3507268 c!603511) b!3507262))

(assert (= (and b!3507268 (not c!603511)) b!3507263))

(assert (= (and b!3507263 c!603510) b!3507261))

(assert (= (and b!3507263 (not c!603510)) b!3507265))

(assert (= (or b!3507261 b!3507265) bm!253205))

(assert (= (or b!3507261 b!3507265) bm!253203))

(assert (= (or b!3507261 b!3507265) bm!253204))

(assert (= (or b!3507262 bm!253203) bm!253202))

(declare-fun m!3946451 () Bool)

(assert (=> bm!253202 m!3946451))

(declare-fun m!3946453 () Bool)

(assert (=> bm!253204 m!3946453))

(declare-fun m!3946455 () Bool)

(assert (=> bm!253205 m!3946455))

(assert (=> bm!253006 d!1019845))

(declare-fun bs!564185 () Bool)

(declare-fun d!1019847 () Bool)

(assert (= bs!564185 (and d!1019847 d!1018795)))

(declare-fun lambda!122569 () Int)

(assert (=> bs!564185 (= (and (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (h!42726 rules!2135)))) (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (h!42726 rules!2135))))) (= lambda!122569 lambda!122531))))

(declare-fun bs!564186 () Bool)

(assert (= bs!564186 (and d!1019847 d!1018809)))

(assert (=> bs!564186 (= (and (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (= lambda!122569 lambda!122534))))

(declare-fun bs!564187 () Bool)

(assert (= bs!564187 (and d!1019847 d!1018947)))

(assert (=> bs!564187 (= (and (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (= lambda!122569 lambda!122538))))

(assert (=> d!1019847 true))

(assert (=> d!1019847 (< (dynLambda!15850 order!20021 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241)))) (dynLambda!15857 order!20023 lambda!122569))))

(assert (=> d!1019847 true))

(assert (=> d!1019847 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241)))) (dynLambda!15857 order!20023 lambda!122569))))

(assert (=> d!1019847 (= (semiInverseModEq!2307 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241)))) (Forall!1346 lambda!122569))))

(declare-fun bs!564188 () Bool)

(assert (= bs!564188 d!1019847))

(declare-fun m!3946457 () Bool)

(assert (=> bs!564188 m!3946457))

(assert (=> d!1018639 d!1019847))

(declare-fun d!1019849 () Bool)

(assert (=> d!1019849 (= (isEmpty!21756 lt!1195414) (not ((_ is Some!7592) lt!1195414)))))

(assert (=> d!1018573 d!1019849))

(assert (=> d!1018573 d!1018417))

(declare-fun d!1019851 () Bool)

(assert (=> d!1019851 (= (isEmpty!21751 (list!13633 (_1!21690 (lex!2383 thiss!18206 rules!2135 lt!1195088)))) ((_ is Nil!37307) (list!13633 (_1!21690 (lex!2383 thiss!18206 rules!2135 lt!1195088)))))))

(assert (=> d!1018369 d!1019851))

(declare-fun d!1019853 () Bool)

(assert (=> d!1019853 (= (list!13633 (_1!21690 (lex!2383 thiss!18206 rules!2135 lt!1195088))) (list!13634 (c!602788 (_1!21690 (lex!2383 thiss!18206 rules!2135 lt!1195088)))))))

(declare-fun bs!564189 () Bool)

(assert (= bs!564189 d!1019853))

(declare-fun m!3946459 () Bool)

(assert (=> bs!564189 m!3946459))

(assert (=> d!1018369 d!1019853))

(declare-fun d!1019855 () Bool)

(declare-fun lt!1196442 () Bool)

(assert (=> d!1019855 (= lt!1196442 (isEmpty!21751 (list!13634 (c!602788 (_1!21690 (lex!2383 thiss!18206 rules!2135 lt!1195088))))))))

(assert (=> d!1019855 (= lt!1196442 (= (size!28371 (c!602788 (_1!21690 (lex!2383 thiss!18206 rules!2135 lt!1195088)))) 0))))

(assert (=> d!1019855 (= (isEmpty!21752 (c!602788 (_1!21690 (lex!2383 thiss!18206 rules!2135 lt!1195088)))) lt!1196442)))

(declare-fun bs!564190 () Bool)

(assert (= bs!564190 d!1019855))

(assert (=> bs!564190 m!3946459))

(assert (=> bs!564190 m!3946459))

(declare-fun m!3946461 () Bool)

(assert (=> bs!564190 m!3946461))

(declare-fun m!3946463 () Bool)

(assert (=> bs!564190 m!3946463))

(assert (=> d!1018369 d!1019855))

(declare-fun bm!253208 () Bool)

(declare-fun call!253213 () Bool)

(assert (=> bm!253208 (= call!253213 (ruleDisjointCharsFromAllFromOtherType!742 (h!42726 rules!2135) (t!279241 rules!2135)))))

(declare-fun b!3507277 () Bool)

(declare-fun e!2171458 () Bool)

(declare-fun e!2171457 () Bool)

(assert (=> b!3507277 (= e!2171458 e!2171457)))

(declare-fun res!1414765 () Bool)

(assert (=> b!3507277 (= res!1414765 (not ((_ is Cons!37306) rules!2135)))))

(assert (=> b!3507277 (=> res!1414765 e!2171457)))

(declare-fun b!3507278 () Bool)

(declare-fun e!2171456 () Bool)

(assert (=> b!3507278 (= e!2171456 call!253213)))

(declare-fun b!3507279 () Bool)

(assert (=> b!3507279 (= e!2171457 call!253213)))

(declare-fun b!3507280 () Bool)

(assert (=> b!3507280 (= e!2171458 e!2171456)))

(declare-fun res!1414766 () Bool)

(declare-fun rulesUseDisjointChars!351 (Rule!10736 Rule!10736) Bool)

(assert (=> b!3507280 (= res!1414766 (rulesUseDisjointChars!351 (h!42726 rules!2135) (h!42726 rules!2135)))))

(assert (=> b!3507280 (=> (not res!1414766) (not e!2171456))))

(declare-fun d!1019857 () Bool)

(declare-fun c!603515 () Bool)

(assert (=> d!1019857 (= c!603515 (and ((_ is Cons!37306) rules!2135) (not (= (isSeparator!5468 (h!42726 rules!2135)) (isSeparator!5468 (h!42726 rules!2135))))))))

(assert (=> d!1019857 (= (ruleDisjointCharsFromAllFromOtherType!742 (h!42726 rules!2135) rules!2135) e!2171458)))

(assert (= (and d!1019857 c!603515) b!3507280))

(assert (= (and d!1019857 (not c!603515)) b!3507277))

(assert (= (and b!3507280 res!1414766) b!3507278))

(assert (= (and b!3507277 (not res!1414765)) b!3507279))

(assert (= (or b!3507278 b!3507279) bm!253208))

(declare-fun m!3946481 () Bool)

(assert (=> bm!253208 m!3946481))

(declare-fun m!3946483 () Bool)

(assert (=> b!3507280 m!3946483))

(assert (=> b!3504699 d!1019857))

(assert (=> d!1018549 d!1018361))

(declare-fun b!3507281 () Bool)

(declare-fun res!1414773 () Bool)

(declare-fun e!2171459 () Bool)

(assert (=> b!3507281 (=> (not res!1414773) (not e!2171459))))

(declare-fun lt!1196468 () Option!7594)

(assert (=> b!3507281 (= res!1414773 (< (size!28365 (_2!21691 (get!11971 lt!1196468))) (size!28365 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059))))))

(declare-fun b!3507282 () Bool)

(declare-fun res!1414771 () Bool)

(assert (=> b!3507282 (=> (not res!1414771) (not e!2171459))))

(assert (=> b!3507282 (= res!1414771 (= (value!176298 (_1!21691 (get!11971 lt!1196468))) (apply!8865 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1196468)))) (seqFromList!3990 (originalCharacters!6182 (_1!21691 (get!11971 lt!1196468)))))))))

(declare-fun b!3507283 () Bool)

(declare-fun e!2171461 () Option!7594)

(declare-fun call!253214 () Option!7594)

(assert (=> b!3507283 (= e!2171461 call!253214)))

(declare-fun b!3507284 () Bool)

(assert (=> b!3507284 (= e!2171459 (contains!6979 rules!2135 (rule!8098 (_1!21691 (get!11971 lt!1196468)))))))

(declare-fun b!3507285 () Bool)

(declare-fun e!2171460 () Bool)

(assert (=> b!3507285 (= e!2171460 e!2171459)))

(declare-fun res!1414769 () Bool)

(assert (=> b!3507285 (=> (not res!1414769) (not e!2171459))))

(assert (=> b!3507285 (= res!1414769 (isDefined!5855 lt!1196468))))

(declare-fun b!3507286 () Bool)

(declare-fun res!1414767 () Bool)

(assert (=> b!3507286 (=> (not res!1414767) (not e!2171459))))

(assert (=> b!3507286 (= res!1414767 (= (++!9231 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1196468)))) (_2!21691 (get!11971 lt!1196468))) (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059)))))

(declare-fun b!3507287 () Bool)

(declare-fun res!1414772 () Bool)

(assert (=> b!3507287 (=> (not res!1414772) (not e!2171459))))

(assert (=> b!3507287 (= res!1414772 (= (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1196468)))) (originalCharacters!6182 (_1!21691 (get!11971 lt!1196468)))))))

(declare-fun b!3507288 () Bool)

(declare-fun res!1414768 () Bool)

(assert (=> b!3507288 (=> (not res!1414768) (not e!2171459))))

(assert (=> b!3507288 (= res!1414768 (matchR!4811 (regex!5468 (rule!8098 (_1!21691 (get!11971 lt!1196468)))) (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1196468))))))))

(declare-fun b!3507289 () Bool)

(declare-fun lt!1196469 () Option!7594)

(declare-fun lt!1196471 () Option!7594)

(assert (=> b!3507289 (= e!2171461 (ite (and ((_ is None!7593) lt!1196469) ((_ is None!7593) lt!1196471)) None!7593 (ite ((_ is None!7593) lt!1196471) lt!1196469 (ite ((_ is None!7593) lt!1196469) lt!1196471 (ite (>= (size!28363 (_1!21691 (v!37045 lt!1196469))) (size!28363 (_1!21691 (v!37045 lt!1196471)))) lt!1196469 lt!1196471)))))))

(assert (=> b!3507289 (= lt!1196469 call!253214)))

(assert (=> b!3507289 (= lt!1196471 (maxPrefix!2597 thiss!18206 (t!279241 rules!2135) (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059)))))

(declare-fun d!1019861 () Bool)

(assert (=> d!1019861 e!2171460))

(declare-fun res!1414770 () Bool)

(assert (=> d!1019861 (=> res!1414770 e!2171460)))

(assert (=> d!1019861 (= res!1414770 (isEmpty!21757 lt!1196468))))

(assert (=> d!1019861 (= lt!1196468 e!2171461)))

(declare-fun c!603516 () Bool)

(assert (=> d!1019861 (= c!603516 (and ((_ is Cons!37306) rules!2135) ((_ is Nil!37306) (t!279241 rules!2135))))))

(declare-fun lt!1196470 () Unit!52870)

(declare-fun lt!1196467 () Unit!52870)

(assert (=> d!1019861 (= lt!1196470 lt!1196467)))

(assert (=> d!1019861 (isPrefix!2867 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059) (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059))))

(assert (=> d!1019861 (= lt!1196467 (lemmaIsPrefixRefl!1826 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059) (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059)))))

(assert (=> d!1019861 (rulesValidInductive!1876 thiss!18206 rules!2135)))

(assert (=> d!1019861 (= (maxPrefix!2597 thiss!18206 rules!2135 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059)) lt!1196468)))

(declare-fun bm!253209 () Bool)

(assert (=> bm!253209 (= call!253214 (maxPrefixOneRule!1764 thiss!18206 (h!42726 rules!2135) (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059)))))

(assert (= (and d!1019861 c!603516) b!3507283))

(assert (= (and d!1019861 (not c!603516)) b!3507289))

(assert (= (or b!3507283 b!3507289) bm!253209))

(assert (= (and d!1019861 (not res!1414770)) b!3507285))

(assert (= (and b!3507285 res!1414769) b!3507287))

(assert (= (and b!3507287 res!1414772) b!3507281))

(assert (= (and b!3507281 res!1414773) b!3507286))

(assert (= (and b!3507286 res!1414767) b!3507282))

(assert (= (and b!3507282 res!1414771) b!3507288))

(assert (= (and b!3507288 res!1414768) b!3507284))

(declare-fun m!3946485 () Bool)

(assert (=> b!3507286 m!3946485))

(declare-fun m!3946487 () Bool)

(assert (=> b!3507286 m!3946487))

(assert (=> b!3507286 m!3946487))

(declare-fun m!3946489 () Bool)

(assert (=> b!3507286 m!3946489))

(assert (=> b!3507286 m!3946489))

(declare-fun m!3946491 () Bool)

(assert (=> b!3507286 m!3946491))

(assert (=> b!3507281 m!3946485))

(declare-fun m!3946493 () Bool)

(assert (=> b!3507281 m!3946493))

(assert (=> b!3507281 m!3942775))

(declare-fun m!3946495 () Bool)

(assert (=> b!3507281 m!3946495))

(assert (=> b!3507288 m!3946485))

(assert (=> b!3507288 m!3946487))

(assert (=> b!3507288 m!3946487))

(assert (=> b!3507288 m!3946489))

(assert (=> b!3507288 m!3946489))

(declare-fun m!3946501 () Bool)

(assert (=> b!3507288 m!3946501))

(assert (=> b!3507284 m!3946485))

(declare-fun m!3946503 () Bool)

(assert (=> b!3507284 m!3946503))

(assert (=> b!3507282 m!3946485))

(declare-fun m!3946505 () Bool)

(assert (=> b!3507282 m!3946505))

(assert (=> b!3507282 m!3946505))

(declare-fun m!3946507 () Bool)

(assert (=> b!3507282 m!3946507))

(declare-fun m!3946509 () Bool)

(assert (=> b!3507285 m!3946509))

(assert (=> b!3507287 m!3946485))

(assert (=> b!3507287 m!3946487))

(assert (=> b!3507287 m!3946487))

(assert (=> b!3507287 m!3946489))

(assert (=> bm!253209 m!3942775))

(declare-fun m!3946511 () Bool)

(assert (=> bm!253209 m!3946511))

(assert (=> b!3507289 m!3942775))

(declare-fun m!3946519 () Bool)

(assert (=> b!3507289 m!3946519))

(declare-fun m!3946523 () Bool)

(assert (=> d!1019861 m!3946523))

(assert (=> d!1019861 m!3942775))

(assert (=> d!1019861 m!3942775))

(declare-fun m!3946527 () Bool)

(assert (=> d!1019861 m!3946527))

(assert (=> d!1019861 m!3942775))

(assert (=> d!1019861 m!3942775))

(declare-fun m!3946531 () Bool)

(assert (=> d!1019861 m!3946531))

(assert (=> d!1019861 m!3942537))

(assert (=> d!1018549 d!1019861))

(assert (=> d!1018549 d!1018357))

(declare-fun d!1019869 () Bool)

(declare-fun e!2171470 () Bool)

(assert (=> d!1019869 e!2171470))

(declare-fun res!1414789 () Bool)

(assert (=> d!1019869 (=> (not res!1414789) (not e!2171470))))

(declare-fun lt!1196472 () List!37429)

(assert (=> d!1019869 (= res!1414789 (= (content!5247 lt!1196472) ((_ map or) (content!5247 (list!13629 (charsOf!3482 (h!42727 tokens!494)))) (content!5247 lt!1195059))))))

(declare-fun e!2171469 () List!37429)

(assert (=> d!1019869 (= lt!1196472 e!2171469)))

(declare-fun c!603517 () Bool)

(assert (=> d!1019869 (= c!603517 ((_ is Nil!37305) (list!13629 (charsOf!3482 (h!42727 tokens!494)))))))

(assert (=> d!1019869 (= (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059) lt!1196472)))

(declare-fun b!3507305 () Bool)

(assert (=> b!3507305 (= e!2171469 (Cons!37305 (h!42725 (list!13629 (charsOf!3482 (h!42727 tokens!494)))) (++!9231 (t!279240 (list!13629 (charsOf!3482 (h!42727 tokens!494)))) lt!1195059)))))

(declare-fun b!3507304 () Bool)

(assert (=> b!3507304 (= e!2171469 lt!1195059)))

(declare-fun b!3507307 () Bool)

(assert (=> b!3507307 (= e!2171470 (or (not (= lt!1195059 Nil!37305)) (= lt!1196472 (list!13629 (charsOf!3482 (h!42727 tokens!494))))))))

(declare-fun b!3507306 () Bool)

(declare-fun res!1414788 () Bool)

(assert (=> b!3507306 (=> (not res!1414788) (not e!2171470))))

(assert (=> b!3507306 (= res!1414788 (= (size!28365 lt!1196472) (+ (size!28365 (list!13629 (charsOf!3482 (h!42727 tokens!494)))) (size!28365 lt!1195059))))))

(assert (= (and d!1019869 c!603517) b!3507304))

(assert (= (and d!1019869 (not c!603517)) b!3507305))

(assert (= (and d!1019869 res!1414789) b!3507306))

(assert (= (and b!3507306 res!1414788) b!3507307))

(declare-fun m!3946535 () Bool)

(assert (=> d!1019869 m!3946535))

(assert (=> d!1019869 m!3941389))

(assert (=> d!1019869 m!3944847))

(assert (=> d!1019869 m!3942901))

(declare-fun m!3946537 () Bool)

(assert (=> b!3507305 m!3946537))

(declare-fun m!3946539 () Bool)

(assert (=> b!3507306 m!3946539))

(assert (=> b!3507306 m!3941389))

(assert (=> b!3507306 m!3944853))

(assert (=> b!3507306 m!3942907))

(assert (=> d!1018549 d!1019869))

(assert (=> d!1018549 d!1018615))

(declare-fun d!1019873 () Bool)

(assert (=> d!1019873 (= (maxPrefix!2597 thiss!18206 rules!2135 (++!9231 (list!13629 (charsOf!3482 (h!42727 tokens!494))) lt!1195059)) (Some!7593 (tuple2!37115 (h!42727 tokens!494) lt!1195059)))))

(assert (=> d!1019873 true))

(declare-fun _$49!280 () Unit!52870)

(assert (=> d!1019873 (= (choose!20343 thiss!18206 rules!2135 (h!42727 tokens!494) (rule!8098 (h!42727 tokens!494)) lt!1195059 (rule!8098 separatorToken!241)) _$49!280)))

(declare-fun bs!564200 () Bool)

(assert (= bs!564200 d!1019873))

(assert (=> bs!564200 m!3941387))

(assert (=> bs!564200 m!3941387))

(assert (=> bs!564200 m!3941389))

(assert (=> bs!564200 m!3941389))

(assert (=> bs!564200 m!3942775))

(assert (=> bs!564200 m!3942775))

(assert (=> bs!564200 m!3942779))

(assert (=> d!1018549 d!1019873))

(assert (=> b!3505362 d!1019263))

(assert (=> b!3505362 d!1018577))

(declare-fun b!3507331 () Bool)

(declare-fun e!2171490 () Bool)

(declare-fun lt!1196526 () Bool)

(assert (=> b!3507331 (= e!2171490 (not lt!1196526))))

(declare-fun b!3507332 () Bool)

(declare-fun res!1414804 () Bool)

(declare-fun e!2171487 () Bool)

(assert (=> b!3507332 (=> res!1414804 e!2171487)))

(declare-fun e!2171491 () Bool)

(assert (=> b!3507332 (= res!1414804 e!2171491)))

(declare-fun res!1414805 () Bool)

(assert (=> b!3507332 (=> (not res!1414805) (not e!2171491))))

(assert (=> b!3507332 (= res!1414805 lt!1196526)))

(declare-fun b!3507333 () Bool)

(declare-fun e!2171488 () Bool)

(assert (=> b!3507333 (= e!2171488 e!2171490)))

(declare-fun c!603525 () Bool)

(assert (=> b!3507333 (= c!603525 ((_ is EmptyLang!10227) (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241)))))))))

(declare-fun b!3507334 () Bool)

(assert (=> b!3507334 (= e!2171491 (= (head!7371 (list!13629 (charsOf!3482 separatorToken!241))) (c!602786 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))))))))))

(declare-fun b!3507335 () Bool)

(declare-fun res!1414800 () Bool)

(assert (=> b!3507335 (=> res!1414800 e!2171487)))

(assert (=> b!3507335 (= res!1414800 (not ((_ is ElementMatch!10227) (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))))))))))

(assert (=> b!3507335 (= e!2171490 e!2171487)))

(declare-fun b!3507336 () Bool)

(declare-fun e!2171486 () Bool)

(assert (=> b!3507336 (= e!2171486 (nullable!3512 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241)))))))))

(declare-fun b!3507337 () Bool)

(declare-fun res!1414801 () Bool)

(assert (=> b!3507337 (=> (not res!1414801) (not e!2171491))))

(assert (=> b!3507337 (= res!1414801 (isEmpty!21746 (tail!5480 (list!13629 (charsOf!3482 separatorToken!241)))))))

(declare-fun e!2171489 () Bool)

(declare-fun b!3507338 () Bool)

(assert (=> b!3507338 (= e!2171489 (not (= (head!7371 (list!13629 (charsOf!3482 separatorToken!241))) (c!602786 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241)))))))))))

(declare-fun b!3507339 () Bool)

(declare-fun e!2171485 () Bool)

(assert (=> b!3507339 (= e!2171487 e!2171485)))

(declare-fun res!1414798 () Bool)

(assert (=> b!3507339 (=> (not res!1414798) (not e!2171485))))

(assert (=> b!3507339 (= res!1414798 (not lt!1196526))))

(declare-fun b!3507340 () Bool)

(assert (=> b!3507340 (= e!2171486 (matchR!4811 (derivativeStep!3065 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))))) (head!7371 (list!13629 (charsOf!3482 separatorToken!241)))) (tail!5480 (list!13629 (charsOf!3482 separatorToken!241)))))))

(declare-fun b!3507341 () Bool)

(assert (=> b!3507341 (= e!2171485 e!2171489)))

(declare-fun res!1414799 () Bool)

(assert (=> b!3507341 (=> res!1414799 e!2171489)))

(declare-fun call!253215 () Bool)

(assert (=> b!3507341 (= res!1414799 call!253215)))

(declare-fun d!1019907 () Bool)

(assert (=> d!1019907 e!2171488))

(declare-fun c!603526 () Bool)

(assert (=> d!1019907 (= c!603526 ((_ is EmptyExpr!10227) (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241)))))))))

(assert (=> d!1019907 (= lt!1196526 e!2171486)))

(declare-fun c!603527 () Bool)

(assert (=> d!1019907 (= c!603527 (isEmpty!21746 (list!13629 (charsOf!3482 separatorToken!241))))))

(assert (=> d!1019907 (validRegex!4668 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))))))))

(assert (=> d!1019907 (= (matchR!4811 (regex!5468 (get!11969 (getRuleFromTag!1111 thiss!18206 rules!2135 (tag!6100 (rule!8098 separatorToken!241))))) (list!13629 (charsOf!3482 separatorToken!241))) lt!1196526)))

(declare-fun bm!253210 () Bool)

(assert (=> bm!253210 (= call!253215 (isEmpty!21746 (list!13629 (charsOf!3482 separatorToken!241))))))

(declare-fun b!3507342 () Bool)

(declare-fun res!1414802 () Bool)

(assert (=> b!3507342 (=> (not res!1414802) (not e!2171491))))

(assert (=> b!3507342 (= res!1414802 (not call!253215))))

(declare-fun b!3507343 () Bool)

(declare-fun res!1414803 () Bool)

(assert (=> b!3507343 (=> res!1414803 e!2171489)))

(assert (=> b!3507343 (= res!1414803 (not (isEmpty!21746 (tail!5480 (list!13629 (charsOf!3482 separatorToken!241))))))))

(declare-fun b!3507344 () Bool)

(assert (=> b!3507344 (= e!2171488 (= lt!1196526 call!253215))))

(assert (= (and d!1019907 c!603527) b!3507336))

(assert (= (and d!1019907 (not c!603527)) b!3507340))

(assert (= (and d!1019907 c!603526) b!3507344))

(assert (= (and d!1019907 (not c!603526)) b!3507333))

(assert (= (and b!3507333 c!603525) b!3507331))

(assert (= (and b!3507333 (not c!603525)) b!3507335))

(assert (= (and b!3507335 (not res!1414800)) b!3507332))

(assert (= (and b!3507332 res!1414805) b!3507342))

(assert (= (and b!3507342 res!1414802) b!3507337))

(assert (= (and b!3507337 res!1414801) b!3507334))

(assert (= (and b!3507332 (not res!1414804)) b!3507339))

(assert (= (and b!3507339 res!1414798) b!3507341))

(assert (= (and b!3507341 (not res!1414799)) b!3507343))

(assert (= (and b!3507343 (not res!1414803)) b!3507338))

(assert (= (or b!3507344 b!3507342 b!3507341) bm!253210))

(assert (=> b!3507343 m!3941497))

(declare-fun m!3946745 () Bool)

(assert (=> b!3507343 m!3946745))

(assert (=> b!3507343 m!3946745))

(declare-fun m!3946747 () Bool)

(assert (=> b!3507343 m!3946747))

(declare-fun m!3946749 () Bool)

(assert (=> b!3507336 m!3946749))

(assert (=> b!3507340 m!3941497))

(declare-fun m!3946751 () Bool)

(assert (=> b!3507340 m!3946751))

(assert (=> b!3507340 m!3946751))

(declare-fun m!3946753 () Bool)

(assert (=> b!3507340 m!3946753))

(assert (=> b!3507340 m!3941497))

(assert (=> b!3507340 m!3946745))

(assert (=> b!3507340 m!3946753))

(assert (=> b!3507340 m!3946745))

(declare-fun m!3946755 () Bool)

(assert (=> b!3507340 m!3946755))

(assert (=> bm!253210 m!3941497))

(declare-fun m!3946757 () Bool)

(assert (=> bm!253210 m!3946757))

(assert (=> b!3507338 m!3941497))

(assert (=> b!3507338 m!3946751))

(assert (=> b!3507334 m!3941497))

(assert (=> b!3507334 m!3946751))

(assert (=> d!1019907 m!3941497))

(assert (=> d!1019907 m!3946757))

(declare-fun m!3946761 () Bool)

(assert (=> d!1019907 m!3946761))

(assert (=> b!3507337 m!3941497))

(assert (=> b!3507337 m!3946745))

(assert (=> b!3507337 m!3946745))

(assert (=> b!3507337 m!3946747))

(assert (=> b!3505362 d!1019907))

(assert (=> b!3505362 d!1018389))

(assert (=> b!3505362 d!1018399))

(assert (=> b!3505195 d!1019133))

(assert (=> b!3505195 d!1019135))

(declare-fun b!3507366 () Bool)

(declare-fun e!2171504 () Option!7593)

(assert (=> b!3507366 (= e!2171504 (Some!7592 (h!42726 (t!279241 rules!2135))))))

(declare-fun d!1019915 () Bool)

(declare-fun e!2171505 () Bool)

(assert (=> d!1019915 e!2171505))

(declare-fun res!1414809 () Bool)

(assert (=> d!1019915 (=> res!1414809 e!2171505)))

(declare-fun lt!1196530 () Option!7593)

(assert (=> d!1019915 (= res!1414809 (isEmpty!21756 lt!1196530))))

(assert (=> d!1019915 (= lt!1196530 e!2171504)))

(declare-fun c!603537 () Bool)

(assert (=> d!1019915 (= c!603537 (and ((_ is Cons!37306) (t!279241 rules!2135)) (= (tag!6100 (h!42726 (t!279241 rules!2135))) (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494)))))))))

(assert (=> d!1019915 (rulesInvariant!4454 thiss!18206 (t!279241 rules!2135))))

(assert (=> d!1019915 (= (getRuleFromTag!1111 thiss!18206 (t!279241 rules!2135) (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))) lt!1196530)))

(declare-fun b!3507367 () Bool)

(declare-fun e!2171506 () Bool)

(assert (=> b!3507367 (= e!2171505 e!2171506)))

(declare-fun res!1414810 () Bool)

(assert (=> b!3507367 (=> (not res!1414810) (not e!2171506))))

(assert (=> b!3507367 (= res!1414810 (contains!6979 (t!279241 rules!2135) (get!11969 lt!1196530)))))

(declare-fun b!3507368 () Bool)

(declare-fun e!2171507 () Option!7593)

(assert (=> b!3507368 (= e!2171504 e!2171507)))

(declare-fun c!603538 () Bool)

(assert (=> b!3507368 (= c!603538 (and ((_ is Cons!37306) (t!279241 rules!2135)) (not (= (tag!6100 (h!42726 (t!279241 rules!2135))) (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))))

(declare-fun b!3507369 () Bool)

(assert (=> b!3507369 (= e!2171507 None!7592)))

(declare-fun b!3507370 () Bool)

(assert (=> b!3507370 (= e!2171506 (= (tag!6100 (get!11969 lt!1196530)) (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))

(declare-fun b!3507371 () Bool)

(declare-fun lt!1196532 () Unit!52870)

(declare-fun lt!1196531 () Unit!52870)

(assert (=> b!3507371 (= lt!1196532 lt!1196531)))

(assert (=> b!3507371 (rulesInvariant!4454 thiss!18206 (t!279241 (t!279241 rules!2135)))))

(assert (=> b!3507371 (= lt!1196531 (lemmaInvariantOnRulesThenOnTail!456 thiss!18206 (h!42726 (t!279241 rules!2135)) (t!279241 (t!279241 rules!2135))))))

(assert (=> b!3507371 (= e!2171507 (getRuleFromTag!1111 thiss!18206 (t!279241 (t!279241 rules!2135)) (tag!6100 (rule!8098 (h!42727 (t!279242 tokens!494))))))))

(assert (= (and d!1019915 c!603537) b!3507366))

(assert (= (and d!1019915 (not c!603537)) b!3507368))

(assert (= (and b!3507368 c!603538) b!3507371))

(assert (= (and b!3507368 (not c!603538)) b!3507369))

(assert (= (and d!1019915 (not res!1414809)) b!3507367))

(assert (= (and b!3507367 res!1414810) b!3507370))

(declare-fun m!3946777 () Bool)

(assert (=> d!1019915 m!3946777))

(assert (=> d!1019915 m!3942629))

(declare-fun m!3946779 () Bool)

(assert (=> b!3507367 m!3946779))

(assert (=> b!3507367 m!3946779))

(declare-fun m!3946781 () Bool)

(assert (=> b!3507367 m!3946781))

(assert (=> b!3507370 m!3946779))

(assert (=> b!3507371 m!3944357))

(assert (=> b!3507371 m!3944359))

(declare-fun m!3946783 () Bool)

(assert (=> b!3507371 m!3946783))

(assert (=> b!3505195 d!1019915))

(assert (=> b!3505320 d!1019133))

(assert (=> b!3505320 d!1019135))

(declare-fun b!3507376 () Bool)

(declare-fun e!2171509 () Option!7593)

(assert (=> b!3507376 (= e!2171509 (Some!7592 (h!42726 (t!279241 rules!2135))))))

(declare-fun d!1019921 () Bool)

(declare-fun e!2171510 () Bool)

(assert (=> d!1019921 e!2171510))

(declare-fun res!1414815 () Bool)

(assert (=> d!1019921 (=> res!1414815 e!2171510)))

(declare-fun lt!1196534 () Option!7593)

(assert (=> d!1019921 (= res!1414815 (isEmpty!21756 lt!1196534))))

(assert (=> d!1019921 (= lt!1196534 e!2171509)))

(declare-fun c!603539 () Bool)

(assert (=> d!1019921 (= c!603539 (and ((_ is Cons!37306) (t!279241 rules!2135)) (= (tag!6100 (h!42726 (t!279241 rules!2135))) (tag!6100 (rule!8098 (h!42727 tokens!494))))))))

(assert (=> d!1019921 (rulesInvariant!4454 thiss!18206 (t!279241 rules!2135))))

(assert (=> d!1019921 (= (getRuleFromTag!1111 thiss!18206 (t!279241 rules!2135) (tag!6100 (rule!8098 (h!42727 tokens!494)))) lt!1196534)))

(declare-fun b!3507377 () Bool)

(declare-fun e!2171511 () Bool)

(assert (=> b!3507377 (= e!2171510 e!2171511)))

(declare-fun res!1414816 () Bool)

(assert (=> b!3507377 (=> (not res!1414816) (not e!2171511))))

(assert (=> b!3507377 (= res!1414816 (contains!6979 (t!279241 rules!2135) (get!11969 lt!1196534)))))

(declare-fun b!3507378 () Bool)

(declare-fun e!2171512 () Option!7593)

(assert (=> b!3507378 (= e!2171509 e!2171512)))

(declare-fun c!603540 () Bool)

(assert (=> b!3507378 (= c!603540 (and ((_ is Cons!37306) (t!279241 rules!2135)) (not (= (tag!6100 (h!42726 (t!279241 rules!2135))) (tag!6100 (rule!8098 (h!42727 tokens!494)))))))))

(declare-fun b!3507379 () Bool)

(assert (=> b!3507379 (= e!2171512 None!7592)))

(declare-fun b!3507380 () Bool)

(assert (=> b!3507380 (= e!2171511 (= (tag!6100 (get!11969 lt!1196534)) (tag!6100 (rule!8098 (h!42727 tokens!494)))))))

(declare-fun b!3507381 () Bool)

(declare-fun lt!1196536 () Unit!52870)

(declare-fun lt!1196535 () Unit!52870)

(assert (=> b!3507381 (= lt!1196536 lt!1196535)))

(assert (=> b!3507381 (rulesInvariant!4454 thiss!18206 (t!279241 (t!279241 rules!2135)))))

(assert (=> b!3507381 (= lt!1196535 (lemmaInvariantOnRulesThenOnTail!456 thiss!18206 (h!42726 (t!279241 rules!2135)) (t!279241 (t!279241 rules!2135))))))

(assert (=> b!3507381 (= e!2171512 (getRuleFromTag!1111 thiss!18206 (t!279241 (t!279241 rules!2135)) (tag!6100 (rule!8098 (h!42727 tokens!494)))))))

(assert (= (and d!1019921 c!603539) b!3507376))

(assert (= (and d!1019921 (not c!603539)) b!3507378))

(assert (= (and b!3507378 c!603540) b!3507381))

(assert (= (and b!3507378 (not c!603540)) b!3507379))

(assert (= (and d!1019921 (not res!1414815)) b!3507377))

(assert (= (and b!3507377 res!1414816) b!3507380))

(declare-fun m!3946785 () Bool)

(assert (=> d!1019921 m!3946785))

(assert (=> d!1019921 m!3942629))

(declare-fun m!3946787 () Bool)

(assert (=> b!3507377 m!3946787))

(assert (=> b!3507377 m!3946787))

(declare-fun m!3946789 () Bool)

(assert (=> b!3507377 m!3946789))

(assert (=> b!3507380 m!3946787))

(assert (=> b!3507381 m!3944357))

(assert (=> b!3507381 m!3944359))

(declare-fun m!3946791 () Bool)

(assert (=> b!3507381 m!3946791))

(assert (=> b!3505320 d!1019921))

(assert (=> d!1018631 d!1018933))

(assert (=> d!1018631 d!1018771))

(declare-fun d!1019923 () Bool)

(assert (=> d!1019923 (= (list!13629 lt!1195447) (list!13632 (c!602787 lt!1195447)))))

(declare-fun bs!564201 () Bool)

(assert (= bs!564201 d!1019923))

(declare-fun m!3946795 () Bool)

(assert (=> bs!564201 m!3946795))

(assert (=> d!1018631 d!1019923))

(declare-fun d!1019925 () Bool)

(assert (=> d!1019925 (= (dropList!1229 lt!1195069 0) (drop!2041 (list!13634 (c!602788 lt!1195069)) 0))))

(declare-fun bs!564202 () Bool)

(assert (= bs!564202 d!1019925))

(assert (=> bs!564202 m!3945575))

(assert (=> bs!564202 m!3945575))

(declare-fun m!3946809 () Bool)

(assert (=> bs!564202 m!3946809))

(assert (=> d!1018631 d!1019925))

(declare-fun d!1019927 () Bool)

(declare-fun lt!1196538 () List!37429)

(assert (=> d!1019927 (= lt!1196538 (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (printList!1605 thiss!18206 (dropList!1229 lt!1195069 0))))))

(declare-fun e!2171513 () List!37429)

(assert (=> d!1019927 (= lt!1196538 e!2171513)))

(declare-fun c!603541 () Bool)

(assert (=> d!1019927 (= c!603541 ((_ is Cons!37307) (dropList!1229 lt!1195069 0)))))

(assert (=> d!1019927 (= (printListTailRec!712 thiss!18206 (dropList!1229 lt!1195069 0) (list!13629 (BalanceConc!22237 Empty!11311))) lt!1196538)))

(declare-fun b!3507382 () Bool)

(assert (=> b!3507382 (= e!2171513 (printListTailRec!712 thiss!18206 (t!279242 (dropList!1229 lt!1195069 0)) (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (list!13629 (charsOf!3482 (h!42727 (dropList!1229 lt!1195069 0)))))))))

(declare-fun lt!1196541 () List!37429)

(assert (=> b!3507382 (= lt!1196541 (list!13629 (charsOf!3482 (h!42727 (dropList!1229 lt!1195069 0)))))))

(declare-fun lt!1196540 () List!37429)

(assert (=> b!3507382 (= lt!1196540 (printList!1605 thiss!18206 (t!279242 (dropList!1229 lt!1195069 0))))))

(declare-fun lt!1196537 () Unit!52870)

(assert (=> b!3507382 (= lt!1196537 (lemmaConcatAssociativity!1996 (list!13629 (BalanceConc!22237 Empty!11311)) lt!1196541 lt!1196540))))

(assert (=> b!3507382 (= (++!9231 (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) lt!1196541) lt!1196540) (++!9231 (list!13629 (BalanceConc!22237 Empty!11311)) (++!9231 lt!1196541 lt!1196540)))))

(declare-fun lt!1196539 () Unit!52870)

(assert (=> b!3507382 (= lt!1196539 lt!1196537)))

(declare-fun b!3507383 () Bool)

(assert (=> b!3507383 (= e!2171513 (list!13629 (BalanceConc!22237 Empty!11311)))))

(assert (= (and d!1019927 c!603541) b!3507382))

(assert (= (and d!1019927 (not c!603541)) b!3507383))

(assert (=> d!1019927 m!3942921))

(declare-fun m!3946817 () Bool)

(assert (=> d!1019927 m!3946817))

(assert (=> d!1019927 m!3942155))

(assert (=> d!1019927 m!3946817))

(declare-fun m!3946819 () Bool)

(assert (=> d!1019927 m!3946819))

(assert (=> b!3507382 m!3942155))

(declare-fun m!3946821 () Bool)

(assert (=> b!3507382 m!3946821))

(declare-fun m!3946823 () Bool)

(assert (=> b!3507382 m!3946823))

(assert (=> b!3507382 m!3942155))

(declare-fun m!3946825 () Bool)

(assert (=> b!3507382 m!3946825))

(assert (=> b!3507382 m!3942155))

(declare-fun m!3946827 () Bool)

(assert (=> b!3507382 m!3946827))

(declare-fun m!3946829 () Bool)

(assert (=> b!3507382 m!3946829))

(declare-fun m!3946831 () Bool)

(assert (=> b!3507382 m!3946831))

(assert (=> b!3507382 m!3946827))

(declare-fun m!3946833 () Bool)

(assert (=> b!3507382 m!3946833))

(declare-fun m!3946835 () Bool)

(assert (=> b!3507382 m!3946835))

(assert (=> b!3507382 m!3946821))

(assert (=> b!3507382 m!3942155))

(assert (=> b!3507382 m!3946831))

(declare-fun m!3946841 () Bool)

(assert (=> b!3507382 m!3946841))

(assert (=> b!3507382 m!3946829))

(assert (=> b!3507382 m!3946841))

(declare-fun m!3946847 () Bool)

(assert (=> b!3507382 m!3946847))

(assert (=> d!1018631 d!1019927))

(assert (=> b!3504997 d!1018695))

(declare-fun d!1019935 () Bool)

(declare-fun lt!1196544 () Int)

(assert (=> d!1019935 (>= lt!1196544 0)))

(declare-fun e!2171521 () Int)

(assert (=> d!1019935 (= lt!1196544 e!2171521)))

(declare-fun c!603546 () Bool)

(assert (=> d!1019935 (= c!603546 ((_ is Nil!37305) (originalCharacters!6182 (_1!21691 (get!11971 lt!1195251)))))))

(assert (=> d!1019935 (= (size!28365 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195251)))) lt!1196544)))

(declare-fun b!3507395 () Bool)

(assert (=> b!3507395 (= e!2171521 0)))

(declare-fun b!3507396 () Bool)

(assert (=> b!3507396 (= e!2171521 (+ 1 (size!28365 (t!279240 (originalCharacters!6182 (_1!21691 (get!11971 lt!1195251)))))))))

(assert (= (and d!1019935 c!603546) b!3507395))

(assert (= (and d!1019935 (not c!603546)) b!3507396))

(declare-fun m!3946849 () Bool)

(assert (=> b!3507396 m!3946849))

(assert (=> b!3504997 d!1019935))

(declare-fun d!1019939 () Bool)

(declare-fun e!2171523 () Bool)

(assert (=> d!1019939 e!2171523))

(declare-fun res!1414821 () Bool)

(assert (=> d!1019939 (=> (not res!1414821) (not e!2171523))))

(declare-fun lt!1196546 () List!37429)

(assert (=> d!1019939 (= res!1414821 (= (content!5247 lt!1196546) ((_ map or) (content!5247 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))) (content!5247 (_2!21691 (get!11971 lt!1195339))))))))

(declare-fun e!2171522 () List!37429)

(assert (=> d!1019939 (= lt!1196546 e!2171522)))

(declare-fun c!603547 () Bool)

(assert (=> d!1019939 (= c!603547 ((_ is Nil!37305) (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))))))

(assert (=> d!1019939 (= (++!9231 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339)))) (_2!21691 (get!11971 lt!1195339))) lt!1196546)))

(declare-fun b!3507398 () Bool)

(assert (=> b!3507398 (= e!2171522 (Cons!37305 (h!42725 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))) (++!9231 (t!279240 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))) (_2!21691 (get!11971 lt!1195339)))))))

(declare-fun b!3507397 () Bool)

(assert (=> b!3507397 (= e!2171522 (_2!21691 (get!11971 lt!1195339)))))

(declare-fun b!3507400 () Bool)

(assert (=> b!3507400 (= e!2171523 (or (not (= (_2!21691 (get!11971 lt!1195339)) Nil!37305)) (= lt!1196546 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339)))))))))

(declare-fun b!3507399 () Bool)

(declare-fun res!1414820 () Bool)

(assert (=> b!3507399 (=> (not res!1414820) (not e!2171523))))

(assert (=> b!3507399 (= res!1414820 (= (size!28365 lt!1196546) (+ (size!28365 (list!13629 (charsOf!3482 (_1!21691 (get!11971 lt!1195339))))) (size!28365 (_2!21691 (get!11971 lt!1195339))))))))

(assert (= (and d!1019939 c!603547) b!3507397))

(assert (= (and d!1019939 (not c!603547)) b!3507398))

(assert (= (and d!1019939 res!1414821) b!3507399))

(assert (= (and b!3507399 res!1414820) b!3507400))

(declare-fun m!3946853 () Bool)

(assert (=> d!1019939 m!3946853))

(assert (=> d!1019939 m!3942501))

(declare-fun m!3946855 () Bool)

(assert (=> d!1019939 m!3946855))

(declare-fun m!3946857 () Bool)

(assert (=> d!1019939 m!3946857))

(declare-fun m!3946859 () Bool)

(assert (=> b!3507398 m!3946859))

(declare-fun m!3946861 () Bool)

(assert (=> b!3507399 m!3946861))

(assert (=> b!3507399 m!3942501))

(declare-fun m!3946863 () Bool)

(assert (=> b!3507399 m!3946863))

(assert (=> b!3507399 m!3942507))

(assert (=> b!3505140 d!1019939))

(assert (=> b!3505140 d!1019287))

(assert (=> b!3505140 d!1019289))

(assert (=> b!3505140 d!1018901))

(declare-fun d!1019943 () Bool)

(declare-fun res!1414841 () Bool)

(declare-fun e!2171544 () Bool)

(assert (=> d!1019943 (=> res!1414841 e!2171544)))

(assert (=> d!1019943 (= res!1414841 ((_ is Nil!37306) rules!2135))))

(assert (=> d!1019943 (= (noDuplicateTag!2063 thiss!18206 rules!2135 Nil!37309) e!2171544)))

(declare-fun b!3507430 () Bool)

(declare-fun e!2171545 () Bool)

(assert (=> b!3507430 (= e!2171544 e!2171545)))

(declare-fun res!1414842 () Bool)

(assert (=> b!3507430 (=> (not res!1414842) (not e!2171545))))

(declare-fun contains!6984 (List!37433 String!41824) Bool)

(assert (=> b!3507430 (= res!1414842 (not (contains!6984 Nil!37309 (tag!6100 (h!42726 rules!2135)))))))

(declare-fun b!3507431 () Bool)

(assert (=> b!3507431 (= e!2171545 (noDuplicateTag!2063 thiss!18206 (t!279241 rules!2135) (Cons!37309 (tag!6100 (h!42726 rules!2135)) Nil!37309)))))

(assert (= (and d!1019943 (not res!1414841)) b!3507430))

(assert (= (and b!3507430 res!1414842) b!3507431))

(declare-fun m!3946895 () Bool)

(assert (=> b!3507430 m!3946895))

(declare-fun m!3946897 () Bool)

(assert (=> b!3507431 m!3946897))

(assert (=> b!3504887 d!1019943))

(declare-fun d!1019957 () Bool)

(declare-fun lt!1196551 () Token!10302)

(assert (=> d!1019957 (= lt!1196551 (apply!8868 (list!13633 (_1!21690 lt!1195201)) 0))))

(assert (=> d!1019957 (= lt!1196551 (apply!8869 (c!602788 (_1!21690 lt!1195201)) 0))))

(declare-fun e!2171548 () Bool)

(assert (=> d!1019957 e!2171548))

(declare-fun res!1414843 () Bool)

(assert (=> d!1019957 (=> (not res!1414843) (not e!2171548))))

(assert (=> d!1019957 (= res!1414843 (<= 0 0))))

(assert (=> d!1019957 (= (apply!8864 (_1!21690 lt!1195201) 0) lt!1196551)))

(declare-fun b!3507436 () Bool)

(assert (=> b!3507436 (= e!2171548 (< 0 (size!28364 (_1!21690 lt!1195201))))))

(assert (= (and d!1019957 res!1414843) b!3507436))

(assert (=> d!1019957 m!3944689))

(assert (=> d!1019957 m!3944689))

(declare-fun m!3946905 () Bool)

(assert (=> d!1019957 m!3946905))

(declare-fun m!3946907 () Bool)

(assert (=> d!1019957 m!3946907))

(assert (=> b!3507436 m!3942081))

(assert (=> b!3504941 d!1019957))

(declare-fun d!1019965 () Bool)

(assert (=> d!1019965 (= (inv!17 (value!176298 separatorToken!241)) (= (charsToBigInt!1 (text!40334 (value!176298 separatorToken!241))) (value!176290 (value!176298 separatorToken!241))))))

(declare-fun bs!564206 () Bool)

(assert (= bs!564206 d!1019965))

(declare-fun m!3946909 () Bool)

(assert (=> bs!564206 m!3946909))

(assert (=> b!3504785 d!1019965))

(assert (=> b!3504877 d!1019505))

(assert (=> b!3504877 d!1018767))

(declare-fun d!1019967 () Bool)

(declare-fun lt!1196554 () Token!10302)

(assert (=> d!1019967 (= lt!1196554 (apply!8868 (list!13633 (_1!21690 lt!1195401)) 0))))

(assert (=> d!1019967 (= lt!1196554 (apply!8869 (c!602788 (_1!21690 lt!1195401)) 0))))

(declare-fun e!2171552 () Bool)

(assert (=> d!1019967 e!2171552))

(declare-fun res!1414847 () Bool)

(assert (=> d!1019967 (=> (not res!1414847) (not e!2171552))))

(assert (=> d!1019967 (= res!1414847 (<= 0 0))))

(assert (=> d!1019967 (= (apply!8864 (_1!21690 lt!1195401) 0) lt!1196554)))

(declare-fun b!3507442 () Bool)

(assert (=> b!3507442 (= e!2171552 (< 0 (size!28364 (_1!21690 lt!1195401))))))

(assert (= (and d!1019967 res!1414847) b!3507442))

(assert (=> d!1019967 m!3944741))

(assert (=> d!1019967 m!3944741))

(declare-fun m!3946917 () Bool)

(assert (=> d!1019967 m!3946917))

(declare-fun m!3946919 () Bool)

(assert (=> d!1019967 m!3946919))

(assert (=> b!3507442 m!3942685))

(assert (=> b!3505250 d!1019967))

(declare-fun d!1019971 () Bool)

(declare-fun e!2171558 () Bool)

(assert (=> d!1019971 e!2171558))

(declare-fun res!1414852 () Bool)

(assert (=> d!1019971 (=> (not res!1414852) (not e!2171558))))

(declare-fun lt!1196558 () BalanceConc!22236)

(assert (=> d!1019971 (= res!1414852 (= (list!13629 lt!1196558) lt!1195055))))

(declare-fun fromList!765 (List!37429) Conc!11311)

(assert (=> d!1019971 (= lt!1196558 (BalanceConc!22237 (fromList!765 lt!1195055)))))

(assert (=> d!1019971 (= (fromListB!1829 lt!1195055) lt!1196558)))

(declare-fun b!3507451 () Bool)

(assert (=> b!3507451 (= e!2171558 (isBalanced!3448 (fromList!765 lt!1195055)))))

(assert (= (and d!1019971 res!1414852) b!3507451))

(declare-fun m!3946949 () Bool)

(assert (=> d!1019971 m!3946949))

(declare-fun m!3946951 () Bool)

(assert (=> d!1019971 m!3946951))

(assert (=> b!3507451 m!3946951))

(assert (=> b!3507451 m!3946951))

(declare-fun m!3946953 () Bool)

(assert (=> b!3507451 m!3946953))

(assert (=> d!1018377 d!1019971))

(assert (=> d!1018579 d!1018603))

(assert (=> d!1018579 d!1018541))

(declare-fun d!1019985 () Bool)

(assert (=> d!1019985 (not (contains!6980 (usedCharacters!702 (regex!5468 (rule!8098 (h!42727 tokens!494)))) lt!1195073))))

(assert (=> d!1019985 true))

(declare-fun _$73!286 () Unit!52870)

(assert (=> d!1019985 (= (choose!20344 thiss!18206 rules!2135 rules!2135 (rule!8098 (h!42727 tokens!494)) (rule!8098 separatorToken!241) lt!1195073) _$73!286)))

(declare-fun bs!564212 () Bool)

(assert (= bs!564212 d!1019985))

(assert (=> bs!564212 m!3941457))

(assert (=> bs!564212 m!3941457))

(assert (=> bs!564212 m!3941459))

(assert (=> d!1018579 d!1019985))

(assert (=> d!1018579 d!1018417))

(assert (=> d!1018641 d!1019713))

(declare-fun call!253229 () Bool)

(declare-fun bm!253222 () Bool)

(declare-fun c!603565 () Bool)

(declare-fun c!603566 () Bool)

(assert (=> bm!253222 (= call!253229 (validRegex!4668 (ite c!603565 (reg!10556 (regex!5468 lt!1195056)) (ite c!603566 (regOne!20967 (regex!5468 lt!1195056)) (regOne!20966 (regex!5468 lt!1195056))))))))

(declare-fun b!3507462 () Bool)

(declare-fun e!2171565 () Bool)

(declare-fun call!253228 () Bool)

(assert (=> b!3507462 (= e!2171565 call!253228)))

(declare-fun bm!253223 () Bool)

(assert (=> bm!253223 (= call!253228 (validRegex!4668 (ite c!603566 (regTwo!20967 (regex!5468 lt!1195056)) (regTwo!20966 (regex!5468 lt!1195056)))))))

(declare-fun b!3507463 () Bool)

(declare-fun res!1414856 () Bool)

(declare-fun e!2171569 () Bool)

(assert (=> b!3507463 (=> (not res!1414856) (not e!2171569))))

(declare-fun call!253227 () Bool)

(assert (=> b!3507463 (= res!1414856 call!253227)))

(declare-fun e!2171566 () Bool)

(assert (=> b!3507463 (= e!2171566 e!2171569)))

(declare-fun b!3507464 () Bool)

(declare-fun res!1414858 () Bool)

(declare-fun e!2171571 () Bool)

(assert (=> b!3507464 (=> res!1414858 e!2171571)))

(assert (=> b!3507464 (= res!1414858 (not ((_ is Concat!15925) (regex!5468 lt!1195056))))))

(assert (=> b!3507464 (= e!2171566 e!2171571)))

(declare-fun d!1019997 () Bool)

(declare-fun res!1414859 () Bool)

(declare-fun e!2171568 () Bool)

(assert (=> d!1019997 (=> res!1414859 e!2171568)))

(assert (=> d!1019997 (= res!1414859 ((_ is ElementMatch!10227) (regex!5468 lt!1195056)))))

(assert (=> d!1019997 (= (validRegex!4668 (regex!5468 lt!1195056)) e!2171568)))

(declare-fun b!3507465 () Bool)

(assert (=> b!3507465 (= e!2171569 call!253228)))

(declare-fun b!3507466 () Bool)

(declare-fun e!2171567 () Bool)

(assert (=> b!3507466 (= e!2171568 e!2171567)))

(assert (=> b!3507466 (= c!603565 ((_ is Star!10227) (regex!5468 lt!1195056)))))

(declare-fun b!3507467 () Bool)

(assert (=> b!3507467 (= e!2171571 e!2171565)))

(declare-fun res!1414855 () Bool)

(assert (=> b!3507467 (=> (not res!1414855) (not e!2171565))))

(assert (=> b!3507467 (= res!1414855 call!253227)))

(declare-fun b!3507468 () Bool)

(declare-fun e!2171570 () Bool)

(assert (=> b!3507468 (= e!2171567 e!2171570)))

(declare-fun res!1414857 () Bool)

(assert (=> b!3507468 (= res!1414857 (not (nullable!3512 (reg!10556 (regex!5468 lt!1195056)))))))

(assert (=> b!3507468 (=> (not res!1414857) (not e!2171570))))

(declare-fun bm!253224 () Bool)

(assert (=> bm!253224 (= call!253227 call!253229)))

(declare-fun b!3507469 () Bool)

(assert (=> b!3507469 (= e!2171570 call!253229)))

(declare-fun b!3507470 () Bool)

(assert (=> b!3507470 (= e!2171567 e!2171566)))

(assert (=> b!3507470 (= c!603566 ((_ is Union!10227) (regex!5468 lt!1195056)))))

(assert (= (and d!1019997 (not res!1414859)) b!3507466))

(assert (= (and b!3507466 c!603565) b!3507468))

(assert (= (and b!3507466 (not c!603565)) b!3507470))

(assert (= (and b!3507468 res!1414857) b!3507469))

(assert (= (and b!3507470 c!603566) b!3507463))

(assert (= (and b!3507470 (not c!603566)) b!3507464))

(assert (= (and b!3507463 res!1414856) b!3507465))

(assert (= (and b!3507464 (not res!1414858)) b!3507467))

(assert (= (and b!3507467 res!1414855) b!3507462))

(assert (= (or b!3507465 b!3507462) bm!253223))

(assert (= (or b!3507463 b!3507467) bm!253224))

(assert (= (or b!3507469 bm!253224) bm!253222))

(declare-fun m!3946975 () Bool)

(assert (=> bm!253222 m!3946975))

(declare-fun m!3946981 () Bool)

(assert (=> bm!253223 m!3946981))

(declare-fun m!3946983 () Bool)

(assert (=> b!3507468 m!3946983))

(assert (=> d!1018641 d!1019997))

(assert (=> b!3504927 d!1019741))

(assert (=> b!3504927 d!1019085))

(declare-fun d!1019999 () Bool)

(declare-fun e!2171574 () Bool)

(assert (=> d!1019999 e!2171574))

(declare-fun res!1414861 () Bool)

(assert (=> d!1019999 (=> (not res!1414861) (not e!2171574))))

(declare-fun lt!1196565 () List!37429)

(assert (=> d!1019999 (= res!1414861 (= (content!5247 lt!1196565) ((_ map or) (content!5247 (ite c!602937 call!253001 call!253002)) (content!5247 (ite c!602937 call!253002 call!253001)))))))

(declare-fun e!2171573 () List!37429)

(assert (=> d!1019999 (= lt!1196565 e!2171573)))

(declare-fun c!603568 () Bool)

(assert (=> d!1019999 (= c!603568 ((_ is Nil!37305) (ite c!602937 call!253001 call!253002)))))

(assert (=> d!1019999 (= (++!9231 (ite c!602937 call!253001 call!253002) (ite c!602937 call!253002 call!253001)) lt!1196565)))

(declare-fun b!3507474 () Bool)

(assert (=> b!3507474 (= e!2171573 (Cons!37305 (h!42725 (ite c!602937 call!253001 call!253002)) (++!9231 (t!279240 (ite c!602937 call!253001 call!253002)) (ite c!602937 call!253002 call!253001))))))

(declare-fun b!3507473 () Bool)

(assert (=> b!3507473 (= e!2171573 (ite c!602937 call!253002 call!253001))))

(declare-fun b!3507476 () Bool)

(assert (=> b!3507476 (= e!2171574 (or (not (= (ite c!602937 call!253002 call!253001) Nil!37305)) (= lt!1196565 (ite c!602937 call!253001 call!253002))))))

(declare-fun b!3507475 () Bool)

(declare-fun res!1414860 () Bool)

(assert (=> b!3507475 (=> (not res!1414860) (not e!2171574))))

(assert (=> b!3507475 (= res!1414860 (= (size!28365 lt!1196565) (+ (size!28365 (ite c!602937 call!253001 call!253002)) (size!28365 (ite c!602937 call!253002 call!253001)))))))

(assert (= (and d!1019999 c!603568) b!3507473))

(assert (= (and d!1019999 (not c!603568)) b!3507474))

(assert (= (and d!1019999 res!1414861) b!3507475))

(assert (= (and b!3507475 res!1414860) b!3507476))

(declare-fun m!3947001 () Bool)

(assert (=> d!1019999 m!3947001))

(declare-fun m!3947003 () Bool)

(assert (=> d!1019999 m!3947003))

(declare-fun m!3947005 () Bool)

(assert (=> d!1019999 m!3947005))

(declare-fun m!3947007 () Bool)

(assert (=> b!3507474 m!3947007))

(declare-fun m!3947011 () Bool)

(assert (=> b!3507475 m!3947011))

(declare-fun m!3947013 () Bool)

(assert (=> b!3507475 m!3947013))

(declare-fun m!3947015 () Bool)

(assert (=> b!3507475 m!3947015))

(assert (=> bm!252996 d!1019999))

(assert (=> b!3504906 d!1019741))

(assert (=> b!3504906 d!1019085))

(declare-fun b!3507496 () Bool)

(declare-fun tp!1084876 () Bool)

(declare-fun e!2171586 () Bool)

(declare-fun tp!1084877 () Bool)

(assert (=> b!3507496 (= e!2171586 (and (inv!50526 (left!29131 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494)))))) tp!1084877 (inv!50526 (right!29461 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494)))))) tp!1084876))))

(declare-fun b!3507498 () Bool)

(declare-fun e!2171585 () Bool)

(declare-fun tp!1084878 () Bool)

(assert (=> b!3507498 (= e!2171585 tp!1084878)))

(declare-fun b!3507497 () Bool)

(declare-fun inv!50532 (IArray!22627) Bool)

(assert (=> b!3507497 (= e!2171586 (and (inv!50532 (xs!14497 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494)))))) e!2171585))))

(assert (=> b!3504742 (= tp!1084740 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494))))) e!2171586))))

(assert (= (and b!3504742 ((_ is Node!11311) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494)))))) b!3507496))

(assert (= b!3507497 b!3507498))

(assert (= (and b!3504742 ((_ is Leaf!17656) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (value!176298 (h!42727 tokens!494)))))) b!3507497))

(declare-fun m!3947045 () Bool)

(assert (=> b!3507496 m!3947045))

(declare-fun m!3947047 () Bool)

(assert (=> b!3507496 m!3947047))

(declare-fun m!3947049 () Bool)

(assert (=> b!3507497 m!3947049))

(assert (=> b!3504742 m!3941815))

(declare-fun b!3507504 () Bool)

(declare-fun e!2171588 () Bool)

(declare-fun tp!1084879 () Bool)

(declare-fun tp!1084883 () Bool)

(assert (=> b!3507504 (= e!2171588 (and tp!1084879 tp!1084883))))

(declare-fun b!3507501 () Bool)

(assert (=> b!3507501 (= e!2171588 tp_is_empty!17605)))

(declare-fun b!3507502 () Bool)

(declare-fun tp!1084882 () Bool)

(declare-fun tp!1084880 () Bool)

(assert (=> b!3507502 (= e!2171588 (and tp!1084882 tp!1084880))))

(declare-fun b!3507503 () Bool)

(declare-fun tp!1084881 () Bool)

(assert (=> b!3507503 (= e!2171588 tp!1084881)))

(assert (=> b!3505451 (= tp!1084817 e!2171588)))

(assert (= (and b!3505451 ((_ is ElementMatch!10227) (regOne!20966 (regex!5468 (h!42726 rules!2135))))) b!3507501))

(assert (= (and b!3505451 ((_ is Concat!15925) (regOne!20966 (regex!5468 (h!42726 rules!2135))))) b!3507502))

(assert (= (and b!3505451 ((_ is Star!10227) (regOne!20966 (regex!5468 (h!42726 rules!2135))))) b!3507503))

(assert (= (and b!3505451 ((_ is Union!10227) (regOne!20966 (regex!5468 (h!42726 rules!2135))))) b!3507504))

(declare-fun b!3507510 () Bool)

(declare-fun e!2171590 () Bool)

(declare-fun tp!1084884 () Bool)

(declare-fun tp!1084888 () Bool)

(assert (=> b!3507510 (= e!2171590 (and tp!1084884 tp!1084888))))

(declare-fun b!3507507 () Bool)

(assert (=> b!3507507 (= e!2171590 tp_is_empty!17605)))

(declare-fun b!3507508 () Bool)

(declare-fun tp!1084887 () Bool)

(declare-fun tp!1084885 () Bool)

(assert (=> b!3507508 (= e!2171590 (and tp!1084887 tp!1084885))))

(declare-fun b!3507509 () Bool)

(declare-fun tp!1084886 () Bool)

(assert (=> b!3507509 (= e!2171590 tp!1084886)))

(assert (=> b!3505451 (= tp!1084815 e!2171590)))

(assert (= (and b!3505451 ((_ is ElementMatch!10227) (regTwo!20966 (regex!5468 (h!42726 rules!2135))))) b!3507507))

(assert (= (and b!3505451 ((_ is Concat!15925) (regTwo!20966 (regex!5468 (h!42726 rules!2135))))) b!3507508))

(assert (= (and b!3505451 ((_ is Star!10227) (regTwo!20966 (regex!5468 (h!42726 rules!2135))))) b!3507509))

(assert (= (and b!3505451 ((_ is Union!10227) (regTwo!20966 (regex!5468 (h!42726 rules!2135))))) b!3507510))

(declare-fun e!2171594 () Bool)

(declare-fun tp!1084889 () Bool)

(declare-fun tp!1084890 () Bool)

(declare-fun b!3507515 () Bool)

(assert (=> b!3507515 (= e!2171594 (and (inv!50526 (left!29131 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241))))) tp!1084890 (inv!50526 (right!29461 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241))))) tp!1084889))))

(declare-fun b!3507517 () Bool)

(declare-fun e!2171593 () Bool)

(declare-fun tp!1084891 () Bool)

(assert (=> b!3507517 (= e!2171593 tp!1084891)))

(declare-fun b!3507516 () Bool)

(assert (=> b!3507516 (= e!2171594 (and (inv!50532 (xs!14497 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241))))) e!2171593))))

(assert (=> b!3504810 (= tp!1084741 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241)))) e!2171594))))

(assert (= (and b!3504810 ((_ is Node!11311) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241))))) b!3507515))

(assert (= b!3507516 b!3507517))

(assert (= (and b!3504810 ((_ is Leaf!17656) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (value!176298 separatorToken!241))))) b!3507516))

(declare-fun m!3947067 () Bool)

(assert (=> b!3507515 m!3947067))

(declare-fun m!3947069 () Bool)

(assert (=> b!3507515 m!3947069))

(declare-fun m!3947071 () Bool)

(assert (=> b!3507516 m!3947071))

(assert (=> b!3504810 m!3941913))

(declare-fun b!3507522 () Bool)

(declare-fun e!2171597 () Bool)

(declare-fun tp!1084892 () Bool)

(assert (=> b!3507522 (= e!2171597 (and tp_is_empty!17605 tp!1084892))))

(assert (=> b!3505458 (= tp!1084821 e!2171597)))

(assert (= (and b!3505458 ((_ is Cons!37305) (t!279240 (originalCharacters!6182 separatorToken!241)))) b!3507522))

(declare-fun b!3507523 () Bool)

(declare-fun e!2171598 () Bool)

(declare-fun tp!1084893 () Bool)

(assert (=> b!3507523 (= e!2171598 (and tp_is_empty!17605 tp!1084893))))

(assert (=> b!3505470 (= tp!1084834 e!2171598)))

(assert (= (and b!3505470 ((_ is Cons!37305) (t!279240 (originalCharacters!6182 (h!42727 tokens!494))))) b!3507523))

(declare-fun b!3507527 () Bool)

(declare-fun e!2171599 () Bool)

(declare-fun tp!1084894 () Bool)

(declare-fun tp!1084898 () Bool)

(assert (=> b!3507527 (= e!2171599 (and tp!1084894 tp!1084898))))

(declare-fun b!3507524 () Bool)

(assert (=> b!3507524 (= e!2171599 tp_is_empty!17605)))

(declare-fun b!3507525 () Bool)

(declare-fun tp!1084897 () Bool)

(declare-fun tp!1084895 () Bool)

(assert (=> b!3507525 (= e!2171599 (and tp!1084897 tp!1084895))))

(declare-fun b!3507526 () Bool)

(declare-fun tp!1084896 () Bool)

(assert (=> b!3507526 (= e!2171599 tp!1084896)))

(assert (=> b!3505468 (= tp!1084831 e!2171599)))

(assert (= (and b!3505468 ((_ is ElementMatch!10227) (regex!5468 (h!42726 (t!279241 rules!2135))))) b!3507524))

(assert (= (and b!3505468 ((_ is Concat!15925) (regex!5468 (h!42726 (t!279241 rules!2135))))) b!3507525))

(assert (= (and b!3505468 ((_ is Star!10227) (regex!5468 (h!42726 (t!279241 rules!2135))))) b!3507526))

(assert (= (and b!3505468 ((_ is Union!10227) (regex!5468 (h!42726 (t!279241 rules!2135))))) b!3507527))

(declare-fun b!3507530 () Bool)

(declare-fun e!2171602 () Bool)

(assert (=> b!3507530 (= e!2171602 true)))

(declare-fun b!3507529 () Bool)

(declare-fun e!2171601 () Bool)

(assert (=> b!3507529 (= e!2171601 e!2171602)))

(declare-fun b!3507528 () Bool)

(declare-fun e!2171600 () Bool)

(assert (=> b!3507528 (= e!2171600 e!2171601)))

(assert (=> b!3505430 e!2171600))

(assert (= b!3507529 b!3507530))

(assert (= b!3507528 b!3507529))

(assert (= (and b!3505430 ((_ is Cons!37306) (t!279241 rules!2135))) b!3507528))

(assert (=> b!3507530 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135))))) (dynLambda!15849 order!20019 lambda!122525))))

(assert (=> b!3507530 (< (dynLambda!15850 order!20021 (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135))))) (dynLambda!15849 order!20019 lambda!122525))))

(declare-fun b!3507536 () Bool)

(declare-fun b_free!90565 () Bool)

(declare-fun b_next!91269 () Bool)

(assert (=> b!3507536 (= b_free!90565 (not b_next!91269))))

(declare-fun t!279590 () Bool)

(declare-fun tb!194653 () Bool)

(assert (=> (and b!3507536 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279590) tb!194653))

(declare-fun result!238948 () Bool)

(assert (= result!238948 result!238726))

(assert (=> d!1018753 t!279590))

(declare-fun t!279592 () Bool)

(declare-fun tb!194655 () Bool)

(assert (=> (and b!3507536 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279592) tb!194655))

(declare-fun result!238950 () Bool)

(assert (= result!238950 result!238746))

(assert (=> d!1018809 t!279592))

(declare-fun tb!194657 () Bool)

(declare-fun t!279594 () Bool)

(assert (=> (and b!3507536 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279594) tb!194657))

(declare-fun result!238952 () Bool)

(assert (= result!238952 result!238684))

(assert (=> d!1018607 t!279594))

(assert (=> d!1018865 t!279592))

(declare-fun t!279596 () Bool)

(declare-fun tb!194659 () Bool)

(assert (=> (and b!3507536 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279596) tb!194659))

(declare-fun result!238954 () Bool)

(assert (= result!238954 result!238836))

(assert (=> d!1019189 t!279596))

(declare-fun t!279598 () Bool)

(declare-fun tb!194661 () Bool)

(assert (=> (and b!3507536 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279598) tb!194661))

(declare-fun result!238956 () Bool)

(assert (= result!238956 result!238846))

(assert (=> d!1019221 t!279598))

(declare-fun tp!1084899 () Bool)

(declare-fun b_and!249045 () Bool)

(assert (=> b!3507536 (= tp!1084899 (and (=> t!279592 result!238950) (=> t!279598 result!238956) (=> t!279596 result!238954) (=> t!279594 result!238952) (=> t!279590 result!238948) b_and!249045))))

(declare-fun b_free!90567 () Bool)

(declare-fun b_next!91271 () Bool)

(assert (=> b!3507536 (= b_free!90567 (not b_next!91271))))

(declare-fun t!279600 () Bool)

(declare-fun tb!194663 () Bool)

(assert (=> (and b!3507536 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279600) tb!194663))

(declare-fun result!238958 () Bool)

(assert (= result!238958 result!238632))

(assert (=> b!3504951 t!279600))

(assert (=> d!1018361 t!279600))

(declare-fun tb!194665 () Bool)

(declare-fun t!279602 () Bool)

(assert (=> (and b!3507536 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279602) tb!194665))

(declare-fun result!238960 () Bool)

(assert (= result!238960 result!238866))

(assert (=> d!1019289 t!279602))

(declare-fun t!279604 () Bool)

(declare-fun tb!194667 () Bool)

(assert (=> (and b!3507536 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241)))) t!279604) tb!194667))

(declare-fun result!238962 () Bool)

(assert (= result!238962 result!238640))

(assert (=> d!1018389 t!279604))

(declare-fun tb!194669 () Bool)

(declare-fun t!279606 () Bool)

(assert (=> (and b!3507536 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195067 0))))) t!279606) tb!194669))

(declare-fun result!238964 () Bool)

(assert (= result!238964 result!238804))

(assert (=> d!1019033 t!279606))

(declare-fun t!279608 () Bool)

(declare-fun tb!194671 () Bool)

(assert (=> (and b!3507536 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195078 0))))) t!279608) tb!194671))

(declare-fun result!238966 () Bool)

(assert (= result!238966 result!238816))

(assert (=> d!1019095 t!279608))

(declare-fun t!279610 () Bool)

(declare-fun tb!194673 () Bool)

(assert (=> (and b!3507536 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195069 0))))) t!279610) tb!194673))

(declare-fun result!238968 () Bool)

(assert (= result!238968 result!238916))

(assert (=> d!1019799 t!279610))

(declare-fun tb!194675 () Bool)

(declare-fun t!279612 () Bool)

(assert (=> (and b!3507536 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))) t!279612) tb!194675))

(declare-fun result!238970 () Bool)

(assert (= result!238970 result!238826))

(assert (=> d!1019149 t!279612))

(declare-fun tb!194677 () Bool)

(declare-fun t!279614 () Bool)

(assert (=> (and b!3507536 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494))))))) t!279614) tb!194677))

(declare-fun result!238972 () Bool)

(assert (= result!238972 result!238856))

(assert (=> d!1019269 t!279614))

(declare-fun t!279616 () Bool)

(declare-fun tb!194679 () Bool)

(assert (=> (and b!3507536 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279616) tb!194679))

(declare-fun result!238974 () Bool)

(assert (= result!238974 result!238716))

(assert (=> d!1018693 t!279616))

(declare-fun t!279618 () Bool)

(declare-fun tb!194681 () Bool)

(assert (=> (and b!3507536 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))) t!279618) tb!194681))

(declare-fun result!238976 () Bool)

(assert (= result!238976 result!238646))

(assert (=> d!1018401 t!279618))

(assert (=> b!3504898 t!279604))

(declare-fun tb!194683 () Bool)

(declare-fun t!279620 () Bool)

(assert (=> (and b!3507536 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279620) tb!194683))

(declare-fun result!238978 () Bool)

(assert (= result!238978 result!238736))

(assert (=> d!1018809 t!279620))

(assert (=> b!3506942 t!279618))

(declare-fun b_and!249047 () Bool)

(declare-fun tp!1084902 () Bool)

(assert (=> b!3507536 (= tp!1084902 (and (=> t!279608 result!238966) (=> t!279604 result!238962) (=> t!279616 result!238974) (=> t!279600 result!238958) (=> t!279606 result!238964) (=> t!279614 result!238972) (=> t!279620 result!238978) (=> t!279610 result!238968) (=> t!279612 result!238970) (=> t!279602 result!238960) (=> t!279618 result!238976) b_and!249047))))

(declare-fun e!2171606 () Bool)

(assert (=> b!3507536 (= e!2171606 (and tp!1084899 tp!1084902))))

(declare-fun e!2171608 () Bool)

(declare-fun b!3507535 () Bool)

(declare-fun tp!1084900 () Bool)

(assert (=> b!3507535 (= e!2171608 (and tp!1084900 (inv!50519 (tag!6100 (h!42726 (t!279241 (t!279241 rules!2135))))) (inv!50522 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) e!2171606))))

(declare-fun b!3507534 () Bool)

(declare-fun e!2171605 () Bool)

(declare-fun tp!1084901 () Bool)

(assert (=> b!3507534 (= e!2171605 (and e!2171608 tp!1084901))))

(assert (=> b!3505467 (= tp!1084832 e!2171605)))

(assert (= b!3507535 b!3507536))

(assert (= b!3507534 b!3507535))

(assert (= (and b!3505467 ((_ is Cons!37306) (t!279241 (t!279241 rules!2135)))) b!3507534))

(declare-fun m!3947107 () Bool)

(assert (=> b!3507535 m!3947107))

(declare-fun m!3947111 () Bool)

(assert (=> b!3507535 m!3947111))

(declare-fun b!3507549 () Bool)

(declare-fun e!2171617 () Bool)

(assert (=> b!3507549 (= e!2171617 true)))

(declare-fun b!3507548 () Bool)

(declare-fun e!2171616 () Bool)

(assert (=> b!3507548 (= e!2171616 e!2171617)))

(declare-fun b!3507547 () Bool)

(declare-fun e!2171615 () Bool)

(assert (=> b!3507547 (= e!2171615 e!2171616)))

(assert (=> b!3505447 e!2171615))

(assert (= b!3507548 b!3507549))

(assert (= b!3507547 b!3507548))

(assert (= (and b!3505447 ((_ is Cons!37306) (t!279241 (t!279241 rules!2135)))) b!3507547))

(assert (=> b!3507549 (< (dynLambda!15848 order!20017 (toValue!7712 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135)))))) (dynLambda!15849 order!20019 lambda!122515))))

(assert (=> b!3507549 (< (dynLambda!15850 order!20021 (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135)))))) (dynLambda!15849 order!20019 lambda!122515))))

(declare-fun b!3507553 () Bool)

(declare-fun e!2171618 () Bool)

(declare-fun tp!1084903 () Bool)

(declare-fun tp!1084907 () Bool)

(assert (=> b!3507553 (= e!2171618 (and tp!1084903 tp!1084907))))

(declare-fun b!3507550 () Bool)

(assert (=> b!3507550 (= e!2171618 tp_is_empty!17605)))

(declare-fun b!3507551 () Bool)

(declare-fun tp!1084906 () Bool)

(declare-fun tp!1084904 () Bool)

(assert (=> b!3507551 (= e!2171618 (and tp!1084906 tp!1084904))))

(declare-fun b!3507552 () Bool)

(declare-fun tp!1084905 () Bool)

(assert (=> b!3507552 (= e!2171618 tp!1084905)))

(assert (=> b!3505487 (= tp!1084851 e!2171618)))

(assert (= (and b!3505487 ((_ is ElementMatch!10227) (regex!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))) b!3507550))

(assert (= (and b!3505487 ((_ is Concat!15925) (regex!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))) b!3507551))

(assert (= (and b!3505487 ((_ is Star!10227) (regex!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))) b!3507552))

(assert (= (and b!3505487 ((_ is Union!10227) (regex!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))) b!3507553))

(declare-fun b!3507556 () Bool)

(declare-fun e!2171620 () Bool)

(declare-fun tp!1084908 () Bool)

(assert (=> b!3507556 (= e!2171620 (and tp_is_empty!17605 tp!1084908))))

(assert (=> b!3505486 (= tp!1084853 e!2171620)))

(assert (= (and b!3505486 ((_ is Cons!37305) (originalCharacters!6182 (h!42727 (t!279242 tokens!494))))) b!3507556))

(declare-fun b!3507560 () Bool)

(declare-fun e!2171621 () Bool)

(declare-fun tp!1084909 () Bool)

(declare-fun tp!1084913 () Bool)

(assert (=> b!3507560 (= e!2171621 (and tp!1084909 tp!1084913))))

(declare-fun b!3507557 () Bool)

(assert (=> b!3507557 (= e!2171621 tp_is_empty!17605)))

(declare-fun b!3507558 () Bool)

(declare-fun tp!1084912 () Bool)

(declare-fun tp!1084910 () Bool)

(assert (=> b!3507558 (= e!2171621 (and tp!1084912 tp!1084910))))

(declare-fun b!3507559 () Bool)

(declare-fun tp!1084911 () Bool)

(assert (=> b!3507559 (= e!2171621 tp!1084911)))

(assert (=> b!3505446 (= tp!1084809 e!2171621)))

(assert (= (and b!3505446 ((_ is ElementMatch!10227) (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507557))

(assert (= (and b!3505446 ((_ is Concat!15925) (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507558))

(assert (= (and b!3505446 ((_ is Star!10227) (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507559))

(assert (= (and b!3505446 ((_ is Union!10227) (regOne!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507560))

(declare-fun b!3507564 () Bool)

(declare-fun e!2171622 () Bool)

(declare-fun tp!1084914 () Bool)

(declare-fun tp!1084918 () Bool)

(assert (=> b!3507564 (= e!2171622 (and tp!1084914 tp!1084918))))

(declare-fun b!3507561 () Bool)

(assert (=> b!3507561 (= e!2171622 tp_is_empty!17605)))

(declare-fun b!3507562 () Bool)

(declare-fun tp!1084917 () Bool)

(declare-fun tp!1084915 () Bool)

(assert (=> b!3507562 (= e!2171622 (and tp!1084917 tp!1084915))))

(declare-fun b!3507563 () Bool)

(declare-fun tp!1084916 () Bool)

(assert (=> b!3507563 (= e!2171622 tp!1084916)))

(assert (=> b!3505446 (= tp!1084813 e!2171622)))

(assert (= (and b!3505446 ((_ is ElementMatch!10227) (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507561))

(assert (= (and b!3505446 ((_ is Concat!15925) (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507562))

(assert (= (and b!3505446 ((_ is Star!10227) (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507563))

(assert (= (and b!3505446 ((_ is Union!10227) (regTwo!20967 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507564))

(declare-fun b!3507568 () Bool)

(declare-fun b_free!90569 () Bool)

(declare-fun b_next!91273 () Bool)

(assert (=> b!3507568 (= b_free!90569 (not b_next!91273))))

(declare-fun t!279622 () Bool)

(declare-fun tb!194685 () Bool)

(assert (=> (and b!3507568 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279622) tb!194685))

(declare-fun result!238980 () Bool)

(assert (= result!238980 result!238726))

(assert (=> d!1018753 t!279622))

(declare-fun t!279624 () Bool)

(declare-fun tb!194687 () Bool)

(assert (=> (and b!3507568 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279624) tb!194687))

(declare-fun result!238982 () Bool)

(assert (= result!238982 result!238746))

(assert (=> d!1018809 t!279624))

(declare-fun t!279626 () Bool)

(declare-fun tb!194689 () Bool)

(assert (=> (and b!3507568 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279626) tb!194689))

(declare-fun result!238984 () Bool)

(assert (= result!238984 result!238684))

(assert (=> d!1018607 t!279626))

(assert (=> d!1018865 t!279624))

(declare-fun t!279628 () Bool)

(declare-fun tb!194691 () Bool)

(assert (=> (and b!3507568 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279628) tb!194691))

(declare-fun result!238986 () Bool)

(assert (= result!238986 result!238836))

(assert (=> d!1019189 t!279628))

(declare-fun tb!194693 () Bool)

(declare-fun t!279630 () Bool)

(assert (=> (and b!3507568 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toValue!7712 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279630) tb!194693))

(declare-fun result!238988 () Bool)

(assert (= result!238988 result!238846))

(assert (=> d!1019221 t!279630))

(declare-fun tp!1084921 () Bool)

(declare-fun b_and!249049 () Bool)

(assert (=> b!3507568 (= tp!1084921 (and (=> t!279628 result!238986) (=> t!279626 result!238984) (=> t!279622 result!238980) (=> t!279624 result!238982) (=> t!279630 result!238988) b_and!249049))))

(declare-fun b_free!90571 () Bool)

(declare-fun b_next!91275 () Bool)

(assert (=> b!3507568 (= b_free!90571 (not b_next!91275))))

(declare-fun t!279632 () Bool)

(declare-fun tb!194695 () Bool)

(assert (=> (and b!3507568 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279632) tb!194695))

(declare-fun result!238990 () Bool)

(assert (= result!238990 result!238632))

(assert (=> b!3504951 t!279632))

(assert (=> d!1018361 t!279632))

(declare-fun tb!194697 () Bool)

(declare-fun t!279634 () Bool)

(assert (=> (and b!3507568 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195339)))))) t!279634) tb!194697))

(declare-fun result!238992 () Bool)

(assert (= result!238992 result!238866))

(assert (=> d!1019289 t!279634))

(declare-fun t!279636 () Bool)

(declare-fun tb!194699 () Bool)

(assert (=> (and b!3507568 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241)))) t!279636) tb!194699))

(declare-fun result!238994 () Bool)

(assert (= result!238994 result!238640))

(assert (=> d!1018389 t!279636))

(declare-fun tb!194701 () Bool)

(declare-fun t!279638 () Bool)

(assert (=> (and b!3507568 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195067 0))))) t!279638) tb!194701))

(declare-fun result!238996 () Bool)

(assert (= result!238996 result!238804))

(assert (=> d!1019033 t!279638))

(declare-fun tb!194703 () Bool)

(declare-fun t!279640 () Bool)

(assert (=> (and b!3507568 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195078 0))))) t!279640) tb!194703))

(declare-fun result!238998 () Bool)

(assert (= result!238998 result!238816))

(assert (=> d!1019095 t!279640))

(declare-fun t!279642 () Bool)

(declare-fun tb!194705 () Bool)

(assert (=> (and b!3507568 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (apply!8864 lt!1195069 0))))) t!279642) tb!194705))

(declare-fun result!239000 () Bool)

(assert (= result!239000 result!238916))

(assert (=> d!1019799 t!279642))

(declare-fun t!279644 () Bool)

(declare-fun tb!194707 () Bool)

(assert (=> (and b!3507568 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (Cons!37307 (h!42727 tokens!494) Nil!37307)))))) t!279644) tb!194707))

(declare-fun result!239002 () Bool)

(assert (= result!239002 result!238826))

(assert (=> d!1019149 t!279644))

(declare-fun t!279646 () Bool)

(declare-fun tb!194709 () Bool)

(assert (=> (and b!3507568 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494))))))) t!279646) tb!194709))

(declare-fun result!239004 () Bool)

(assert (= result!239004 result!238856))

(assert (=> d!1019269 t!279646))

(declare-fun tb!194711 () Bool)

(declare-fun t!279648 () Bool)

(assert (=> (and b!3507568 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (_1!21691 (get!11971 lt!1195251)))))) t!279648) tb!194711))

(declare-fun result!239006 () Bool)

(assert (= result!239006 result!238716))

(assert (=> d!1018693 t!279648))

(declare-fun t!279650 () Bool)

(declare-fun tb!194713 () Bool)

(assert (=> (and b!3507568 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494)))))) t!279650) tb!194713))

(declare-fun result!239008 () Bool)

(assert (= result!239008 result!238646))

(assert (=> d!1018401 t!279650))

(assert (=> b!3504898 t!279636))

(declare-fun t!279652 () Bool)

(declare-fun tb!194715 () Bool)

(assert (=> (and b!3507568 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494))))) t!279652) tb!194715))

(declare-fun result!239010 () Bool)

(assert (= result!239010 result!238736))

(assert (=> d!1018809 t!279652))

(assert (=> b!3506942 t!279650))

(declare-fun tp!1084919 () Bool)

(declare-fun b_and!249051 () Bool)

(assert (=> b!3507568 (= tp!1084919 (and (=> t!279646 result!239004) (=> t!279632 result!238990) (=> t!279636 result!238994) (=> t!279644 result!239002) (=> t!279634 result!238992) (=> t!279638 result!238996) (=> t!279648 result!239006) (=> t!279642 result!239000) (=> t!279640 result!238998) (=> t!279652 result!239010) (=> t!279650 result!239008) b_and!249051))))

(declare-fun e!2171624 () Bool)

(assert (=> b!3507568 (= e!2171624 (and tp!1084921 tp!1084919))))

(declare-fun e!2171626 () Bool)

(declare-fun tp!1084923 () Bool)

(declare-fun b!3507565 () Bool)

(declare-fun e!2171625 () Bool)

(assert (=> b!3507565 (= e!2171626 (and (inv!50523 (h!42727 (t!279242 (t!279242 tokens!494)))) e!2171625 tp!1084923))))

(declare-fun e!2171628 () Bool)

(declare-fun b!3507566 () Bool)

(declare-fun tp!1084922 () Bool)

(assert (=> b!3507566 (= e!2171625 (and (inv!21 (value!176298 (h!42727 (t!279242 (t!279242 tokens!494))))) e!2171628 tp!1084922))))

(assert (=> b!3505485 (= tp!1084854 e!2171626)))

(declare-fun b!3507567 () Bool)

(declare-fun tp!1084920 () Bool)

(assert (=> b!3507567 (= e!2171628 (and tp!1084920 (inv!50519 (tag!6100 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (inv!50522 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) e!2171624))))

(assert (= b!3507567 b!3507568))

(assert (= b!3507566 b!3507567))

(assert (= b!3507565 b!3507566))

(assert (= (and b!3505485 ((_ is Cons!37307) (t!279242 (t!279242 tokens!494)))) b!3507565))

(declare-fun m!3947137 () Bool)

(assert (=> b!3507565 m!3947137))

(declare-fun m!3947157 () Bool)

(assert (=> b!3507566 m!3947157))

(declare-fun m!3947161 () Bool)

(assert (=> b!3507567 m!3947161))

(declare-fun m!3947163 () Bool)

(assert (=> b!3507567 m!3947163))

(declare-fun b!3507581 () Bool)

(declare-fun e!2171637 () Bool)

(declare-fun tp!1084925 () Bool)

(declare-fun tp!1084924 () Bool)

(assert (=> b!3507581 (= e!2171637 (and (inv!50526 (left!29131 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494))))))) tp!1084925 (inv!50526 (right!29461 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494))))))) tp!1084924))))

(declare-fun b!3507583 () Bool)

(declare-fun e!2171636 () Bool)

(declare-fun tp!1084926 () Bool)

(assert (=> b!3507583 (= e!2171636 tp!1084926)))

(declare-fun b!3507582 () Bool)

(assert (=> b!3507582 (= e!2171637 (and (inv!50532 (xs!14497 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494))))))) e!2171636))))

(assert (=> b!3504819 (= tp!1084742 (and (inv!50526 (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494)))))) e!2171637))))

(assert (= (and b!3504819 ((_ is Node!11311) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494))))))) b!3507581))

(assert (= b!3507582 b!3507583))

(assert (= (and b!3504819 ((_ is Leaf!17656) (c!602787 (dynLambda!15853 (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (value!176298 (h!42727 (t!279242 tokens!494))))))) b!3507582))

(declare-fun m!3947165 () Bool)

(assert (=> b!3507581 m!3947165))

(declare-fun m!3947167 () Bool)

(assert (=> b!3507581 m!3947167))

(declare-fun m!3947169 () Bool)

(assert (=> b!3507582 m!3947169))

(assert (=> b!3504819 m!3941949))

(declare-fun b!3507587 () Bool)

(declare-fun e!2171638 () Bool)

(declare-fun tp!1084927 () Bool)

(declare-fun tp!1084931 () Bool)

(assert (=> b!3507587 (= e!2171638 (and tp!1084927 tp!1084931))))

(declare-fun b!3507584 () Bool)

(assert (=> b!3507584 (= e!2171638 tp_is_empty!17605)))

(declare-fun b!3507585 () Bool)

(declare-fun tp!1084930 () Bool)

(declare-fun tp!1084928 () Bool)

(assert (=> b!3507585 (= e!2171638 (and tp!1084930 tp!1084928))))

(declare-fun b!3507586 () Bool)

(declare-fun tp!1084929 () Bool)

(assert (=> b!3507586 (= e!2171638 tp!1084929)))

(assert (=> b!3505445 (= tp!1084811 e!2171638)))

(assert (= (and b!3505445 ((_ is ElementMatch!10227) (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507584))

(assert (= (and b!3505445 ((_ is Concat!15925) (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507585))

(assert (= (and b!3505445 ((_ is Star!10227) (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507586))

(assert (= (and b!3505445 ((_ is Union!10227) (reg!10556 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507587))

(declare-fun b!3507592 () Bool)

(declare-fun e!2171640 () Bool)

(declare-fun tp!1084933 () Bool)

(declare-fun tp!1084937 () Bool)

(assert (=> b!3507592 (= e!2171640 (and tp!1084933 tp!1084937))))

(declare-fun b!3507589 () Bool)

(assert (=> b!3507589 (= e!2171640 tp_is_empty!17605)))

(declare-fun b!3507590 () Bool)

(declare-fun tp!1084936 () Bool)

(declare-fun tp!1084934 () Bool)

(assert (=> b!3507590 (= e!2171640 (and tp!1084936 tp!1084934))))

(declare-fun b!3507591 () Bool)

(declare-fun tp!1084935 () Bool)

(assert (=> b!3507591 (= e!2171640 tp!1084935)))

(assert (=> b!3505444 (= tp!1084812 e!2171640)))

(assert (= (and b!3505444 ((_ is ElementMatch!10227) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507589))

(assert (= (and b!3505444 ((_ is Concat!15925) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507590))

(assert (= (and b!3505444 ((_ is Star!10227) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507591))

(assert (= (and b!3505444 ((_ is Union!10227) (regOne!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507592))

(declare-fun b!3507596 () Bool)

(declare-fun e!2171641 () Bool)

(declare-fun tp!1084938 () Bool)

(declare-fun tp!1084942 () Bool)

(assert (=> b!3507596 (= e!2171641 (and tp!1084938 tp!1084942))))

(declare-fun b!3507593 () Bool)

(assert (=> b!3507593 (= e!2171641 tp_is_empty!17605)))

(declare-fun b!3507594 () Bool)

(declare-fun tp!1084941 () Bool)

(declare-fun tp!1084939 () Bool)

(assert (=> b!3507594 (= e!2171641 (and tp!1084941 tp!1084939))))

(declare-fun b!3507595 () Bool)

(declare-fun tp!1084940 () Bool)

(assert (=> b!3507595 (= e!2171641 tp!1084940)))

(assert (=> b!3505444 (= tp!1084810 e!2171641)))

(assert (= (and b!3505444 ((_ is ElementMatch!10227) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507593))

(assert (= (and b!3505444 ((_ is Concat!15925) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507594))

(assert (= (and b!3505444 ((_ is Star!10227) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507595))

(assert (= (and b!3505444 ((_ is Union!10227) (regTwo!20966 (regex!5468 (rule!8098 (h!42727 tokens!494)))))) b!3507596))

(declare-fun b!3507600 () Bool)

(declare-fun e!2171642 () Bool)

(declare-fun tp!1084943 () Bool)

(declare-fun tp!1084947 () Bool)

(assert (=> b!3507600 (= e!2171642 (and tp!1084943 tp!1084947))))

(declare-fun b!3507597 () Bool)

(assert (=> b!3507597 (= e!2171642 tp_is_empty!17605)))

(declare-fun b!3507598 () Bool)

(declare-fun tp!1084946 () Bool)

(declare-fun tp!1084944 () Bool)

(assert (=> b!3507598 (= e!2171642 (and tp!1084946 tp!1084944))))

(declare-fun b!3507599 () Bool)

(declare-fun tp!1084945 () Bool)

(assert (=> b!3507599 (= e!2171642 tp!1084945)))

(assert (=> b!3505453 (= tp!1084814 e!2171642)))

(assert (= (and b!3505453 ((_ is ElementMatch!10227) (regOne!20967 (regex!5468 (h!42726 rules!2135))))) b!3507597))

(assert (= (and b!3505453 ((_ is Concat!15925) (regOne!20967 (regex!5468 (h!42726 rules!2135))))) b!3507598))

(assert (= (and b!3505453 ((_ is Star!10227) (regOne!20967 (regex!5468 (h!42726 rules!2135))))) b!3507599))

(assert (= (and b!3505453 ((_ is Union!10227) (regOne!20967 (regex!5468 (h!42726 rules!2135))))) b!3507600))

(declare-fun b!3507604 () Bool)

(declare-fun e!2171643 () Bool)

(declare-fun tp!1084948 () Bool)

(declare-fun tp!1084952 () Bool)

(assert (=> b!3507604 (= e!2171643 (and tp!1084948 tp!1084952))))

(declare-fun b!3507601 () Bool)

(assert (=> b!3507601 (= e!2171643 tp_is_empty!17605)))

(declare-fun b!3507602 () Bool)

(declare-fun tp!1084951 () Bool)

(declare-fun tp!1084949 () Bool)

(assert (=> b!3507602 (= e!2171643 (and tp!1084951 tp!1084949))))

(declare-fun b!3507603 () Bool)

(declare-fun tp!1084950 () Bool)

(assert (=> b!3507603 (= e!2171643 tp!1084950)))

(assert (=> b!3505453 (= tp!1084818 e!2171643)))

(assert (= (and b!3505453 ((_ is ElementMatch!10227) (regTwo!20967 (regex!5468 (h!42726 rules!2135))))) b!3507601))

(assert (= (and b!3505453 ((_ is Concat!15925) (regTwo!20967 (regex!5468 (h!42726 rules!2135))))) b!3507602))

(assert (= (and b!3505453 ((_ is Star!10227) (regTwo!20967 (regex!5468 (h!42726 rules!2135))))) b!3507603))

(assert (= (and b!3505453 ((_ is Union!10227) (regTwo!20967 (regex!5468 (h!42726 rules!2135))))) b!3507604))

(declare-fun b!3507617 () Bool)

(declare-fun e!2171649 () Bool)

(declare-fun tp!1084953 () Bool)

(declare-fun tp!1084957 () Bool)

(assert (=> b!3507617 (= e!2171649 (and tp!1084953 tp!1084957))))

(declare-fun b!3507614 () Bool)

(assert (=> b!3507614 (= e!2171649 tp_is_empty!17605)))

(declare-fun b!3507615 () Bool)

(declare-fun tp!1084956 () Bool)

(declare-fun tp!1084954 () Bool)

(assert (=> b!3507615 (= e!2171649 (and tp!1084956 tp!1084954))))

(declare-fun b!3507616 () Bool)

(declare-fun tp!1084955 () Bool)

(assert (=> b!3507616 (= e!2171649 tp!1084955)))

(assert (=> b!3505474 (= tp!1084835 e!2171649)))

(assert (= (and b!3505474 ((_ is ElementMatch!10227) (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))))) b!3507614))

(assert (= (and b!3505474 ((_ is Concat!15925) (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))))) b!3507615))

(assert (= (and b!3505474 ((_ is Star!10227) (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))))) b!3507616))

(assert (= (and b!3505474 ((_ is Union!10227) (regOne!20967 (regex!5468 (rule!8098 separatorToken!241))))) b!3507617))

(declare-fun b!3507621 () Bool)

(declare-fun e!2171650 () Bool)

(declare-fun tp!1084958 () Bool)

(declare-fun tp!1084962 () Bool)

(assert (=> b!3507621 (= e!2171650 (and tp!1084958 tp!1084962))))

(declare-fun b!3507618 () Bool)

(assert (=> b!3507618 (= e!2171650 tp_is_empty!17605)))

(declare-fun b!3507619 () Bool)

(declare-fun tp!1084961 () Bool)

(declare-fun tp!1084959 () Bool)

(assert (=> b!3507619 (= e!2171650 (and tp!1084961 tp!1084959))))

(declare-fun b!3507620 () Bool)

(declare-fun tp!1084960 () Bool)

(assert (=> b!3507620 (= e!2171650 tp!1084960)))

(assert (=> b!3505474 (= tp!1084839 e!2171650)))

(assert (= (and b!3505474 ((_ is ElementMatch!10227) (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))))) b!3507618))

(assert (= (and b!3505474 ((_ is Concat!15925) (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))))) b!3507619))

(assert (= (and b!3505474 ((_ is Star!10227) (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))))) b!3507620))

(assert (= (and b!3505474 ((_ is Union!10227) (regTwo!20967 (regex!5468 (rule!8098 separatorToken!241))))) b!3507621))

(declare-fun b!3507625 () Bool)

(declare-fun e!2171651 () Bool)

(declare-fun tp!1084963 () Bool)

(declare-fun tp!1084967 () Bool)

(assert (=> b!3507625 (= e!2171651 (and tp!1084963 tp!1084967))))

(declare-fun b!3507622 () Bool)

(assert (=> b!3507622 (= e!2171651 tp_is_empty!17605)))

(declare-fun b!3507623 () Bool)

(declare-fun tp!1084966 () Bool)

(declare-fun tp!1084964 () Bool)

(assert (=> b!3507623 (= e!2171651 (and tp!1084966 tp!1084964))))

(declare-fun b!3507624 () Bool)

(declare-fun tp!1084965 () Bool)

(assert (=> b!3507624 (= e!2171651 tp!1084965)))

(assert (=> b!3505472 (= tp!1084838 e!2171651)))

(assert (= (and b!3505472 ((_ is ElementMatch!10227) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))) b!3507622))

(assert (= (and b!3505472 ((_ is Concat!15925) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))) b!3507623))

(assert (= (and b!3505472 ((_ is Star!10227) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))) b!3507624))

(assert (= (and b!3505472 ((_ is Union!10227) (regOne!20966 (regex!5468 (rule!8098 separatorToken!241))))) b!3507625))

(declare-fun b!3507629 () Bool)

(declare-fun e!2171652 () Bool)

(declare-fun tp!1084968 () Bool)

(declare-fun tp!1084972 () Bool)

(assert (=> b!3507629 (= e!2171652 (and tp!1084968 tp!1084972))))

(declare-fun b!3507626 () Bool)

(assert (=> b!3507626 (= e!2171652 tp_is_empty!17605)))

(declare-fun b!3507627 () Bool)

(declare-fun tp!1084971 () Bool)

(declare-fun tp!1084969 () Bool)

(assert (=> b!3507627 (= e!2171652 (and tp!1084971 tp!1084969))))

(declare-fun b!3507628 () Bool)

(declare-fun tp!1084970 () Bool)

(assert (=> b!3507628 (= e!2171652 tp!1084970)))

(assert (=> b!3505472 (= tp!1084836 e!2171652)))

(assert (= (and b!3505472 ((_ is ElementMatch!10227) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241))))) b!3507626))

(assert (= (and b!3505472 ((_ is Concat!15925) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241))))) b!3507627))

(assert (= (and b!3505472 ((_ is Star!10227) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241))))) b!3507628))

(assert (= (and b!3505472 ((_ is Union!10227) (regTwo!20966 (regex!5468 (rule!8098 separatorToken!241))))) b!3507629))

(declare-fun b!3507642 () Bool)

(declare-fun e!2171658 () Bool)

(declare-fun tp!1084973 () Bool)

(declare-fun tp!1084977 () Bool)

(assert (=> b!3507642 (= e!2171658 (and tp!1084973 tp!1084977))))

(declare-fun b!3507639 () Bool)

(assert (=> b!3507639 (= e!2171658 tp_is_empty!17605)))

(declare-fun b!3507640 () Bool)

(declare-fun tp!1084976 () Bool)

(declare-fun tp!1084974 () Bool)

(assert (=> b!3507640 (= e!2171658 (and tp!1084976 tp!1084974))))

(declare-fun b!3507641 () Bool)

(declare-fun tp!1084975 () Bool)

(assert (=> b!3507641 (= e!2171658 tp!1084975)))

(assert (=> b!3505452 (= tp!1084816 e!2171658)))

(assert (= (and b!3505452 ((_ is ElementMatch!10227) (reg!10556 (regex!5468 (h!42726 rules!2135))))) b!3507639))

(assert (= (and b!3505452 ((_ is Concat!15925) (reg!10556 (regex!5468 (h!42726 rules!2135))))) b!3507640))

(assert (= (and b!3505452 ((_ is Star!10227) (reg!10556 (regex!5468 (h!42726 rules!2135))))) b!3507641))

(assert (= (and b!3505452 ((_ is Union!10227) (reg!10556 (regex!5468 (h!42726 rules!2135))))) b!3507642))

(declare-fun b!3507646 () Bool)

(declare-fun e!2171659 () Bool)

(declare-fun tp!1084978 () Bool)

(declare-fun tp!1084982 () Bool)

(assert (=> b!3507646 (= e!2171659 (and tp!1084978 tp!1084982))))

(declare-fun b!3507643 () Bool)

(assert (=> b!3507643 (= e!2171659 tp_is_empty!17605)))

(declare-fun b!3507644 () Bool)

(declare-fun tp!1084981 () Bool)

(declare-fun tp!1084979 () Bool)

(assert (=> b!3507644 (= e!2171659 (and tp!1084981 tp!1084979))))

(declare-fun b!3507645 () Bool)

(declare-fun tp!1084980 () Bool)

(assert (=> b!3507645 (= e!2171659 tp!1084980)))

(assert (=> b!3505473 (= tp!1084837 e!2171659)))

(assert (= (and b!3505473 ((_ is ElementMatch!10227) (reg!10556 (regex!5468 (rule!8098 separatorToken!241))))) b!3507643))

(assert (= (and b!3505473 ((_ is Concat!15925) (reg!10556 (regex!5468 (rule!8098 separatorToken!241))))) b!3507644))

(assert (= (and b!3505473 ((_ is Star!10227) (reg!10556 (regex!5468 (rule!8098 separatorToken!241))))) b!3507645))

(assert (= (and b!3505473 ((_ is Union!10227) (reg!10556 (regex!5468 (rule!8098 separatorToken!241))))) b!3507646))

(declare-fun b_lambda!102043 () Bool)

(assert (= b_lambda!102001 (or (and b!3507536 b_free!90565 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3505488 b_free!90561 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3505469 b_free!90557 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504500 b_free!90545 (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3507568 b_free!90569 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504518 b_free!90541 (= (toValue!7712 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504516 b_free!90537) b_lambda!102043)))

(declare-fun b_lambda!102045 () Bool)

(assert (= b_lambda!101993 (or b!3504521 b_lambda!102045)))

(assert (=> d!1019115 d!1018651))

(declare-fun b_lambda!102047 () Bool)

(assert (= b_lambda!102021 (or (and b!3507568 b_free!90571 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (and b!3504500 b_free!90547 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (and b!3505488 b_free!90563) (and b!3504516 b_free!90539 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (and b!3505469 b_free!90559 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (and b!3504518 b_free!90543 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))) (and b!3507536 b_free!90567 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))))) b_lambda!102047)))

(declare-fun b_lambda!102049 () Bool)

(assert (= b_lambda!102019 (or b!3504521 b_lambda!102049)))

(assert (=> d!1019563 d!1018649))

(declare-fun b_lambda!102051 () Bool)

(assert (= b_lambda!101997 (or b!3504517 b_lambda!102051)))

(declare-fun bs!564218 () Bool)

(declare-fun d!1020053 () Bool)

(assert (= bs!564218 (and d!1020053 b!3504517)))

(assert (=> bs!564218 (= (dynLambda!15854 lambda!122515 (h!42727 tokens!494)) (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 tokens!494)))))

(assert (=> bs!564218 m!3941475))

(assert (=> b!3506394 d!1020053))

(declare-fun b_lambda!102053 () Bool)

(assert (= b_lambda!101969 (or (and b!3507536 b_free!90565 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3505488 b_free!90561 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3505469 b_free!90557 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504500 b_free!90545 (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3507568 b_free!90569 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504518 b_free!90541 (= (toValue!7712 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504516 b_free!90537) b_lambda!102053)))

(declare-fun b_lambda!102055 () Bool)

(assert (= b_lambda!102027 (or d!1018645 b_lambda!102055)))

(declare-fun bs!564219 () Bool)

(declare-fun d!1020057 () Bool)

(assert (= bs!564219 (and d!1020057 d!1018645)))

(assert (=> bs!564219 (= (dynLambda!15854 lambda!122525 (h!42727 (list!13633 (seqFromList!3989 tokens!494)))) (rulesProduceIndividualToken!2549 thiss!18206 rules!2135 (h!42727 (list!13633 (seqFromList!3989 tokens!494)))))))

(assert (=> bs!564219 m!3944115))

(assert (=> b!3507077 d!1020057))

(declare-fun b_lambda!102057 () Bool)

(assert (= b_lambda!101995 (or b!3504517 b_lambda!102057)))

(assert (=> d!1019117 d!1018653))

(declare-fun b_lambda!102059 () Bool)

(assert (= b_lambda!101967 (or (and b!3507536 b_free!90567 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504516 b_free!90539) (and b!3505488 b_free!90563 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3507568 b_free!90571 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3505469 b_free!90559 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504518 b_free!90543 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504500 b_free!90547 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) b_lambda!102059)))

(declare-fun b_lambda!102061 () Bool)

(assert (= b_lambda!102005 (or (and b!3507568 b_free!90571) (and b!3504500 b_free!90547 (= (toChars!7571 (transformation!5468 (rule!8098 separatorToken!241))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))))) (and b!3504516 b_free!90539 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 tokens!494)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))))) (and b!3504518 b_free!90543 (= (toChars!7571 (transformation!5468 (h!42726 rules!2135))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))))) (and b!3507536 b_free!90567 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))))) (and b!3505469 b_free!90559 (= (toChars!7571 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))))) (and b!3505488 b_free!90563 (= (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toChars!7571 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))))) b_lambda!102061)))

(declare-fun b_lambda!102063 () Bool)

(assert (= b_lambda!101975 (or (and b!3507536 b_free!90565 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 (t!279241 rules!2135))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3505488 b_free!90561 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 tokens!494))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3505469 b_free!90557 (= (toValue!7712 (transformation!5468 (h!42726 (t!279241 rules!2135)))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504500 b_free!90545 (= (toValue!7712 (transformation!5468 (rule!8098 separatorToken!241))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3507568 b_free!90569 (= (toValue!7712 (transformation!5468 (rule!8098 (h!42727 (t!279242 (t!279242 tokens!494)))))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504518 b_free!90541 (= (toValue!7712 (transformation!5468 (h!42726 rules!2135))) (toValue!7712 (transformation!5468 (rule!8098 (h!42727 tokens!494)))))) (and b!3504516 b_free!90537) b_lambda!102063)))

(declare-fun b_lambda!102065 () Bool)

(assert (= b_lambda!102031 (or b!3504521 b_lambda!102065)))

(assert (=> b!3507183 d!1018651))

(check-sat (not b!3506363) (not tb!194523) (not b!3505694) (not b!3506456) (not d!1019299) (not b!3507371) (not b!3506796) (not b!3506850) (not bm!253192) (not b!3507504) (not d!1018973) b_and!249015 (not b!3506292) (not b!3505702) (not b!3507340) (not b!3505693) (not d!1019797) (not d!1019999) (not d!1019759) (not b!3506499) (not d!1018773) (not bm!253154) (not b!3506449) (not b!3506402) (not bm!253149) (not d!1019147) (not b!3507249) (not b!3506493) (not d!1019063) (not b!3506877) (not d!1019575) (not b!3506585) (not b!3506133) (not bm!253148) (not b!3507595) (not b!3507203) (not b!3507382) (not b_lambda!101965) (not b!3505565) (not b!3506976) (not b!3506966) (not b!3506206) (not b!3507190) (not d!1019873) (not d!1019731) (not b!3506388) (not b!3507370) (not b!3507334) (not b!3506187) (not d!1018701) (not b!3506392) (not b_next!91243) (not b!3505765) (not b_lambda!102047) (not d!1018913) (not b!3507042) (not b!3505567) (not b_next!91269) (not d!1019033) (not d!1019869) (not bm!253098) (not b!3507594) (not b!3507239) (not d!1019099) (not d!1018795) (not b!3507244) (not b!3506546) (not b!3507306) (not d!1019079) (not b!3505570) (not d!1019081) (not b!3506439) (not d!1019097) b_and!249023 (not tb!194433) (not b!3505703) (not b!3507191) (not bm!253030) (not tb!194423) (not d!1018685) (not b!3507102) (not b!3507566) (not d!1019131) b_and!248929 (not b!3506505) (not b!3506509) (not b!3507260) (not d!1018739) (not b!3506454) (not d!1019847) (not d!1019275) (not d!1019771) (not b!3506212) (not b_lambda!101963) (not b!3507043) (not d!1018743) (not b!3506135) (not b!3505581) (not b!3507286) (not bm!253202) (not b!3507563) (not b!3507004) (not d!1019285) (not d!1019815) (not b!3507547) (not d!1019271) (not b!3505793) (not d!1019267) (not b!3507170) (not d!1019269) (not d!1019253) (not b!3506138) (not b!3507617) (not b!3506990) (not b!3507616) (not b!3505720) (not b!3507602) (not b!3506915) (not b!3506522) (not b!3506447) (not b!3507503) (not bm!253174) (not b!3505929) (not b!3506383) (not b!3506366) (not d!1019677) (not b_lambda!102063) (not b!3507592) (not d!1019793) (not b!3507202) (not b!3506004) (not b!3506497) (not b!3507585) (not b!3505603) (not b!3506446) (not d!1018947) (not d!1019083) (not bm!253144) (not d!1019183) (not d!1019233) (not b!3507627) (not b!3506891) (not b!3506942) (not d!1019839) (not b!3506318) (not d!1018989) (not d!1018725) (not b_next!91261) (not b_lambda!101951) (not bm!253210) (not b!3507164) (not b!3506393) (not b!3506586) (not b!3506997) (not d!1019127) (not b!3506995) (not bm!253125) (not b!3506277) (not b!3505707) (not b!3506334) (not b!3506531) (not d!1018735) (not b!3505723) (not b!3507161) (not b!3506528) (not d!1019129) (not b!3506530) (not d!1019967) (not b!3507237) (not b!3507165) (not bm!253165) (not b!3506215) (not b!3506265) (not b!3505580) (not d!1019621) (not d!1019121) (not b!3506878) b_and!249019 (not b!3507558) (not b!3506372) (not b!3506298) (not bm!253201) (not b!3507522) (not b!3506350) (not b!3505730) (not b!3506236) (not d!1019141) (not b!3507474) (not d!1019103) (not b!3506893) (not b!3507200) (not b!3504819) (not b!3505701) (not b_lambda!101961) (not b!3506181) (not b!3506351) (not b!3507096) (not b!3507135) (not b_lambda!101943) (not d!1019235) (not bm!253099) (not b!3506186) (not d!1019819) (not b!3507510) (not b!3506184) (not bm!253205) (not d!1018691) (not b!3506472) (not b_lambda!102057) (not bm!253167) b_and!249047 (not bm!253199) (not b!3505584) (not b!3506322) (not d!1019855) (not b!3505568) (not bm!253208) (not d!1018681) (not bm!253209) (not b_next!91241) (not b!3505787) (not b_next!91273) (not b!3505786) (not tb!194623) (not bm!253222) (not b!3506498) (not b!3506453) (not d!1019733) (not d!1019715) (not b!3506031) (not b!3505789) (not d!1019791) (not d!1019167) (not d!1019307) (not d!1019291) (not b!3507642) (not tb!194563) (not tb!194533) (not b!3506798) (not b!3506280) (not d!1019023) (not b!3506907) (not b!3506560) (not b_next!91263) (not d!1019237) (not d!1019925) (not d!1019061) (not b!3505589) (not b!3506801) (not b!3506061) (not b!3506266) (not b!3506800) (not d!1019259) (not d!1019717) (not d!1019843) (not d!1019211) (not b!3507581) (not b!3507201) (not d!1019289) (not b!3506564) (not b_next!91271) (not b!3507431) (not b!3506300) (not b!3507381) (not d!1019907) (not b!3507005) (not b!3506480) (not b!3507498) (not b!3507556) (not d!1019207) (not b!3506873) b_and!248925 (not b!3507559) (not b_next!91249) (not b!3507212) (not b!3506000) (not d!1019293) (not b!3506870) (not b_lambda!102007) (not d!1019861) (not b!3507582) (not d!1019823) (not b!3506033) (not d!1018771) (not b!3505587) (not b!3506129) (not b!3505612) (not b!3507436) (not b!3506571) (not tb!194453) (not d!1019047) (not b!3506330) (not bm!253048) (not d!1019177) (not b!3506590) (not d!1019533) (not d!1019193) (not d!1018899) (not d!1018939) (not d!1018689) (not b!3505777) (not b!3506341) (not d!1019509) (not b!3507534) (not bm!253097) (not b!3507100) (not b!3507564) (not d!1018751) (not d!1018783) (not d!1018959) (not d!1018931) (not d!1019239) (not b!3506204) (not d!1018937) (not d!1019137) (not d!1019021) (not b_lambda!101947) (not b!3506059) (not b!3506450) (not d!1019841) (not b!3507337) (not b!3506563) (not d!1019143) (not d!1018755) (not b_lambda!102065) (not b!3507535) (not b!3506291) (not b!3507122) (not tb!194573) (not b!3506894) (not b_lambda!101945) (not b!3507284) (not b!3506076) (not b!3506299) (not d!1019921) (not bm!253094) (not b!3506556) (not b!3507377) (not bm!253147) (not d!1019581) (not bm!253145) (not d!1018933) (not b!3506568) (not b!3506296) (not b!3507523) (not d!1018733) (not b!3506273) (not d!1018909) (not b!3507621) (not b_next!91245) (not b_lambda!102055) (not b!3507113) (not d!1019523) (not b!3506390) (not d!1018997) (not b!3507199) (not d!1019519) (not b!3506501) (not bm!253101) (not b!3507528) (not b!3507282) (not b!3506943) (not b!3506572) (not b!3507305) (not d!1019577) (not b!3507629) (not d!1019985) (not tb!194543) (not b!3506548) (not b!3507167) (not bm!253180) (not b!3506471) (not d!1019319) (not b!3507628) (not d!1019585) (not d!1019313) (not d!1019779) (not d!1018761) (not d!1019045) b_and!249021 (not b!3505939) (not d!1018697) (not d!1019093) (not b!3506920) (not b!3506559) (not b!3507281) (not d!1019799) (not b_lambda!101959) (not d!1019283) (not b!3505698) (not d!1019223) (not d!1019317) (not b!3505940) (not d!1019245) (not bm!253049) (not b!3507076) (not d!1019923) (not bm!253127) (not d!1019643) (not b!3505801) (not d!1019757) (not d!1018793) (not d!1019749) (not b!3505721) (not b!3505704) (not b!3507192) (not b!3507380) (not b!3507451) (not b!3506144) (not b!3507497) b_and!249017 b_and!249049 (not b!3506443) (not d!1018971) (not b!3506302) (not b!3506405) (not d!1018749) (not d!1019915) (not bm!253204) (not d!1019215) (not b!3506551) (not b!3506391) (not b!3506408) (not d!1019675) (not b!3507114) (not b!3507226) (not b!3505606) (not d!1019277) (not d!1019305) (not b!3507641) (not bm!253200) (not b!3507590) (not d!1018871) (not b_lambda!101989) (not d!1019303) (not b!3507232) (not d!1019685) (not b!3506078) (not b!3506038) (not d!1018731) (not b!3507221) (not b!3505726) (not b!3505695) (not b!3505574) (not d!1019133) (not b!3507587) (not d!1018759) (not b!3506275) (not b!3507525) (not b!3506911) (not b_lambda!102043) (not b!3506442) (not d!1019939) (not d!1019639) (not d!1019625) (not b_lambda!102053) (not b_lambda!102033) (not b_lambda!101957) (not b!3505605) (not b!3506375) (not d!1019527) (not b!3506356) (not b!3507598) (not b!3506395) (not b!3507280) (not b!3506581) (not d!1019255) (not b!3506547) (not b!3507624) (not bm!253223) (not bm!253153) (not b!3506006) (not b!3507288) (not bm!253193) (not d!1018797) (not b!3506507) (not b!3507224) (not bm!253120) (not d!1019971) (not b!3507001) (not b!3505756) (not b!3505578) (not d!1019569) (not bm!253146) (not tb!194443) (not d!1018807) (not b!3507600) (not b!3505938) (not d!1019565) (not b!3506989) (not d!1019251) (not b!3506386) (not d!1019057) (not bm!253139) (not d!1019247) (not b!3505676) (not b!3506469) (not b!3506540) (not b!3507243) (not b!3506897) (not b!3507562) (not b!3507475) (not b!3506328) b_and!248927 (not b!3506039) (not bm!253044) (not d!1019101) (not b!3505719) (not b!3506137) (not d!1019281) (not b!3506389) (not b!3505607) (not b!3506146) (not bm!253096) (not b!3506331) (not b!3507625) (not bm!253166) (not b!3505996) (not b!3507338) (not b!3506588) (not b!3505713) (not b!3507644) (not b!3505582) (not b!3506543) (not b_lambda!102045) (not b_next!91251) tp_is_empty!17605 (not d!1019125) (not b!3506579) (not b_lambda!101949) (not b!3504742) (not d!1018985) (not b!3507215) (not b!3507603) (not bm!253121) (not d!1019067) (not b!3506854) (not b!3506437) (not bm!253100) (not b!3507248) (not b!3506037) (not b!3505998) (not d!1018785) (not b!3505794) (not b!3505712) (not b!3506295) (not b!3505566) (not bm!253152) (not b!3506457) (not d!1018953) (not d!1019653) (not b!3507075) (not b!3506900) (not b!3506955) (not b!3506851) (not b!3505677) (not b!3507258) (not b!3507126) (not b!3506852) (not b!3506567) (not tb!194511) (not d!1018693) (not b!3505717) (not b!3506294) (not b!3507398) (not b!3506584) (not b!3506264) (not d!1019041) (not b_lambda!101955) (not b!3507645) (not b!3507619) (not b!3507225) (not b!3506986) (not b!3506474) (not b!3506401) (not b!3507193) (not b!3507620) (not b!3506323) (not d!1019213) (not b!3506286) (not bm!253168) (not b!3506500) (not bm!253108) (not b!3506337) (not b!3507615) (not d!1019109) (not d!1019257) (not b!3505992) (not d!1019087) (not b!3507235) (not b!3506496) (not b!3506377) (not bm!253052) (not d!1019927) (not b!3507336) (not d!1019837) (not d!1019641) (not d!1019163) (not d!1019149) (not b!3506481) (not bm!253179) (not d!1019559) (not d!1019287) b_and!248931 (not b!3506545) (not b!3507468) (not b!3507516) (not b!3505761) (not b!3506242) (not b!3507646) (not d!1019309) (not b_lambda!102061) (not b!3505569) (not d!1019789) (not b!3506320) (not b!3506917) (not b!3506478) (not d!1019249) (not b!3507006) (not d!1019123) (not b!3506523) (not b!3506578) (not b!3506317) (not d!1019145) (not b!3505705) (not b!3505609) (not b!3506524) (not b!3506511) (not d!1019153) (not b!3506848) (not b!3505675) (not b!3506287) (not b!3507442) (not b!3505766) (not b!3506141) (not b!3507124) (not b!3506467) (not b!3506355) (not b!3507241) (not d!1019957) (not bm!253163) (not b!3506587) (not bs!564219) (not d!1018869) (not b!3507623) (not d!1019135) (not d!1019179) (not b!3507640) (not d!1018891) (not b!3507112) (not b!3507343) (not d!1019113) (not d!1019311) (not b!3506554) (not d!1019181) (not b!3506576) (not b!3506913) (not b!3506304) (not b!3506550) (not b!3507515) (not d!1019557) (not b!3507289) (not b!3506494) (not b!3507399) (not b!3506957) (not d!1019069) (not b!3507527) (not d!1019165) (not b!3507526) (not bm!253138) (not d!1019701) (not d!1019229) (not b!3505661) (not b!3506353) (not d!1019535) (not d!1019105) (not b!3507213) (not b!3506288) (not d!1019813) (not d!1019043) (not b!3506185) (not d!1019095) (not d!1019053) (not bs!564218) (not d!1019579) (not d!1018999) (not b_lambda!101953) (not d!1019619) b_and!248933 (not b!3506874) (not b_next!91267) (not b_lambda!102003) (not d!1019655) (not d!1018745) (not b!3507287) (not d!1018811) (not b!3505706) (not b!3507496) (not d!1019787) (not b!3507560) (not b!3506245) (not b!3507184) (not bm!253041) (not d!1019795) (not bm!253140) (not b!3506035) (not b!3506895) (not bm!253025) (not d!1019185) (not d!1019225) (not d!1019241) (not b_lambda!102051) (not d!1019199) (not d!1018757) (not d!1018911) (not b!3506502) b_and!249045 (not b_next!91275) (not b!3505763) (not d!1019191) (not b!3506553) (not b!3507599) (not b!3507246) (not bm!253141) (not bm!253175) (not b!3507508) (not d!1019561) (not b!3506555) (not b!3506991) (not b!3506042) (not d!1019965) (not d!1018915) (not b!3506475) (not b!3506552) (not b!3506959) (not b!3506914) (not d!1018935) (not b!3506357) (not b!3506297) (not d!1019243) (not b!3506002) (not b!3505788) (not b!3506007) (not b!3506079) (not bm!253095) (not b_next!91265) (not b!3506420) (not b!3507553) (not d!1019197) (not d!1019203) (not bm!253134) (not b!3507565) (not b!3506271) (not b!3507551) (not d!1018683) (not d!1019227) (not b!3506436) (not d!1019777) (not b!3507596) (not b!3507137) (not b!3507209) (not b!3507285) (not b!3505759) (not b!3507509) (not b!3506332) (not b!3507396) (not d!1019627) (not b!3505790) (not d!1019089) (not d!1019821) (not b!3507502) (not b!3507586) (not d!1019065) (not b!3507604) (not b!3506575) (not d!1019805) (not d!1019853) (not b!3506999) (not b!3506376) (not bm!253190) (not d!1019587) (not b!3507517) (not b!3505785) (not b!3507127) (not d!1018763) (not b!3506399) (not b!3506301) (not b!3507367) (not d!1019107) (not b!3506267) (not bm!253047) (not b!3506274) (not b!3507044) (not d!1019077) (not b!3507163) (not d!1018809) (not b_lambda!101999) (not b!3507591) (not bm!253177) (not d!1019803) (not b_lambda!102059) (not d!1019279) (not b!3506034) (not b!3506403) (not b!3505791) (not b!3506529) (not b_lambda!101991) (not d!1019155) (not b!3504810) (not b!3507097) (not b!3506263) (not b!3506504) (not b_lambda!102049) (not b!3505779) (not b!3507567) (not b!3506836) (not b!3506143) (not b!3507583) (not b!3507552) (not d!1019551) b_and!249051 (not b!3506387) (not d!1018769) (not b!3507078) (not b!3507008) (not b!3506305) (not tb!194553) (not bm!253198) (not b_next!91247) (not b!3507430) (not d!1019161))
(check-sat b_and!249015 (not b_next!91261) b_and!249019 (not b_next!91263) (not b_next!91245) b_and!249021 b_and!248927 (not b_next!91251) b_and!248931 b_and!248933 (not b_next!91265) (not b_next!91243) (not b_next!91269) b_and!249023 b_and!248929 b_and!249047 (not b_next!91241) (not b_next!91273) (not b_next!91271) b_and!248925 (not b_next!91249) b_and!249017 b_and!249049 (not b_next!91267) b_and!249045 (not b_next!91275) b_and!249051 (not b_next!91247))
