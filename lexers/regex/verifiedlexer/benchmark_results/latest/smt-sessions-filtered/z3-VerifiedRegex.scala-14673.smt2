; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757324 () Bool)

(assert start!757324)

(declare-fun b!8043736 () Bool)

(declare-fun b_free!136071 () Bool)

(declare-fun b_next!136861 () Bool)

(assert (=> b!8043736 (= b_free!136071 (not b_next!136861))))

(declare-fun tp!2410497 () Bool)

(declare-fun b_and!354507 () Bool)

(assert (=> b!8043736 (= tp!2410497 b_and!354507)))

(declare-fun b_free!136073 () Bool)

(declare-fun b_next!136863 () Bool)

(assert (=> b!8043736 (= b_free!136073 (not b_next!136863))))

(declare-fun tp!2410493 () Bool)

(declare-fun b_and!354509 () Bool)

(assert (=> b!8043736 (= tp!2410493 b_and!354509)))

(declare-fun b!8043738 () Bool)

(declare-fun b_free!136075 () Bool)

(declare-fun b_next!136865 () Bool)

(assert (=> b!8043738 (= b_free!136075 (not b_next!136865))))

(declare-fun tp!2410496 () Bool)

(declare-fun b_and!354511 () Bool)

(assert (=> b!8043738 (= tp!2410496 b_and!354511)))

(declare-fun b_free!136077 () Bool)

(declare-fun b_next!136867 () Bool)

(assert (=> b!8043738 (= b_free!136077 (not b_next!136867))))

(declare-fun tp!2410490 () Bool)

(declare-fun b_and!354513 () Bool)

(assert (=> b!8043738 (= tp!2410490 b_and!354513)))

(declare-fun b!8043733 () Bool)

(declare-fun b_free!136079 () Bool)

(declare-fun b_next!136869 () Bool)

(assert (=> b!8043733 (= b_free!136079 (not b_next!136869))))

(declare-fun tp!2410492 () Bool)

(declare-fun b_and!354515 () Bool)

(assert (=> b!8043733 (= tp!2410492 b_and!354515)))

(declare-fun b_free!136081 () Bool)

(declare-fun b_next!136871 () Bool)

(assert (=> b!8043733 (= b_free!136081 (not b_next!136871))))

(declare-fun tp!2410495 () Bool)

(declare-fun b_and!354517 () Bool)

(assert (=> b!8043733 (= tp!2410495 b_and!354517)))

(declare-fun b!8043731 () Bool)

(declare-fun res!3179636 () Bool)

(declare-fun e!4738397 () Bool)

(assert (=> b!8043731 (=> (not res!3179636) (not e!4738397))))

(declare-datatypes ((C!43936 0))(
  ( (C!43937 (val!32744 Int)) )
))
(declare-datatypes ((List!75332 0))(
  ( (Nil!75206) (Cons!75206 (h!81654 C!43936) (t!391102 List!75332)) )
))
(declare-datatypes ((IArray!32053 0))(
  ( (IArray!32054 (innerList!16084 List!75332)) )
))
(declare-datatypes ((Conc!15996 0))(
  ( (Node!15996 (left!57317 Conc!15996) (right!57647 Conc!15996) (csize!32222 Int) (cheight!16207 Int)) (Leaf!30670 (xs!19394 IArray!32053) (csize!32223 Int)) (Empty!15996) )
))
(declare-datatypes ((List!75333 0))(
  ( (Nil!75207) (Cons!75207 (h!81655 (_ BitVec 16)) (t!391103 List!75333)) )
))
(declare-datatypes ((Regex!21799 0))(
  ( (ElementMatch!21799 (c!1475259 C!43936)) (Concat!30847 (regOne!44110 Regex!21799) (regTwo!44110 Regex!21799)) (EmptyExpr!21799) (Star!21799 (reg!22128 Regex!21799)) (EmptyLang!21799) (Union!21799 (regOne!44111 Regex!21799) (regTwo!44111 Regex!21799)) )
))
(declare-datatypes ((String!85013 0))(
  ( (String!85014 (value!291786 String)) )
))
(declare-datatypes ((TokenValue!9048 0))(
  ( (FloatLiteralValue!18096 (text!63781 List!75333)) (TokenValueExt!9047 (__x!35377 Int)) (Broken!45240 (value!291787 List!75333)) (Object!9173) (End!9048) (Def!9048) (Underscore!9048) (Match!9048) (Else!9048) (Error!9048) (Case!9048) (If!9048) (Extends!9048) (Abstract!9048) (Class!9048) (Val!9048) (DelimiterValue!18096 (del!9108 List!75333)) (KeywordValue!9054 (value!291788 List!75333)) (CommentValue!18096 (value!291789 List!75333)) (WhitespaceValue!18096 (value!291790 List!75333)) (IndentationValue!9048 (value!291791 List!75333)) (String!85015) (Int32!9048) (Broken!45241 (value!291792 List!75333)) (Boolean!9049) (Unit!171081) (OperatorValue!9051 (op!9108 List!75333)) (IdentifierValue!18096 (value!291793 List!75333)) (IdentifierValue!18097 (value!291794 List!75333)) (WhitespaceValue!18097 (value!291795 List!75333)) (True!18096) (False!18096) (Broken!45242 (value!291796 List!75333)) (Broken!45243 (value!291797 List!75333)) (True!18097) (RightBrace!9048) (RightBracket!9048) (Colon!9048) (Null!9048) (Comma!9048) (LeftBracket!9048) (False!18097) (LeftBrace!9048) (ImaginaryLiteralValue!9048 (text!63782 List!75333)) (StringLiteralValue!27144 (value!291798 List!75333)) (EOFValue!9048 (value!291799 List!75333)) (IdentValue!9048 (value!291800 List!75333)) (DelimiterValue!18097 (value!291801 List!75333)) (DedentValue!9048 (value!291802 List!75333)) (NewLineValue!9048 (value!291803 List!75333)) (IntegerValue!27144 (value!291804 (_ BitVec 32)) (text!63783 List!75333)) (IntegerValue!27145 (value!291805 Int) (text!63784 List!75333)) (Times!9048) (Or!9048) (Equal!9048) (Minus!9048) (Broken!45244 (value!291806 List!75333)) (And!9048) (Div!9048) (LessEqual!9048) (Mod!9048) (Concat!30848) (Not!9048) (Plus!9048) (SpaceValue!9048 (value!291807 List!75333)) (IntegerValue!27146 (value!291808 Int) (text!63785 List!75333)) (StringLiteralValue!27145 (text!63786 List!75333)) (FloatLiteralValue!18097 (text!63787 List!75333)) (BytesLiteralValue!9048 (value!291809 List!75333)) (CommentValue!18097 (value!291810 List!75333)) (StringLiteralValue!27146 (value!291811 List!75333)) (ErrorTokenValue!9048 (msg!9109 List!75333)) )
))
(declare-datatypes ((BalanceConc!30948 0))(
  ( (BalanceConc!30949 (c!1475260 Conc!15996)) )
))
(declare-datatypes ((TokenValueInjection!17404 0))(
  ( (TokenValueInjection!17405 (toValue!11803 Int) (toChars!11662 Int)) )
))
(declare-datatypes ((Rule!17256 0))(
  ( (Rule!17257 (regex!8728 Regex!21799) (tag!9592 String!85013) (isSeparator!8728 Bool) (transformation!8728 TokenValueInjection!17404)) )
))
(declare-datatypes ((List!75334 0))(
  ( (Nil!75208) (Cons!75208 (h!81656 Rule!17256) (t!391104 List!75334)) )
))
(declare-fun rules!4166 () List!75334)

(declare-fun rSep!153 () Rule!17256)

(declare-fun contains!21041 (List!75334 Rule!17256) Bool)

(assert (=> b!8043731 (= res!3179636 (contains!21041 rules!4166 rSep!153))))

(declare-fun b!8043732 () Bool)

(declare-fun res!3179635 () Bool)

(assert (=> b!8043732 (=> (not res!3179635) (not e!4738397))))

(declare-fun c!6885 () C!43936)

(declare-fun contains!21042 (List!75332 C!43936) Bool)

(declare-fun usedCharacters!1306 (Regex!21799) List!75332)

(assert (=> b!8043732 (= res!3179635 (contains!21042 (usedCharacters!1306 (regex!8728 rSep!153)) c!6885))))

(declare-fun e!4738406 () Bool)

(assert (=> b!8043733 (= e!4738406 (and tp!2410492 tp!2410495))))

(declare-fun b!8043734 () Bool)

(declare-fun res!3179631 () Bool)

(assert (=> b!8043734 (=> (not res!3179631) (not e!4738397))))

(declare-fun rNSep!153 () Rule!17256)

(declare-fun ruleDisjointCharsFromAllFromOtherType!1002 (Rule!17256 List!75334) Bool)

(assert (=> b!8043734 (= res!3179631 (ruleDisjointCharsFromAllFromOtherType!1002 rNSep!153 rules!4166))))

(declare-fun tp!2410491 () Bool)

(declare-fun e!4738401 () Bool)

(declare-fun b!8043735 () Bool)

(declare-fun inv!96987 (String!85013) Bool)

(declare-fun inv!96989 (TokenValueInjection!17404) Bool)

(assert (=> b!8043735 (= e!4738401 (and tp!2410491 (inv!96987 (tag!9592 rNSep!153)) (inv!96989 (transformation!8728 rNSep!153)) e!4738406))))

(declare-fun e!4738396 () Bool)

(assert (=> b!8043736 (= e!4738396 (and tp!2410497 tp!2410493))))

(declare-fun b!8043737 () Bool)

(declare-fun e!4738407 () Bool)

(declare-fun e!4738399 () Bool)

(declare-fun tp!2410489 () Bool)

(assert (=> b!8043737 (= e!4738399 (and tp!2410489 (inv!96987 (tag!9592 rSep!153)) (inv!96989 (transformation!8728 rSep!153)) e!4738407))))

(declare-fun res!3179634 () Bool)

(assert (=> start!757324 (=> (not res!3179634) (not e!4738397))))

(declare-datatypes ((LexerInterface!8318 0))(
  ( (LexerInterfaceExt!8315 (__x!35378 Int)) (Lexer!8316) )
))
(declare-fun thiss!27104 () LexerInterface!8318)

(get-info :version)

(assert (=> start!757324 (= res!3179634 ((_ is Lexer!8316) thiss!27104))))

(assert (=> start!757324 e!4738397))

(declare-fun e!4738400 () Bool)

(assert (=> start!757324 e!4738400))

(declare-fun tp_is_empty!54593 () Bool)

(assert (=> start!757324 tp_is_empty!54593))

(assert (=> start!757324 true))

(assert (=> start!757324 e!4738401))

(assert (=> start!757324 e!4738399))

(assert (=> b!8043738 (= e!4738407 (and tp!2410496 tp!2410490))))

(declare-fun b!8043739 () Bool)

(declare-fun e!4738404 () Bool)

(assert (=> b!8043739 (= e!4738397 (not e!4738404))))

(declare-fun res!3179637 () Bool)

(assert (=> b!8043739 (=> res!3179637 e!4738404)))

(assert (=> b!8043739 (= res!3179637 (not (contains!21041 (t!391104 rules!4166) rSep!153)))))

(declare-fun rulesInvariant!6786 (LexerInterface!8318 List!75334) Bool)

(assert (=> b!8043739 (rulesInvariant!6786 thiss!27104 (t!391104 rules!4166))))

(declare-datatypes ((Unit!171082 0))(
  ( (Unit!171083) )
))
(declare-fun lt!2722484 () Unit!171082)

(declare-fun lemmaInvariantOnRulesThenOnTail!894 (LexerInterface!8318 Rule!17256 List!75334) Unit!171082)

(assert (=> b!8043739 (= lt!2722484 (lemmaInvariantOnRulesThenOnTail!894 thiss!27104 (h!81656 rules!4166) (t!391104 rules!4166)))))

(declare-fun b!8043740 () Bool)

(declare-fun res!3179633 () Bool)

(assert (=> b!8043740 (=> (not res!3179633) (not e!4738397))))

(assert (=> b!8043740 (= res!3179633 (and (not (isSeparator!8728 rNSep!153)) (isSeparator!8728 rSep!153)))))

(declare-fun e!4738402 () Bool)

(declare-fun tp!2410488 () Bool)

(declare-fun b!8043741 () Bool)

(assert (=> b!8043741 (= e!4738402 (and tp!2410488 (inv!96987 (tag!9592 (h!81656 rules!4166))) (inv!96989 (transformation!8728 (h!81656 rules!4166))) e!4738396))))

(declare-fun b!8043742 () Bool)

(declare-fun res!3179632 () Bool)

(assert (=> b!8043742 (=> (not res!3179632) (not e!4738397))))

(assert (=> b!8043742 (= res!3179632 (and (or (not ((_ is Cons!75208) rules!4166)) (not (= (h!81656 rules!4166) rSep!153))) ((_ is Cons!75208) rules!4166)))))

(declare-fun b!8043743 () Bool)

(assert (=> b!8043743 (= e!4738404 (ruleDisjointCharsFromAllFromOtherType!1002 rNSep!153 (t!391104 rules!4166)))))

(declare-fun b!8043744 () Bool)

(declare-fun res!3179638 () Bool)

(assert (=> b!8043744 (=> (not res!3179638) (not e!4738397))))

(assert (=> b!8043744 (= res!3179638 (rulesInvariant!6786 thiss!27104 rules!4166))))

(declare-fun b!8043745 () Bool)

(declare-fun tp!2410494 () Bool)

(assert (=> b!8043745 (= e!4738400 (and e!4738402 tp!2410494))))

(assert (= (and start!757324 res!3179634) b!8043744))

(assert (= (and b!8043744 res!3179638) b!8043731))

(assert (= (and b!8043731 res!3179636) b!8043732))

(assert (= (and b!8043732 res!3179635) b!8043740))

(assert (= (and b!8043740 res!3179633) b!8043734))

(assert (= (and b!8043734 res!3179631) b!8043742))

(assert (= (and b!8043742 res!3179632) b!8043739))

(assert (= (and b!8043739 (not res!3179637)) b!8043743))

(assert (= b!8043741 b!8043736))

(assert (= b!8043745 b!8043741))

(assert (= (and start!757324 ((_ is Cons!75208) rules!4166)) b!8043745))

(assert (= b!8043735 b!8043733))

(assert (= start!757324 b!8043735))

(assert (= b!8043737 b!8043738))

(assert (= start!757324 b!8043737))

(declare-fun m!8396964 () Bool)

(assert (=> b!8043735 m!8396964))

(declare-fun m!8396966 () Bool)

(assert (=> b!8043735 m!8396966))

(declare-fun m!8396968 () Bool)

(assert (=> b!8043739 m!8396968))

(declare-fun m!8396970 () Bool)

(assert (=> b!8043739 m!8396970))

(declare-fun m!8396972 () Bool)

(assert (=> b!8043739 m!8396972))

(declare-fun m!8396974 () Bool)

(assert (=> b!8043731 m!8396974))

(declare-fun m!8396976 () Bool)

(assert (=> b!8043741 m!8396976))

(declare-fun m!8396978 () Bool)

(assert (=> b!8043741 m!8396978))

(declare-fun m!8396980 () Bool)

(assert (=> b!8043737 m!8396980))

(declare-fun m!8396982 () Bool)

(assert (=> b!8043737 m!8396982))

(declare-fun m!8396984 () Bool)

(assert (=> b!8043744 m!8396984))

(declare-fun m!8396986 () Bool)

(assert (=> b!8043743 m!8396986))

(declare-fun m!8396988 () Bool)

(assert (=> b!8043734 m!8396988))

(declare-fun m!8396990 () Bool)

(assert (=> b!8043732 m!8396990))

(assert (=> b!8043732 m!8396990))

(declare-fun m!8396992 () Bool)

(assert (=> b!8043732 m!8396992))

(check-sat (not b!8043734) b_and!354515 (not b_next!136869) (not b!8043735) (not b!8043745) b_and!354509 (not b_next!136861) (not b_next!136863) (not b!8043731) tp_is_empty!54593 (not b!8043732) b_and!354513 (not b!8043741) b_and!354507 (not b!8043739) (not b!8043744) b_and!354511 (not b_next!136867) b_and!354517 (not b_next!136871) (not b!8043737) (not b!8043743) (not b_next!136865))
(check-sat b_and!354507 b_and!354515 b_and!354511 (not b_next!136869) (not b_next!136871) b_and!354509 (not b_next!136865) (not b_next!136861) (not b_next!136863) b_and!354513 (not b_next!136867) b_and!354517)
(get-model)

(declare-fun b!8043763 () Bool)

(declare-fun e!4738423 () Bool)

(declare-fun call!746609 () Bool)

(assert (=> b!8043763 (= e!4738423 call!746609)))

(declare-fun b!8043764 () Bool)

(declare-fun e!4738425 () Bool)

(declare-fun e!4738424 () Bool)

(assert (=> b!8043764 (= e!4738425 e!4738424)))

(declare-fun res!3179662 () Bool)

(declare-fun rulesUseDisjointChars!398 (Rule!17256 Rule!17256) Bool)

(assert (=> b!8043764 (= res!3179662 (rulesUseDisjointChars!398 rNSep!153 (h!81656 rules!4166)))))

(assert (=> b!8043764 (=> (not res!3179662) (not e!4738424))))

(declare-fun b!8043765 () Bool)

(assert (=> b!8043765 (= e!4738425 e!4738423)))

(declare-fun res!3179663 () Bool)

(assert (=> b!8043765 (= res!3179663 (not ((_ is Cons!75208) rules!4166)))))

(assert (=> b!8043765 (=> res!3179663 e!4738423)))

(declare-fun d!2396062 () Bool)

(declare-fun c!1475263 () Bool)

(assert (=> d!2396062 (= c!1475263 (and ((_ is Cons!75208) rules!4166) (not (= (isSeparator!8728 (h!81656 rules!4166)) (isSeparator!8728 rNSep!153)))))))

(assert (=> d!2396062 (= (ruleDisjointCharsFromAllFromOtherType!1002 rNSep!153 rules!4166) e!4738425)))

(declare-fun b!8043766 () Bool)

(assert (=> b!8043766 (= e!4738424 call!746609)))

(declare-fun bm!746604 () Bool)

(assert (=> bm!746604 (= call!746609 (ruleDisjointCharsFromAllFromOtherType!1002 rNSep!153 (t!391104 rules!4166)))))

(assert (= (and d!2396062 c!1475263) b!8043764))

(assert (= (and d!2396062 (not c!1475263)) b!8043765))

(assert (= (and b!8043764 res!3179662) b!8043766))

(assert (= (and b!8043765 (not res!3179663)) b!8043763))

(assert (= (or b!8043766 b!8043763) bm!746604))

(declare-fun m!8397004 () Bool)

(assert (=> b!8043764 m!8397004))

(assert (=> bm!746604 m!8396986))

(assert (=> b!8043734 d!2396062))

(declare-fun d!2396068 () Bool)

(declare-fun res!3179666 () Bool)

(declare-fun e!4738428 () Bool)

(assert (=> d!2396068 (=> (not res!3179666) (not e!4738428))))

(declare-fun rulesValid!3150 (LexerInterface!8318 List!75334) Bool)

(assert (=> d!2396068 (= res!3179666 (rulesValid!3150 thiss!27104 rules!4166))))

(assert (=> d!2396068 (= (rulesInvariant!6786 thiss!27104 rules!4166) e!4738428)))

(declare-fun b!8043769 () Bool)

(declare-datatypes ((List!75336 0))(
  ( (Nil!75210) (Cons!75210 (h!81658 String!85013) (t!391106 List!75336)) )
))
(declare-fun noDuplicateTag!3311 (LexerInterface!8318 List!75334 List!75336) Bool)

(assert (=> b!8043769 (= e!4738428 (noDuplicateTag!3311 thiss!27104 rules!4166 Nil!75210))))

(assert (= (and d!2396068 res!3179666) b!8043769))

(declare-fun m!8397006 () Bool)

(assert (=> d!2396068 m!8397006))

(declare-fun m!8397008 () Bool)

(assert (=> b!8043769 m!8397008))

(assert (=> b!8043744 d!2396068))

(declare-fun d!2396070 () Bool)

(declare-fun lt!2722493 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16060 (List!75334) (InoxSet Rule!17256))

(assert (=> d!2396070 (= lt!2722493 (select (content!16060 (t!391104 rules!4166)) rSep!153))))

(declare-fun e!4738434 () Bool)

(assert (=> d!2396070 (= lt!2722493 e!4738434)))

(declare-fun res!3179672 () Bool)

(assert (=> d!2396070 (=> (not res!3179672) (not e!4738434))))

(assert (=> d!2396070 (= res!3179672 ((_ is Cons!75208) (t!391104 rules!4166)))))

(assert (=> d!2396070 (= (contains!21041 (t!391104 rules!4166) rSep!153) lt!2722493)))

(declare-fun b!8043774 () Bool)

(declare-fun e!4738433 () Bool)

(assert (=> b!8043774 (= e!4738434 e!4738433)))

(declare-fun res!3179671 () Bool)

(assert (=> b!8043774 (=> res!3179671 e!4738433)))

(assert (=> b!8043774 (= res!3179671 (= (h!81656 (t!391104 rules!4166)) rSep!153))))

(declare-fun b!8043775 () Bool)

(assert (=> b!8043775 (= e!4738433 (contains!21041 (t!391104 (t!391104 rules!4166)) rSep!153))))

(assert (= (and d!2396070 res!3179672) b!8043774))

(assert (= (and b!8043774 (not res!3179671)) b!8043775))

(declare-fun m!8397014 () Bool)

(assert (=> d!2396070 m!8397014))

(declare-fun m!8397016 () Bool)

(assert (=> d!2396070 m!8397016))

(declare-fun m!8397018 () Bool)

(assert (=> b!8043775 m!8397018))

(assert (=> b!8043739 d!2396070))

(declare-fun d!2396076 () Bool)

(declare-fun res!3179675 () Bool)

(declare-fun e!4738437 () Bool)

(assert (=> d!2396076 (=> (not res!3179675) (not e!4738437))))

(assert (=> d!2396076 (= res!3179675 (rulesValid!3150 thiss!27104 (t!391104 rules!4166)))))

(assert (=> d!2396076 (= (rulesInvariant!6786 thiss!27104 (t!391104 rules!4166)) e!4738437)))

(declare-fun b!8043778 () Bool)

(assert (=> b!8043778 (= e!4738437 (noDuplicateTag!3311 thiss!27104 (t!391104 rules!4166) Nil!75210))))

(assert (= (and d!2396076 res!3179675) b!8043778))

(declare-fun m!8397020 () Bool)

(assert (=> d!2396076 m!8397020))

(declare-fun m!8397022 () Bool)

(assert (=> b!8043778 m!8397022))

(assert (=> b!8043739 d!2396076))

(declare-fun d!2396078 () Bool)

(assert (=> d!2396078 (rulesInvariant!6786 thiss!27104 (t!391104 rules!4166))))

(declare-fun lt!2722498 () Unit!171082)

(declare-fun choose!60481 (LexerInterface!8318 Rule!17256 List!75334) Unit!171082)

(assert (=> d!2396078 (= lt!2722498 (choose!60481 thiss!27104 (h!81656 rules!4166) (t!391104 rules!4166)))))

(assert (=> d!2396078 (rulesInvariant!6786 thiss!27104 (Cons!75208 (h!81656 rules!4166) (t!391104 rules!4166)))))

(assert (=> d!2396078 (= (lemmaInvariantOnRulesThenOnTail!894 thiss!27104 (h!81656 rules!4166) (t!391104 rules!4166)) lt!2722498)))

(declare-fun bs!1971632 () Bool)

(assert (= bs!1971632 d!2396078))

(assert (=> bs!1971632 m!8396970))

(declare-fun m!8397028 () Bool)

(assert (=> bs!1971632 m!8397028))

(declare-fun m!8397030 () Bool)

(assert (=> bs!1971632 m!8397030))

(assert (=> b!8043739 d!2396078))

(declare-fun d!2396082 () Bool)

(declare-fun lt!2722502 () Bool)

(declare-fun content!16061 (List!75332) (InoxSet C!43936))

(assert (=> d!2396082 (= lt!2722502 (select (content!16061 (usedCharacters!1306 (regex!8728 rSep!153))) c!6885))))

(declare-fun e!4738455 () Bool)

(assert (=> d!2396082 (= lt!2722502 e!4738455)))

(declare-fun res!3179688 () Bool)

(assert (=> d!2396082 (=> (not res!3179688) (not e!4738455))))

(assert (=> d!2396082 (= res!3179688 ((_ is Cons!75206) (usedCharacters!1306 (regex!8728 rSep!153))))))

(assert (=> d!2396082 (= (contains!21042 (usedCharacters!1306 (regex!8728 rSep!153)) c!6885) lt!2722502)))

(declare-fun b!8043802 () Bool)

(declare-fun e!4738456 () Bool)

(assert (=> b!8043802 (= e!4738455 e!4738456)))

(declare-fun res!3179687 () Bool)

(assert (=> b!8043802 (=> res!3179687 e!4738456)))

(assert (=> b!8043802 (= res!3179687 (= (h!81654 (usedCharacters!1306 (regex!8728 rSep!153))) c!6885))))

(declare-fun b!8043803 () Bool)

(assert (=> b!8043803 (= e!4738456 (contains!21042 (t!391102 (usedCharacters!1306 (regex!8728 rSep!153))) c!6885))))

(assert (= (and d!2396082 res!3179688) b!8043802))

(assert (= (and b!8043802 (not res!3179687)) b!8043803))

(assert (=> d!2396082 m!8396990))

(declare-fun m!8397038 () Bool)

(assert (=> d!2396082 m!8397038))

(declare-fun m!8397040 () Bool)

(assert (=> d!2396082 m!8397040))

(declare-fun m!8397042 () Bool)

(assert (=> b!8043803 m!8397042))

(assert (=> b!8043732 d!2396082))

(declare-fun b!8043835 () Bool)

(declare-fun e!4738475 () List!75332)

(declare-fun e!4738474 () List!75332)

(assert (=> b!8043835 (= e!4738475 e!4738474)))

(declare-fun c!1475286 () Bool)

(assert (=> b!8043835 (= c!1475286 ((_ is Union!21799) (regex!8728 rSep!153)))))

(declare-fun b!8043836 () Bool)

(declare-fun e!4738477 () List!75332)

(assert (=> b!8043836 (= e!4738477 Nil!75206)))

(declare-fun call!746632 () List!75332)

(declare-fun call!746630 () List!75332)

(declare-fun bm!746625 () Bool)

(declare-fun call!746631 () List!75332)

(declare-fun ++!18635 (List!75332 List!75332) List!75332)

(assert (=> bm!746625 (= call!746630 (++!18635 (ite c!1475286 call!746632 call!746631) (ite c!1475286 call!746631 call!746632)))))

(declare-fun d!2396086 () Bool)

(declare-fun c!1475285 () Bool)

(assert (=> d!2396086 (= c!1475285 (or ((_ is EmptyExpr!21799) (regex!8728 rSep!153)) ((_ is EmptyLang!21799) (regex!8728 rSep!153))))))

(assert (=> d!2396086 (= (usedCharacters!1306 (regex!8728 rSep!153)) e!4738477)))

(declare-fun bm!746626 () Bool)

(declare-fun call!746633 () List!75332)

(assert (=> bm!746626 (= call!746631 call!746633)))

(declare-fun b!8043837 () Bool)

(declare-fun e!4738476 () List!75332)

(assert (=> b!8043837 (= e!4738476 (Cons!75206 (c!1475259 (regex!8728 rSep!153)) Nil!75206))))

(declare-fun b!8043838 () Bool)

(assert (=> b!8043838 (= e!4738474 call!746630)))

(declare-fun b!8043839 () Bool)

(assert (=> b!8043839 (= e!4738475 call!746633)))

(declare-fun b!8043840 () Bool)

(declare-fun c!1475287 () Bool)

(assert (=> b!8043840 (= c!1475287 ((_ is Star!21799) (regex!8728 rSep!153)))))

(assert (=> b!8043840 (= e!4738476 e!4738475)))

(declare-fun b!8043841 () Bool)

(assert (=> b!8043841 (= e!4738477 e!4738476)))

(declare-fun c!1475284 () Bool)

(assert (=> b!8043841 (= c!1475284 ((_ is ElementMatch!21799) (regex!8728 rSep!153)))))

(declare-fun bm!746627 () Bool)

(assert (=> bm!746627 (= call!746633 (usedCharacters!1306 (ite c!1475287 (reg!22128 (regex!8728 rSep!153)) (ite c!1475286 (regTwo!44111 (regex!8728 rSep!153)) (regOne!44110 (regex!8728 rSep!153))))))))

(declare-fun bm!746628 () Bool)

(assert (=> bm!746628 (= call!746632 (usedCharacters!1306 (ite c!1475286 (regOne!44111 (regex!8728 rSep!153)) (regTwo!44110 (regex!8728 rSep!153)))))))

(declare-fun b!8043842 () Bool)

(assert (=> b!8043842 (= e!4738474 call!746630)))

(assert (= (and d!2396086 c!1475285) b!8043836))

(assert (= (and d!2396086 (not c!1475285)) b!8043841))

(assert (= (and b!8043841 c!1475284) b!8043837))

(assert (= (and b!8043841 (not c!1475284)) b!8043840))

(assert (= (and b!8043840 c!1475287) b!8043839))

(assert (= (and b!8043840 (not c!1475287)) b!8043835))

(assert (= (and b!8043835 c!1475286) b!8043842))

(assert (= (and b!8043835 (not c!1475286)) b!8043838))

(assert (= (or b!8043842 b!8043838) bm!746628))

(assert (= (or b!8043842 b!8043838) bm!746626))

(assert (= (or b!8043842 b!8043838) bm!746625))

(assert (= (or b!8043839 bm!746626) bm!746627))

(declare-fun m!8397058 () Bool)

(assert (=> bm!746625 m!8397058))

(declare-fun m!8397060 () Bool)

(assert (=> bm!746627 m!8397060))

(declare-fun m!8397062 () Bool)

(assert (=> bm!746628 m!8397062))

(assert (=> b!8043732 d!2396086))

(declare-fun b!8043849 () Bool)

(declare-fun e!4738482 () Bool)

(declare-fun call!746634 () Bool)

(assert (=> b!8043849 (= e!4738482 call!746634)))

(declare-fun b!8043850 () Bool)

(declare-fun e!4738484 () Bool)

(declare-fun e!4738483 () Bool)

(assert (=> b!8043850 (= e!4738484 e!4738483)))

(declare-fun res!3179694 () Bool)

(assert (=> b!8043850 (= res!3179694 (rulesUseDisjointChars!398 rNSep!153 (h!81656 (t!391104 rules!4166))))))

(assert (=> b!8043850 (=> (not res!3179694) (not e!4738483))))

(declare-fun b!8043851 () Bool)

(assert (=> b!8043851 (= e!4738484 e!4738482)))

(declare-fun res!3179695 () Bool)

(assert (=> b!8043851 (= res!3179695 (not ((_ is Cons!75208) (t!391104 rules!4166))))))

(assert (=> b!8043851 (=> res!3179695 e!4738482)))

(declare-fun d!2396096 () Bool)

(declare-fun c!1475290 () Bool)

(assert (=> d!2396096 (= c!1475290 (and ((_ is Cons!75208) (t!391104 rules!4166)) (not (= (isSeparator!8728 (h!81656 (t!391104 rules!4166))) (isSeparator!8728 rNSep!153)))))))

(assert (=> d!2396096 (= (ruleDisjointCharsFromAllFromOtherType!1002 rNSep!153 (t!391104 rules!4166)) e!4738484)))

(declare-fun b!8043852 () Bool)

(assert (=> b!8043852 (= e!4738483 call!746634)))

(declare-fun bm!746629 () Bool)

(assert (=> bm!746629 (= call!746634 (ruleDisjointCharsFromAllFromOtherType!1002 rNSep!153 (t!391104 (t!391104 rules!4166))))))

(assert (= (and d!2396096 c!1475290) b!8043850))

(assert (= (and d!2396096 (not c!1475290)) b!8043851))

(assert (= (and b!8043850 res!3179694) b!8043852))

(assert (= (and b!8043851 (not res!3179695)) b!8043849))

(assert (= (or b!8043852 b!8043849) bm!746629))

(declare-fun m!8397064 () Bool)

(assert (=> b!8043850 m!8397064))

(declare-fun m!8397066 () Bool)

(assert (=> bm!746629 m!8397066))

(assert (=> b!8043743 d!2396096))

(declare-fun d!2396098 () Bool)

(assert (=> d!2396098 (= (inv!96987 (tag!9592 rSep!153)) (= (mod (str.len (value!291786 (tag!9592 rSep!153))) 2) 0))))

(assert (=> b!8043737 d!2396098))

(declare-fun d!2396100 () Bool)

(declare-fun res!3179706 () Bool)

(declare-fun e!4738505 () Bool)

(assert (=> d!2396100 (=> (not res!3179706) (not e!4738505))))

(declare-fun semiInverseModEq!3875 (Int Int) Bool)

(assert (=> d!2396100 (= res!3179706 (semiInverseModEq!3875 (toChars!11662 (transformation!8728 rSep!153)) (toValue!11803 (transformation!8728 rSep!153))))))

(assert (=> d!2396100 (= (inv!96989 (transformation!8728 rSep!153)) e!4738505)))

(declare-fun b!8043875 () Bool)

(declare-fun equivClasses!3690 (Int Int) Bool)

(assert (=> b!8043875 (= e!4738505 (equivClasses!3690 (toChars!11662 (transformation!8728 rSep!153)) (toValue!11803 (transformation!8728 rSep!153))))))

(assert (= (and d!2396100 res!3179706) b!8043875))

(declare-fun m!8397082 () Bool)

(assert (=> d!2396100 m!8397082))

(declare-fun m!8397084 () Bool)

(assert (=> b!8043875 m!8397084))

(assert (=> b!8043737 d!2396100))

(declare-fun d!2396110 () Bool)

(declare-fun lt!2722504 () Bool)

(assert (=> d!2396110 (= lt!2722504 (select (content!16060 rules!4166) rSep!153))))

(declare-fun e!4738511 () Bool)

(assert (=> d!2396110 (= lt!2722504 e!4738511)))

(declare-fun res!3179708 () Bool)

(assert (=> d!2396110 (=> (not res!3179708) (not e!4738511))))

(assert (=> d!2396110 (= res!3179708 ((_ is Cons!75208) rules!4166))))

(assert (=> d!2396110 (= (contains!21041 rules!4166 rSep!153) lt!2722504)))

(declare-fun b!8043879 () Bool)

(declare-fun e!4738510 () Bool)

(assert (=> b!8043879 (= e!4738511 e!4738510)))

(declare-fun res!3179707 () Bool)

(assert (=> b!8043879 (=> res!3179707 e!4738510)))

(assert (=> b!8043879 (= res!3179707 (= (h!81656 rules!4166) rSep!153))))

(declare-fun b!8043880 () Bool)

(assert (=> b!8043880 (= e!4738510 (contains!21041 (t!391104 rules!4166) rSep!153))))

(assert (= (and d!2396110 res!3179708) b!8043879))

(assert (= (and b!8043879 (not res!3179707)) b!8043880))

(declare-fun m!8397090 () Bool)

(assert (=> d!2396110 m!8397090))

(declare-fun m!8397092 () Bool)

(assert (=> d!2396110 m!8397092))

(assert (=> b!8043880 m!8396968))

(assert (=> b!8043731 d!2396110))

(declare-fun d!2396112 () Bool)

(assert (=> d!2396112 (= (inv!96987 (tag!9592 (h!81656 rules!4166))) (= (mod (str.len (value!291786 (tag!9592 (h!81656 rules!4166)))) 2) 0))))

(assert (=> b!8043741 d!2396112))

(declare-fun d!2396114 () Bool)

(declare-fun res!3179709 () Bool)

(declare-fun e!4738514 () Bool)

(assert (=> d!2396114 (=> (not res!3179709) (not e!4738514))))

(assert (=> d!2396114 (= res!3179709 (semiInverseModEq!3875 (toChars!11662 (transformation!8728 (h!81656 rules!4166))) (toValue!11803 (transformation!8728 (h!81656 rules!4166)))))))

(assert (=> d!2396114 (= (inv!96989 (transformation!8728 (h!81656 rules!4166))) e!4738514)))

(declare-fun b!8043891 () Bool)

(assert (=> b!8043891 (= e!4738514 (equivClasses!3690 (toChars!11662 (transformation!8728 (h!81656 rules!4166))) (toValue!11803 (transformation!8728 (h!81656 rules!4166)))))))

(assert (= (and d!2396114 res!3179709) b!8043891))

(declare-fun m!8397094 () Bool)

(assert (=> d!2396114 m!8397094))

(declare-fun m!8397096 () Bool)

(assert (=> b!8043891 m!8397096))

(assert (=> b!8043741 d!2396114))

(declare-fun d!2396116 () Bool)

(assert (=> d!2396116 (= (inv!96987 (tag!9592 rNSep!153)) (= (mod (str.len (value!291786 (tag!9592 rNSep!153))) 2) 0))))

(assert (=> b!8043735 d!2396116))

(declare-fun d!2396118 () Bool)

(declare-fun res!3179710 () Bool)

(declare-fun e!4738515 () Bool)

(assert (=> d!2396118 (=> (not res!3179710) (not e!4738515))))

(assert (=> d!2396118 (= res!3179710 (semiInverseModEq!3875 (toChars!11662 (transformation!8728 rNSep!153)) (toValue!11803 (transformation!8728 rNSep!153))))))

(assert (=> d!2396118 (= (inv!96989 (transformation!8728 rNSep!153)) e!4738515)))

(declare-fun b!8043892 () Bool)

(assert (=> b!8043892 (= e!4738515 (equivClasses!3690 (toChars!11662 (transformation!8728 rNSep!153)) (toValue!11803 (transformation!8728 rNSep!153))))))

(assert (= (and d!2396118 res!3179710) b!8043892))

(declare-fun m!8397098 () Bool)

(assert (=> d!2396118 m!8397098))

(declare-fun m!8397100 () Bool)

(assert (=> b!8043892 m!8397100))

(assert (=> b!8043735 d!2396118))

(declare-fun b!8043915 () Bool)

(declare-fun b_free!136087 () Bool)

(declare-fun b_next!136877 () Bool)

(assert (=> b!8043915 (= b_free!136087 (not b_next!136877))))

(declare-fun tp!2410544 () Bool)

(declare-fun b_and!354523 () Bool)

(assert (=> b!8043915 (= tp!2410544 b_and!354523)))

(declare-fun b_free!136089 () Bool)

(declare-fun b_next!136879 () Bool)

(assert (=> b!8043915 (= b_free!136089 (not b_next!136879))))

(declare-fun tp!2410545 () Bool)

(declare-fun b_and!354525 () Bool)

(assert (=> b!8043915 (= tp!2410545 b_and!354525)))

(declare-fun e!4738528 () Bool)

(assert (=> b!8043915 (= e!4738528 (and tp!2410544 tp!2410545))))

(declare-fun b!8043914 () Bool)

(declare-fun tp!2410546 () Bool)

(declare-fun e!4738529 () Bool)

(assert (=> b!8043914 (= e!4738529 (and tp!2410546 (inv!96987 (tag!9592 (h!81656 (t!391104 rules!4166)))) (inv!96989 (transformation!8728 (h!81656 (t!391104 rules!4166)))) e!4738528))))

(declare-fun b!8043913 () Bool)

(declare-fun e!4738527 () Bool)

(declare-fun tp!2410543 () Bool)

(assert (=> b!8043913 (= e!4738527 (and e!4738529 tp!2410543))))

(assert (=> b!8043745 (= tp!2410494 e!4738527)))

(assert (= b!8043914 b!8043915))

(assert (= b!8043913 b!8043914))

(assert (= (and b!8043745 ((_ is Cons!75208) (t!391104 rules!4166))) b!8043913))

(declare-fun m!8397102 () Bool)

(assert (=> b!8043914 m!8397102))

(declare-fun m!8397104 () Bool)

(assert (=> b!8043914 m!8397104))

(declare-fun b!8043927 () Bool)

(declare-fun e!4738533 () Bool)

(declare-fun tp!2410557 () Bool)

(declare-fun tp!2410559 () Bool)

(assert (=> b!8043927 (= e!4738533 (and tp!2410557 tp!2410559))))

(assert (=> b!8043737 (= tp!2410489 e!4738533)))

(declare-fun b!8043929 () Bool)

(declare-fun tp!2410561 () Bool)

(declare-fun tp!2410560 () Bool)

(assert (=> b!8043929 (= e!4738533 (and tp!2410561 tp!2410560))))

(declare-fun b!8043928 () Bool)

(declare-fun tp!2410558 () Bool)

(assert (=> b!8043928 (= e!4738533 tp!2410558)))

(declare-fun b!8043926 () Bool)

(assert (=> b!8043926 (= e!4738533 tp_is_empty!54593)))

(assert (= (and b!8043737 ((_ is ElementMatch!21799) (regex!8728 rSep!153))) b!8043926))

(assert (= (and b!8043737 ((_ is Concat!30847) (regex!8728 rSep!153))) b!8043927))

(assert (= (and b!8043737 ((_ is Star!21799) (regex!8728 rSep!153))) b!8043928))

(assert (= (and b!8043737 ((_ is Union!21799) (regex!8728 rSep!153))) b!8043929))

(declare-fun b!8043931 () Bool)

(declare-fun e!4738534 () Bool)

(declare-fun tp!2410562 () Bool)

(declare-fun tp!2410564 () Bool)

(assert (=> b!8043931 (= e!4738534 (and tp!2410562 tp!2410564))))

(assert (=> b!8043741 (= tp!2410488 e!4738534)))

(declare-fun b!8043933 () Bool)

(declare-fun tp!2410566 () Bool)

(declare-fun tp!2410565 () Bool)

(assert (=> b!8043933 (= e!4738534 (and tp!2410566 tp!2410565))))

(declare-fun b!8043932 () Bool)

(declare-fun tp!2410563 () Bool)

(assert (=> b!8043932 (= e!4738534 tp!2410563)))

(declare-fun b!8043930 () Bool)

(assert (=> b!8043930 (= e!4738534 tp_is_empty!54593)))

(assert (= (and b!8043741 ((_ is ElementMatch!21799) (regex!8728 (h!81656 rules!4166)))) b!8043930))

(assert (= (and b!8043741 ((_ is Concat!30847) (regex!8728 (h!81656 rules!4166)))) b!8043931))

(assert (= (and b!8043741 ((_ is Star!21799) (regex!8728 (h!81656 rules!4166)))) b!8043932))

(assert (= (and b!8043741 ((_ is Union!21799) (regex!8728 (h!81656 rules!4166)))) b!8043933))

(declare-fun b!8043935 () Bool)

(declare-fun e!4738535 () Bool)

(declare-fun tp!2410567 () Bool)

(declare-fun tp!2410569 () Bool)

(assert (=> b!8043935 (= e!4738535 (and tp!2410567 tp!2410569))))

(assert (=> b!8043735 (= tp!2410491 e!4738535)))

(declare-fun b!8043937 () Bool)

(declare-fun tp!2410571 () Bool)

(declare-fun tp!2410570 () Bool)

(assert (=> b!8043937 (= e!4738535 (and tp!2410571 tp!2410570))))

(declare-fun b!8043936 () Bool)

(declare-fun tp!2410568 () Bool)

(assert (=> b!8043936 (= e!4738535 tp!2410568)))

(declare-fun b!8043934 () Bool)

(assert (=> b!8043934 (= e!4738535 tp_is_empty!54593)))

(assert (= (and b!8043735 ((_ is ElementMatch!21799) (regex!8728 rNSep!153))) b!8043934))

(assert (= (and b!8043735 ((_ is Concat!30847) (regex!8728 rNSep!153))) b!8043935))

(assert (= (and b!8043735 ((_ is Star!21799) (regex!8728 rNSep!153))) b!8043936))

(assert (= (and b!8043735 ((_ is Union!21799) (regex!8728 rNSep!153))) b!8043937))

(check-sat (not bm!746628) (not b_next!136865) (not b!8043775) (not bm!746625) tp_is_empty!54593 (not d!2396082) (not b!8043764) (not b!8043913) (not b!8043936) b_and!354507 (not b!8043928) (not b!8043933) (not b!8043850) (not b_next!136877) (not b!8043892) (not d!2396114) (not b!8043927) (not b!8043778) b_and!354515 b_and!354523 (not d!2396076) (not b!8043803) b_and!354511 b_and!354517 b_and!354525 (not b_next!136867) (not b!8043875) (not b_next!136869) (not b!8043931) (not d!2396118) (not b_next!136871) (not d!2396100) b_and!354509 (not d!2396110) (not d!2396070) (not d!2396078) (not b!8043937) (not b_next!136861) (not b!8043932) (not bm!746629) (not b!8043935) (not b_next!136863) (not bm!746627) (not b!8043880) (not b!8043769) (not b_next!136879) (not bm!746604) (not b!8043891) (not d!2396068) b_and!354513 (not b!8043929) (not b!8043914))
(check-sat b_and!354507 (not b_next!136877) b_and!354511 (not b_next!136869) (not b_next!136871) b_and!354509 (not b_next!136865) (not b_next!136861) (not b_next!136863) (not b_next!136879) b_and!354513 b_and!354515 b_and!354523 (not b_next!136867) b_and!354517 b_and!354525)
