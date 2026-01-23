; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757020 () Bool)

(assert start!757020)

(declare-fun b!8040725 () Bool)

(declare-fun b_free!135619 () Bool)

(declare-fun b_next!136409 () Bool)

(assert (=> b!8040725 (= b_free!135619 (not b_next!136409))))

(declare-fun tp!2408844 () Bool)

(declare-fun b_and!354055 () Bool)

(assert (=> b!8040725 (= tp!2408844 b_and!354055)))

(declare-fun b_free!135621 () Bool)

(declare-fun b_next!136411 () Bool)

(assert (=> b!8040725 (= b_free!135621 (not b_next!136411))))

(declare-fun tp!2408834 () Bool)

(declare-fun b_and!354057 () Bool)

(assert (=> b!8040725 (= tp!2408834 b_and!354057)))

(declare-fun b!8040731 () Bool)

(declare-fun b_free!135623 () Bool)

(declare-fun b_next!136413 () Bool)

(assert (=> b!8040731 (= b_free!135623 (not b_next!136413))))

(declare-fun tp!2408843 () Bool)

(declare-fun b_and!354059 () Bool)

(assert (=> b!8040731 (= tp!2408843 b_and!354059)))

(declare-fun b_free!135625 () Bool)

(declare-fun b_next!136415 () Bool)

(assert (=> b!8040731 (= b_free!135625 (not b_next!136415))))

(declare-fun tp!2408835 () Bool)

(declare-fun b_and!354061 () Bool)

(assert (=> b!8040731 (= tp!2408835 b_and!354061)))

(declare-fun b!8040733 () Bool)

(declare-fun b_free!135627 () Bool)

(declare-fun b_next!136417 () Bool)

(assert (=> b!8040733 (= b_free!135627 (not b_next!136417))))

(declare-fun tp!2408839 () Bool)

(declare-fun b_and!354063 () Bool)

(assert (=> b!8040733 (= tp!2408839 b_and!354063)))

(declare-fun b_free!135629 () Bool)

(declare-fun b_next!136419 () Bool)

(assert (=> b!8040733 (= b_free!135629 (not b_next!136419))))

(declare-fun tp!2408838 () Bool)

(declare-fun b_and!354065 () Bool)

(assert (=> b!8040733 (= tp!2408838 b_and!354065)))

(declare-fun b!8040736 () Bool)

(declare-fun b_free!135631 () Bool)

(declare-fun b_next!136421 () Bool)

(assert (=> b!8040736 (= b_free!135631 (not b_next!136421))))

(declare-fun tp!2408842 () Bool)

(declare-fun b_and!354067 () Bool)

(assert (=> b!8040736 (= tp!2408842 b_and!354067)))

(declare-fun b_free!135633 () Bool)

(declare-fun b_next!136423 () Bool)

(assert (=> b!8040736 (= b_free!135633 (not b_next!136423))))

(declare-fun tp!2408836 () Bool)

(declare-fun b_and!354069 () Bool)

(assert (=> b!8040736 (= tp!2408836 b_and!354069)))

(declare-fun b!8040718 () Bool)

(declare-fun res!3178422 () Bool)

(declare-fun e!4736277 () Bool)

(assert (=> b!8040718 (=> (not res!3178422) (not e!4736277))))

(declare-datatypes ((List!75236 0))(
  ( (Nil!75110) (Cons!75110 (h!81558 (_ BitVec 16)) (t!391006 List!75236)) )
))
(declare-datatypes ((TokenValue!9020 0))(
  ( (FloatLiteralValue!18040 (text!63585 List!75236)) (TokenValueExt!9019 (__x!35321 Int)) (Broken!45100 (value!291016 List!75236)) (Object!9145) (End!9020) (Def!9020) (Underscore!9020) (Match!9020) (Else!9020) (Error!9020) (Case!9020) (If!9020) (Extends!9020) (Abstract!9020) (Class!9020) (Val!9020) (DelimiterValue!18040 (del!9080 List!75236)) (KeywordValue!9026 (value!291017 List!75236)) (CommentValue!18040 (value!291018 List!75236)) (WhitespaceValue!18040 (value!291019 List!75236)) (IndentationValue!9020 (value!291020 List!75236)) (String!84873) (Int32!9020) (Broken!45101 (value!291021 List!75236)) (Boolean!9021) (Unit!171027) (OperatorValue!9023 (op!9080 List!75236)) (IdentifierValue!18040 (value!291022 List!75236)) (IdentifierValue!18041 (value!291023 List!75236)) (WhitespaceValue!18041 (value!291024 List!75236)) (True!18040) (False!18040) (Broken!45102 (value!291025 List!75236)) (Broken!45103 (value!291026 List!75236)) (True!18041) (RightBrace!9020) (RightBracket!9020) (Colon!9020) (Null!9020) (Comma!9020) (LeftBracket!9020) (False!18041) (LeftBrace!9020) (ImaginaryLiteralValue!9020 (text!63586 List!75236)) (StringLiteralValue!27060 (value!291027 List!75236)) (EOFValue!9020 (value!291028 List!75236)) (IdentValue!9020 (value!291029 List!75236)) (DelimiterValue!18041 (value!291030 List!75236)) (DedentValue!9020 (value!291031 List!75236)) (NewLineValue!9020 (value!291032 List!75236)) (IntegerValue!27060 (value!291033 (_ BitVec 32)) (text!63587 List!75236)) (IntegerValue!27061 (value!291034 Int) (text!63588 List!75236)) (Times!9020) (Or!9020) (Equal!9020) (Minus!9020) (Broken!45104 (value!291035 List!75236)) (And!9020) (Div!9020) (LessEqual!9020) (Mod!9020) (Concat!30791) (Not!9020) (Plus!9020) (SpaceValue!9020 (value!291036 List!75236)) (IntegerValue!27062 (value!291037 Int) (text!63589 List!75236)) (StringLiteralValue!27061 (text!63590 List!75236)) (FloatLiteralValue!18041 (text!63591 List!75236)) (BytesLiteralValue!9020 (value!291038 List!75236)) (CommentValue!18041 (value!291039 List!75236)) (StringLiteralValue!27062 (value!291040 List!75236)) (ErrorTokenValue!9020 (msg!9081 List!75236)) )
))
(declare-datatypes ((C!43880 0))(
  ( (C!43881 (val!32716 Int)) )
))
(declare-datatypes ((List!75237 0))(
  ( (Nil!75111) (Cons!75111 (h!81559 C!43880) (t!391007 List!75237)) )
))
(declare-datatypes ((IArray!31997 0))(
  ( (IArray!31998 (innerList!16056 List!75237)) )
))
(declare-datatypes ((Conc!15968 0))(
  ( (Node!15968 (left!57267 Conc!15968) (right!57597 Conc!15968) (csize!32166 Int) (cheight!16179 Int)) (Leaf!30628 (xs!19366 IArray!31997) (csize!32167 Int)) (Empty!15968) )
))
(declare-datatypes ((String!84874 0))(
  ( (String!84875 (value!291041 String)) )
))
(declare-datatypes ((BalanceConc!30892 0))(
  ( (BalanceConc!30893 (c!1474929 Conc!15968)) )
))
(declare-datatypes ((Regex!21771 0))(
  ( (ElementMatch!21771 (c!1474930 C!43880)) (Concat!30792 (regOne!44054 Regex!21771) (regTwo!44054 Regex!21771)) (EmptyExpr!21771) (Star!21771 (reg!22100 Regex!21771)) (EmptyLang!21771) (Union!21771 (regOne!44055 Regex!21771) (regTwo!44055 Regex!21771)) )
))
(declare-datatypes ((TokenValueInjection!17348 0))(
  ( (TokenValueInjection!17349 (toValue!11771 Int) (toChars!11630 Int)) )
))
(declare-datatypes ((Rule!17200 0))(
  ( (Rule!17201 (regex!8700 Regex!21771) (tag!9564 String!84874) (isSeparator!8700 Bool) (transformation!8700 TokenValueInjection!17348)) )
))
(declare-datatypes ((List!75238 0))(
  ( (Nil!75112) (Cons!75112 (h!81560 Rule!17200) (t!391008 List!75238)) )
))
(declare-fun rules!4142 () List!75238)

(declare-fun rSep!142 () Rule!17200)

(declare-fun contains!20983 (List!75238 Rule!17200) Bool)

(assert (=> b!8040718 (= res!3178422 (contains!20983 rules!4142 rSep!142))))

(declare-fun b!8040719 () Bool)

(declare-fun res!3178427 () Bool)

(assert (=> b!8040719 (=> (not res!3178427) (not e!4736277))))

(declare-fun rulesRec!188 () List!75238)

(declare-fun rNSep!142 () Rule!17200)

(assert (=> b!8040719 (= res!3178427 (contains!20983 (t!391008 rulesRec!188) rNSep!142))))

(declare-fun b!8040720 () Bool)

(declare-fun sepAndNonSepRulesDisjointChars!2060 (List!75238 List!75238) Bool)

(assert (=> b!8040720 (= e!4736277 (not (sepAndNonSepRulesDisjointChars!2060 rules!4142 (t!391008 rulesRec!188))))))

(declare-fun b!8040721 () Bool)

(declare-fun res!3178429 () Bool)

(assert (=> b!8040721 (=> (not res!3178429) (not e!4736277))))

(get-info :version)

(assert (=> b!8040721 (= res!3178429 (and (or (not ((_ is Cons!75112) rulesRec!188)) (not (= (h!81560 rulesRec!188) rNSep!142))) ((_ is Cons!75112) rulesRec!188)))))

(declare-fun b!8040722 () Bool)

(declare-fun res!3178430 () Bool)

(assert (=> b!8040722 (=> (not res!3178430) (not e!4736277))))

(assert (=> b!8040722 (= res!3178430 (contains!20983 rules!4142 rNSep!142))))

(declare-fun b!8040723 () Bool)

(declare-fun tp!2408832 () Bool)

(declare-fun e!4736284 () Bool)

(declare-fun e!4736278 () Bool)

(declare-fun inv!96917 (String!84874) Bool)

(declare-fun inv!96919 (TokenValueInjection!17348) Bool)

(assert (=> b!8040723 (= e!4736284 (and tp!2408832 (inv!96917 (tag!9564 rSep!142)) (inv!96919 (transformation!8700 rSep!142)) e!4736278))))

(declare-fun tp!2408833 () Bool)

(declare-fun e!4736282 () Bool)

(declare-fun b!8040724 () Bool)

(declare-fun e!4736289 () Bool)

(assert (=> b!8040724 (= e!4736282 (and tp!2408833 (inv!96917 (tag!9564 rNSep!142)) (inv!96919 (transformation!8700 rNSep!142)) e!4736289))))

(assert (=> b!8040725 (= e!4736289 (and tp!2408844 tp!2408834))))

(declare-fun b!8040726 () Bool)

(declare-fun res!3178423 () Bool)

(assert (=> b!8040726 (=> (not res!3178423) (not e!4736277))))

(declare-fun c!6865 () C!43880)

(declare-fun contains!20984 (List!75237 C!43880) Bool)

(declare-fun usedCharacters!1278 (Regex!21771) List!75237)

(assert (=> b!8040726 (= res!3178423 (contains!20984 (usedCharacters!1278 (regex!8700 rSep!142)) c!6865))))

(declare-fun res!3178428 () Bool)

(assert (=> start!757020 (=> (not res!3178428) (not e!4736277))))

(declare-datatypes ((LexerInterface!8290 0))(
  ( (LexerInterfaceExt!8287 (__x!35322 Int)) (Lexer!8288) )
))
(declare-fun thiss!27054 () LexerInterface!8290)

(assert (=> start!757020 (= res!3178428 ((_ is Lexer!8288) thiss!27054))))

(assert (=> start!757020 e!4736277))

(assert (=> start!757020 true))

(declare-fun e!4736287 () Bool)

(assert (=> start!757020 e!4736287))

(assert (=> start!757020 e!4736284))

(declare-fun e!4736286 () Bool)

(assert (=> start!757020 e!4736286))

(assert (=> start!757020 e!4736282))

(declare-fun tp_is_empty!54537 () Bool)

(assert (=> start!757020 tp_is_empty!54537))

(declare-fun b!8040727 () Bool)

(declare-fun res!3178426 () Bool)

(assert (=> b!8040727 (=> (not res!3178426) (not e!4736277))))

(assert (=> b!8040727 (= res!3178426 (and (not (isSeparator!8700 rNSep!142)) (isSeparator!8700 rSep!142)))))

(declare-fun b!8040728 () Bool)

(declare-fun res!3178421 () Bool)

(assert (=> b!8040728 (=> (not res!3178421) (not e!4736277))))

(assert (=> b!8040728 (= res!3178421 (sepAndNonSepRulesDisjointChars!2060 rules!4142 rulesRec!188))))

(declare-fun b!8040729 () Bool)

(declare-fun res!3178425 () Bool)

(assert (=> b!8040729 (=> (not res!3178425) (not e!4736277))))

(declare-fun rulesInvariant!6758 (LexerInterface!8290 List!75238) Bool)

(assert (=> b!8040729 (= res!3178425 (rulesInvariant!6758 thiss!27054 rules!4142))))

(declare-fun b!8040730 () Bool)

(declare-fun e!4736285 () Bool)

(declare-fun tp!2408837 () Bool)

(assert (=> b!8040730 (= e!4736287 (and e!4736285 tp!2408837))))

(assert (=> b!8040731 (= e!4736278 (and tp!2408843 tp!2408835))))

(declare-fun b!8040732 () Bool)

(declare-fun res!3178424 () Bool)

(assert (=> b!8040732 (=> (not res!3178424) (not e!4736277))))

(assert (=> b!8040732 (= res!3178424 (contains!20983 rulesRec!188 rNSep!142))))

(declare-fun e!4736276 () Bool)

(assert (=> b!8040733 (= e!4736276 (and tp!2408839 tp!2408838))))

(declare-fun b!8040734 () Bool)

(declare-fun e!4736288 () Bool)

(declare-fun tp!2408841 () Bool)

(assert (=> b!8040734 (= e!4736286 (and e!4736288 tp!2408841))))

(declare-fun e!4736279 () Bool)

(declare-fun b!8040735 () Bool)

(declare-fun tp!2408840 () Bool)

(assert (=> b!8040735 (= e!4736288 (and tp!2408840 (inv!96917 (tag!9564 (h!81560 rulesRec!188))) (inv!96919 (transformation!8700 (h!81560 rulesRec!188))) e!4736279))))

(assert (=> b!8040736 (= e!4736279 (and tp!2408842 tp!2408836))))

(declare-fun tp!2408845 () Bool)

(declare-fun b!8040737 () Bool)

(assert (=> b!8040737 (= e!4736285 (and tp!2408845 (inv!96917 (tag!9564 (h!81560 rules!4142))) (inv!96919 (transformation!8700 (h!81560 rules!4142))) e!4736276))))

(assert (= (and start!757020 res!3178428) b!8040729))

(assert (= (and b!8040729 res!3178425) b!8040718))

(assert (= (and b!8040718 res!3178422) b!8040732))

(assert (= (and b!8040732 res!3178424) b!8040722))

(assert (= (and b!8040722 res!3178430) b!8040727))

(assert (= (and b!8040727 res!3178426) b!8040726))

(assert (= (and b!8040726 res!3178423) b!8040728))

(assert (= (and b!8040728 res!3178421) b!8040721))

(assert (= (and b!8040721 res!3178429) b!8040719))

(assert (= (and b!8040719 res!3178427) b!8040720))

(assert (= b!8040737 b!8040733))

(assert (= b!8040730 b!8040737))

(assert (= (and start!757020 ((_ is Cons!75112) rules!4142)) b!8040730))

(assert (= b!8040723 b!8040731))

(assert (= start!757020 b!8040723))

(assert (= b!8040735 b!8040736))

(assert (= b!8040734 b!8040735))

(assert (= (and start!757020 ((_ is Cons!75112) rulesRec!188)) b!8040734))

(assert (= b!8040724 b!8040725))

(assert (= start!757020 b!8040724))

(declare-fun m!8395144 () Bool)

(assert (=> b!8040729 m!8395144))

(declare-fun m!8395146 () Bool)

(assert (=> b!8040728 m!8395146))

(declare-fun m!8395148 () Bool)

(assert (=> b!8040718 m!8395148))

(declare-fun m!8395150 () Bool)

(assert (=> b!8040726 m!8395150))

(assert (=> b!8040726 m!8395150))

(declare-fun m!8395152 () Bool)

(assert (=> b!8040726 m!8395152))

(declare-fun m!8395154 () Bool)

(assert (=> b!8040722 m!8395154))

(declare-fun m!8395156 () Bool)

(assert (=> b!8040732 m!8395156))

(declare-fun m!8395158 () Bool)

(assert (=> b!8040720 m!8395158))

(declare-fun m!8395160 () Bool)

(assert (=> b!8040723 m!8395160))

(declare-fun m!8395162 () Bool)

(assert (=> b!8040723 m!8395162))

(declare-fun m!8395164 () Bool)

(assert (=> b!8040724 m!8395164))

(declare-fun m!8395166 () Bool)

(assert (=> b!8040724 m!8395166))

(declare-fun m!8395168 () Bool)

(assert (=> b!8040719 m!8395168))

(declare-fun m!8395170 () Bool)

(assert (=> b!8040737 m!8395170))

(declare-fun m!8395172 () Bool)

(assert (=> b!8040737 m!8395172))

(declare-fun m!8395174 () Bool)

(assert (=> b!8040735 m!8395174))

(declare-fun m!8395176 () Bool)

(assert (=> b!8040735 m!8395176))

(check-sat (not b_next!136423) (not b!8040730) (not b!8040724) (not b!8040726) (not b!8040723) (not b!8040728) (not b!8040718) tp_is_empty!54537 b_and!354069 (not b_next!136413) b_and!354057 b_and!354067 (not b_next!136409) (not b!8040729) b_and!354059 (not b_next!136411) (not b!8040719) (not b!8040734) (not b!8040737) (not b!8040722) (not b!8040732) (not b!8040720) b_and!354055 b_and!354063 b_and!354061 (not b_next!136415) (not b_next!136421) (not b_next!136417) (not b_next!136419) (not b!8040735) b_and!354065)
(check-sat (not b_next!136409) (not b_next!136423) b_and!354069 (not b_next!136413) b_and!354065 b_and!354057 b_and!354067 b_and!354059 (not b_next!136411) b_and!354055 b_and!354063 b_and!354061 (not b_next!136415) (not b_next!136421) (not b_next!136417) (not b_next!136419))
(get-model)

(declare-fun d!2395530 () Bool)

(declare-fun res!3178450 () Bool)

(declare-fun e!4736306 () Bool)

(assert (=> d!2395530 (=> (not res!3178450) (not e!4736306))))

(declare-fun rulesValid!3137 (LexerInterface!8290 List!75238) Bool)

(assert (=> d!2395530 (= res!3178450 (rulesValid!3137 thiss!27054 rules!4142))))

(assert (=> d!2395530 (= (rulesInvariant!6758 thiss!27054 rules!4142) e!4736306)))

(declare-fun b!8040762 () Bool)

(declare-datatypes ((List!75239 0))(
  ( (Nil!75113) (Cons!75113 (h!81561 String!84874) (t!391009 List!75239)) )
))
(declare-fun noDuplicateTag!3298 (LexerInterface!8290 List!75238 List!75239) Bool)

(assert (=> b!8040762 (= e!4736306 (noDuplicateTag!3298 thiss!27054 rules!4142 Nil!75113))))

(assert (= (and d!2395530 res!3178450) b!8040762))

(declare-fun m!8395184 () Bool)

(assert (=> d!2395530 m!8395184))

(declare-fun m!8395186 () Bool)

(assert (=> b!8040762 m!8395186))

(assert (=> b!8040729 d!2395530))

(declare-fun d!2395532 () Bool)

(declare-fun lt!2722262 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16034 (List!75238) (InoxSet Rule!17200))

(assert (=> d!2395532 (= lt!2722262 (select (content!16034 (t!391008 rulesRec!188)) rNSep!142))))

(declare-fun e!4736316 () Bool)

(assert (=> d!2395532 (= lt!2722262 e!4736316)))

(declare-fun res!3178455 () Bool)

(assert (=> d!2395532 (=> (not res!3178455) (not e!4736316))))

(assert (=> d!2395532 (= res!3178455 ((_ is Cons!75112) (t!391008 rulesRec!188)))))

(assert (=> d!2395532 (= (contains!20983 (t!391008 rulesRec!188) rNSep!142) lt!2722262)))

(declare-fun b!8040775 () Bool)

(declare-fun e!4736315 () Bool)

(assert (=> b!8040775 (= e!4736316 e!4736315)))

(declare-fun res!3178456 () Bool)

(assert (=> b!8040775 (=> res!3178456 e!4736315)))

(assert (=> b!8040775 (= res!3178456 (= (h!81560 (t!391008 rulesRec!188)) rNSep!142))))

(declare-fun b!8040776 () Bool)

(assert (=> b!8040776 (= e!4736315 (contains!20983 (t!391008 (t!391008 rulesRec!188)) rNSep!142))))

(assert (= (and d!2395532 res!3178455) b!8040775))

(assert (= (and b!8040775 (not res!3178456)) b!8040776))

(declare-fun m!8395194 () Bool)

(assert (=> d!2395532 m!8395194))

(declare-fun m!8395196 () Bool)

(assert (=> d!2395532 m!8395196))

(declare-fun m!8395198 () Bool)

(assert (=> b!8040776 m!8395198))

(assert (=> b!8040719 d!2395532))

(declare-fun d!2395538 () Bool)

(declare-fun res!3178468 () Bool)

(declare-fun e!4736328 () Bool)

(assert (=> d!2395538 (=> res!3178468 e!4736328)))

(assert (=> d!2395538 (= res!3178468 (not ((_ is Cons!75112) (t!391008 rulesRec!188))))))

(assert (=> d!2395538 (= (sepAndNonSepRulesDisjointChars!2060 rules!4142 (t!391008 rulesRec!188)) e!4736328)))

(declare-fun b!8040788 () Bool)

(declare-fun e!4736329 () Bool)

(assert (=> b!8040788 (= e!4736328 e!4736329)))

(declare-fun res!3178469 () Bool)

(assert (=> b!8040788 (=> (not res!3178469) (not e!4736329))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!977 (Rule!17200 List!75238) Bool)

(assert (=> b!8040788 (= res!3178469 (ruleDisjointCharsFromAllFromOtherType!977 (h!81560 (t!391008 rulesRec!188)) rules!4142))))

(declare-fun b!8040789 () Bool)

(assert (=> b!8040789 (= e!4736329 (sepAndNonSepRulesDisjointChars!2060 rules!4142 (t!391008 (t!391008 rulesRec!188))))))

(assert (= (and d!2395538 (not res!3178468)) b!8040788))

(assert (= (and b!8040788 res!3178469) b!8040789))

(declare-fun m!8395204 () Bool)

(assert (=> b!8040788 m!8395204))

(declare-fun m!8395206 () Bool)

(assert (=> b!8040789 m!8395206))

(assert (=> b!8040720 d!2395538))

(declare-fun d!2395542 () Bool)

(declare-fun lt!2722265 () Bool)

(assert (=> d!2395542 (= lt!2722265 (select (content!16034 rulesRec!188) rNSep!142))))

(declare-fun e!4736331 () Bool)

(assert (=> d!2395542 (= lt!2722265 e!4736331)))

(declare-fun res!3178470 () Bool)

(assert (=> d!2395542 (=> (not res!3178470) (not e!4736331))))

(assert (=> d!2395542 (= res!3178470 ((_ is Cons!75112) rulesRec!188))))

(assert (=> d!2395542 (= (contains!20983 rulesRec!188 rNSep!142) lt!2722265)))

(declare-fun b!8040790 () Bool)

(declare-fun e!4736330 () Bool)

(assert (=> b!8040790 (= e!4736331 e!4736330)))

(declare-fun res!3178471 () Bool)

(assert (=> b!8040790 (=> res!3178471 e!4736330)))

(assert (=> b!8040790 (= res!3178471 (= (h!81560 rulesRec!188) rNSep!142))))

(declare-fun b!8040791 () Bool)

(assert (=> b!8040791 (= e!4736330 (contains!20983 (t!391008 rulesRec!188) rNSep!142))))

(assert (= (and d!2395542 res!3178470) b!8040790))

(assert (= (and b!8040790 (not res!3178471)) b!8040791))

(declare-fun m!8395208 () Bool)

(assert (=> d!2395542 m!8395208))

(declare-fun m!8395210 () Bool)

(assert (=> d!2395542 m!8395210))

(assert (=> b!8040791 m!8395168))

(assert (=> b!8040732 d!2395542))

(declare-fun d!2395544 () Bool)

(declare-fun lt!2722266 () Bool)

(assert (=> d!2395544 (= lt!2722266 (select (content!16034 rules!4142) rNSep!142))))

(declare-fun e!4736333 () Bool)

(assert (=> d!2395544 (= lt!2722266 e!4736333)))

(declare-fun res!3178472 () Bool)

(assert (=> d!2395544 (=> (not res!3178472) (not e!4736333))))

(assert (=> d!2395544 (= res!3178472 ((_ is Cons!75112) rules!4142))))

(assert (=> d!2395544 (= (contains!20983 rules!4142 rNSep!142) lt!2722266)))

(declare-fun b!8040792 () Bool)

(declare-fun e!4736332 () Bool)

(assert (=> b!8040792 (= e!4736333 e!4736332)))

(declare-fun res!3178473 () Bool)

(assert (=> b!8040792 (=> res!3178473 e!4736332)))

(assert (=> b!8040792 (= res!3178473 (= (h!81560 rules!4142) rNSep!142))))

(declare-fun b!8040793 () Bool)

(assert (=> b!8040793 (= e!4736332 (contains!20983 (t!391008 rules!4142) rNSep!142))))

(assert (= (and d!2395544 res!3178472) b!8040792))

(assert (= (and b!8040792 (not res!3178473)) b!8040793))

(declare-fun m!8395212 () Bool)

(assert (=> d!2395544 m!8395212))

(declare-fun m!8395214 () Bool)

(assert (=> d!2395544 m!8395214))

(declare-fun m!8395216 () Bool)

(assert (=> b!8040793 m!8395216))

(assert (=> b!8040722 d!2395544))

(declare-fun d!2395546 () Bool)

(assert (=> d!2395546 (= (inv!96917 (tag!9564 rSep!142)) (= (mod (str.len (value!291041 (tag!9564 rSep!142))) 2) 0))))

(assert (=> b!8040723 d!2395546))

(declare-fun d!2395550 () Bool)

(declare-fun res!3178484 () Bool)

(declare-fun e!4736344 () Bool)

(assert (=> d!2395550 (=> (not res!3178484) (not e!4736344))))

(declare-fun semiInverseModEq!3861 (Int Int) Bool)

(assert (=> d!2395550 (= res!3178484 (semiInverseModEq!3861 (toChars!11630 (transformation!8700 rSep!142)) (toValue!11771 (transformation!8700 rSep!142))))))

(assert (=> d!2395550 (= (inv!96919 (transformation!8700 rSep!142)) e!4736344)))

(declare-fun b!8040804 () Bool)

(declare-fun equivClasses!3676 (Int Int) Bool)

(assert (=> b!8040804 (= e!4736344 (equivClasses!3676 (toChars!11630 (transformation!8700 rSep!142)) (toValue!11771 (transformation!8700 rSep!142))))))

(assert (= (and d!2395550 res!3178484) b!8040804))

(declare-fun m!8395226 () Bool)

(assert (=> d!2395550 m!8395226))

(declare-fun m!8395228 () Bool)

(assert (=> b!8040804 m!8395228))

(assert (=> b!8040723 d!2395550))

(declare-fun d!2395554 () Bool)

(assert (=> d!2395554 (= (inv!96917 (tag!9564 rNSep!142)) (= (mod (str.len (value!291041 (tag!9564 rNSep!142))) 2) 0))))

(assert (=> b!8040724 d!2395554))

(declare-fun d!2395556 () Bool)

(declare-fun res!3178487 () Bool)

(declare-fun e!4736347 () Bool)

(assert (=> d!2395556 (=> (not res!3178487) (not e!4736347))))

(assert (=> d!2395556 (= res!3178487 (semiInverseModEq!3861 (toChars!11630 (transformation!8700 rNSep!142)) (toValue!11771 (transformation!8700 rNSep!142))))))

(assert (=> d!2395556 (= (inv!96919 (transformation!8700 rNSep!142)) e!4736347)))

(declare-fun b!8040807 () Bool)

(assert (=> b!8040807 (= e!4736347 (equivClasses!3676 (toChars!11630 (transformation!8700 rNSep!142)) (toValue!11771 (transformation!8700 rNSep!142))))))

(assert (= (and d!2395556 res!3178487) b!8040807))

(declare-fun m!8395230 () Bool)

(assert (=> d!2395556 m!8395230))

(declare-fun m!8395232 () Bool)

(assert (=> b!8040807 m!8395232))

(assert (=> b!8040724 d!2395556))

(declare-fun d!2395558 () Bool)

(assert (=> d!2395558 (= (inv!96917 (tag!9564 (h!81560 rulesRec!188))) (= (mod (str.len (value!291041 (tag!9564 (h!81560 rulesRec!188)))) 2) 0))))

(assert (=> b!8040735 d!2395558))

(declare-fun d!2395560 () Bool)

(declare-fun res!3178489 () Bool)

(declare-fun e!4736349 () Bool)

(assert (=> d!2395560 (=> (not res!3178489) (not e!4736349))))

(assert (=> d!2395560 (= res!3178489 (semiInverseModEq!3861 (toChars!11630 (transformation!8700 (h!81560 rulesRec!188))) (toValue!11771 (transformation!8700 (h!81560 rulesRec!188)))))))

(assert (=> d!2395560 (= (inv!96919 (transformation!8700 (h!81560 rulesRec!188))) e!4736349)))

(declare-fun b!8040809 () Bool)

(assert (=> b!8040809 (= e!4736349 (equivClasses!3676 (toChars!11630 (transformation!8700 (h!81560 rulesRec!188))) (toValue!11771 (transformation!8700 (h!81560 rulesRec!188)))))))

(assert (= (and d!2395560 res!3178489) b!8040809))

(declare-fun m!8395238 () Bool)

(assert (=> d!2395560 m!8395238))

(declare-fun m!8395240 () Bool)

(assert (=> b!8040809 m!8395240))

(assert (=> b!8040735 d!2395560))

(declare-fun d!2395566 () Bool)

(declare-fun lt!2722273 () Bool)

(declare-fun content!16035 (List!75237) (InoxSet C!43880))

(assert (=> d!2395566 (= lt!2722273 (select (content!16035 (usedCharacters!1278 (regex!8700 rSep!142))) c!6865))))

(declare-fun e!4736370 () Bool)

(assert (=> d!2395566 (= lt!2722273 e!4736370)))

(declare-fun res!3178505 () Bool)

(assert (=> d!2395566 (=> (not res!3178505) (not e!4736370))))

(assert (=> d!2395566 (= res!3178505 ((_ is Cons!75111) (usedCharacters!1278 (regex!8700 rSep!142))))))

(assert (=> d!2395566 (= (contains!20984 (usedCharacters!1278 (regex!8700 rSep!142)) c!6865) lt!2722273)))

(declare-fun b!8040844 () Bool)

(declare-fun e!4736369 () Bool)

(assert (=> b!8040844 (= e!4736370 e!4736369)))

(declare-fun res!3178506 () Bool)

(assert (=> b!8040844 (=> res!3178506 e!4736369)))

(assert (=> b!8040844 (= res!3178506 (= (h!81559 (usedCharacters!1278 (regex!8700 rSep!142))) c!6865))))

(declare-fun b!8040846 () Bool)

(assert (=> b!8040846 (= e!4736369 (contains!20984 (t!391007 (usedCharacters!1278 (regex!8700 rSep!142))) c!6865))))

(assert (= (and d!2395566 res!3178505) b!8040844))

(assert (= (and b!8040844 (not res!3178506)) b!8040846))

(assert (=> d!2395566 m!8395150))

(declare-fun m!8395272 () Bool)

(assert (=> d!2395566 m!8395272))

(declare-fun m!8395274 () Bool)

(assert (=> d!2395566 m!8395274))

(declare-fun m!8395276 () Bool)

(assert (=> b!8040846 m!8395276))

(assert (=> b!8040726 d!2395566))

(declare-fun b!8040884 () Bool)

(declare-fun e!4736400 () List!75237)

(declare-fun call!746393 () List!75237)

(assert (=> b!8040884 (= e!4736400 call!746393)))

(declare-fun bm!746388 () Bool)

(declare-fun call!746396 () List!75237)

(assert (=> bm!746388 (= call!746396 call!746393)))

(declare-fun bm!746389 () Bool)

(declare-fun call!746394 () List!75237)

(declare-fun c!1474953 () Bool)

(assert (=> bm!746389 (= call!746394 (usedCharacters!1278 (ite c!1474953 (regOne!44055 (regex!8700 rSep!142)) (regOne!44054 (regex!8700 rSep!142)))))))

(declare-fun b!8040885 () Bool)

(declare-fun e!4736398 () List!75237)

(declare-fun call!746395 () List!75237)

(assert (=> b!8040885 (= e!4736398 call!746395)))

(declare-fun c!1474954 () Bool)

(declare-fun bm!746390 () Bool)

(assert (=> bm!746390 (= call!746393 (usedCharacters!1278 (ite c!1474954 (reg!22100 (regex!8700 rSep!142)) (ite c!1474953 (regTwo!44055 (regex!8700 rSep!142)) (regTwo!44054 (regex!8700 rSep!142))))))))

(declare-fun b!8040886 () Bool)

(declare-fun e!4736399 () List!75237)

(assert (=> b!8040886 (= e!4736399 Nil!75111)))

(declare-fun b!8040887 () Bool)

(declare-fun e!4736397 () List!75237)

(assert (=> b!8040887 (= e!4736399 e!4736397)))

(declare-fun c!1474952 () Bool)

(assert (=> b!8040887 (= c!1474952 ((_ is ElementMatch!21771) (regex!8700 rSep!142)))))

(declare-fun bm!746391 () Bool)

(declare-fun ++!18622 (List!75237 List!75237) List!75237)

(assert (=> bm!746391 (= call!746395 (++!18622 call!746394 call!746396))))

(declare-fun d!2395584 () Bool)

(declare-fun c!1474951 () Bool)

(assert (=> d!2395584 (= c!1474951 (or ((_ is EmptyExpr!21771) (regex!8700 rSep!142)) ((_ is EmptyLang!21771) (regex!8700 rSep!142))))))

(assert (=> d!2395584 (= (usedCharacters!1278 (regex!8700 rSep!142)) e!4736399)))

(declare-fun b!8040883 () Bool)

(assert (=> b!8040883 (= e!4736400 e!4736398)))

(assert (=> b!8040883 (= c!1474953 ((_ is Union!21771) (regex!8700 rSep!142)))))

(declare-fun b!8040888 () Bool)

(assert (=> b!8040888 (= c!1474954 ((_ is Star!21771) (regex!8700 rSep!142)))))

(assert (=> b!8040888 (= e!4736397 e!4736400)))

(declare-fun b!8040889 () Bool)

(assert (=> b!8040889 (= e!4736398 call!746395)))

(declare-fun b!8040890 () Bool)

(assert (=> b!8040890 (= e!4736397 (Cons!75111 (c!1474930 (regex!8700 rSep!142)) Nil!75111))))

(assert (= (and d!2395584 c!1474951) b!8040886))

(assert (= (and d!2395584 (not c!1474951)) b!8040887))

(assert (= (and b!8040887 c!1474952) b!8040890))

(assert (= (and b!8040887 (not c!1474952)) b!8040888))

(assert (= (and b!8040888 c!1474954) b!8040884))

(assert (= (and b!8040888 (not c!1474954)) b!8040883))

(assert (= (and b!8040883 c!1474953) b!8040889))

(assert (= (and b!8040883 (not c!1474953)) b!8040885))

(assert (= (or b!8040889 b!8040885) bm!746388))

(assert (= (or b!8040889 b!8040885) bm!746389))

(assert (= (or b!8040889 b!8040885) bm!746391))

(assert (= (or b!8040884 bm!746388) bm!746390))

(declare-fun m!8395286 () Bool)

(assert (=> bm!746389 m!8395286))

(declare-fun m!8395288 () Bool)

(assert (=> bm!746390 m!8395288))

(declare-fun m!8395290 () Bool)

(assert (=> bm!746391 m!8395290))

(assert (=> b!8040726 d!2395584))

(declare-fun d!2395586 () Bool)

(assert (=> d!2395586 (= (inv!96917 (tag!9564 (h!81560 rules!4142))) (= (mod (str.len (value!291041 (tag!9564 (h!81560 rules!4142)))) 2) 0))))

(assert (=> b!8040737 d!2395586))

(declare-fun d!2395588 () Bool)

(declare-fun res!3178507 () Bool)

(declare-fun e!4736401 () Bool)

(assert (=> d!2395588 (=> (not res!3178507) (not e!4736401))))

(assert (=> d!2395588 (= res!3178507 (semiInverseModEq!3861 (toChars!11630 (transformation!8700 (h!81560 rules!4142))) (toValue!11771 (transformation!8700 (h!81560 rules!4142)))))))

(assert (=> d!2395588 (= (inv!96919 (transformation!8700 (h!81560 rules!4142))) e!4736401)))

(declare-fun b!8040891 () Bool)

(assert (=> b!8040891 (= e!4736401 (equivClasses!3676 (toChars!11630 (transformation!8700 (h!81560 rules!4142))) (toValue!11771 (transformation!8700 (h!81560 rules!4142)))))))

(assert (= (and d!2395588 res!3178507) b!8040891))

(declare-fun m!8395292 () Bool)

(assert (=> d!2395588 m!8395292))

(declare-fun m!8395294 () Bool)

(assert (=> b!8040891 m!8395294))

(assert (=> b!8040737 d!2395588))

(declare-fun d!2395590 () Bool)

(declare-fun res!3178508 () Bool)

(declare-fun e!4736402 () Bool)

(assert (=> d!2395590 (=> res!3178508 e!4736402)))

(assert (=> d!2395590 (= res!3178508 (not ((_ is Cons!75112) rulesRec!188)))))

(assert (=> d!2395590 (= (sepAndNonSepRulesDisjointChars!2060 rules!4142 rulesRec!188) e!4736402)))

(declare-fun b!8040892 () Bool)

(declare-fun e!4736403 () Bool)

(assert (=> b!8040892 (= e!4736402 e!4736403)))

(declare-fun res!3178509 () Bool)

(assert (=> b!8040892 (=> (not res!3178509) (not e!4736403))))

(assert (=> b!8040892 (= res!3178509 (ruleDisjointCharsFromAllFromOtherType!977 (h!81560 rulesRec!188) rules!4142))))

(declare-fun b!8040893 () Bool)

(assert (=> b!8040893 (= e!4736403 (sepAndNonSepRulesDisjointChars!2060 rules!4142 (t!391008 rulesRec!188)))))

(assert (= (and d!2395590 (not res!3178508)) b!8040892))

(assert (= (and b!8040892 res!3178509) b!8040893))

(declare-fun m!8395296 () Bool)

(assert (=> b!8040892 m!8395296))

(assert (=> b!8040893 m!8395158))

(assert (=> b!8040728 d!2395590))

(declare-fun d!2395592 () Bool)

(declare-fun lt!2722274 () Bool)

(assert (=> d!2395592 (= lt!2722274 (select (content!16034 rules!4142) rSep!142))))

(declare-fun e!4736405 () Bool)

(assert (=> d!2395592 (= lt!2722274 e!4736405)))

(declare-fun res!3178510 () Bool)

(assert (=> d!2395592 (=> (not res!3178510) (not e!4736405))))

(assert (=> d!2395592 (= res!3178510 ((_ is Cons!75112) rules!4142))))

(assert (=> d!2395592 (= (contains!20983 rules!4142 rSep!142) lt!2722274)))

(declare-fun b!8040894 () Bool)

(declare-fun e!4736404 () Bool)

(assert (=> b!8040894 (= e!4736405 e!4736404)))

(declare-fun res!3178511 () Bool)

(assert (=> b!8040894 (=> res!3178511 e!4736404)))

(assert (=> b!8040894 (= res!3178511 (= (h!81560 rules!4142) rSep!142))))

(declare-fun b!8040895 () Bool)

(assert (=> b!8040895 (= e!4736404 (contains!20983 (t!391008 rules!4142) rSep!142))))

(assert (= (and d!2395592 res!3178510) b!8040894))

(assert (= (and b!8040894 (not res!3178511)) b!8040895))

(assert (=> d!2395592 m!8395212))

(declare-fun m!8395298 () Bool)

(assert (=> d!2395592 m!8395298))

(declare-fun m!8395300 () Bool)

(assert (=> b!8040895 m!8395300))

(assert (=> b!8040718 d!2395592))

(declare-fun b!8040909 () Bool)

(declare-fun e!4736408 () Bool)

(declare-fun tp!2408903 () Bool)

(declare-fun tp!2408906 () Bool)

(assert (=> b!8040909 (= e!4736408 (and tp!2408903 tp!2408906))))

(assert (=> b!8040724 (= tp!2408833 e!4736408)))

(declare-fun b!8040908 () Bool)

(declare-fun tp!2408902 () Bool)

(assert (=> b!8040908 (= e!4736408 tp!2408902)))

(declare-fun b!8040907 () Bool)

(declare-fun tp!2408904 () Bool)

(declare-fun tp!2408905 () Bool)

(assert (=> b!8040907 (= e!4736408 (and tp!2408904 tp!2408905))))

(declare-fun b!8040906 () Bool)

(assert (=> b!8040906 (= e!4736408 tp_is_empty!54537)))

(assert (= (and b!8040724 ((_ is ElementMatch!21771) (regex!8700 rNSep!142))) b!8040906))

(assert (= (and b!8040724 ((_ is Concat!30792) (regex!8700 rNSep!142))) b!8040907))

(assert (= (and b!8040724 ((_ is Star!21771) (regex!8700 rNSep!142))) b!8040908))

(assert (= (and b!8040724 ((_ is Union!21771) (regex!8700 rNSep!142))) b!8040909))

(declare-fun b!8040920 () Bool)

(declare-fun b_free!135643 () Bool)

(declare-fun b_next!136433 () Bool)

(assert (=> b!8040920 (= b_free!135643 (not b_next!136433))))

(declare-fun tp!2408918 () Bool)

(declare-fun b_and!354079 () Bool)

(assert (=> b!8040920 (= tp!2408918 b_and!354079)))

(declare-fun b_free!135645 () Bool)

(declare-fun b_next!136435 () Bool)

(assert (=> b!8040920 (= b_free!135645 (not b_next!136435))))

(declare-fun tp!2408917 () Bool)

(declare-fun b_and!354081 () Bool)

(assert (=> b!8040920 (= tp!2408917 b_and!354081)))

(declare-fun e!4736420 () Bool)

(assert (=> b!8040920 (= e!4736420 (and tp!2408918 tp!2408917))))

(declare-fun tp!2408915 () Bool)

(declare-fun b!8040919 () Bool)

(declare-fun e!4736417 () Bool)

(assert (=> b!8040919 (= e!4736417 (and tp!2408915 (inv!96917 (tag!9564 (h!81560 (t!391008 rules!4142)))) (inv!96919 (transformation!8700 (h!81560 (t!391008 rules!4142)))) e!4736420))))

(declare-fun b!8040918 () Bool)

(declare-fun e!4736419 () Bool)

(declare-fun tp!2408916 () Bool)

(assert (=> b!8040918 (= e!4736419 (and e!4736417 tp!2408916))))

(assert (=> b!8040730 (= tp!2408837 e!4736419)))

(assert (= b!8040919 b!8040920))

(assert (= b!8040918 b!8040919))

(assert (= (and b!8040730 ((_ is Cons!75112) (t!391008 rules!4142))) b!8040918))

(declare-fun m!8395302 () Bool)

(assert (=> b!8040919 m!8395302))

(declare-fun m!8395304 () Bool)

(assert (=> b!8040919 m!8395304))

(declare-fun b!8040924 () Bool)

(declare-fun e!4736421 () Bool)

(declare-fun tp!2408920 () Bool)

(declare-fun tp!2408923 () Bool)

(assert (=> b!8040924 (= e!4736421 (and tp!2408920 tp!2408923))))

(assert (=> b!8040735 (= tp!2408840 e!4736421)))

(declare-fun b!8040923 () Bool)

(declare-fun tp!2408919 () Bool)

(assert (=> b!8040923 (= e!4736421 tp!2408919)))

(declare-fun b!8040922 () Bool)

(declare-fun tp!2408921 () Bool)

(declare-fun tp!2408922 () Bool)

(assert (=> b!8040922 (= e!4736421 (and tp!2408921 tp!2408922))))

(declare-fun b!8040921 () Bool)

(assert (=> b!8040921 (= e!4736421 tp_is_empty!54537)))

(assert (= (and b!8040735 ((_ is ElementMatch!21771) (regex!8700 (h!81560 rulesRec!188)))) b!8040921))

(assert (= (and b!8040735 ((_ is Concat!30792) (regex!8700 (h!81560 rulesRec!188)))) b!8040922))

(assert (= (and b!8040735 ((_ is Star!21771) (regex!8700 (h!81560 rulesRec!188)))) b!8040923))

(assert (= (and b!8040735 ((_ is Union!21771) (regex!8700 (h!81560 rulesRec!188)))) b!8040924))

(declare-fun b!8040928 () Bool)

(declare-fun e!4736422 () Bool)

(declare-fun tp!2408925 () Bool)

(declare-fun tp!2408928 () Bool)

(assert (=> b!8040928 (= e!4736422 (and tp!2408925 tp!2408928))))

(assert (=> b!8040737 (= tp!2408845 e!4736422)))

(declare-fun b!8040927 () Bool)

(declare-fun tp!2408924 () Bool)

(assert (=> b!8040927 (= e!4736422 tp!2408924)))

(declare-fun b!8040926 () Bool)

(declare-fun tp!2408926 () Bool)

(declare-fun tp!2408927 () Bool)

(assert (=> b!8040926 (= e!4736422 (and tp!2408926 tp!2408927))))

(declare-fun b!8040925 () Bool)

(assert (=> b!8040925 (= e!4736422 tp_is_empty!54537)))

(assert (= (and b!8040737 ((_ is ElementMatch!21771) (regex!8700 (h!81560 rules!4142)))) b!8040925))

(assert (= (and b!8040737 ((_ is Concat!30792) (regex!8700 (h!81560 rules!4142)))) b!8040926))

(assert (= (and b!8040737 ((_ is Star!21771) (regex!8700 (h!81560 rules!4142)))) b!8040927))

(assert (= (and b!8040737 ((_ is Union!21771) (regex!8700 (h!81560 rules!4142)))) b!8040928))

(declare-fun b!8040931 () Bool)

(declare-fun b_free!135647 () Bool)

(declare-fun b_next!136437 () Bool)

(assert (=> b!8040931 (= b_free!135647 (not b_next!136437))))

(declare-fun tp!2408932 () Bool)

(declare-fun b_and!354083 () Bool)

(assert (=> b!8040931 (= tp!2408932 b_and!354083)))

(declare-fun b_free!135649 () Bool)

(declare-fun b_next!136439 () Bool)

(assert (=> b!8040931 (= b_free!135649 (not b_next!136439))))

(declare-fun tp!2408931 () Bool)

(declare-fun b_and!354085 () Bool)

(assert (=> b!8040931 (= tp!2408931 b_and!354085)))

(declare-fun e!4736426 () Bool)

(assert (=> b!8040931 (= e!4736426 (and tp!2408932 tp!2408931))))

(declare-fun e!4736423 () Bool)

(declare-fun tp!2408929 () Bool)

(declare-fun b!8040930 () Bool)

(assert (=> b!8040930 (= e!4736423 (and tp!2408929 (inv!96917 (tag!9564 (h!81560 (t!391008 rulesRec!188)))) (inv!96919 (transformation!8700 (h!81560 (t!391008 rulesRec!188)))) e!4736426))))

(declare-fun b!8040929 () Bool)

(declare-fun e!4736425 () Bool)

(declare-fun tp!2408930 () Bool)

(assert (=> b!8040929 (= e!4736425 (and e!4736423 tp!2408930))))

(assert (=> b!8040734 (= tp!2408841 e!4736425)))

(assert (= b!8040930 b!8040931))

(assert (= b!8040929 b!8040930))

(assert (= (and b!8040734 ((_ is Cons!75112) (t!391008 rulesRec!188))) b!8040929))

(declare-fun m!8395306 () Bool)

(assert (=> b!8040930 m!8395306))

(declare-fun m!8395308 () Bool)

(assert (=> b!8040930 m!8395308))

(declare-fun b!8040935 () Bool)

(declare-fun e!4736427 () Bool)

(declare-fun tp!2408934 () Bool)

(declare-fun tp!2408937 () Bool)

(assert (=> b!8040935 (= e!4736427 (and tp!2408934 tp!2408937))))

(assert (=> b!8040723 (= tp!2408832 e!4736427)))

(declare-fun b!8040934 () Bool)

(declare-fun tp!2408933 () Bool)

(assert (=> b!8040934 (= e!4736427 tp!2408933)))

(declare-fun b!8040933 () Bool)

(declare-fun tp!2408935 () Bool)

(declare-fun tp!2408936 () Bool)

(assert (=> b!8040933 (= e!4736427 (and tp!2408935 tp!2408936))))

(declare-fun b!8040932 () Bool)

(assert (=> b!8040932 (= e!4736427 tp_is_empty!54537)))

(assert (= (and b!8040723 ((_ is ElementMatch!21771) (regex!8700 rSep!142))) b!8040932))

(assert (= (and b!8040723 ((_ is Concat!30792) (regex!8700 rSep!142))) b!8040933))

(assert (= (and b!8040723 ((_ is Star!21771) (regex!8700 rSep!142))) b!8040934))

(assert (= (and b!8040723 ((_ is Union!21771) (regex!8700 rSep!142))) b!8040935))

(check-sat (not b!8040893) (not d!2395560) (not b!8040846) (not bm!746391) (not d!2395556) (not b!8040891) (not b_next!136409) (not b!8040918) (not d!2395542) (not b_next!136423) (not b_next!136439) (not d!2395566) (not d!2395588) (not b!8040909) (not b!8040926) (not b!8040923) (not b!8040934) b_and!354085 (not bm!746390) b_and!354059 (not b_next!136411) (not b!8040791) (not b!8040929) (not bm!746389) b_and!354083 (not b!8040919) (not b!8040807) (not b!8040776) b_and!354079 (not b!8040788) (not d!2395544) (not b!8040789) (not b!8040930) b_and!354055 b_and!354063 (not b!8040933) (not b!8040892) b_and!354081 (not b!8040935) tp_is_empty!54537 (not b!8040922) (not b!8040804) (not b!8040793) b_and!354069 (not b!8040809) (not d!2395592) b_and!354061 (not b_next!136415) (not b_next!136421) (not d!2395532) (not b_next!136417) (not b_next!136437) (not b_next!136419) (not b!8040924) (not d!2395530) (not b_next!136413) (not b!8040908) (not b!8040895) (not b_next!136435) (not b_next!136433) b_and!354065 b_and!354057 (not b!8040907) (not b!8040928) (not b!8040762) b_and!354067 (not d!2395550) (not b!8040927))
(check-sat (not b_next!136409) b_and!354085 b_and!354083 b_and!354079 b_and!354081 b_and!354069 (not b_next!136413) b_and!354057 b_and!354067 (not b_next!136423) (not b_next!136439) b_and!354059 (not b_next!136411) b_and!354055 b_and!354063 b_and!354061 (not b_next!136415) (not b_next!136421) (not b_next!136417) (not b_next!136437) (not b_next!136419) (not b_next!136435) (not b_next!136433) b_and!354065)
