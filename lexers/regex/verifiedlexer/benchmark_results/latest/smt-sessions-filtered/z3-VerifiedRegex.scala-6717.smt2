; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351674 () Bool)

(assert start!351674)

(declare-fun b!3746024 () Bool)

(declare-fun b_free!99689 () Bool)

(declare-fun b_next!100393 () Bool)

(assert (=> b!3746024 (= b_free!99689 (not b_next!100393))))

(declare-fun tp!1142623 () Bool)

(declare-fun b_and!277923 () Bool)

(assert (=> b!3746024 (= tp!1142623 b_and!277923)))

(declare-fun b_free!99691 () Bool)

(declare-fun b_next!100395 () Bool)

(assert (=> b!3746024 (= b_free!99691 (not b_next!100395))))

(declare-fun tp!1142624 () Bool)

(declare-fun b_and!277925 () Bool)

(assert (=> b!3746024 (= tp!1142624 b_and!277925)))

(declare-fun b!3746023 () Bool)

(declare-fun b_free!99693 () Bool)

(declare-fun b_next!100397 () Bool)

(assert (=> b!3746023 (= b_free!99693 (not b_next!100397))))

(declare-fun tp!1142620 () Bool)

(declare-fun b_and!277927 () Bool)

(assert (=> b!3746023 (= tp!1142620 b_and!277927)))

(declare-fun b_free!99695 () Bool)

(declare-fun b_next!100399 () Bool)

(assert (=> b!3746023 (= b_free!99695 (not b_next!100399))))

(declare-fun tp!1142619 () Bool)

(declare-fun b_and!277929 () Bool)

(assert (=> b!3746023 (= tp!1142619 b_and!277929)))

(declare-fun b!3746027 () Bool)

(declare-fun b_free!99697 () Bool)

(declare-fun b_next!100401 () Bool)

(assert (=> b!3746027 (= b_free!99697 (not b_next!100401))))

(declare-fun tp!1142618 () Bool)

(declare-fun b_and!277931 () Bool)

(assert (=> b!3746027 (= tp!1142618 b_and!277931)))

(declare-fun b_free!99699 () Bool)

(declare-fun b_next!100403 () Bool)

(assert (=> b!3746027 (= b_free!99699 (not b_next!100403))))

(declare-fun tp!1142621 () Bool)

(declare-fun b_and!277933 () Bool)

(assert (=> b!3746027 (= tp!1142621 b_and!277933)))

(declare-datatypes ((List!39922 0))(
  ( (Nil!39798) (Cons!39798 (h!45218 (_ BitVec 16)) (t!302605 List!39922)) )
))
(declare-datatypes ((TokenValue!6298 0))(
  ( (FloatLiteralValue!12596 (text!44531 List!39922)) (TokenValueExt!6297 (__x!24813 Int)) (Broken!31490 (value!193502 List!39922)) (Object!6421) (End!6298) (Def!6298) (Underscore!6298) (Match!6298) (Else!6298) (Error!6298) (Case!6298) (If!6298) (Extends!6298) (Abstract!6298) (Class!6298) (Val!6298) (DelimiterValue!12596 (del!6358 List!39922)) (KeywordValue!6304 (value!193503 List!39922)) (CommentValue!12596 (value!193504 List!39922)) (WhitespaceValue!12596 (value!193505 List!39922)) (IndentationValue!6298 (value!193506 List!39922)) (String!45115) (Int32!6298) (Broken!31491 (value!193507 List!39922)) (Boolean!6299) (Unit!57641) (OperatorValue!6301 (op!6358 List!39922)) (IdentifierValue!12596 (value!193508 List!39922)) (IdentifierValue!12597 (value!193509 List!39922)) (WhitespaceValue!12597 (value!193510 List!39922)) (True!12596) (False!12596) (Broken!31492 (value!193511 List!39922)) (Broken!31493 (value!193512 List!39922)) (True!12597) (RightBrace!6298) (RightBracket!6298) (Colon!6298) (Null!6298) (Comma!6298) (LeftBracket!6298) (False!12597) (LeftBrace!6298) (ImaginaryLiteralValue!6298 (text!44532 List!39922)) (StringLiteralValue!18894 (value!193513 List!39922)) (EOFValue!6298 (value!193514 List!39922)) (IdentValue!6298 (value!193515 List!39922)) (DelimiterValue!12597 (value!193516 List!39922)) (DedentValue!6298 (value!193517 List!39922)) (NewLineValue!6298 (value!193518 List!39922)) (IntegerValue!18894 (value!193519 (_ BitVec 32)) (text!44533 List!39922)) (IntegerValue!18895 (value!193520 Int) (text!44534 List!39922)) (Times!6298) (Or!6298) (Equal!6298) (Minus!6298) (Broken!31494 (value!193521 List!39922)) (And!6298) (Div!6298) (LessEqual!6298) (Mod!6298) (Concat!17271) (Not!6298) (Plus!6298) (SpaceValue!6298 (value!193522 List!39922)) (IntegerValue!18896 (value!193523 Int) (text!44535 List!39922)) (StringLiteralValue!18895 (text!44536 List!39922)) (FloatLiteralValue!12597 (text!44537 List!39922)) (BytesLiteralValue!6298 (value!193524 List!39922)) (CommentValue!12597 (value!193525 List!39922)) (StringLiteralValue!18896 (value!193526 List!39922)) (ErrorTokenValue!6298 (msg!6359 List!39922)) )
))
(declare-datatypes ((C!22132 0))(
  ( (C!22133 (val!13114 Int)) )
))
(declare-datatypes ((List!39923 0))(
  ( (Nil!39799) (Cons!39799 (h!45219 C!22132) (t!302606 List!39923)) )
))
(declare-datatypes ((IArray!24335 0))(
  ( (IArray!24336 (innerList!12225 List!39923)) )
))
(declare-datatypes ((Conc!12165 0))(
  ( (Node!12165 (left!30834 Conc!12165) (right!31164 Conc!12165) (csize!24560 Int) (cheight!12376 Int)) (Leaf!18883 (xs!15367 IArray!24335) (csize!24561 Int)) (Empty!12165) )
))
(declare-datatypes ((BalanceConc!23944 0))(
  ( (BalanceConc!23945 (c!648780 Conc!12165)) )
))
(declare-datatypes ((TokenValueInjection!12024 0))(
  ( (TokenValueInjection!12025 (toValue!8416 Int) (toChars!8275 Int)) )
))
(declare-datatypes ((Regex!10973 0))(
  ( (ElementMatch!10973 (c!648781 C!22132)) (Concat!17272 (regOne!22458 Regex!10973) (regTwo!22458 Regex!10973)) (EmptyExpr!10973) (Star!10973 (reg!11302 Regex!10973)) (EmptyLang!10973) (Union!10973 (regOne!22459 Regex!10973) (regTwo!22459 Regex!10973)) )
))
(declare-datatypes ((String!45116 0))(
  ( (String!45117 (value!193527 String)) )
))
(declare-datatypes ((Rule!11936 0))(
  ( (Rule!11937 (regex!6068 Regex!10973) (tag!6928 String!45116) (isSeparator!6068 Bool) (transformation!6068 TokenValueInjection!12024)) )
))
(declare-fun rNSep!170 () Rule!11936)

(declare-fun e!2316318 () Bool)

(declare-fun e!2316316 () Bool)

(declare-fun tp!1142625 () Bool)

(declare-fun b!3746015 () Bool)

(declare-fun inv!53327 (String!45116) Bool)

(declare-fun inv!53329 (TokenValueInjection!12024) Bool)

(assert (=> b!3746015 (= e!2316318 (and tp!1142625 (inv!53327 (tag!6928 rNSep!170)) (inv!53329 (transformation!6068 rNSep!170)) e!2316316))))

(declare-fun b!3746016 () Bool)

(declare-fun res!1518396 () Bool)

(declare-fun e!2316319 () Bool)

(assert (=> b!3746016 (=> (not res!1518396) (not e!2316319))))

(declare-datatypes ((List!39924 0))(
  ( (Nil!39800) (Cons!39800 (h!45220 Rule!11936) (t!302607 List!39924)) )
))
(declare-fun rules!4213 () List!39924)

(declare-fun rSep!170 () Rule!11936)

(get-info :version)

(assert (=> b!3746016 (= res!1518396 (and (or (not ((_ is Cons!39800) rules!4213)) (not (= (h!45220 rules!4213) rSep!170))) ((_ is Cons!39800) rules!4213)))))

(declare-fun b!3746017 () Bool)

(declare-fun res!1518397 () Bool)

(assert (=> b!3746017 (=> (not res!1518397) (not e!2316319))))

(assert (=> b!3746017 (= res!1518397 (and (not (isSeparator!6068 rNSep!170)) (isSeparator!6068 rSep!170)))))

(declare-fun b!3746018 () Bool)

(declare-fun res!1518400 () Bool)

(assert (=> b!3746018 (=> (not res!1518400) (not e!2316319))))

(declare-fun contains!8095 (List!39924 Rule!11936) Bool)

(assert (=> b!3746018 (= res!1518400 (contains!8095 rules!4213 rSep!170))))

(declare-fun b!3746019 () Bool)

(declare-fun e!2316314 () Bool)

(declare-fun e!2316321 () Bool)

(declare-fun tp!1142617 () Bool)

(assert (=> b!3746019 (= e!2316314 (and tp!1142617 (inv!53327 (tag!6928 (h!45220 rules!4213))) (inv!53329 (transformation!6068 (h!45220 rules!4213))) e!2316321))))

(declare-fun b!3746020 () Bool)

(declare-fun res!1518401 () Bool)

(assert (=> b!3746020 (=> (not res!1518401) (not e!2316319))))

(declare-datatypes ((LexerInterface!5657 0))(
  ( (LexerInterfaceExt!5654 (__x!24814 Int)) (Lexer!5655) )
))
(declare-fun thiss!27193 () LexerInterface!5657)

(declare-fun rulesInvariant!5054 (LexerInterface!5657 List!39924) Bool)

(assert (=> b!3746020 (= res!1518401 (rulesInvariant!5054 thiss!27193 rules!4213))))

(declare-fun b!3746021 () Bool)

(declare-fun res!1518398 () Bool)

(assert (=> b!3746021 (=> (not res!1518398) (not e!2316319))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!941 (Rule!11936 List!39924) Bool)

(assert (=> b!3746021 (= res!1518398 (ruleDisjointCharsFromAllFromOtherType!941 rNSep!170 rules!4213))))

(declare-fun b!3746022 () Bool)

(declare-fun e!2316315 () Bool)

(declare-fun e!2316322 () Bool)

(declare-fun tp!1142622 () Bool)

(assert (=> b!3746022 (= e!2316315 (and tp!1142622 (inv!53327 (tag!6928 rSep!170)) (inv!53329 (transformation!6068 rSep!170)) e!2316322))))

(declare-fun res!1518399 () Bool)

(assert (=> start!351674 (=> (not res!1518399) (not e!2316319))))

(assert (=> start!351674 (= res!1518399 ((_ is Lexer!5655) thiss!27193))))

(assert (=> start!351674 e!2316319))

(assert (=> start!351674 e!2316318))

(declare-fun e!2316312 () Bool)

(assert (=> start!351674 e!2316312))

(assert (=> start!351674 true))

(declare-fun tp_is_empty!18961 () Bool)

(assert (=> start!351674 tp_is_empty!18961))

(assert (=> start!351674 e!2316315))

(assert (=> b!3746023 (= e!2316322 (and tp!1142620 tp!1142619))))

(assert (=> b!3746024 (= e!2316316 (and tp!1142623 tp!1142624))))

(declare-fun b!3746025 () Bool)

(declare-fun tp!1142626 () Bool)

(assert (=> b!3746025 (= e!2316312 (and e!2316314 tp!1142626))))

(declare-fun b!3746026 () Bool)

(assert (=> b!3746026 (= e!2316319 false)))

(declare-fun lt!1299466 () Bool)

(assert (=> b!3746026 (= lt!1299466 (rulesInvariant!5054 thiss!27193 rules!4213))))

(assert (=> b!3746027 (= e!2316321 (and tp!1142618 tp!1142621))))

(declare-fun b!3746028 () Bool)

(declare-fun res!1518402 () Bool)

(assert (=> b!3746028 (=> (not res!1518402) (not e!2316319))))

(declare-fun c!6920 () C!22132)

(declare-fun contains!8096 (List!39923 C!22132) Bool)

(declare-fun usedCharacters!1236 (Regex!10973) List!39923)

(assert (=> b!3746028 (= res!1518402 (contains!8096 (usedCharacters!1236 (regex!6068 rNSep!170)) c!6920))))

(assert (= (and start!351674 res!1518399) b!3746020))

(assert (= (and b!3746020 res!1518401) b!3746018))

(assert (= (and b!3746018 res!1518400) b!3746028))

(assert (= (and b!3746028 res!1518402) b!3746017))

(assert (= (and b!3746017 res!1518397) b!3746021))

(assert (= (and b!3746021 res!1518398) b!3746016))

(assert (= (and b!3746016 res!1518396) b!3746026))

(assert (= b!3746015 b!3746024))

(assert (= start!351674 b!3746015))

(assert (= b!3746019 b!3746027))

(assert (= b!3746025 b!3746019))

(assert (= (and start!351674 ((_ is Cons!39800) rules!4213)) b!3746025))

(assert (= b!3746022 b!3746023))

(assert (= start!351674 b!3746022))

(declare-fun m!4238755 () Bool)

(assert (=> b!3746019 m!4238755))

(declare-fun m!4238757 () Bool)

(assert (=> b!3746019 m!4238757))

(declare-fun m!4238759 () Bool)

(assert (=> b!3746028 m!4238759))

(assert (=> b!3746028 m!4238759))

(declare-fun m!4238761 () Bool)

(assert (=> b!3746028 m!4238761))

(declare-fun m!4238763 () Bool)

(assert (=> b!3746022 m!4238763))

(declare-fun m!4238765 () Bool)

(assert (=> b!3746022 m!4238765))

(declare-fun m!4238767 () Bool)

(assert (=> b!3746026 m!4238767))

(declare-fun m!4238769 () Bool)

(assert (=> b!3746021 m!4238769))

(declare-fun m!4238771 () Bool)

(assert (=> b!3746018 m!4238771))

(declare-fun m!4238773 () Bool)

(assert (=> b!3746015 m!4238773))

(declare-fun m!4238775 () Bool)

(assert (=> b!3746015 m!4238775))

(assert (=> b!3746020 m!4238767))

(check-sat (not b!3746026) tp_is_empty!18961 (not b_next!100401) (not b!3746020) (not b!3746018) (not b!3746015) b_and!277925 (not b!3746021) (not b!3746022) (not b_next!100399) b_and!277923 b_and!277927 b_and!277931 (not b!3746028) b_and!277933 (not b_next!100403) (not b!3746019) (not b!3746025) (not b_next!100395) (not b_next!100393) (not b_next!100397) b_and!277929)
(check-sat (not b_next!100401) b_and!277925 (not b_next!100399) b_and!277923 b_and!277927 b_and!277931 b_and!277933 (not b_next!100403) (not b_next!100395) (not b_next!100393) (not b_next!100397) b_and!277929)
