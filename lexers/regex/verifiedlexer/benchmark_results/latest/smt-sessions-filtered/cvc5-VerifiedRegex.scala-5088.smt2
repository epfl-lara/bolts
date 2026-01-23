; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!259916 () Bool)

(assert start!259916)

(declare-fun b!2672445 () Bool)

(declare-fun b_free!75245 () Bool)

(declare-fun b_next!75949 () Bool)

(assert (=> b!2672445 (= b_free!75245 (not b_next!75949))))

(declare-fun tp!845087 () Bool)

(declare-fun b_and!197373 () Bool)

(assert (=> b!2672445 (= tp!845087 b_and!197373)))

(declare-fun b_free!75247 () Bool)

(declare-fun b_next!75951 () Bool)

(assert (=> b!2672445 (= b_free!75247 (not b_next!75951))))

(declare-fun tp!845085 () Bool)

(declare-fun b_and!197375 () Bool)

(assert (=> b!2672445 (= tp!845085 b_and!197375)))

(declare-fun b!2672434 () Bool)

(declare-fun b_free!75249 () Bool)

(declare-fun b_next!75953 () Bool)

(assert (=> b!2672434 (= b_free!75249 (not b_next!75953))))

(declare-fun tp!845088 () Bool)

(declare-fun b_and!197377 () Bool)

(assert (=> b!2672434 (= tp!845088 b_and!197377)))

(declare-fun b_free!75251 () Bool)

(declare-fun b_next!75955 () Bool)

(assert (=> b!2672434 (= b_free!75251 (not b_next!75955))))

(declare-fun tp!845084 () Bool)

(declare-fun b_and!197379 () Bool)

(assert (=> b!2672434 (= tp!845084 b_and!197379)))

(declare-fun b!2672443 () Bool)

(declare-fun b_free!75253 () Bool)

(declare-fun b_next!75957 () Bool)

(assert (=> b!2672443 (= b_free!75253 (not b_next!75957))))

(declare-fun tp!845095 () Bool)

(declare-fun b_and!197381 () Bool)

(assert (=> b!2672443 (= tp!845095 b_and!197381)))

(declare-fun b_free!75255 () Bool)

(declare-fun b_next!75959 () Bool)

(assert (=> b!2672443 (= b_free!75255 (not b_next!75959))))

(declare-fun tp!845089 () Bool)

(declare-fun b_and!197383 () Bool)

(assert (=> b!2672443 (= tp!845089 b_and!197383)))

(declare-fun b!2672431 () Bool)

(declare-fun res!1123552 () Bool)

(declare-fun e!1684439 () Bool)

(assert (=> b!2672431 (=> (not res!1123552) (not e!1684439))))

(declare-datatypes ((List!30853 0))(
  ( (Nil!30753) (Cons!30753 (h!36173 (_ BitVec 16)) (t!223372 List!30853)) )
))
(declare-datatypes ((TokenValue!4918 0))(
  ( (FloatLiteralValue!9836 (text!34871 List!30853)) (TokenValueExt!4917 (__x!19669 Int)) (Broken!24590 (value!151416 List!30853)) (Object!5017) (End!4918) (Def!4918) (Underscore!4918) (Match!4918) (Else!4918) (Error!4918) (Case!4918) (If!4918) (Extends!4918) (Abstract!4918) (Class!4918) (Val!4918) (DelimiterValue!9836 (del!4978 List!30853)) (KeywordValue!4924 (value!151417 List!30853)) (CommentValue!9836 (value!151418 List!30853)) (WhitespaceValue!9836 (value!151419 List!30853)) (IndentationValue!4918 (value!151420 List!30853)) (String!34475) (Int32!4918) (Broken!24591 (value!151421 List!30853)) (Boolean!4919) (Unit!44967) (OperatorValue!4921 (op!4978 List!30853)) (IdentifierValue!9836 (value!151422 List!30853)) (IdentifierValue!9837 (value!151423 List!30853)) (WhitespaceValue!9837 (value!151424 List!30853)) (True!9836) (False!9836) (Broken!24592 (value!151425 List!30853)) (Broken!24593 (value!151426 List!30853)) (True!9837) (RightBrace!4918) (RightBracket!4918) (Colon!4918) (Null!4918) (Comma!4918) (LeftBracket!4918) (False!9837) (LeftBrace!4918) (ImaginaryLiteralValue!4918 (text!34872 List!30853)) (StringLiteralValue!14754 (value!151427 List!30853)) (EOFValue!4918 (value!151428 List!30853)) (IdentValue!4918 (value!151429 List!30853)) (DelimiterValue!9837 (value!151430 List!30853)) (DedentValue!4918 (value!151431 List!30853)) (NewLineValue!4918 (value!151432 List!30853)) (IntegerValue!14754 (value!151433 (_ BitVec 32)) (text!34873 List!30853)) (IntegerValue!14755 (value!151434 Int) (text!34874 List!30853)) (Times!4918) (Or!4918) (Equal!4918) (Minus!4918) (Broken!24594 (value!151435 List!30853)) (And!4918) (Div!4918) (LessEqual!4918) (Mod!4918) (Concat!12758) (Not!4918) (Plus!4918) (SpaceValue!4918 (value!151436 List!30853)) (IntegerValue!14756 (value!151437 Int) (text!34875 List!30853)) (StringLiteralValue!14755 (text!34876 List!30853)) (FloatLiteralValue!9837 (text!34877 List!30853)) (BytesLiteralValue!4918 (value!151438 List!30853)) (CommentValue!9837 (value!151439 List!30853)) (StringLiteralValue!14756 (value!151440 List!30853)) (ErrorTokenValue!4918 (msg!4979 List!30853)) )
))
(declare-datatypes ((C!15838 0))(
  ( (C!15839 (val!9853 Int)) )
))
(declare-datatypes ((List!30854 0))(
  ( (Nil!30754) (Cons!30754 (h!36174 C!15838) (t!223373 List!30854)) )
))
(declare-datatypes ((IArray!19249 0))(
  ( (IArray!19250 (innerList!9682 List!30854)) )
))
(declare-datatypes ((Conc!9622 0))(
  ( (Node!9622 (left!23798 Conc!9622) (right!24128 Conc!9622) (csize!19474 Int) (cheight!9833 Int)) (Leaf!14711 (xs!12652 IArray!19249) (csize!19475 Int)) (Empty!9622) )
))
(declare-datatypes ((BalanceConc!18858 0))(
  ( (BalanceConc!18859 (c!430657 Conc!9622)) )
))
(declare-datatypes ((TokenValueInjection!9276 0))(
  ( (TokenValueInjection!9277 (toValue!6638 Int) (toChars!6497 Int)) )
))
(declare-datatypes ((Regex!7840 0))(
  ( (ElementMatch!7840 (c!430658 C!15838)) (Concat!12759 (regOne!16192 Regex!7840) (regTwo!16192 Regex!7840)) (EmptyExpr!7840) (Star!7840 (reg!8169 Regex!7840)) (EmptyLang!7840) (Union!7840 (regOne!16193 Regex!7840) (regTwo!16193 Regex!7840)) )
))
(declare-datatypes ((String!34476 0))(
  ( (String!34477 (value!151441 String)) )
))
(declare-datatypes ((Rule!9192 0))(
  ( (Rule!9193 (regex!4696 Regex!7840) (tag!5198 String!34476) (isSeparator!4696 Bool) (transformation!4696 TokenValueInjection!9276)) )
))
(declare-datatypes ((Token!8862 0))(
  ( (Token!8863 (value!151442 TokenValue!4918) (rule!7102 Rule!9192) (size!23768 Int) (originalCharacters!5462 List!30854)) )
))
(declare-fun separatorToken!152 () Token!8862)

(assert (=> b!2672431 (= res!1123552 (isSeparator!4696 (rule!7102 separatorToken!152)))))

(declare-fun b!2672432 () Bool)

(declare-fun res!1123556 () Bool)

(assert (=> b!2672432 (=> (not res!1123556) (not e!1684439))))

(declare-datatypes ((LexerInterface!4293 0))(
  ( (LexerInterfaceExt!4290 (__x!19670 Int)) (Lexer!4291) )
))
(declare-fun thiss!14116 () LexerInterface!4293)

(declare-datatypes ((List!30855 0))(
  ( (Nil!30755) (Cons!30755 (h!36175 Rule!9192) (t!223374 List!30855)) )
))
(declare-fun rules!1712 () List!30855)

(declare-datatypes ((List!30856 0))(
  ( (Nil!30756) (Cons!30756 (h!36176 Token!8862) (t!223375 List!30856)) )
))
(declare-fun l!4335 () List!30856)

(declare-fun rulesProduceEachTokenIndividuallyList!1515 (LexerInterface!4293 List!30855 List!30856) Bool)

(assert (=> b!2672432 (= res!1123556 (rulesProduceEachTokenIndividuallyList!1515 thiss!14116 rules!1712 l!4335))))

(declare-fun b!2672433 () Bool)

(declare-fun res!1123559 () Bool)

(assert (=> b!2672433 (=> (not res!1123559) (not e!1684439))))

(declare-fun rulesInvariant!3793 (LexerInterface!4293 List!30855) Bool)

(assert (=> b!2672433 (= res!1123559 (rulesInvariant!3793 thiss!14116 rules!1712))))

(declare-fun e!1684433 () Bool)

(assert (=> b!2672434 (= e!1684433 (and tp!845088 tp!845084))))

(declare-fun b!2672435 () Bool)

(declare-fun contains!5908 (List!30856 Token!8862) Bool)

(assert (=> b!2672435 (= e!1684439 (not (contains!5908 l!4335 (h!36176 l!4335))))))

(declare-fun b!2672436 () Bool)

(declare-fun tp!845092 () Bool)

(declare-fun e!1684434 () Bool)

(declare-fun e!1684440 () Bool)

(declare-fun inv!21 (TokenValue!4918) Bool)

(assert (=> b!2672436 (= e!1684440 (and (inv!21 (value!151442 separatorToken!152)) e!1684434 tp!845092))))

(declare-fun tp!845093 () Bool)

(declare-fun b!2672437 () Bool)

(declare-fun e!1684429 () Bool)

(declare-fun e!1684442 () Bool)

(declare-fun inv!41758 (String!34476) Bool)

(declare-fun inv!41761 (TokenValueInjection!9276) Bool)

(assert (=> b!2672437 (= e!1684442 (and tp!845093 (inv!41758 (tag!5198 (h!36175 rules!1712))) (inv!41761 (transformation!4696 (h!36175 rules!1712))) e!1684429))))

(declare-fun b!2672438 () Bool)

(declare-fun res!1123553 () Bool)

(assert (=> b!2672438 (=> (not res!1123553) (not e!1684439))))

(assert (=> b!2672438 (= res!1123553 (is-Cons!30756 l!4335))))

(declare-fun tp!845090 () Bool)

(declare-fun b!2672439 () Bool)

(assert (=> b!2672439 (= e!1684434 (and tp!845090 (inv!41758 (tag!5198 (rule!7102 separatorToken!152))) (inv!41761 (transformation!4696 (rule!7102 separatorToken!152))) e!1684433))))

(declare-fun b!2672440 () Bool)

(declare-fun res!1123554 () Bool)

(assert (=> b!2672440 (=> (not res!1123554) (not e!1684439))))

(declare-fun isEmpty!17584 (List!30855) Bool)

(assert (=> b!2672440 (= res!1123554 (not (isEmpty!17584 rules!1712)))))

(declare-fun e!1684437 () Bool)

(declare-fun b!2672441 () Bool)

(declare-fun tp!845091 () Bool)

(declare-fun e!1684432 () Bool)

(assert (=> b!2672441 (= e!1684437 (and tp!845091 (inv!41758 (tag!5198 (rule!7102 (h!36176 l!4335)))) (inv!41761 (transformation!4696 (rule!7102 (h!36176 l!4335)))) e!1684432))))

(declare-fun b!2672442 () Bool)

(declare-fun e!1684441 () Bool)

(declare-fun e!1684431 () Bool)

(declare-fun tp!845094 () Bool)

(declare-fun inv!41762 (Token!8862) Bool)

(assert (=> b!2672442 (= e!1684441 (and (inv!41762 (h!36176 l!4335)) e!1684431 tp!845094))))

(assert (=> b!2672443 (= e!1684429 (and tp!845095 tp!845089))))

(declare-fun b!2672444 () Bool)

(declare-fun res!1123557 () Bool)

(assert (=> b!2672444 (=> (not res!1123557) (not e!1684439))))

(declare-fun rulesProduceIndividualToken!2005 (LexerInterface!4293 List!30855 Token!8862) Bool)

(assert (=> b!2672444 (= res!1123557 (rulesProduceIndividualToken!2005 thiss!14116 rules!1712 separatorToken!152))))

(assert (=> b!2672445 (= e!1684432 (and tp!845087 tp!845085))))

(declare-fun b!2672446 () Bool)

(declare-fun tp!845083 () Bool)

(assert (=> b!2672446 (= e!1684431 (and (inv!21 (value!151442 (h!36176 l!4335))) e!1684437 tp!845083))))

(declare-fun res!1123560 () Bool)

(assert (=> start!259916 (=> (not res!1123560) (not e!1684439))))

(assert (=> start!259916 (= res!1123560 (is-Lexer!4291 thiss!14116))))

(assert (=> start!259916 e!1684439))

(assert (=> start!259916 true))

(declare-fun e!1684435 () Bool)

(assert (=> start!259916 e!1684435))

(assert (=> start!259916 e!1684441))

(assert (=> start!259916 (and (inv!41762 separatorToken!152) e!1684440)))

(declare-fun b!2672430 () Bool)

(declare-fun res!1123558 () Bool)

(assert (=> b!2672430 (=> (not res!1123558) (not e!1684439))))

(declare-fun lambda!99833 () Int)

(declare-fun forall!6511 (List!30856 Int) Bool)

(assert (=> b!2672430 (= res!1123558 (forall!6511 l!4335 lambda!99833))))

(declare-fun b!2672447 () Bool)

(declare-fun res!1123555 () Bool)

(assert (=> b!2672447 (=> (not res!1123555) (not e!1684439))))

(declare-fun sepAndNonSepRulesDisjointChars!1269 (List!30855 List!30855) Bool)

(assert (=> b!2672447 (= res!1123555 (sepAndNonSepRulesDisjointChars!1269 rules!1712 rules!1712))))

(declare-fun b!2672448 () Bool)

(declare-fun tp!845086 () Bool)

(assert (=> b!2672448 (= e!1684435 (and e!1684442 tp!845086))))

(assert (= (and start!259916 res!1123560) b!2672440))

(assert (= (and b!2672440 res!1123554) b!2672433))

(assert (= (and b!2672433 res!1123559) b!2672432))

(assert (= (and b!2672432 res!1123556) b!2672444))

(assert (= (and b!2672444 res!1123557) b!2672431))

(assert (= (and b!2672431 res!1123552) b!2672430))

(assert (= (and b!2672430 res!1123558) b!2672447))

(assert (= (and b!2672447 res!1123555) b!2672438))

(assert (= (and b!2672438 res!1123553) b!2672435))

(assert (= b!2672437 b!2672443))

(assert (= b!2672448 b!2672437))

(assert (= (and start!259916 (is-Cons!30755 rules!1712)) b!2672448))

(assert (= b!2672441 b!2672445))

(assert (= b!2672446 b!2672441))

(assert (= b!2672442 b!2672446))

(assert (= (and start!259916 (is-Cons!30756 l!4335)) b!2672442))

(assert (= b!2672439 b!2672434))

(assert (= b!2672436 b!2672439))

(assert (= start!259916 b!2672436))

(declare-fun m!3038483 () Bool)

(assert (=> b!2672447 m!3038483))

(declare-fun m!3038485 () Bool)

(assert (=> b!2672430 m!3038485))

(declare-fun m!3038487 () Bool)

(assert (=> b!2672444 m!3038487))

(declare-fun m!3038489 () Bool)

(assert (=> b!2672435 m!3038489))

(declare-fun m!3038491 () Bool)

(assert (=> b!2672433 m!3038491))

(declare-fun m!3038493 () Bool)

(assert (=> b!2672437 m!3038493))

(declare-fun m!3038495 () Bool)

(assert (=> b!2672437 m!3038495))

(declare-fun m!3038497 () Bool)

(assert (=> b!2672442 m!3038497))

(declare-fun m!3038499 () Bool)

(assert (=> b!2672439 m!3038499))

(declare-fun m!3038501 () Bool)

(assert (=> b!2672439 m!3038501))

(declare-fun m!3038503 () Bool)

(assert (=> b!2672440 m!3038503))

(declare-fun m!3038505 () Bool)

(assert (=> b!2672432 m!3038505))

(declare-fun m!3038507 () Bool)

(assert (=> b!2672436 m!3038507))

(declare-fun m!3038509 () Bool)

(assert (=> start!259916 m!3038509))

(declare-fun m!3038511 () Bool)

(assert (=> b!2672441 m!3038511))

(declare-fun m!3038513 () Bool)

(assert (=> b!2672441 m!3038513))

(declare-fun m!3038515 () Bool)

(assert (=> b!2672446 m!3038515))

(push 1)

(assert (not b_next!75953))

(assert (not b!2672442))

(assert (not b!2672439))

(assert b_and!197373)

(assert (not b!2672437))

(assert (not b!2672436))

(assert (not b!2672440))

(assert (not b!2672447))

(assert (not b_next!75957))

(assert (not b_next!75955))

(assert (not b!2672448))

(assert b_and!197375)

(assert b_and!197377)

(assert (not b_next!75959))

(assert (not b_next!75949))

(assert (not b!2672441))

(assert b_and!197381)

(assert (not start!259916))

(assert (not b!2672446))

(assert b_and!197379)

(assert (not b!2672435))

(assert b_and!197383)

(assert (not b!2672444))

(assert (not b!2672430))

(assert (not b_next!75951))

(assert (not b!2672433))

(assert (not b!2672432))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!75953))

(assert (not b_next!75955))

(assert b_and!197381)

(assert b_and!197373)

(assert (not b_next!75951))

(assert (not b_next!75957))

(assert b_and!197375)

(assert b_and!197377)

(assert (not b_next!75959))

(assert (not b_next!75949))

(assert b_and!197379)

(assert b_and!197383)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!764061 () Bool)

(assert (=> d!764061 (= (inv!41758 (tag!5198 (rule!7102 (h!36176 l!4335)))) (= (mod (str.len (value!151441 (tag!5198 (rule!7102 (h!36176 l!4335))))) 2) 0))))

(assert (=> b!2672441 d!764061))

(declare-fun d!764063 () Bool)

(declare-fun res!1123598 () Bool)

(declare-fun e!1684493 () Bool)

(assert (=> d!764063 (=> (not res!1123598) (not e!1684493))))

(declare-fun semiInverseModEq!1941 (Int Int) Bool)

(assert (=> d!764063 (= res!1123598 (semiInverseModEq!1941 (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))) (toValue!6638 (transformation!4696 (rule!7102 (h!36176 l!4335))))))))

(assert (=> d!764063 (= (inv!41761 (transformation!4696 (rule!7102 (h!36176 l!4335)))) e!1684493)))

(declare-fun b!2672508 () Bool)

(declare-fun equivClasses!1842 (Int Int) Bool)

(assert (=> b!2672508 (= e!1684493 (equivClasses!1842 (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))) (toValue!6638 (transformation!4696 (rule!7102 (h!36176 l!4335))))))))

(assert (= (and d!764063 res!1123598) b!2672508))

(declare-fun m!3038551 () Bool)

(assert (=> d!764063 m!3038551))

(declare-fun m!3038553 () Bool)

(assert (=> b!2672508 m!3038553))

(assert (=> b!2672441 d!764063))

(declare-fun d!764067 () Bool)

(declare-fun res!1123607 () Bool)

(declare-fun e!1684502 () Bool)

(assert (=> d!764067 (=> res!1123607 e!1684502)))

(assert (=> d!764067 (= res!1123607 (is-Nil!30756 l!4335))))

(assert (=> d!764067 (= (forall!6511 l!4335 lambda!99833) e!1684502)))

(declare-fun b!2672517 () Bool)

(declare-fun e!1684503 () Bool)

(assert (=> b!2672517 (= e!1684502 e!1684503)))

(declare-fun res!1123608 () Bool)

(assert (=> b!2672517 (=> (not res!1123608) (not e!1684503))))

(declare-fun dynLambda!13333 (Int Token!8862) Bool)

(assert (=> b!2672517 (= res!1123608 (dynLambda!13333 lambda!99833 (h!36176 l!4335)))))

(declare-fun b!2672518 () Bool)

(assert (=> b!2672518 (= e!1684503 (forall!6511 (t!223375 l!4335) lambda!99833))))

(assert (= (and d!764067 (not res!1123607)) b!2672517))

(assert (= (and b!2672517 res!1123608) b!2672518))

(declare-fun b_lambda!81403 () Bool)

(assert (=> (not b_lambda!81403) (not b!2672517)))

(declare-fun m!3038555 () Bool)

(assert (=> b!2672517 m!3038555))

(declare-fun m!3038557 () Bool)

(assert (=> b!2672518 m!3038557))

(assert (=> b!2672430 d!764067))

(declare-fun d!764069 () Bool)

(assert (=> d!764069 (= (isEmpty!17584 rules!1712) (is-Nil!30755 rules!1712))))

(assert (=> b!2672440 d!764069))

(declare-fun d!764071 () Bool)

(declare-fun res!1123619 () Bool)

(declare-fun e!1684512 () Bool)

(assert (=> d!764071 (=> (not res!1123619) (not e!1684512))))

(declare-fun isEmpty!17586 (List!30854) Bool)

(assert (=> d!764071 (= res!1123619 (not (isEmpty!17586 (originalCharacters!5462 separatorToken!152))))))

(assert (=> d!764071 (= (inv!41762 separatorToken!152) e!1684512)))

(declare-fun b!2672529 () Bool)

(declare-fun res!1123620 () Bool)

(assert (=> b!2672529 (=> (not res!1123620) (not e!1684512))))

(declare-fun list!11608 (BalanceConc!18858) List!30854)

(declare-fun dynLambda!13334 (Int TokenValue!4918) BalanceConc!18858)

(assert (=> b!2672529 (= res!1123620 (= (originalCharacters!5462 separatorToken!152) (list!11608 (dynLambda!13334 (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))) (value!151442 separatorToken!152)))))))

(declare-fun b!2672530 () Bool)

(declare-fun size!23770 (List!30854) Int)

(assert (=> b!2672530 (= e!1684512 (= (size!23768 separatorToken!152) (size!23770 (originalCharacters!5462 separatorToken!152))))))

(assert (= (and d!764071 res!1123619) b!2672529))

(assert (= (and b!2672529 res!1123620) b!2672530))

(declare-fun b_lambda!81407 () Bool)

(assert (=> (not b_lambda!81407) (not b!2672529)))

(declare-fun t!223381 () Bool)

(declare-fun tb!149729 () Bool)

(assert (=> (and b!2672445 (= (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))) (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152)))) t!223381) tb!149729))

(declare-fun b!2672535 () Bool)

(declare-fun e!1684515 () Bool)

(declare-fun tp!845137 () Bool)

(declare-fun inv!41765 (Conc!9622) Bool)

(assert (=> b!2672535 (= e!1684515 (and (inv!41765 (c!430657 (dynLambda!13334 (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))) (value!151442 separatorToken!152)))) tp!845137))))

(declare-fun result!184932 () Bool)

(declare-fun inv!41766 (BalanceConc!18858) Bool)

(assert (=> tb!149729 (= result!184932 (and (inv!41766 (dynLambda!13334 (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))) (value!151442 separatorToken!152))) e!1684515))))

(assert (= tb!149729 b!2672535))

(declare-fun m!3038563 () Bool)

(assert (=> b!2672535 m!3038563))

(declare-fun m!3038565 () Bool)

(assert (=> tb!149729 m!3038565))

(assert (=> b!2672529 t!223381))

(declare-fun b_and!197397 () Bool)

(assert (= b_and!197375 (and (=> t!223381 result!184932) b_and!197397)))

(declare-fun t!223383 () Bool)

(declare-fun tb!149731 () Bool)

(assert (=> (and b!2672434 (= (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))) (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152)))) t!223383) tb!149731))

(declare-fun result!184936 () Bool)

(assert (= result!184936 result!184932))

(assert (=> b!2672529 t!223383))

(declare-fun b_and!197399 () Bool)

(assert (= b_and!197379 (and (=> t!223383 result!184936) b_and!197399)))

(declare-fun tb!149733 () Bool)

(declare-fun t!223385 () Bool)

(assert (=> (and b!2672443 (= (toChars!6497 (transformation!4696 (h!36175 rules!1712))) (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152)))) t!223385) tb!149733))

(declare-fun result!184938 () Bool)

(assert (= result!184938 result!184932))

(assert (=> b!2672529 t!223385))

(declare-fun b_and!197401 () Bool)

(assert (= b_and!197383 (and (=> t!223385 result!184938) b_and!197401)))

(declare-fun m!3038567 () Bool)

(assert (=> d!764071 m!3038567))

(declare-fun m!3038569 () Bool)

(assert (=> b!2672529 m!3038569))

(assert (=> b!2672529 m!3038569))

(declare-fun m!3038571 () Bool)

(assert (=> b!2672529 m!3038571))

(declare-fun m!3038573 () Bool)

(assert (=> b!2672530 m!3038573))

(assert (=> start!259916 d!764071))

(declare-fun d!764075 () Bool)

(declare-fun lt!941082 () Bool)

(declare-fun e!1684541 () Bool)

(assert (=> d!764075 (= lt!941082 e!1684541)))

(declare-fun res!1123639 () Bool)

(assert (=> d!764075 (=> (not res!1123639) (not e!1684541))))

(declare-datatypes ((IArray!19253 0))(
  ( (IArray!19254 (innerList!9684 List!30856)) )
))
(declare-datatypes ((Conc!9624 0))(
  ( (Node!9624 (left!23802 Conc!9624) (right!24132 Conc!9624) (csize!19478 Int) (cheight!9835 Int)) (Leaf!14713 (xs!12654 IArray!19253) (csize!19479 Int)) (Empty!9624) )
))
(declare-datatypes ((BalanceConc!18862 0))(
  ( (BalanceConc!18863 (c!430677 Conc!9624)) )
))
(declare-fun list!11609 (BalanceConc!18862) List!30856)

(declare-datatypes ((tuple2!30212 0))(
  ( (tuple2!30213 (_1!17648 BalanceConc!18862) (_2!17648 BalanceConc!18858)) )
))
(declare-fun lex!1928 (LexerInterface!4293 List!30855 BalanceConc!18858) tuple2!30212)

(declare-fun print!1672 (LexerInterface!4293 BalanceConc!18862) BalanceConc!18858)

(declare-fun singletonSeq!2093 (Token!8862) BalanceConc!18862)

(assert (=> d!764075 (= res!1123639 (= (list!11609 (_1!17648 (lex!1928 thiss!14116 rules!1712 (print!1672 thiss!14116 (singletonSeq!2093 separatorToken!152))))) (list!11609 (singletonSeq!2093 separatorToken!152))))))

(declare-fun e!1684540 () Bool)

(assert (=> d!764075 (= lt!941082 e!1684540)))

(declare-fun res!1123641 () Bool)

(assert (=> d!764075 (=> (not res!1123641) (not e!1684540))))

(declare-fun lt!941083 () tuple2!30212)

(declare-fun size!23771 (BalanceConc!18862) Int)

(assert (=> d!764075 (= res!1123641 (= (size!23771 (_1!17648 lt!941083)) 1))))

(assert (=> d!764075 (= lt!941083 (lex!1928 thiss!14116 rules!1712 (print!1672 thiss!14116 (singletonSeq!2093 separatorToken!152))))))

(assert (=> d!764075 (not (isEmpty!17584 rules!1712))))

(assert (=> d!764075 (= (rulesProduceIndividualToken!2005 thiss!14116 rules!1712 separatorToken!152) lt!941082)))

(declare-fun b!2672570 () Bool)

(declare-fun res!1123640 () Bool)

(assert (=> b!2672570 (=> (not res!1123640) (not e!1684540))))

(declare-fun apply!7365 (BalanceConc!18862 Int) Token!8862)

(assert (=> b!2672570 (= res!1123640 (= (apply!7365 (_1!17648 lt!941083) 0) separatorToken!152))))

(declare-fun b!2672571 () Bool)

(declare-fun isEmpty!17587 (BalanceConc!18858) Bool)

(assert (=> b!2672571 (= e!1684540 (isEmpty!17587 (_2!17648 lt!941083)))))

(declare-fun b!2672572 () Bool)

(assert (=> b!2672572 (= e!1684541 (isEmpty!17587 (_2!17648 (lex!1928 thiss!14116 rules!1712 (print!1672 thiss!14116 (singletonSeq!2093 separatorToken!152))))))))

(assert (= (and d!764075 res!1123641) b!2672570))

(assert (= (and b!2672570 res!1123640) b!2672571))

(assert (= (and d!764075 res!1123639) b!2672572))

(declare-fun m!3038601 () Bool)

(assert (=> d!764075 m!3038601))

(declare-fun m!3038603 () Bool)

(assert (=> d!764075 m!3038603))

(declare-fun m!3038605 () Bool)

(assert (=> d!764075 m!3038605))

(assert (=> d!764075 m!3038503))

(assert (=> d!764075 m!3038601))

(declare-fun m!3038607 () Bool)

(assert (=> d!764075 m!3038607))

(declare-fun m!3038609 () Bool)

(assert (=> d!764075 m!3038609))

(assert (=> d!764075 m!3038603))

(declare-fun m!3038611 () Bool)

(assert (=> d!764075 m!3038611))

(assert (=> d!764075 m!3038601))

(declare-fun m!3038613 () Bool)

(assert (=> b!2672570 m!3038613))

(declare-fun m!3038615 () Bool)

(assert (=> b!2672571 m!3038615))

(assert (=> b!2672572 m!3038601))

(assert (=> b!2672572 m!3038601))

(assert (=> b!2672572 m!3038603))

(assert (=> b!2672572 m!3038603))

(assert (=> b!2672572 m!3038611))

(declare-fun m!3038617 () Bool)

(assert (=> b!2672572 m!3038617))

(assert (=> b!2672444 d!764075))

(declare-fun d!764089 () Bool)

(declare-fun res!1123644 () Bool)

(declare-fun e!1684544 () Bool)

(assert (=> d!764089 (=> (not res!1123644) (not e!1684544))))

(declare-fun rulesValid!1747 (LexerInterface!4293 List!30855) Bool)

(assert (=> d!764089 (= res!1123644 (rulesValid!1747 thiss!14116 rules!1712))))

(assert (=> d!764089 (= (rulesInvariant!3793 thiss!14116 rules!1712) e!1684544)))

(declare-fun b!2672575 () Bool)

(declare-datatypes ((List!30861 0))(
  ( (Nil!30761) (Cons!30761 (h!36181 String!34476) (t!223406 List!30861)) )
))
(declare-fun noDuplicateTag!1743 (LexerInterface!4293 List!30855 List!30861) Bool)

(assert (=> b!2672575 (= e!1684544 (noDuplicateTag!1743 thiss!14116 rules!1712 Nil!30761))))

(assert (= (and d!764089 res!1123644) b!2672575))

(declare-fun m!3038619 () Bool)

(assert (=> d!764089 m!3038619))

(declare-fun m!3038621 () Bool)

(assert (=> b!2672575 m!3038621))

(assert (=> b!2672433 d!764089))

(declare-fun bs!479569 () Bool)

(declare-fun d!764091 () Bool)

(assert (= bs!479569 (and d!764091 b!2672430)))

(declare-fun lambda!99839 () Int)

(assert (=> bs!479569 (not (= lambda!99839 lambda!99833))))

(declare-fun b!2672605 () Bool)

(declare-fun e!1684569 () Bool)

(assert (=> b!2672605 (= e!1684569 true)))

(declare-fun b!2672604 () Bool)

(declare-fun e!1684568 () Bool)

(assert (=> b!2672604 (= e!1684568 e!1684569)))

(declare-fun b!2672603 () Bool)

(declare-fun e!1684567 () Bool)

(assert (=> b!2672603 (= e!1684567 e!1684568)))

(assert (=> d!764091 e!1684567))

(assert (= b!2672604 b!2672605))

(assert (= b!2672603 b!2672604))

(assert (= (and d!764091 (is-Cons!30755 rules!1712)) b!2672603))

(declare-fun order!16925 () Int)

(declare-fun order!16927 () Int)

(declare-fun dynLambda!13335 (Int Int) Int)

(declare-fun dynLambda!13336 (Int Int) Int)

(assert (=> b!2672605 (< (dynLambda!13335 order!16925 (toValue!6638 (transformation!4696 (h!36175 rules!1712)))) (dynLambda!13336 order!16927 lambda!99839))))

(declare-fun order!16929 () Int)

(declare-fun dynLambda!13337 (Int Int) Int)

(assert (=> b!2672605 (< (dynLambda!13337 order!16929 (toChars!6497 (transformation!4696 (h!36175 rules!1712)))) (dynLambda!13336 order!16927 lambda!99839))))

(assert (=> d!764091 true))

(declare-fun lt!941094 () Bool)

(assert (=> d!764091 (= lt!941094 (forall!6511 l!4335 lambda!99839))))

(declare-fun e!1684560 () Bool)

(assert (=> d!764091 (= lt!941094 e!1684560)))

(declare-fun res!1123663 () Bool)

(assert (=> d!764091 (=> res!1123663 e!1684560)))

(assert (=> d!764091 (= res!1123663 (not (is-Cons!30756 l!4335)))))

(assert (=> d!764091 (not (isEmpty!17584 rules!1712))))

(assert (=> d!764091 (= (rulesProduceEachTokenIndividuallyList!1515 thiss!14116 rules!1712 l!4335) lt!941094)))

(declare-fun b!2672593 () Bool)

(declare-fun e!1684559 () Bool)

(assert (=> b!2672593 (= e!1684560 e!1684559)))

(declare-fun res!1123662 () Bool)

(assert (=> b!2672593 (=> (not res!1123662) (not e!1684559))))

(assert (=> b!2672593 (= res!1123662 (rulesProduceIndividualToken!2005 thiss!14116 rules!1712 (h!36176 l!4335)))))

(declare-fun b!2672594 () Bool)

(assert (=> b!2672594 (= e!1684559 (rulesProduceEachTokenIndividuallyList!1515 thiss!14116 rules!1712 (t!223375 l!4335)))))

(assert (= (and d!764091 (not res!1123663)) b!2672593))

(assert (= (and b!2672593 res!1123662) b!2672594))

(declare-fun m!3038641 () Bool)

(assert (=> d!764091 m!3038641))

(assert (=> d!764091 m!3038503))

(declare-fun m!3038643 () Bool)

(assert (=> b!2672593 m!3038643))

(declare-fun m!3038645 () Bool)

(assert (=> b!2672594 m!3038645))

(assert (=> b!2672432 d!764091))

(declare-fun d!764095 () Bool)

(declare-fun res!1123664 () Bool)

(declare-fun e!1684570 () Bool)

(assert (=> d!764095 (=> (not res!1123664) (not e!1684570))))

(assert (=> d!764095 (= res!1123664 (not (isEmpty!17586 (originalCharacters!5462 (h!36176 l!4335)))))))

(assert (=> d!764095 (= (inv!41762 (h!36176 l!4335)) e!1684570)))

(declare-fun b!2672608 () Bool)

(declare-fun res!1123665 () Bool)

(assert (=> b!2672608 (=> (not res!1123665) (not e!1684570))))

(assert (=> b!2672608 (= res!1123665 (= (originalCharacters!5462 (h!36176 l!4335)) (list!11608 (dynLambda!13334 (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))) (value!151442 (h!36176 l!4335))))))))

(declare-fun b!2672609 () Bool)

(assert (=> b!2672609 (= e!1684570 (= (size!23768 (h!36176 l!4335)) (size!23770 (originalCharacters!5462 (h!36176 l!4335)))))))

(assert (= (and d!764095 res!1123664) b!2672608))

(assert (= (and b!2672608 res!1123665) b!2672609))

(declare-fun b_lambda!81409 () Bool)

(assert (=> (not b_lambda!81409) (not b!2672608)))

(declare-fun t!223393 () Bool)

(declare-fun tb!149735 () Bool)

(assert (=> (and b!2672445 (= (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))) (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335))))) t!223393) tb!149735))

(declare-fun b!2672610 () Bool)

(declare-fun e!1684571 () Bool)

(declare-fun tp!845138 () Bool)

(assert (=> b!2672610 (= e!1684571 (and (inv!41765 (c!430657 (dynLambda!13334 (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))) (value!151442 (h!36176 l!4335))))) tp!845138))))

(declare-fun result!184940 () Bool)

(assert (=> tb!149735 (= result!184940 (and (inv!41766 (dynLambda!13334 (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))) (value!151442 (h!36176 l!4335)))) e!1684571))))

(assert (= tb!149735 b!2672610))

(declare-fun m!3038647 () Bool)

(assert (=> b!2672610 m!3038647))

(declare-fun m!3038649 () Bool)

(assert (=> tb!149735 m!3038649))

(assert (=> b!2672608 t!223393))

(declare-fun b_and!197403 () Bool)

(assert (= b_and!197397 (and (=> t!223393 result!184940) b_and!197403)))

(declare-fun tb!149737 () Bool)

(declare-fun t!223395 () Bool)

(assert (=> (and b!2672434 (= (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))) (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335))))) t!223395) tb!149737))

(declare-fun result!184942 () Bool)

(assert (= result!184942 result!184940))

(assert (=> b!2672608 t!223395))

(declare-fun b_and!197405 () Bool)

(assert (= b_and!197399 (and (=> t!223395 result!184942) b_and!197405)))

(declare-fun t!223397 () Bool)

(declare-fun tb!149739 () Bool)

(assert (=> (and b!2672443 (= (toChars!6497 (transformation!4696 (h!36175 rules!1712))) (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335))))) t!223397) tb!149739))

(declare-fun result!184944 () Bool)

(assert (= result!184944 result!184940))

(assert (=> b!2672608 t!223397))

(declare-fun b_and!197407 () Bool)

(assert (= b_and!197401 (and (=> t!223397 result!184944) b_and!197407)))

(declare-fun m!3038651 () Bool)

(assert (=> d!764095 m!3038651))

(declare-fun m!3038653 () Bool)

(assert (=> b!2672608 m!3038653))

(assert (=> b!2672608 m!3038653))

(declare-fun m!3038655 () Bool)

(assert (=> b!2672608 m!3038655))

(declare-fun m!3038657 () Bool)

(assert (=> b!2672609 m!3038657))

(assert (=> b!2672442 d!764095))

(declare-fun d!764097 () Bool)

(declare-fun res!1123670 () Bool)

(declare-fun e!1684576 () Bool)

(assert (=> d!764097 (=> res!1123670 e!1684576)))

(assert (=> d!764097 (= res!1123670 (not (is-Cons!30755 rules!1712)))))

(assert (=> d!764097 (= (sepAndNonSepRulesDisjointChars!1269 rules!1712 rules!1712) e!1684576)))

(declare-fun b!2672615 () Bool)

(declare-fun e!1684577 () Bool)

(assert (=> b!2672615 (= e!1684576 e!1684577)))

(declare-fun res!1123671 () Bool)

(assert (=> b!2672615 (=> (not res!1123671) (not e!1684577))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!548 (Rule!9192 List!30855) Bool)

(assert (=> b!2672615 (= res!1123671 (ruleDisjointCharsFromAllFromOtherType!548 (h!36175 rules!1712) rules!1712))))

(declare-fun b!2672616 () Bool)

(assert (=> b!2672616 (= e!1684577 (sepAndNonSepRulesDisjointChars!1269 rules!1712 (t!223374 rules!1712)))))

(assert (= (and d!764097 (not res!1123670)) b!2672615))

(assert (= (and b!2672615 res!1123671) b!2672616))

(declare-fun m!3038659 () Bool)

(assert (=> b!2672615 m!3038659))

(declare-fun m!3038661 () Bool)

(assert (=> b!2672616 m!3038661))

(assert (=> b!2672447 d!764097))

(declare-fun b!2672627 () Bool)

(declare-fun res!1123674 () Bool)

(declare-fun e!1684585 () Bool)

(assert (=> b!2672627 (=> res!1123674 e!1684585)))

(assert (=> b!2672627 (= res!1123674 (not (is-IntegerValue!14756 (value!151442 separatorToken!152))))))

(declare-fun e!1684584 () Bool)

(assert (=> b!2672627 (= e!1684584 e!1684585)))

(declare-fun b!2672628 () Bool)

(declare-fun e!1684586 () Bool)

(assert (=> b!2672628 (= e!1684586 e!1684584)))

(declare-fun c!430674 () Bool)

(assert (=> b!2672628 (= c!430674 (is-IntegerValue!14755 (value!151442 separatorToken!152)))))

(declare-fun d!764099 () Bool)

(declare-fun c!430673 () Bool)

(assert (=> d!764099 (= c!430673 (is-IntegerValue!14754 (value!151442 separatorToken!152)))))

(assert (=> d!764099 (= (inv!21 (value!151442 separatorToken!152)) e!1684586)))

(declare-fun b!2672629 () Bool)

(declare-fun inv!16 (TokenValue!4918) Bool)

(assert (=> b!2672629 (= e!1684586 (inv!16 (value!151442 separatorToken!152)))))

(declare-fun b!2672630 () Bool)

(declare-fun inv!17 (TokenValue!4918) Bool)

(assert (=> b!2672630 (= e!1684584 (inv!17 (value!151442 separatorToken!152)))))

(declare-fun b!2672631 () Bool)

(declare-fun inv!15 (TokenValue!4918) Bool)

(assert (=> b!2672631 (= e!1684585 (inv!15 (value!151442 separatorToken!152)))))

(assert (= (and d!764099 c!430673) b!2672629))

(assert (= (and d!764099 (not c!430673)) b!2672628))

(assert (= (and b!2672628 c!430674) b!2672630))

(assert (= (and b!2672628 (not c!430674)) b!2672627))

(assert (= (and b!2672627 (not res!1123674)) b!2672631))

(declare-fun m!3038663 () Bool)

(assert (=> b!2672629 m!3038663))

(declare-fun m!3038665 () Bool)

(assert (=> b!2672630 m!3038665))

(declare-fun m!3038667 () Bool)

(assert (=> b!2672631 m!3038667))

(assert (=> b!2672436 d!764099))

(declare-fun b!2672632 () Bool)

(declare-fun res!1123675 () Bool)

(declare-fun e!1684588 () Bool)

(assert (=> b!2672632 (=> res!1123675 e!1684588)))

(assert (=> b!2672632 (= res!1123675 (not (is-IntegerValue!14756 (value!151442 (h!36176 l!4335)))))))

(declare-fun e!1684587 () Bool)

(assert (=> b!2672632 (= e!1684587 e!1684588)))

(declare-fun b!2672633 () Bool)

(declare-fun e!1684589 () Bool)

(assert (=> b!2672633 (= e!1684589 e!1684587)))

(declare-fun c!430676 () Bool)

(assert (=> b!2672633 (= c!430676 (is-IntegerValue!14755 (value!151442 (h!36176 l!4335))))))

(declare-fun d!764101 () Bool)

(declare-fun c!430675 () Bool)

(assert (=> d!764101 (= c!430675 (is-IntegerValue!14754 (value!151442 (h!36176 l!4335))))))

(assert (=> d!764101 (= (inv!21 (value!151442 (h!36176 l!4335))) e!1684589)))

(declare-fun b!2672634 () Bool)

(assert (=> b!2672634 (= e!1684589 (inv!16 (value!151442 (h!36176 l!4335))))))

(declare-fun b!2672635 () Bool)

(assert (=> b!2672635 (= e!1684587 (inv!17 (value!151442 (h!36176 l!4335))))))

(declare-fun b!2672636 () Bool)

(assert (=> b!2672636 (= e!1684588 (inv!15 (value!151442 (h!36176 l!4335))))))

(assert (= (and d!764101 c!430675) b!2672634))

(assert (= (and d!764101 (not c!430675)) b!2672633))

(assert (= (and b!2672633 c!430676) b!2672635))

(assert (= (and b!2672633 (not c!430676)) b!2672632))

(assert (= (and b!2672632 (not res!1123675)) b!2672636))

(declare-fun m!3038669 () Bool)

(assert (=> b!2672634 m!3038669))

(declare-fun m!3038671 () Bool)

(assert (=> b!2672635 m!3038671))

(declare-fun m!3038673 () Bool)

(assert (=> b!2672636 m!3038673))

(assert (=> b!2672446 d!764101))

(declare-fun d!764103 () Bool)

(declare-fun lt!941097 () Bool)

(declare-fun content!4360 (List!30856) (Set Token!8862))

(assert (=> d!764103 (= lt!941097 (set.member (h!36176 l!4335) (content!4360 l!4335)))))

(declare-fun e!1684594 () Bool)

(assert (=> d!764103 (= lt!941097 e!1684594)))

(declare-fun res!1123680 () Bool)

(assert (=> d!764103 (=> (not res!1123680) (not e!1684594))))

(assert (=> d!764103 (= res!1123680 (is-Cons!30756 l!4335))))

(assert (=> d!764103 (= (contains!5908 l!4335 (h!36176 l!4335)) lt!941097)))

(declare-fun b!2672641 () Bool)

(declare-fun e!1684595 () Bool)

(assert (=> b!2672641 (= e!1684594 e!1684595)))

(declare-fun res!1123681 () Bool)

(assert (=> b!2672641 (=> res!1123681 e!1684595)))

(assert (=> b!2672641 (= res!1123681 (= (h!36176 l!4335) (h!36176 l!4335)))))

(declare-fun b!2672642 () Bool)

(assert (=> b!2672642 (= e!1684595 (contains!5908 (t!223375 l!4335) (h!36176 l!4335)))))

(assert (= (and d!764103 res!1123680) b!2672641))

(assert (= (and b!2672641 (not res!1123681)) b!2672642))

(declare-fun m!3038675 () Bool)

(assert (=> d!764103 m!3038675))

(declare-fun m!3038677 () Bool)

(assert (=> d!764103 m!3038677))

(declare-fun m!3038679 () Bool)

(assert (=> b!2672642 m!3038679))

(assert (=> b!2672435 d!764103))

(declare-fun d!764105 () Bool)

(assert (=> d!764105 (= (inv!41758 (tag!5198 (rule!7102 separatorToken!152))) (= (mod (str.len (value!151441 (tag!5198 (rule!7102 separatorToken!152)))) 2) 0))))

(assert (=> b!2672439 d!764105))

(declare-fun d!764107 () Bool)

(declare-fun res!1123682 () Bool)

(declare-fun e!1684596 () Bool)

(assert (=> d!764107 (=> (not res!1123682) (not e!1684596))))

(assert (=> d!764107 (= res!1123682 (semiInverseModEq!1941 (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))) (toValue!6638 (transformation!4696 (rule!7102 separatorToken!152)))))))

(assert (=> d!764107 (= (inv!41761 (transformation!4696 (rule!7102 separatorToken!152))) e!1684596)))

(declare-fun b!2672643 () Bool)

(assert (=> b!2672643 (= e!1684596 (equivClasses!1842 (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))) (toValue!6638 (transformation!4696 (rule!7102 separatorToken!152)))))))

(assert (= (and d!764107 res!1123682) b!2672643))

(declare-fun m!3038681 () Bool)

(assert (=> d!764107 m!3038681))

(declare-fun m!3038683 () Bool)

(assert (=> b!2672643 m!3038683))

(assert (=> b!2672439 d!764107))

(declare-fun d!764109 () Bool)

(assert (=> d!764109 (= (inv!41758 (tag!5198 (h!36175 rules!1712))) (= (mod (str.len (value!151441 (tag!5198 (h!36175 rules!1712)))) 2) 0))))

(assert (=> b!2672437 d!764109))

(declare-fun d!764111 () Bool)

(declare-fun res!1123683 () Bool)

(declare-fun e!1684597 () Bool)

(assert (=> d!764111 (=> (not res!1123683) (not e!1684597))))

(assert (=> d!764111 (= res!1123683 (semiInverseModEq!1941 (toChars!6497 (transformation!4696 (h!36175 rules!1712))) (toValue!6638 (transformation!4696 (h!36175 rules!1712)))))))

(assert (=> d!764111 (= (inv!41761 (transformation!4696 (h!36175 rules!1712))) e!1684597)))

(declare-fun b!2672644 () Bool)

(assert (=> b!2672644 (= e!1684597 (equivClasses!1842 (toChars!6497 (transformation!4696 (h!36175 rules!1712))) (toValue!6638 (transformation!4696 (h!36175 rules!1712)))))))

(assert (= (and d!764111 res!1123683) b!2672644))

(declare-fun m!3038685 () Bool)

(assert (=> d!764111 m!3038685))

(declare-fun m!3038687 () Bool)

(assert (=> b!2672644 m!3038687))

(assert (=> b!2672437 d!764111))

(declare-fun b!2672649 () Bool)

(declare-fun e!1684600 () Bool)

(declare-fun tp_is_empty!13811 () Bool)

(declare-fun tp!845141 () Bool)

(assert (=> b!2672649 (= e!1684600 (and tp_is_empty!13811 tp!845141))))

(assert (=> b!2672436 (= tp!845092 e!1684600)))

(assert (= (and b!2672436 (is-Cons!30754 (originalCharacters!5462 separatorToken!152))) b!2672649))

(declare-fun b!2672661 () Bool)

(declare-fun e!1684603 () Bool)

(declare-fun tp!845155 () Bool)

(declare-fun tp!845152 () Bool)

(assert (=> b!2672661 (= e!1684603 (and tp!845155 tp!845152))))

(assert (=> b!2672441 (= tp!845091 e!1684603)))

(declare-fun b!2672660 () Bool)

(assert (=> b!2672660 (= e!1684603 tp_is_empty!13811)))

(declare-fun b!2672663 () Bool)

(declare-fun tp!845154 () Bool)

(declare-fun tp!845156 () Bool)

(assert (=> b!2672663 (= e!1684603 (and tp!845154 tp!845156))))

(declare-fun b!2672662 () Bool)

(declare-fun tp!845153 () Bool)

(assert (=> b!2672662 (= e!1684603 tp!845153)))

(assert (= (and b!2672441 (is-ElementMatch!7840 (regex!4696 (rule!7102 (h!36176 l!4335))))) b!2672660))

(assert (= (and b!2672441 (is-Concat!12759 (regex!4696 (rule!7102 (h!36176 l!4335))))) b!2672661))

(assert (= (and b!2672441 (is-Star!7840 (regex!4696 (rule!7102 (h!36176 l!4335))))) b!2672662))

(assert (= (and b!2672441 (is-Union!7840 (regex!4696 (rule!7102 (h!36176 l!4335))))) b!2672663))

(declare-fun b!2672664 () Bool)

(declare-fun e!1684604 () Bool)

(declare-fun tp!845157 () Bool)

(assert (=> b!2672664 (= e!1684604 (and tp_is_empty!13811 tp!845157))))

(assert (=> b!2672446 (= tp!845083 e!1684604)))

(assert (= (and b!2672446 (is-Cons!30754 (originalCharacters!5462 (h!36176 l!4335)))) b!2672664))

(declare-fun b!2672666 () Bool)

(declare-fun e!1684605 () Bool)

(declare-fun tp!845161 () Bool)

(declare-fun tp!845158 () Bool)

(assert (=> b!2672666 (= e!1684605 (and tp!845161 tp!845158))))

(assert (=> b!2672439 (= tp!845090 e!1684605)))

(declare-fun b!2672665 () Bool)

(assert (=> b!2672665 (= e!1684605 tp_is_empty!13811)))

(declare-fun b!2672668 () Bool)

(declare-fun tp!845160 () Bool)

(declare-fun tp!845162 () Bool)

(assert (=> b!2672668 (= e!1684605 (and tp!845160 tp!845162))))

(declare-fun b!2672667 () Bool)

(declare-fun tp!845159 () Bool)

(assert (=> b!2672667 (= e!1684605 tp!845159)))

(assert (= (and b!2672439 (is-ElementMatch!7840 (regex!4696 (rule!7102 separatorToken!152)))) b!2672665))

(assert (= (and b!2672439 (is-Concat!12759 (regex!4696 (rule!7102 separatorToken!152)))) b!2672666))

(assert (= (and b!2672439 (is-Star!7840 (regex!4696 (rule!7102 separatorToken!152)))) b!2672667))

(assert (= (and b!2672439 (is-Union!7840 (regex!4696 (rule!7102 separatorToken!152)))) b!2672668))

(declare-fun b!2672679 () Bool)

(declare-fun b_free!75269 () Bool)

(declare-fun b_next!75973 () Bool)

(assert (=> b!2672679 (= b_free!75269 (not b_next!75973))))

(declare-fun tp!845171 () Bool)

(declare-fun b_and!197409 () Bool)

(assert (=> b!2672679 (= tp!845171 b_and!197409)))

(declare-fun b_free!75271 () Bool)

(declare-fun b_next!75975 () Bool)

(assert (=> b!2672679 (= b_free!75271 (not b_next!75975))))

(declare-fun t!223399 () Bool)

(declare-fun tb!149741 () Bool)

(assert (=> (and b!2672679 (= (toChars!6497 (transformation!4696 (h!36175 (t!223374 rules!1712)))) (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152)))) t!223399) tb!149741))

(declare-fun result!184952 () Bool)

(assert (= result!184952 result!184932))

(assert (=> b!2672529 t!223399))

(declare-fun t!223401 () Bool)

(declare-fun tb!149743 () Bool)

(assert (=> (and b!2672679 (= (toChars!6497 (transformation!4696 (h!36175 (t!223374 rules!1712)))) (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335))))) t!223401) tb!149743))

(declare-fun result!184954 () Bool)

(assert (= result!184954 result!184940))

(assert (=> b!2672608 t!223401))

(declare-fun b_and!197411 () Bool)

(declare-fun tp!845173 () Bool)

(assert (=> b!2672679 (= tp!845173 (and (=> t!223399 result!184952) (=> t!223401 result!184954) b_and!197411))))

(declare-fun e!1684615 () Bool)

(assert (=> b!2672679 (= e!1684615 (and tp!845171 tp!845173))))

(declare-fun tp!845174 () Bool)

(declare-fun e!1684616 () Bool)

(declare-fun b!2672678 () Bool)

(assert (=> b!2672678 (= e!1684616 (and tp!845174 (inv!41758 (tag!5198 (h!36175 (t!223374 rules!1712)))) (inv!41761 (transformation!4696 (h!36175 (t!223374 rules!1712)))) e!1684615))))

(declare-fun b!2672677 () Bool)

(declare-fun e!1684614 () Bool)

(declare-fun tp!845172 () Bool)

(assert (=> b!2672677 (= e!1684614 (and e!1684616 tp!845172))))

(assert (=> b!2672448 (= tp!845086 e!1684614)))

(assert (= b!2672678 b!2672679))

(assert (= b!2672677 b!2672678))

(assert (= (and b!2672448 (is-Cons!30755 (t!223374 rules!1712))) b!2672677))

(declare-fun m!3038689 () Bool)

(assert (=> b!2672678 m!3038689))

(declare-fun m!3038691 () Bool)

(assert (=> b!2672678 m!3038691))

(declare-fun b!2672681 () Bool)

(declare-fun e!1684618 () Bool)

(declare-fun tp!845178 () Bool)

(declare-fun tp!845175 () Bool)

(assert (=> b!2672681 (= e!1684618 (and tp!845178 tp!845175))))

(assert (=> b!2672437 (= tp!845093 e!1684618)))

(declare-fun b!2672680 () Bool)

(assert (=> b!2672680 (= e!1684618 tp_is_empty!13811)))

(declare-fun b!2672683 () Bool)

(declare-fun tp!845177 () Bool)

(declare-fun tp!845179 () Bool)

(assert (=> b!2672683 (= e!1684618 (and tp!845177 tp!845179))))

(declare-fun b!2672682 () Bool)

(declare-fun tp!845176 () Bool)

(assert (=> b!2672682 (= e!1684618 tp!845176)))

(assert (= (and b!2672437 (is-ElementMatch!7840 (regex!4696 (h!36175 rules!1712)))) b!2672680))

(assert (= (and b!2672437 (is-Concat!12759 (regex!4696 (h!36175 rules!1712)))) b!2672681))

(assert (= (and b!2672437 (is-Star!7840 (regex!4696 (h!36175 rules!1712)))) b!2672682))

(assert (= (and b!2672437 (is-Union!7840 (regex!4696 (h!36175 rules!1712)))) b!2672683))

(declare-fun b!2672697 () Bool)

(declare-fun b_free!75273 () Bool)

(declare-fun b_next!75977 () Bool)

(assert (=> b!2672697 (= b_free!75273 (not b_next!75977))))

(declare-fun tp!845190 () Bool)

(declare-fun b_and!197413 () Bool)

(assert (=> b!2672697 (= tp!845190 b_and!197413)))

(declare-fun b_free!75275 () Bool)

(declare-fun b_next!75979 () Bool)

(assert (=> b!2672697 (= b_free!75275 (not b_next!75979))))

(declare-fun tb!149745 () Bool)

(declare-fun t!223403 () Bool)

(assert (=> (and b!2672697 (= (toChars!6497 (transformation!4696 (rule!7102 (h!36176 (t!223375 l!4335))))) (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152)))) t!223403) tb!149745))

(declare-fun result!184958 () Bool)

(assert (= result!184958 result!184932))

(assert (=> b!2672529 t!223403))

(declare-fun t!223405 () Bool)

(declare-fun tb!149747 () Bool)

(assert (=> (and b!2672697 (= (toChars!6497 (transformation!4696 (rule!7102 (h!36176 (t!223375 l!4335))))) (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335))))) t!223405) tb!149747))

(declare-fun result!184960 () Bool)

(assert (= result!184960 result!184940))

(assert (=> b!2672608 t!223405))

(declare-fun tp!845191 () Bool)

(declare-fun b_and!197415 () Bool)

(assert (=> b!2672697 (= tp!845191 (and (=> t!223403 result!184958) (=> t!223405 result!184960) b_and!197415))))

(declare-fun e!1684634 () Bool)

(declare-fun b!2672694 () Bool)

(declare-fun tp!845192 () Bool)

(declare-fun e!1684635 () Bool)

(assert (=> b!2672694 (= e!1684634 (and (inv!41762 (h!36176 (t!223375 l!4335))) e!1684635 tp!845192))))

(declare-fun e!1684631 () Bool)

(assert (=> b!2672697 (= e!1684631 (and tp!845190 tp!845191))))

(declare-fun e!1684636 () Bool)

(declare-fun tp!845194 () Bool)

(declare-fun b!2672696 () Bool)

(assert (=> b!2672696 (= e!1684636 (and tp!845194 (inv!41758 (tag!5198 (rule!7102 (h!36176 (t!223375 l!4335))))) (inv!41761 (transformation!4696 (rule!7102 (h!36176 (t!223375 l!4335))))) e!1684631))))

(declare-fun tp!845193 () Bool)

(declare-fun b!2672695 () Bool)

(assert (=> b!2672695 (= e!1684635 (and (inv!21 (value!151442 (h!36176 (t!223375 l!4335)))) e!1684636 tp!845193))))

(assert (=> b!2672442 (= tp!845094 e!1684634)))

(assert (= b!2672696 b!2672697))

(assert (= b!2672695 b!2672696))

(assert (= b!2672694 b!2672695))

(assert (= (and b!2672442 (is-Cons!30756 (t!223375 l!4335))) b!2672694))

(declare-fun m!3038693 () Bool)

(assert (=> b!2672694 m!3038693))

(declare-fun m!3038695 () Bool)

(assert (=> b!2672696 m!3038695))

(declare-fun m!3038697 () Bool)

(assert (=> b!2672696 m!3038697))

(declare-fun m!3038699 () Bool)

(assert (=> b!2672695 m!3038699))

(declare-fun b_lambda!81411 () Bool)

(assert (= b_lambda!81409 (or (and b!2672445 b_free!75247) (and b!2672679 b_free!75271 (= (toChars!6497 (transformation!4696 (h!36175 (t!223374 rules!1712)))) (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))))) (and b!2672434 b_free!75251 (= (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))) (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))))) (and b!2672697 b_free!75275 (= (toChars!6497 (transformation!4696 (rule!7102 (h!36176 (t!223375 l!4335))))) (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))))) (and b!2672443 b_free!75255 (= (toChars!6497 (transformation!4696 (h!36175 rules!1712))) (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))))) b_lambda!81411)))

(declare-fun b_lambda!81413 () Bool)

(assert (= b_lambda!81403 (or b!2672430 b_lambda!81413)))

(declare-fun bs!479570 () Bool)

(declare-fun d!764113 () Bool)

(assert (= bs!479570 (and d!764113 b!2672430)))

(assert (=> bs!479570 (= (dynLambda!13333 lambda!99833 (h!36176 l!4335)) (not (isSeparator!4696 (rule!7102 (h!36176 l!4335)))))))

(assert (=> b!2672517 d!764113))

(declare-fun b_lambda!81415 () Bool)

(assert (= b_lambda!81407 (or (and b!2672445 b_free!75247 (= (toChars!6497 (transformation!4696 (rule!7102 (h!36176 l!4335)))) (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))))) (and b!2672697 b_free!75275 (= (toChars!6497 (transformation!4696 (rule!7102 (h!36176 (t!223375 l!4335))))) (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))))) (and b!2672679 b_free!75271 (= (toChars!6497 (transformation!4696 (h!36175 (t!223374 rules!1712)))) (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))))) (and b!2672443 b_free!75255 (= (toChars!6497 (transformation!4696 (h!36175 rules!1712))) (toChars!6497 (transformation!4696 (rule!7102 separatorToken!152))))) (and b!2672434 b_free!75251) b_lambda!81415)))

(push 1)

(assert (not b!2672696))

(assert (not b_next!75955))

(assert (not b!2672662))

(assert (not b!2672644))

(assert (not b!2672610))

(assert (not b!2672661))

(assert (not b!2672629))

(assert (not b!2672630))

(assert (not b!2672695))

(assert (not b!2672678))

(assert (not b!2672508))

(assert b_and!197405)

(assert (not b!2672571))

(assert (not b!2672642))

(assert (not b_next!75973))

(assert (not b!2672636))

(assert (not b!2672609))

(assert (not d!764103))

(assert (not b_next!75953))

(assert (not b!2672535))

(assert (not d!764075))

(assert tp_is_empty!13811)

(assert (not b!2672608))

(assert (not d!764095))

(assert (not b!2672518))

(assert (not b!2672631))

(assert (not b!2672694))

(assert (not b!2672570))

(assert b_and!197377)

(assert (not b!2672683))

(assert (not b!2672594))

(assert (not b_next!75959))

(assert (not b!2672643))

(assert (not b_next!75949))

(assert b_and!197403)

(assert b_and!197381)

(assert (not d!764089))

(assert b_and!197407)

(assert (not b!2672664))

(assert (not b!2672615))

(assert (not b_lambda!81415))

(assert b_and!197373)

(assert (not b!2672603))

(assert (not b!2672572))

(assert (not tb!149729))

(assert (not b!2672635))

(assert (not b!2672593))

(assert (not b!2672666))

(assert b_and!197413)

(assert (not b_next!75977))

(assert (not b!2672529))

(assert (not b_lambda!81411))

(assert (not b!2672575))

(assert (not d!764091))

(assert (not b!2672649))

(assert b_and!197415)

(assert (not b!2672667))

(assert (not b_next!75975))

(assert (not b!2672677))

(assert b_and!197411)

(assert (not b_next!75951))

(assert (not b!2672616))

(assert (not d!764107))

(assert (not d!764063))

(assert (not b!2672668))

(assert b_and!197409)

(assert (not b!2672663))

(assert (not b_lambda!81413))

(assert (not b!2672682))

(assert (not b!2672681))

(assert (not b_next!75957))

(assert (not d!764071))

(assert (not b_next!75979))

(assert (not b!2672634))

(assert (not d!764111))

(assert (not b!2672530))

(assert (not tb!149735))

(check-sat)

(pop 1)

(push 1)

(assert b_and!197405)

(assert (not b_next!75973))

(assert (not b_next!75953))

(assert (not b_next!75955))

(assert b_and!197377)

(assert b_and!197381)

(assert b_and!197407)

(assert b_and!197373)

(assert b_and!197415)

(assert b_and!197409)

(assert (not b_next!75957))

(assert (not b_next!75979))

(assert (not b_next!75959))

(assert (not b_next!75949))

(assert b_and!197403)

(assert b_and!197413)

(assert (not b_next!75977))

(assert (not b_next!75975))

(assert b_and!197411)

(assert (not b_next!75951))

(check-sat)

(pop 1)

