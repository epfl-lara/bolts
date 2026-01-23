; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757016 () Bool)

(assert start!757016)

(declare-fun b!8040602 () Bool)

(declare-fun b_free!135587 () Bool)

(declare-fun b_next!136377 () Bool)

(assert (=> b!8040602 (= b_free!135587 (not b_next!136377))))

(declare-fun tp!2408755 () Bool)

(declare-fun b_and!354023 () Bool)

(assert (=> b!8040602 (= tp!2408755 b_and!354023)))

(declare-fun b_free!135589 () Bool)

(declare-fun b_next!136379 () Bool)

(assert (=> b!8040602 (= b_free!135589 (not b_next!136379))))

(declare-fun tp!2408754 () Bool)

(declare-fun b_and!354025 () Bool)

(assert (=> b!8040602 (= tp!2408754 b_and!354025)))

(declare-fun b!8040613 () Bool)

(declare-fun b_free!135591 () Bool)

(declare-fun b_next!136381 () Bool)

(assert (=> b!8040613 (= b_free!135591 (not b_next!136381))))

(declare-fun tp!2408756 () Bool)

(declare-fun b_and!354027 () Bool)

(assert (=> b!8040613 (= tp!2408756 b_and!354027)))

(declare-fun b_free!135593 () Bool)

(declare-fun b_next!136383 () Bool)

(assert (=> b!8040613 (= b_free!135593 (not b_next!136383))))

(declare-fun tp!2408748 () Bool)

(declare-fun b_and!354029 () Bool)

(assert (=> b!8040613 (= tp!2408748 b_and!354029)))

(declare-fun b!8040599 () Bool)

(declare-fun b_free!135595 () Bool)

(declare-fun b_next!136385 () Bool)

(assert (=> b!8040599 (= b_free!135595 (not b_next!136385))))

(declare-fun tp!2408752 () Bool)

(declare-fun b_and!354031 () Bool)

(assert (=> b!8040599 (= tp!2408752 b_and!354031)))

(declare-fun b_free!135597 () Bool)

(declare-fun b_next!136387 () Bool)

(assert (=> b!8040599 (= b_free!135597 (not b_next!136387))))

(declare-fun tp!2408760 () Bool)

(declare-fun b_and!354033 () Bool)

(assert (=> b!8040599 (= tp!2408760 b_and!354033)))

(declare-fun b!8040617 () Bool)

(declare-fun b_free!135599 () Bool)

(declare-fun b_next!136389 () Bool)

(assert (=> b!8040617 (= b_free!135599 (not b_next!136389))))

(declare-fun tp!2408749 () Bool)

(declare-fun b_and!354035 () Bool)

(assert (=> b!8040617 (= tp!2408749 b_and!354035)))

(declare-fun b_free!135601 () Bool)

(declare-fun b_next!136391 () Bool)

(assert (=> b!8040617 (= b_free!135601 (not b_next!136391))))

(declare-fun tp!2408757 () Bool)

(declare-fun b_and!354037 () Bool)

(assert (=> b!8040617 (= tp!2408757 b_and!354037)))

(declare-fun e!4736188 () Bool)

(assert (=> b!8040599 (= e!4736188 (and tp!2408752 tp!2408760))))

(declare-fun b!8040600 () Bool)

(declare-fun res!3178370 () Bool)

(declare-fun e!4736185 () Bool)

(assert (=> b!8040600 (=> (not res!3178370) (not e!4736185))))

(declare-datatypes ((List!75230 0))(
  ( (Nil!75104) (Cons!75104 (h!81552 (_ BitVec 16)) (t!391000 List!75230)) )
))
(declare-datatypes ((TokenValue!9018 0))(
  ( (FloatLiteralValue!18036 (text!63571 List!75230)) (TokenValueExt!9017 (__x!35317 Int)) (Broken!45090 (value!290961 List!75230)) (Object!9143) (End!9018) (Def!9018) (Underscore!9018) (Match!9018) (Else!9018) (Error!9018) (Case!9018) (If!9018) (Extends!9018) (Abstract!9018) (Class!9018) (Val!9018) (DelimiterValue!18036 (del!9078 List!75230)) (KeywordValue!9024 (value!290962 List!75230)) (CommentValue!18036 (value!290963 List!75230)) (WhitespaceValue!18036 (value!290964 List!75230)) (IndentationValue!9018 (value!290965 List!75230)) (String!84863) (Int32!9018) (Broken!45091 (value!290966 List!75230)) (Boolean!9019) (Unit!171025) (OperatorValue!9021 (op!9078 List!75230)) (IdentifierValue!18036 (value!290967 List!75230)) (IdentifierValue!18037 (value!290968 List!75230)) (WhitespaceValue!18037 (value!290969 List!75230)) (True!18036) (False!18036) (Broken!45092 (value!290970 List!75230)) (Broken!45093 (value!290971 List!75230)) (True!18037) (RightBrace!9018) (RightBracket!9018) (Colon!9018) (Null!9018) (Comma!9018) (LeftBracket!9018) (False!18037) (LeftBrace!9018) (ImaginaryLiteralValue!9018 (text!63572 List!75230)) (StringLiteralValue!27054 (value!290972 List!75230)) (EOFValue!9018 (value!290973 List!75230)) (IdentValue!9018 (value!290974 List!75230)) (DelimiterValue!18037 (value!290975 List!75230)) (DedentValue!9018 (value!290976 List!75230)) (NewLineValue!9018 (value!290977 List!75230)) (IntegerValue!27054 (value!290978 (_ BitVec 32)) (text!63573 List!75230)) (IntegerValue!27055 (value!290979 Int) (text!63574 List!75230)) (Times!9018) (Or!9018) (Equal!9018) (Minus!9018) (Broken!45094 (value!290980 List!75230)) (And!9018) (Div!9018) (LessEqual!9018) (Mod!9018) (Concat!30787) (Not!9018) (Plus!9018) (SpaceValue!9018 (value!290981 List!75230)) (IntegerValue!27056 (value!290982 Int) (text!63575 List!75230)) (StringLiteralValue!27055 (text!63576 List!75230)) (FloatLiteralValue!18037 (text!63577 List!75230)) (BytesLiteralValue!9018 (value!290983 List!75230)) (CommentValue!18037 (value!290984 List!75230)) (StringLiteralValue!27056 (value!290985 List!75230)) (ErrorTokenValue!9018 (msg!9079 List!75230)) )
))
(declare-datatypes ((C!43876 0))(
  ( (C!43877 (val!32714 Int)) )
))
(declare-datatypes ((List!75231 0))(
  ( (Nil!75105) (Cons!75105 (h!81553 C!43876) (t!391001 List!75231)) )
))
(declare-datatypes ((IArray!31993 0))(
  ( (IArray!31994 (innerList!16054 List!75231)) )
))
(declare-datatypes ((Conc!15966 0))(
  ( (Node!15966 (left!57264 Conc!15966) (right!57594 Conc!15966) (csize!32162 Int) (cheight!16177 Int)) (Leaf!30625 (xs!19364 IArray!31993) (csize!32163 Int)) (Empty!15966) )
))
(declare-datatypes ((BalanceConc!30888 0))(
  ( (BalanceConc!30889 (c!1474925 Conc!15966)) )
))
(declare-datatypes ((Regex!21769 0))(
  ( (ElementMatch!21769 (c!1474926 C!43876)) (Concat!30788 (regOne!44050 Regex!21769) (regTwo!44050 Regex!21769)) (EmptyExpr!21769) (Star!21769 (reg!22098 Regex!21769)) (EmptyLang!21769) (Union!21769 (regOne!44051 Regex!21769) (regTwo!44051 Regex!21769)) )
))
(declare-datatypes ((String!84864 0))(
  ( (String!84865 (value!290986 String)) )
))
(declare-datatypes ((TokenValueInjection!17344 0))(
  ( (TokenValueInjection!17345 (toValue!11769 Int) (toChars!11628 Int)) )
))
(declare-datatypes ((Rule!17196 0))(
  ( (Rule!17197 (regex!8698 Regex!21769) (tag!9562 String!84864) (isSeparator!8698 Bool) (transformation!8698 TokenValueInjection!17344)) )
))
(declare-datatypes ((List!75232 0))(
  ( (Nil!75106) (Cons!75106 (h!81554 Rule!17196) (t!391002 List!75232)) )
))
(declare-fun rulesRec!188 () List!75232)

(declare-fun rNSep!142 () Rule!17196)

(get-info :version)

(assert (=> b!8040600 (= res!3178370 (and (or (not ((_ is Cons!75106) rulesRec!188)) (not (= (h!81554 rulesRec!188) rNSep!142))) ((_ is Cons!75106) rulesRec!188)))))

(declare-fun tp!2408751 () Bool)

(declare-fun e!4736187 () Bool)

(declare-fun rSep!142 () Rule!17196)

(declare-fun e!4736194 () Bool)

(declare-fun b!8040601 () Bool)

(declare-fun inv!96912 (String!84864) Bool)

(declare-fun inv!96914 (TokenValueInjection!17344) Bool)

(assert (=> b!8040601 (= e!4736187 (and tp!2408751 (inv!96912 (tag!9562 rSep!142)) (inv!96914 (transformation!8698 rSep!142)) e!4736194))))

(declare-fun e!4736192 () Bool)

(assert (=> b!8040602 (= e!4736192 (and tp!2408755 tp!2408754))))

(declare-fun tp!2408753 () Bool)

(declare-fun e!4736197 () Bool)

(declare-fun b!8040603 () Bool)

(declare-fun e!4736191 () Bool)

(assert (=> b!8040603 (= e!4736197 (and tp!2408753 (inv!96912 (tag!9562 (h!81554 rulesRec!188))) (inv!96914 (transformation!8698 (h!81554 rulesRec!188))) e!4736191))))

(declare-fun b!8040604 () Bool)

(declare-fun res!3178368 () Bool)

(assert (=> b!8040604 (=> (not res!3178368) (not e!4736185))))

(declare-fun rules!4142 () List!75232)

(declare-fun contains!20979 (List!75232 Rule!17196) Bool)

(assert (=> b!8040604 (= res!3178368 (contains!20979 rules!4142 rSep!142))))

(declare-fun b!8040605 () Bool)

(declare-fun res!3178369 () Bool)

(assert (=> b!8040605 (=> (not res!3178369) (not e!4736185))))

(assert (=> b!8040605 (= res!3178369 (and (not (isSeparator!8698 rNSep!142)) (isSeparator!8698 rSep!142)))))

(declare-fun res!3178367 () Bool)

(assert (=> start!757016 (=> (not res!3178367) (not e!4736185))))

(declare-datatypes ((LexerInterface!8288 0))(
  ( (LexerInterfaceExt!8285 (__x!35318 Int)) (Lexer!8286) )
))
(declare-fun thiss!27054 () LexerInterface!8288)

(assert (=> start!757016 (= res!3178367 ((_ is Lexer!8286) thiss!27054))))

(assert (=> start!757016 e!4736185))

(assert (=> start!757016 true))

(declare-fun e!4736189 () Bool)

(assert (=> start!757016 e!4736189))

(assert (=> start!757016 e!4736187))

(declare-fun e!4736198 () Bool)

(assert (=> start!757016 e!4736198))

(declare-fun e!4736193 () Bool)

(assert (=> start!757016 e!4736193))

(declare-fun tp_is_empty!54533 () Bool)

(assert (=> start!757016 tp_is_empty!54533))

(declare-fun b!8040606 () Bool)

(declare-fun res!3178366 () Bool)

(assert (=> b!8040606 (=> (not res!3178366) (not e!4736185))))

(declare-fun sepAndNonSepRulesDisjointChars!2058 (List!75232 List!75232) Bool)

(assert (=> b!8040606 (= res!3178366 (sepAndNonSepRulesDisjointChars!2058 rules!4142 rulesRec!188))))

(declare-fun b!8040607 () Bool)

(declare-fun res!3178363 () Bool)

(assert (=> b!8040607 (=> (not res!3178363) (not e!4736185))))

(declare-fun rulesInvariant!6756 (LexerInterface!8288 List!75232) Bool)

(assert (=> b!8040607 (= res!3178363 (rulesInvariant!6756 thiss!27054 rules!4142))))

(declare-fun b!8040608 () Bool)

(declare-fun res!3178365 () Bool)

(assert (=> b!8040608 (=> (not res!3178365) (not e!4736185))))

(assert (=> b!8040608 (= res!3178365 (contains!20979 rules!4142 rNSep!142))))

(declare-fun b!8040609 () Bool)

(declare-fun tp!2408750 () Bool)

(assert (=> b!8040609 (= e!4736193 (and tp!2408750 (inv!96912 (tag!9562 rNSep!142)) (inv!96914 (transformation!8698 rNSep!142)) e!4736188))))

(declare-fun b!8040610 () Bool)

(declare-fun res!3178362 () Bool)

(assert (=> b!8040610 (=> (not res!3178362) (not e!4736185))))

(assert (=> b!8040610 (= res!3178362 (contains!20979 rulesRec!188 rNSep!142))))

(declare-fun e!4736186 () Bool)

(declare-fun b!8040611 () Bool)

(declare-fun tp!2408759 () Bool)

(assert (=> b!8040611 (= e!4736186 (and tp!2408759 (inv!96912 (tag!9562 (h!81554 rules!4142))) (inv!96914 (transformation!8698 (h!81554 rules!4142))) e!4736192))))

(declare-fun b!8040612 () Bool)

(assert (=> b!8040612 (= e!4736185 false)))

(declare-fun lt!2722256 () Bool)

(assert (=> b!8040612 (= lt!2722256 (contains!20979 (t!391002 rulesRec!188) rNSep!142))))

(assert (=> b!8040613 (= e!4736194 (and tp!2408756 tp!2408748))))

(declare-fun b!8040614 () Bool)

(declare-fun tp!2408758 () Bool)

(assert (=> b!8040614 (= e!4736198 (and e!4736197 tp!2408758))))

(declare-fun b!8040615 () Bool)

(declare-fun res!3178364 () Bool)

(assert (=> b!8040615 (=> (not res!3178364) (not e!4736185))))

(declare-fun c!6865 () C!43876)

(declare-fun contains!20980 (List!75231 C!43876) Bool)

(declare-fun usedCharacters!1276 (Regex!21769) List!75231)

(assert (=> b!8040615 (= res!3178364 (contains!20980 (usedCharacters!1276 (regex!8698 rSep!142)) c!6865))))

(declare-fun b!8040616 () Bool)

(declare-fun tp!2408761 () Bool)

(assert (=> b!8040616 (= e!4736189 (and e!4736186 tp!2408761))))

(assert (=> b!8040617 (= e!4736191 (and tp!2408749 tp!2408757))))

(assert (= (and start!757016 res!3178367) b!8040607))

(assert (= (and b!8040607 res!3178363) b!8040604))

(assert (= (and b!8040604 res!3178368) b!8040610))

(assert (= (and b!8040610 res!3178362) b!8040608))

(assert (= (and b!8040608 res!3178365) b!8040605))

(assert (= (and b!8040605 res!3178369) b!8040615))

(assert (= (and b!8040615 res!3178364) b!8040606))

(assert (= (and b!8040606 res!3178366) b!8040600))

(assert (= (and b!8040600 res!3178370) b!8040612))

(assert (= b!8040611 b!8040602))

(assert (= b!8040616 b!8040611))

(assert (= (and start!757016 ((_ is Cons!75106) rules!4142)) b!8040616))

(assert (= b!8040601 b!8040613))

(assert (= start!757016 b!8040601))

(assert (= b!8040603 b!8040617))

(assert (= b!8040614 b!8040603))

(assert (= (and start!757016 ((_ is Cons!75106) rulesRec!188)) b!8040614))

(assert (= b!8040609 b!8040599))

(assert (= start!757016 b!8040609))

(declare-fun m!8395078 () Bool)

(assert (=> b!8040615 m!8395078))

(assert (=> b!8040615 m!8395078))

(declare-fun m!8395080 () Bool)

(assert (=> b!8040615 m!8395080))

(declare-fun m!8395082 () Bool)

(assert (=> b!8040601 m!8395082))

(declare-fun m!8395084 () Bool)

(assert (=> b!8040601 m!8395084))

(declare-fun m!8395086 () Bool)

(assert (=> b!8040609 m!8395086))

(declare-fun m!8395088 () Bool)

(assert (=> b!8040609 m!8395088))

(declare-fun m!8395090 () Bool)

(assert (=> b!8040607 m!8395090))

(declare-fun m!8395092 () Bool)

(assert (=> b!8040611 m!8395092))

(declare-fun m!8395094 () Bool)

(assert (=> b!8040611 m!8395094))

(declare-fun m!8395096 () Bool)

(assert (=> b!8040612 m!8395096))

(declare-fun m!8395098 () Bool)

(assert (=> b!8040608 m!8395098))

(declare-fun m!8395100 () Bool)

(assert (=> b!8040604 m!8395100))

(declare-fun m!8395102 () Bool)

(assert (=> b!8040603 m!8395102))

(declare-fun m!8395104 () Bool)

(assert (=> b!8040603 m!8395104))

(declare-fun m!8395106 () Bool)

(assert (=> b!8040610 m!8395106))

(declare-fun m!8395108 () Bool)

(assert (=> b!8040606 m!8395108))

(check-sat b_and!354035 b_and!354031 b_and!354023 (not b_next!136377) (not b!8040606) (not b_next!136383) (not b_next!136385) tp_is_empty!54533 (not b!8040601) (not b!8040611) (not b_next!136389) (not b_next!136379) (not b!8040614) (not b!8040616) b_and!354027 (not b!8040615) (not b!8040607) (not b!8040603) (not b!8040609) (not b_next!136387) b_and!354025 (not b!8040612) b_and!354029 (not b_next!136381) (not b!8040610) b_and!354037 b_and!354033 (not b!8040604) (not b!8040608) (not b_next!136391))
(check-sat b_and!354035 b_and!354031 b_and!354023 b_and!354027 (not b_next!136387) (not b_next!136377) (not b_next!136383) b_and!354025 (not b_next!136385) b_and!354037 b_and!354033 (not b_next!136389) (not b_next!136391) (not b_next!136379) b_and!354029 (not b_next!136381))
