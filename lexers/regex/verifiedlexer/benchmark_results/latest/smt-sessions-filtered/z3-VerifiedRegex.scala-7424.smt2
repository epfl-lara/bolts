; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394906 () Bool)

(assert start!394906)

(declare-fun b!4149789 () Bool)

(declare-fun b_free!118547 () Bool)

(declare-fun b_next!119251 () Bool)

(assert (=> b!4149789 (= b_free!118547 (not b_next!119251))))

(declare-fun tp!1264895 () Bool)

(declare-fun b_and!322729 () Bool)

(assert (=> b!4149789 (= tp!1264895 b_and!322729)))

(declare-fun b_free!118549 () Bool)

(declare-fun b_next!119253 () Bool)

(assert (=> b!4149789 (= b_free!118549 (not b_next!119253))))

(declare-fun tp!1264906 () Bool)

(declare-fun b_and!322731 () Bool)

(assert (=> b!4149789 (= tp!1264906 b_and!322731)))

(declare-fun b!4149793 () Bool)

(declare-fun b_free!118551 () Bool)

(declare-fun b_next!119255 () Bool)

(assert (=> b!4149793 (= b_free!118551 (not b_next!119255))))

(declare-fun tp!1264897 () Bool)

(declare-fun b_and!322733 () Bool)

(assert (=> b!4149793 (= tp!1264897 b_and!322733)))

(declare-fun b_free!118553 () Bool)

(declare-fun b_next!119257 () Bool)

(assert (=> b!4149793 (= b_free!118553 (not b_next!119257))))

(declare-fun tp!1264905 () Bool)

(declare-fun b_and!322735 () Bool)

(assert (=> b!4149793 (= tp!1264905 b_and!322735)))

(declare-fun b!4149785 () Bool)

(declare-fun b_free!118555 () Bool)

(declare-fun b_next!119259 () Bool)

(assert (=> b!4149785 (= b_free!118555 (not b_next!119259))))

(declare-fun tp!1264902 () Bool)

(declare-fun b_and!322737 () Bool)

(assert (=> b!4149785 (= tp!1264902 b_and!322737)))

(declare-fun b_free!118557 () Bool)

(declare-fun b_next!119261 () Bool)

(assert (=> b!4149785 (= b_free!118557 (not b_next!119261))))

(declare-fun tp!1264901 () Bool)

(declare-fun b_and!322739 () Bool)

(assert (=> b!4149785 (= tp!1264901 b_and!322739)))

(declare-datatypes ((List!45189 0))(
  ( (Nil!45065) (Cons!45065 (h!50485 (_ BitVec 16)) (t!343060 List!45189)) )
))
(declare-datatypes ((TokenValue!7650 0))(
  ( (FloatLiteralValue!15300 (text!53995 List!45189)) (TokenValueExt!7649 (__x!27517 Int)) (Broken!38250 (value!231998 List!45189)) (Object!7773) (End!7650) (Def!7650) (Underscore!7650) (Match!7650) (Else!7650) (Error!7650) (Case!7650) (If!7650) (Extends!7650) (Abstract!7650) (Class!7650) (Val!7650) (DelimiterValue!15300 (del!7710 List!45189)) (KeywordValue!7656 (value!231999 List!45189)) (CommentValue!15300 (value!232000 List!45189)) (WhitespaceValue!15300 (value!232001 List!45189)) (IndentationValue!7650 (value!232002 List!45189)) (String!51999) (Int32!7650) (Broken!38251 (value!232003 List!45189)) (Boolean!7651) (Unit!64342) (OperatorValue!7653 (op!7710 List!45189)) (IdentifierValue!15300 (value!232004 List!45189)) (IdentifierValue!15301 (value!232005 List!45189)) (WhitespaceValue!15301 (value!232006 List!45189)) (True!15300) (False!15300) (Broken!38252 (value!232007 List!45189)) (Broken!38253 (value!232008 List!45189)) (True!15301) (RightBrace!7650) (RightBracket!7650) (Colon!7650) (Null!7650) (Comma!7650) (LeftBracket!7650) (False!15301) (LeftBrace!7650) (ImaginaryLiteralValue!7650 (text!53996 List!45189)) (StringLiteralValue!22950 (value!232009 List!45189)) (EOFValue!7650 (value!232010 List!45189)) (IdentValue!7650 (value!232011 List!45189)) (DelimiterValue!15301 (value!232012 List!45189)) (DedentValue!7650 (value!232013 List!45189)) (NewLineValue!7650 (value!232014 List!45189)) (IntegerValue!22950 (value!232015 (_ BitVec 32)) (text!53997 List!45189)) (IntegerValue!22951 (value!232016 Int) (text!53998 List!45189)) (Times!7650) (Or!7650) (Equal!7650) (Minus!7650) (Broken!38254 (value!232017 List!45189)) (And!7650) (Div!7650) (LessEqual!7650) (Mod!7650) (Concat!19975) (Not!7650) (Plus!7650) (SpaceValue!7650 (value!232018 List!45189)) (IntegerValue!22952 (value!232019 Int) (text!53999 List!45189)) (StringLiteralValue!22951 (text!54000 List!45189)) (FloatLiteralValue!15301 (text!54001 List!45189)) (BytesLiteralValue!7650 (value!232020 List!45189)) (CommentValue!15301 (value!232021 List!45189)) (StringLiteralValue!22952 (value!232022 List!45189)) (ErrorTokenValue!7650 (msg!7711 List!45189)) )
))
(declare-datatypes ((C!24836 0))(
  ( (C!24837 (val!14528 Int)) )
))
(declare-datatypes ((List!45190 0))(
  ( (Nil!45066) (Cons!45066 (h!50486 C!24836) (t!343061 List!45190)) )
))
(declare-datatypes ((IArray!27267 0))(
  ( (IArray!27268 (innerList!13691 List!45190)) )
))
(declare-datatypes ((Conc!13631 0))(
  ( (Node!13631 (left!33743 Conc!13631) (right!34073 Conc!13631) (csize!27492 Int) (cheight!13842 Int)) (Leaf!21056 (xs!16937 IArray!27267) (csize!27493 Int)) (Empty!13631) )
))
(declare-datatypes ((BalanceConc!26856 0))(
  ( (BalanceConc!26857 (c!710796 Conc!13631)) )
))
(declare-datatypes ((Regex!12325 0))(
  ( (ElementMatch!12325 (c!710797 C!24836)) (Concat!19976 (regOne!25162 Regex!12325) (regTwo!25162 Regex!12325)) (EmptyExpr!12325) (Star!12325 (reg!12654 Regex!12325)) (EmptyLang!12325) (Union!12325 (regOne!25163 Regex!12325) (regTwo!25163 Regex!12325)) )
))
(declare-datatypes ((String!52000 0))(
  ( (String!52001 (value!232023 String)) )
))
(declare-datatypes ((TokenValueInjection!14728 0))(
  ( (TokenValueInjection!14729 (toValue!10084 Int) (toChars!9943 Int)) )
))
(declare-datatypes ((Rule!14640 0))(
  ( (Rule!14641 (regex!7420 Regex!12325) (tag!8280 String!52000) (isSeparator!7420 Bool) (transformation!7420 TokenValueInjection!14728)) )
))
(declare-fun rBis!149 () Rule!14640)

(declare-fun e!2574757 () Bool)

(declare-fun b!4149782 () Bool)

(declare-fun e!2574758 () Bool)

(declare-fun tp!1264903 () Bool)

(declare-fun inv!59675 (String!52000) Bool)

(declare-fun inv!59677 (TokenValueInjection!14728) Bool)

(assert (=> b!4149782 (= e!2574757 (and tp!1264903 (inv!59675 (tag!8280 rBis!149)) (inv!59677 (transformation!7420 rBis!149)) e!2574758))))

(declare-fun b!4149783 () Bool)

(declare-fun res!1699089 () Bool)

(declare-fun e!2574753 () Bool)

(assert (=> b!4149783 (=> (not res!1699089) (not e!2574753))))

(declare-fun p!2912 () List!45190)

(declare-fun input!3238 () List!45190)

(declare-fun isPrefix!4355 (List!45190 List!45190) Bool)

(assert (=> b!4149783 (= res!1699089 (isPrefix!4355 p!2912 input!3238))))

(declare-fun b!4149784 () Bool)

(declare-fun e!2574760 () Bool)

(declare-fun tp_is_empty!21573 () Bool)

(declare-fun tp!1264900 () Bool)

(assert (=> b!4149784 (= e!2574760 (and tp_is_empty!21573 tp!1264900))))

(declare-fun e!2574755 () Bool)

(assert (=> b!4149785 (= e!2574755 (and tp!1264902 tp!1264901))))

(declare-fun b!4149786 () Bool)

(declare-fun res!1699090 () Bool)

(assert (=> b!4149786 (=> (not res!1699090) (not e!2574753))))

(declare-fun isEmpty!26904 (List!45190) Bool)

(assert (=> b!4149786 (= res!1699090 (not (isEmpty!26904 p!2912)))))

(declare-fun b!4149787 () Bool)

(declare-fun res!1699096 () Bool)

(declare-fun e!2574765 () Bool)

(assert (=> b!4149787 (=> (not res!1699096) (not e!2574765))))

(declare-datatypes ((List!45191 0))(
  ( (Nil!45067) (Cons!45067 (h!50487 Rule!14640) (t!343062 List!45191)) )
))
(declare-fun rules!3756 () List!45191)

(declare-fun r!4008 () Rule!14640)

(declare-fun getIndex!766 (List!45191 Rule!14640) Int)

(assert (=> b!4149787 (= res!1699096 (< (getIndex!766 rules!3756 rBis!149) (getIndex!766 rules!3756 r!4008)))))

(declare-fun b!4149788 () Bool)

(declare-fun res!1699094 () Bool)

(assert (=> b!4149788 (=> (not res!1699094) (not e!2574765))))

(declare-fun matchR!6154 (Regex!12325 List!45190) Bool)

(assert (=> b!4149788 (= res!1699094 (matchR!6154 (regex!7420 r!4008) p!2912))))

(declare-fun b!4149790 () Bool)

(declare-fun e!2574761 () Bool)

(declare-fun e!2574764 () Bool)

(declare-fun tp!1264899 () Bool)

(assert (=> b!4149790 (= e!2574761 (and e!2574764 tp!1264899))))

(declare-fun b!4149791 () Bool)

(declare-fun res!1699092 () Bool)

(assert (=> b!4149791 (=> (not res!1699092) (not e!2574753))))

(declare-fun contains!9106 (List!45191 Rule!14640) Bool)

(assert (=> b!4149791 (= res!1699092 (contains!9106 rules!3756 rBis!149))))

(declare-fun b!4149792 () Bool)

(declare-fun e!2574766 () Bool)

(assert (=> b!4149792 (= e!2574765 (not e!2574766))))

(declare-fun res!1699097 () Bool)

(assert (=> b!4149792 (=> res!1699097 e!2574766)))

(get-info :version)

(assert (=> b!4149792 (= res!1699097 (or (and ((_ is Cons!45067) rules!3756) (= (h!50487 rules!3756) rBis!149)) (not ((_ is Cons!45067) rules!3756)) (= (h!50487 rules!3756) rBis!149)))))

(declare-datatypes ((Unit!64343 0))(
  ( (Unit!64344) )
))
(declare-fun lt!1480041 () Unit!64343)

(declare-datatypes ((LexerInterface!7009 0))(
  ( (LexerInterfaceExt!7006 (__x!27518 Int)) (Lexer!7007) )
))
(declare-fun thiss!25645 () LexerInterface!7009)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2266 (LexerInterface!7009 Rule!14640 List!45191) Unit!64343)

(assert (=> b!4149792 (= lt!1480041 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2266 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3226 (LexerInterface!7009 Rule!14640) Bool)

(assert (=> b!4149792 (ruleValid!3226 thiss!25645 rBis!149)))

(declare-fun lt!1480038 () Unit!64343)

(assert (=> b!4149792 (= lt!1480038 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2266 thiss!25645 rBis!149 rules!3756))))

(declare-fun e!2574762 () Bool)

(assert (=> b!4149793 (= e!2574762 (and tp!1264897 tp!1264905))))

(declare-fun b!4149794 () Bool)

(declare-fun e!2574752 () Bool)

(declare-fun tp!1264904 () Bool)

(assert (=> b!4149794 (= e!2574752 (and tp!1264904 (inv!59675 (tag!8280 r!4008)) (inv!59677 (transformation!7420 r!4008)) e!2574755))))

(declare-fun b!4149795 () Bool)

(declare-fun tp!1264896 () Bool)

(assert (=> b!4149795 (= e!2574764 (and tp!1264896 (inv!59675 (tag!8280 (h!50487 rules!3756))) (inv!59677 (transformation!7420 (h!50487 rules!3756))) e!2574762))))

(declare-fun b!4149796 () Bool)

(assert (=> b!4149796 (= e!2574766 true)))

(assert (=> b!4149796 (not (= (tag!8280 (h!50487 rules!3756)) (tag!8280 r!4008)))))

(declare-fun lt!1480040 () Unit!64343)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!68 (LexerInterface!7009 List!45191 Rule!14640 Rule!14640) Unit!64343)

(assert (=> b!4149796 (= lt!1480040 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!68 thiss!25645 rules!3756 (h!50487 rules!3756) r!4008))))

(declare-fun rulesInvariant!6306 (LexerInterface!7009 List!45191) Bool)

(assert (=> b!4149796 (rulesInvariant!6306 thiss!25645 (t!343062 rules!3756))))

(declare-fun lt!1480042 () Unit!64343)

(declare-fun lemmaInvariantOnRulesThenOnTail!832 (LexerInterface!7009 Rule!14640 List!45191) Unit!64343)

(assert (=> b!4149796 (= lt!1480042 (lemmaInvariantOnRulesThenOnTail!832 thiss!25645 (h!50487 rules!3756) (t!343062 rules!3756)))))

(declare-datatypes ((Token!13770 0))(
  ( (Token!13771 (value!232024 TokenValue!7650) (rule!10554 Rule!14640) (size!33409 Int) (originalCharacters!7916 List!45190)) )
))
(declare-datatypes ((tuple2!43430 0))(
  ( (tuple2!43431 (_1!24849 Token!13770) (_2!24849 List!45190)) )
))
(declare-datatypes ((Option!9726 0))(
  ( (None!9725) (Some!9725 (v!40387 tuple2!43430)) )
))
(declare-fun lt!1480039 () Option!9726)

(declare-fun maxPrefix!4199 (LexerInterface!7009 List!45191 List!45190) Option!9726)

(assert (=> b!4149796 (= lt!1480039 (maxPrefix!4199 thiss!25645 (t!343062 rules!3756) input!3238))))

(declare-fun lt!1480044 () Option!9726)

(declare-fun maxPrefixOneRule!3138 (LexerInterface!7009 Rule!14640 List!45190) Option!9726)

(assert (=> b!4149796 (= lt!1480044 (maxPrefixOneRule!3138 thiss!25645 (h!50487 rules!3756) input!3238))))

(declare-fun b!4149797 () Bool)

(declare-fun res!1699093 () Bool)

(assert (=> b!4149797 (=> (not res!1699093) (not e!2574753))))

(declare-fun isEmpty!26905 (List!45191) Bool)

(assert (=> b!4149797 (= res!1699093 (not (isEmpty!26905 rules!3756)))))

(declare-fun b!4149798 () Bool)

(declare-fun res!1699098 () Bool)

(assert (=> b!4149798 (=> (not res!1699098) (not e!2574765))))

(assert (=> b!4149798 (= res!1699098 (ruleValid!3226 thiss!25645 r!4008))))

(declare-fun b!4149799 () Bool)

(declare-fun e!2574759 () Bool)

(declare-fun tp!1264898 () Bool)

(assert (=> b!4149799 (= e!2574759 (and tp_is_empty!21573 tp!1264898))))

(declare-fun b!4149800 () Bool)

(declare-fun res!1699088 () Bool)

(assert (=> b!4149800 (=> (not res!1699088) (not e!2574753))))

(assert (=> b!4149800 (= res!1699088 (rulesInvariant!6306 thiss!25645 rules!3756))))

(declare-fun b!4149801 () Bool)

(declare-fun res!1699095 () Bool)

(assert (=> b!4149801 (=> (not res!1699095) (not e!2574753))))

(assert (=> b!4149801 (= res!1699095 (contains!9106 rules!3756 r!4008))))

(declare-fun res!1699086 () Bool)

(assert (=> start!394906 (=> (not res!1699086) (not e!2574753))))

(assert (=> start!394906 (= res!1699086 ((_ is Lexer!7007) thiss!25645))))

(assert (=> start!394906 e!2574753))

(assert (=> start!394906 e!2574761))

(assert (=> start!394906 e!2574760))

(assert (=> start!394906 true))

(assert (=> start!394906 e!2574752))

(assert (=> start!394906 e!2574759))

(assert (=> start!394906 e!2574757))

(assert (=> b!4149789 (= e!2574758 (and tp!1264895 tp!1264906))))

(declare-fun b!4149802 () Bool)

(declare-fun res!1699087 () Bool)

(assert (=> b!4149802 (=> res!1699087 e!2574766)))

(assert (=> b!4149802 (= res!1699087 (not (contains!9106 (t!343062 rules!3756) rBis!149)))))

(declare-fun b!4149803 () Bool)

(assert (=> b!4149803 (= e!2574753 e!2574765)))

(declare-fun res!1699091 () Bool)

(assert (=> b!4149803 (=> (not res!1699091) (not e!2574765))))

(declare-fun lt!1480043 () BalanceConc!26856)

(declare-fun apply!10493 (TokenValueInjection!14728 BalanceConc!26856) TokenValue!7650)

(declare-fun size!33410 (List!45190) Int)

(declare-fun getSuffix!2682 (List!45190 List!45190) List!45190)

(assert (=> b!4149803 (= res!1699091 (= (maxPrefix!4199 thiss!25645 rules!3756 input!3238) (Some!9725 (tuple2!43431 (Token!13771 (apply!10493 (transformation!7420 r!4008) lt!1480043) r!4008 (size!33410 p!2912) p!2912) (getSuffix!2682 input!3238 p!2912)))))))

(declare-fun lt!1480037 () Unit!64343)

(declare-fun lemmaSemiInverse!2278 (TokenValueInjection!14728 BalanceConc!26856) Unit!64343)

(assert (=> b!4149803 (= lt!1480037 (lemmaSemiInverse!2278 (transformation!7420 r!4008) lt!1480043))))

(declare-fun seqFromList!5537 (List!45190) BalanceConc!26856)

(assert (=> b!4149803 (= lt!1480043 (seqFromList!5537 p!2912))))

(declare-fun b!4149804 () Bool)

(declare-fun res!1699085 () Bool)

(assert (=> b!4149804 (=> res!1699085 e!2574766)))

(assert (=> b!4149804 (= res!1699085 (not (contains!9106 (t!343062 rules!3756) r!4008)))))

(assert (= (and start!394906 res!1699086) b!4149783))

(assert (= (and b!4149783 res!1699089) b!4149797))

(assert (= (and b!4149797 res!1699093) b!4149800))

(assert (= (and b!4149800 res!1699088) b!4149801))

(assert (= (and b!4149801 res!1699095) b!4149791))

(assert (= (and b!4149791 res!1699092) b!4149786))

(assert (= (and b!4149786 res!1699090) b!4149803))

(assert (= (and b!4149803 res!1699091) b!4149788))

(assert (= (and b!4149788 res!1699094) b!4149787))

(assert (= (and b!4149787 res!1699096) b!4149798))

(assert (= (and b!4149798 res!1699098) b!4149792))

(assert (= (and b!4149792 (not res!1699097)) b!4149804))

(assert (= (and b!4149804 (not res!1699085)) b!4149802))

(assert (= (and b!4149802 (not res!1699087)) b!4149796))

(assert (= b!4149795 b!4149793))

(assert (= b!4149790 b!4149795))

(assert (= (and start!394906 ((_ is Cons!45067) rules!3756)) b!4149790))

(assert (= (and start!394906 ((_ is Cons!45066) p!2912)) b!4149784))

(assert (= b!4149794 b!4149785))

(assert (= start!394906 b!4149794))

(assert (= (and start!394906 ((_ is Cons!45066) input!3238)) b!4149799))

(assert (= b!4149782 b!4149789))

(assert (= start!394906 b!4149782))

(declare-fun m!4745453 () Bool)

(assert (=> b!4149792 m!4745453))

(declare-fun m!4745455 () Bool)

(assert (=> b!4149792 m!4745455))

(declare-fun m!4745457 () Bool)

(assert (=> b!4149792 m!4745457))

(declare-fun m!4745459 () Bool)

(assert (=> b!4149804 m!4745459))

(declare-fun m!4745461 () Bool)

(assert (=> b!4149786 m!4745461))

(declare-fun m!4745463 () Bool)

(assert (=> b!4149794 m!4745463))

(declare-fun m!4745465 () Bool)

(assert (=> b!4149794 m!4745465))

(declare-fun m!4745467 () Bool)

(assert (=> b!4149800 m!4745467))

(declare-fun m!4745469 () Bool)

(assert (=> b!4149782 m!4745469))

(declare-fun m!4745471 () Bool)

(assert (=> b!4149782 m!4745471))

(declare-fun m!4745473 () Bool)

(assert (=> b!4149787 m!4745473))

(declare-fun m!4745475 () Bool)

(assert (=> b!4149787 m!4745475))

(declare-fun m!4745477 () Bool)

(assert (=> b!4149801 m!4745477))

(declare-fun m!4745479 () Bool)

(assert (=> b!4149791 m!4745479))

(declare-fun m!4745481 () Bool)

(assert (=> b!4149783 m!4745481))

(declare-fun m!4745483 () Bool)

(assert (=> b!4149796 m!4745483))

(declare-fun m!4745485 () Bool)

(assert (=> b!4149796 m!4745485))

(declare-fun m!4745487 () Bool)

(assert (=> b!4149796 m!4745487))

(declare-fun m!4745489 () Bool)

(assert (=> b!4149796 m!4745489))

(declare-fun m!4745491 () Bool)

(assert (=> b!4149796 m!4745491))

(declare-fun m!4745493 () Bool)

(assert (=> b!4149802 m!4745493))

(declare-fun m!4745495 () Bool)

(assert (=> b!4149803 m!4745495))

(declare-fun m!4745497 () Bool)

(assert (=> b!4149803 m!4745497))

(declare-fun m!4745499 () Bool)

(assert (=> b!4149803 m!4745499))

(declare-fun m!4745501 () Bool)

(assert (=> b!4149803 m!4745501))

(declare-fun m!4745503 () Bool)

(assert (=> b!4149803 m!4745503))

(declare-fun m!4745505 () Bool)

(assert (=> b!4149803 m!4745505))

(declare-fun m!4745507 () Bool)

(assert (=> b!4149797 m!4745507))

(declare-fun m!4745509 () Bool)

(assert (=> b!4149788 m!4745509))

(declare-fun m!4745511 () Bool)

(assert (=> b!4149798 m!4745511))

(declare-fun m!4745513 () Bool)

(assert (=> b!4149795 m!4745513))

(declare-fun m!4745515 () Bool)

(assert (=> b!4149795 m!4745515))

(check-sat b_and!322735 (not b!4149791) b_and!322733 (not b_next!119253) (not b!4149796) (not b!4149790) (not b!4149801) (not b_next!119261) tp_is_empty!21573 (not b!4149782) (not b!4149799) (not b_next!119257) (not b_next!119255) (not b!4149802) b_and!322739 (not b!4149792) (not b!4149784) (not b!4149787) (not b!4149803) (not b_next!119259) (not b!4149800) (not b!4149788) b_and!322731 (not b!4149804) (not b!4149783) (not b!4149786) (not b!4149794) (not b!4149795) (not b_next!119251) b_and!322737 (not b!4149798) b_and!322729 (not b!4149797))
(check-sat b_and!322739 (not b_next!119259) b_and!322735 b_and!322733 b_and!322731 (not b_next!119253) (not b_next!119251) (not b_next!119261) (not b_next!119257) (not b_next!119255) b_and!322737 b_and!322729)
