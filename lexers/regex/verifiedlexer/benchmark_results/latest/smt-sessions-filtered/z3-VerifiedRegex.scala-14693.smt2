; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757672 () Bool)

(assert start!757672)

(declare-fun b!8046519 () Bool)

(declare-fun b_free!136447 () Bool)

(declare-fun b_next!137237 () Bool)

(assert (=> b!8046519 (= b_free!136447 (not b_next!137237))))

(declare-fun tp!2412167 () Bool)

(declare-fun b_and!354883 () Bool)

(assert (=> b!8046519 (= tp!2412167 b_and!354883)))

(declare-fun b_free!136449 () Bool)

(declare-fun b_next!137239 () Bool)

(assert (=> b!8046519 (= b_free!136449 (not b_next!137239))))

(declare-fun tp!2412169 () Bool)

(declare-fun b_and!354885 () Bool)

(assert (=> b!8046519 (= tp!2412169 b_and!354885)))

(declare-fun b!8046515 () Bool)

(declare-fun e!4740592 () Bool)

(declare-datatypes ((String!85211 0))(
  ( (String!85212 (value!292836 String)) )
))
(declare-datatypes ((List!75482 0))(
  ( (Nil!75356) (Cons!75356 (h!81804 String!85211) (t!391252 List!75482)) )
))
(declare-fun acc!573 () List!75482)

(declare-fun tp!2412170 () Bool)

(declare-fun inv!97085 (String!85211) Bool)

(assert (=> b!8046515 (= e!4740592 (and (inv!97085 (h!81804 acc!573)) tp!2412170))))

(declare-fun b!8046516 () Bool)

(declare-fun e!4740596 () Bool)

(declare-fun newAcc!87 () List!75482)

(declare-fun tp!2412168 () Bool)

(assert (=> b!8046516 (= e!4740596 (and (inv!97085 (h!81804 newAcc!87)) tp!2412168))))

(declare-fun b!8046517 () Bool)

(declare-fun e!4740593 () Bool)

(declare-datatypes ((List!75483 0))(
  ( (Nil!75357) (Cons!75357 (h!81805 (_ BitVec 16)) (t!391253 List!75483)) )
))
(declare-datatypes ((TokenValue!9086 0))(
  ( (FloatLiteralValue!18172 (text!64047 List!75483)) (TokenValueExt!9085 (__x!35453 Int)) (Broken!45430 (value!292837 List!75483)) (Object!9211) (End!9086) (Def!9086) (Underscore!9086) (Match!9086) (Else!9086) (Error!9086) (Case!9086) (If!9086) (Extends!9086) (Abstract!9086) (Class!9086) (Val!9086) (DelimiterValue!18172 (del!9146 List!75483)) (KeywordValue!9092 (value!292838 List!75483)) (CommentValue!18172 (value!292839 List!75483)) (WhitespaceValue!18172 (value!292840 List!75483)) (IndentationValue!9086 (value!292841 List!75483)) (String!85213) (Int32!9086) (Broken!45431 (value!292842 List!75483)) (Boolean!9087) (Unit!171145) (OperatorValue!9089 (op!9146 List!75483)) (IdentifierValue!18172 (value!292843 List!75483)) (IdentifierValue!18173 (value!292844 List!75483)) (WhitespaceValue!18173 (value!292845 List!75483)) (True!18172) (False!18172) (Broken!45432 (value!292846 List!75483)) (Broken!45433 (value!292847 List!75483)) (True!18173) (RightBrace!9086) (RightBracket!9086) (Colon!9086) (Null!9086) (Comma!9086) (LeftBracket!9086) (False!18173) (LeftBrace!9086) (ImaginaryLiteralValue!9086 (text!64048 List!75483)) (StringLiteralValue!27258 (value!292848 List!75483)) (EOFValue!9086 (value!292849 List!75483)) (IdentValue!9086 (value!292850 List!75483)) (DelimiterValue!18173 (value!292851 List!75483)) (DedentValue!9086 (value!292852 List!75483)) (NewLineValue!9086 (value!292853 List!75483)) (IntegerValue!27258 (value!292854 (_ BitVec 32)) (text!64049 List!75483)) (IntegerValue!27259 (value!292855 Int) (text!64050 List!75483)) (Times!9086) (Or!9086) (Equal!9086) (Minus!9086) (Broken!45434 (value!292856 List!75483)) (And!9086) (Div!9086) (LessEqual!9086) (Mod!9086) (Concat!30923) (Not!9086) (Plus!9086) (SpaceValue!9086 (value!292857 List!75483)) (IntegerValue!27260 (value!292858 Int) (text!64051 List!75483)) (StringLiteralValue!27259 (text!64052 List!75483)) (FloatLiteralValue!18173 (text!64053 List!75483)) (BytesLiteralValue!9086 (value!292859 List!75483)) (CommentValue!18173 (value!292860 List!75483)) (StringLiteralValue!27260 (value!292861 List!75483)) (ErrorTokenValue!9086 (msg!9147 List!75483)) )
))
(declare-datatypes ((C!44012 0))(
  ( (C!44013 (val!32782 Int)) )
))
(declare-datatypes ((Regex!21837 0))(
  ( (ElementMatch!21837 (c!1475445 C!44012)) (Concat!30924 (regOne!44186 Regex!21837) (regTwo!44186 Regex!21837)) (EmptyExpr!21837) (Star!21837 (reg!22166 Regex!21837)) (EmptyLang!21837) (Union!21837 (regOne!44187 Regex!21837) (regTwo!44187 Regex!21837)) )
))
(declare-datatypes ((List!75484 0))(
  ( (Nil!75358) (Cons!75358 (h!81806 C!44012) (t!391254 List!75484)) )
))
(declare-datatypes ((IArray!32129 0))(
  ( (IArray!32130 (innerList!16122 List!75484)) )
))
(declare-datatypes ((Conc!16034 0))(
  ( (Node!16034 (left!57395 Conc!16034) (right!57725 Conc!16034) (csize!32298 Int) (cheight!16245 Int)) (Leaf!30728 (xs!19432 IArray!32129) (csize!32299 Int)) (Empty!16034) )
))
(declare-datatypes ((BalanceConc!31024 0))(
  ( (BalanceConc!31025 (c!1475446 Conc!16034)) )
))
(declare-datatypes ((TokenValueInjection!17480 0))(
  ( (TokenValueInjection!17481 (toValue!11849 Int) (toChars!11708 Int)) )
))
(declare-datatypes ((Rule!17332 0))(
  ( (Rule!17333 (regex!8766 Regex!21837) (tag!9630 String!85211) (isSeparator!8766 Bool) (transformation!8766 TokenValueInjection!17480)) )
))
(declare-datatypes ((List!75485 0))(
  ( (Nil!75359) (Cons!75359 (h!81807 Rule!17332) (t!391255 List!75485)) )
))
(declare-fun rules!4081 () List!75485)

(declare-fun ListPrimitiveSize!536 (List!75485) Int)

(assert (=> b!8046517 (= e!4740593 (< (ListPrimitiveSize!536 rules!4081) 0))))

(declare-fun b!8046518 () Bool)

(declare-fun res!3180853 () Bool)

(assert (=> b!8046518 (=> (not res!3180853) (not e!4740593))))

(declare-fun subseq!917 (List!75482 List!75482) Bool)

(assert (=> b!8046518 (= res!3180853 (subseq!917 newAcc!87 acc!573))))

(declare-fun e!4740590 () Bool)

(assert (=> b!8046519 (= e!4740590 (and tp!2412167 tp!2412169))))

(declare-fun e!4740589 () Bool)

(declare-fun tp!2412171 () Bool)

(declare-fun b!8046514 () Bool)

(declare-fun inv!97087 (TokenValueInjection!17480) Bool)

(assert (=> b!8046514 (= e!4740589 (and tp!2412171 (inv!97085 (tag!9630 (h!81807 rules!4081))) (inv!97087 (transformation!8766 (h!81807 rules!4081))) e!4740590))))

(declare-fun res!3180852 () Bool)

(assert (=> start!757672 (=> (not res!3180852) (not e!4740593))))

(declare-datatypes ((LexerInterface!8356 0))(
  ( (LexerInterfaceExt!8353 (__x!35454 Int)) (Lexer!8354) )
))
(declare-fun thiss!26941 () LexerInterface!8356)

(get-info :version)

(assert (=> start!757672 (= res!3180852 ((_ is Lexer!8354) thiss!26941))))

(assert (=> start!757672 e!4740593))

(assert (=> start!757672 true))

(assert (=> start!757672 e!4740596))

(assert (=> start!757672 e!4740592))

(declare-fun e!4740591 () Bool)

(assert (=> start!757672 e!4740591))

(declare-fun b!8046520 () Bool)

(declare-fun res!3180851 () Bool)

(assert (=> b!8046520 (=> (not res!3180851) (not e!4740593))))

(declare-fun noDuplicateTag!3344 (LexerInterface!8356 List!75485 List!75482) Bool)

(assert (=> b!8046520 (= res!3180851 (noDuplicateTag!3344 thiss!26941 rules!4081 acc!573))))

(declare-fun b!8046521 () Bool)

(declare-fun tp!2412166 () Bool)

(assert (=> b!8046521 (= e!4740591 (and e!4740589 tp!2412166))))

(assert (= (and start!757672 res!3180852) b!8046518))

(assert (= (and b!8046518 res!3180853) b!8046520))

(assert (= (and b!8046520 res!3180851) b!8046517))

(assert (= (and start!757672 ((_ is Cons!75356) newAcc!87)) b!8046516))

(assert (= (and start!757672 ((_ is Cons!75356) acc!573)) b!8046515))

(assert (= b!8046514 b!8046519))

(assert (= b!8046521 b!8046514))

(assert (= (and start!757672 ((_ is Cons!75359) rules!4081)) b!8046521))

(declare-fun m!8398636 () Bool)

(assert (=> b!8046518 m!8398636))

(declare-fun m!8398638 () Bool)

(assert (=> b!8046517 m!8398638))

(declare-fun m!8398640 () Bool)

(assert (=> b!8046514 m!8398640))

(declare-fun m!8398642 () Bool)

(assert (=> b!8046514 m!8398642))

(declare-fun m!8398644 () Bool)

(assert (=> b!8046520 m!8398644))

(declare-fun m!8398646 () Bool)

(assert (=> b!8046515 m!8398646))

(declare-fun m!8398648 () Bool)

(assert (=> b!8046516 m!8398648))

(check-sat (not b!8046514) (not b!8046518) (not b!8046517) (not b!8046520) (not b_next!137239) (not b!8046521) (not b_next!137237) (not b!8046515) b_and!354885 (not b!8046516) b_and!354883)
(check-sat b_and!354885 b_and!354883 (not b_next!137239) (not b_next!137237))
(get-model)

(declare-fun d!2396596 () Bool)

(assert (=> d!2396596 (= (inv!97085 (tag!9630 (h!81807 rules!4081))) (= (mod (str.len (value!292836 (tag!9630 (h!81807 rules!4081)))) 2) 0))))

(assert (=> b!8046514 d!2396596))

(declare-fun d!2396598 () Bool)

(declare-fun res!3180856 () Bool)

(declare-fun e!4740600 () Bool)

(assert (=> d!2396598 (=> (not res!3180856) (not e!4740600))))

(declare-fun semiInverseModEq!3889 (Int Int) Bool)

(assert (=> d!2396598 (= res!3180856 (semiInverseModEq!3889 (toChars!11708 (transformation!8766 (h!81807 rules!4081))) (toValue!11849 (transformation!8766 (h!81807 rules!4081)))))))

(assert (=> d!2396598 (= (inv!97087 (transformation!8766 (h!81807 rules!4081))) e!4740600)))

(declare-fun b!8046524 () Bool)

(declare-fun equivClasses!3704 (Int Int) Bool)

(assert (=> b!8046524 (= e!4740600 (equivClasses!3704 (toChars!11708 (transformation!8766 (h!81807 rules!4081))) (toValue!11849 (transformation!8766 (h!81807 rules!4081)))))))

(assert (= (and d!2396598 res!3180856) b!8046524))

(declare-fun m!8398650 () Bool)

(assert (=> d!2396598 m!8398650))

(declare-fun m!8398652 () Bool)

(assert (=> b!8046524 m!8398652))

(assert (=> b!8046514 d!2396598))

(declare-fun d!2396600 () Bool)

(declare-fun res!3180861 () Bool)

(declare-fun e!4740605 () Bool)

(assert (=> d!2396600 (=> res!3180861 e!4740605)))

(assert (=> d!2396600 (= res!3180861 ((_ is Nil!75359) rules!4081))))

(assert (=> d!2396600 (= (noDuplicateTag!3344 thiss!26941 rules!4081 acc!573) e!4740605)))

(declare-fun b!8046529 () Bool)

(declare-fun e!4740606 () Bool)

(assert (=> b!8046529 (= e!4740605 e!4740606)))

(declare-fun res!3180862 () Bool)

(assert (=> b!8046529 (=> (not res!3180862) (not e!4740606))))

(declare-fun contains!21065 (List!75482 String!85211) Bool)

(assert (=> b!8046529 (= res!3180862 (not (contains!21065 acc!573 (tag!9630 (h!81807 rules!4081)))))))

(declare-fun b!8046530 () Bool)

(assert (=> b!8046530 (= e!4740606 (noDuplicateTag!3344 thiss!26941 (t!391255 rules!4081) (Cons!75356 (tag!9630 (h!81807 rules!4081)) acc!573)))))

(assert (= (and d!2396600 (not res!3180861)) b!8046529))

(assert (= (and b!8046529 res!3180862) b!8046530))

(declare-fun m!8398654 () Bool)

(assert (=> b!8046529 m!8398654))

(declare-fun m!8398656 () Bool)

(assert (=> b!8046530 m!8398656))

(assert (=> b!8046520 d!2396600))

(declare-fun d!2396602 () Bool)

(assert (=> d!2396602 (= (inv!97085 (h!81804 acc!573)) (= (mod (str.len (value!292836 (h!81804 acc!573))) 2) 0))))

(assert (=> b!8046515 d!2396602))

(declare-fun d!2396604 () Bool)

(assert (=> d!2396604 (= (inv!97085 (h!81804 newAcc!87)) (= (mod (str.len (value!292836 (h!81804 newAcc!87))) 2) 0))))

(assert (=> b!8046516 d!2396604))

(declare-fun d!2396606 () Bool)

(declare-fun lt!2722825 () Int)

(assert (=> d!2396606 (>= lt!2722825 0)))

(declare-fun e!4740609 () Int)

(assert (=> d!2396606 (= lt!2722825 e!4740609)))

(declare-fun c!1475449 () Bool)

(assert (=> d!2396606 (= c!1475449 ((_ is Nil!75359) rules!4081))))

(assert (=> d!2396606 (= (ListPrimitiveSize!536 rules!4081) lt!2722825)))

(declare-fun b!8046535 () Bool)

(assert (=> b!8046535 (= e!4740609 0)))

(declare-fun b!8046536 () Bool)

(assert (=> b!8046536 (= e!4740609 (+ 1 (ListPrimitiveSize!536 (t!391255 rules!4081))))))

(assert (= (and d!2396606 c!1475449) b!8046535))

(assert (= (and d!2396606 (not c!1475449)) b!8046536))

(declare-fun m!8398658 () Bool)

(assert (=> b!8046536 m!8398658))

(assert (=> b!8046517 d!2396606))

(declare-fun b!8046548 () Bool)

(declare-fun e!4740621 () Bool)

(assert (=> b!8046548 (= e!4740621 (subseq!917 newAcc!87 (t!391252 acc!573)))))

(declare-fun b!8046546 () Bool)

(declare-fun e!4740620 () Bool)

(assert (=> b!8046546 (= e!4740620 e!4740621)))

(declare-fun res!3180872 () Bool)

(assert (=> b!8046546 (=> res!3180872 e!4740621)))

(declare-fun e!4740619 () Bool)

(assert (=> b!8046546 (= res!3180872 e!4740619)))

(declare-fun res!3180874 () Bool)

(assert (=> b!8046546 (=> (not res!3180874) (not e!4740619))))

(assert (=> b!8046546 (= res!3180874 (= (h!81804 newAcc!87) (h!81804 acc!573)))))

(declare-fun b!8046547 () Bool)

(assert (=> b!8046547 (= e!4740619 (subseq!917 (t!391252 newAcc!87) (t!391252 acc!573)))))

(declare-fun d!2396608 () Bool)

(declare-fun res!3180871 () Bool)

(declare-fun e!4740618 () Bool)

(assert (=> d!2396608 (=> res!3180871 e!4740618)))

(assert (=> d!2396608 (= res!3180871 ((_ is Nil!75356) newAcc!87))))

(assert (=> d!2396608 (= (subseq!917 newAcc!87 acc!573) e!4740618)))

(declare-fun b!8046545 () Bool)

(assert (=> b!8046545 (= e!4740618 e!4740620)))

(declare-fun res!3180873 () Bool)

(assert (=> b!8046545 (=> (not res!3180873) (not e!4740620))))

(assert (=> b!8046545 (= res!3180873 ((_ is Cons!75356) acc!573))))

(assert (= (and d!2396608 (not res!3180871)) b!8046545))

(assert (= (and b!8046545 res!3180873) b!8046546))

(assert (= (and b!8046546 res!3180874) b!8046547))

(assert (= (and b!8046546 (not res!3180872)) b!8046548))

(declare-fun m!8398660 () Bool)

(assert (=> b!8046548 m!8398660))

(declare-fun m!8398662 () Bool)

(assert (=> b!8046547 m!8398662))

(assert (=> b!8046518 d!2396608))

(declare-fun b!8046559 () Bool)

(declare-fun e!4740624 () Bool)

(declare-fun tp_is_empty!54631 () Bool)

(assert (=> b!8046559 (= e!4740624 tp_is_empty!54631)))

(declare-fun b!8046560 () Bool)

(declare-fun tp!2412183 () Bool)

(declare-fun tp!2412184 () Bool)

(assert (=> b!8046560 (= e!4740624 (and tp!2412183 tp!2412184))))

(assert (=> b!8046514 (= tp!2412171 e!4740624)))

(declare-fun b!8046561 () Bool)

(declare-fun tp!2412185 () Bool)

(assert (=> b!8046561 (= e!4740624 tp!2412185)))

(declare-fun b!8046562 () Bool)

(declare-fun tp!2412186 () Bool)

(declare-fun tp!2412182 () Bool)

(assert (=> b!8046562 (= e!4740624 (and tp!2412186 tp!2412182))))

(assert (= (and b!8046514 ((_ is ElementMatch!21837) (regex!8766 (h!81807 rules!4081)))) b!8046559))

(assert (= (and b!8046514 ((_ is Concat!30924) (regex!8766 (h!81807 rules!4081)))) b!8046560))

(assert (= (and b!8046514 ((_ is Star!21837) (regex!8766 (h!81807 rules!4081)))) b!8046561))

(assert (= (and b!8046514 ((_ is Union!21837) (regex!8766 (h!81807 rules!4081)))) b!8046562))

(declare-fun b!8046567 () Bool)

(declare-fun e!4740629 () Bool)

(declare-fun tp!2412189 () Bool)

(assert (=> b!8046567 (= e!4740629 (and (inv!97085 (h!81804 (t!391252 acc!573))) tp!2412189))))

(assert (=> b!8046515 (= tp!2412170 e!4740629)))

(assert (= (and b!8046515 ((_ is Cons!75356) (t!391252 acc!573))) b!8046567))

(declare-fun m!8398664 () Bool)

(assert (=> b!8046567 m!8398664))

(declare-fun b!8046568 () Bool)

(declare-fun e!4740631 () Bool)

(declare-fun tp!2412190 () Bool)

(assert (=> b!8046568 (= e!4740631 (and (inv!97085 (h!81804 (t!391252 newAcc!87))) tp!2412190))))

(assert (=> b!8046516 (= tp!2412168 e!4740631)))

(assert (= (and b!8046516 ((_ is Cons!75356) (t!391252 newAcc!87))) b!8046568))

(declare-fun m!8398666 () Bool)

(assert (=> b!8046568 m!8398666))

(declare-fun b!8046579 () Bool)

(declare-fun b_free!136451 () Bool)

(declare-fun b_next!137241 () Bool)

(assert (=> b!8046579 (= b_free!136451 (not b_next!137241))))

(declare-fun tp!2412201 () Bool)

(declare-fun b_and!354887 () Bool)

(assert (=> b!8046579 (= tp!2412201 b_and!354887)))

(declare-fun b_free!136453 () Bool)

(declare-fun b_next!137243 () Bool)

(assert (=> b!8046579 (= b_free!136453 (not b_next!137243))))

(declare-fun tp!2412202 () Bool)

(declare-fun b_and!354889 () Bool)

(assert (=> b!8046579 (= tp!2412202 b_and!354889)))

(declare-fun e!4740643 () Bool)

(assert (=> b!8046579 (= e!4740643 (and tp!2412201 tp!2412202))))

(declare-fun e!4740644 () Bool)

(declare-fun tp!2412199 () Bool)

(declare-fun b!8046578 () Bool)

(assert (=> b!8046578 (= e!4740644 (and tp!2412199 (inv!97085 (tag!9630 (h!81807 (t!391255 rules!4081)))) (inv!97087 (transformation!8766 (h!81807 (t!391255 rules!4081)))) e!4740643))))

(declare-fun b!8046577 () Bool)

(declare-fun e!4740642 () Bool)

(declare-fun tp!2412200 () Bool)

(assert (=> b!8046577 (= e!4740642 (and e!4740644 tp!2412200))))

(assert (=> b!8046521 (= tp!2412166 e!4740642)))

(assert (= b!8046578 b!8046579))

(assert (= b!8046577 b!8046578))

(assert (= (and b!8046521 ((_ is Cons!75359) (t!391255 rules!4081))) b!8046577))

(declare-fun m!8398668 () Bool)

(assert (=> b!8046578 m!8398668))

(declare-fun m!8398670 () Bool)

(assert (=> b!8046578 m!8398670))

(check-sat (not b!8046524) (not b!8046578) (not b!8046567) b_and!354887 (not b!8046577) (not b!8046562) b_and!354883 (not b!8046530) (not b!8046536) (not b!8046568) b_and!354885 (not d!2396598) (not b!8046547) (not b_next!137243) tp_is_empty!54631 (not b!8046561) (not b!8046560) (not b!8046529) (not b!8046548) (not b_next!137239) b_and!354889 (not b_next!137237) (not b_next!137241))
(check-sat b_and!354887 (not b_next!137243) b_and!354883 b_and!354885 (not b_next!137239) b_and!354889 (not b_next!137237) (not b_next!137241))
