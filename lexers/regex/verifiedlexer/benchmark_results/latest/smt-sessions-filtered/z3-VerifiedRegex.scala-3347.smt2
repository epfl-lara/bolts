; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190060 () Bool)

(assert start!190060)

(declare-fun b!1895577 () Bool)

(declare-fun b_free!52897 () Bool)

(declare-fun b_next!53601 () Bool)

(assert (=> b!1895577 (= b_free!52897 (not b_next!53601))))

(declare-fun tp!540931 () Bool)

(declare-fun b_and!146195 () Bool)

(assert (=> b!1895577 (= tp!540931 b_and!146195)))

(declare-fun b_free!52899 () Bool)

(declare-fun b_next!53603 () Bool)

(assert (=> b!1895577 (= b_free!52899 (not b_next!53603))))

(declare-fun tp!540934 () Bool)

(declare-fun b_and!146197 () Bool)

(assert (=> b!1895577 (= tp!540934 b_and!146197)))

(declare-fun b!1895591 () Bool)

(declare-fun b_free!52901 () Bool)

(declare-fun b_next!53605 () Bool)

(assert (=> b!1895591 (= b_free!52901 (not b_next!53605))))

(declare-fun tp!540929 () Bool)

(declare-fun b_and!146199 () Bool)

(assert (=> b!1895591 (= tp!540929 b_and!146199)))

(declare-fun b_free!52903 () Bool)

(declare-fun b_next!53607 () Bool)

(assert (=> b!1895591 (= b_free!52903 (not b_next!53607))))

(declare-fun tp!540933 () Bool)

(declare-fun b_and!146201 () Bool)

(assert (=> b!1895591 (= tp!540933 b_and!146201)))

(declare-fun b!1895589 () Bool)

(declare-fun b_free!52905 () Bool)

(declare-fun b_next!53609 () Bool)

(assert (=> b!1895589 (= b_free!52905 (not b_next!53609))))

(declare-fun tp!540928 () Bool)

(declare-fun b_and!146203 () Bool)

(assert (=> b!1895589 (= tp!540928 b_and!146203)))

(declare-fun b_free!52907 () Bool)

(declare-fun b_next!53611 () Bool)

(assert (=> b!1895589 (= b_free!52907 (not b_next!53611))))

(declare-fun tp!540935 () Bool)

(declare-fun b_and!146205 () Bool)

(assert (=> b!1895589 (= tp!540935 b_and!146205)))

(declare-fun b!1895576 () Bool)

(declare-fun e!1210113 () Bool)

(assert (=> b!1895576 (= e!1210113 (not true))))

(declare-fun lt!725072 () Bool)

(declare-datatypes ((LexerInterface!3383 0))(
  ( (LexerInterfaceExt!3380 (__x!13310 Int)) (Lexer!3381) )
))
(declare-fun thiss!23328 () LexerInterface!3383)

(declare-datatypes ((List!21324 0))(
  ( (Nil!21242) (Cons!21242 (h!26643 (_ BitVec 16)) (t!176167 List!21324)) )
))
(declare-datatypes ((TokenValue!3906 0))(
  ( (FloatLiteralValue!7812 (text!27787 List!21324)) (TokenValueExt!3905 (__x!13311 Int)) (Broken!19530 (value!119010 List!21324)) (Object!3987) (End!3906) (Def!3906) (Underscore!3906) (Match!3906) (Else!3906) (Error!3906) (Case!3906) (If!3906) (Extends!3906) (Abstract!3906) (Class!3906) (Val!3906) (DelimiterValue!7812 (del!3966 List!21324)) (KeywordValue!3912 (value!119011 List!21324)) (CommentValue!7812 (value!119012 List!21324)) (WhitespaceValue!7812 (value!119013 List!21324)) (IndentationValue!3906 (value!119014 List!21324)) (String!24647) (Int32!3906) (Broken!19531 (value!119015 List!21324)) (Boolean!3907) (Unit!35605) (OperatorValue!3909 (op!3966 List!21324)) (IdentifierValue!7812 (value!119016 List!21324)) (IdentifierValue!7813 (value!119017 List!21324)) (WhitespaceValue!7813 (value!119018 List!21324)) (True!7812) (False!7812) (Broken!19532 (value!119019 List!21324)) (Broken!19533 (value!119020 List!21324)) (True!7813) (RightBrace!3906) (RightBracket!3906) (Colon!3906) (Null!3906) (Comma!3906) (LeftBracket!3906) (False!7813) (LeftBrace!3906) (ImaginaryLiteralValue!3906 (text!27788 List!21324)) (StringLiteralValue!11718 (value!119021 List!21324)) (EOFValue!3906 (value!119022 List!21324)) (IdentValue!3906 (value!119023 List!21324)) (DelimiterValue!7813 (value!119024 List!21324)) (DedentValue!3906 (value!119025 List!21324)) (NewLineValue!3906 (value!119026 List!21324)) (IntegerValue!11718 (value!119027 (_ BitVec 32)) (text!27789 List!21324)) (IntegerValue!11719 (value!119028 Int) (text!27790 List!21324)) (Times!3906) (Or!3906) (Equal!3906) (Minus!3906) (Broken!19534 (value!119029 List!21324)) (And!3906) (Div!3906) (LessEqual!3906) (Mod!3906) (Concat!9101) (Not!3906) (Plus!3906) (SpaceValue!3906 (value!119030 List!21324)) (IntegerValue!11720 (value!119031 Int) (text!27791 List!21324)) (StringLiteralValue!11719 (text!27792 List!21324)) (FloatLiteralValue!7813 (text!27793 List!21324)) (BytesLiteralValue!3906 (value!119032 List!21324)) (CommentValue!7813 (value!119033 List!21324)) (StringLiteralValue!11720 (value!119034 List!21324)) (ErrorTokenValue!3906 (msg!3967 List!21324)) )
))
(declare-datatypes ((C!10536 0))(
  ( (C!10537 (val!6220 Int)) )
))
(declare-datatypes ((List!21325 0))(
  ( (Nil!21243) (Cons!21243 (h!26644 C!10536) (t!176168 List!21325)) )
))
(declare-datatypes ((String!24648 0))(
  ( (String!24649 (value!119035 String)) )
))
(declare-datatypes ((IArray!14151 0))(
  ( (IArray!14152 (innerList!7133 List!21325)) )
))
(declare-datatypes ((Conc!7073 0))(
  ( (Node!7073 (left!17044 Conc!7073) (right!17374 Conc!7073) (csize!14376 Int) (cheight!7284 Int)) (Leaf!10421 (xs!9967 IArray!14151) (csize!14377 Int)) (Empty!7073) )
))
(declare-datatypes ((BalanceConc!13962 0))(
  ( (BalanceConc!13963 (c!309257 Conc!7073)) )
))
(declare-datatypes ((TokenValueInjection!7396 0))(
  ( (TokenValueInjection!7397 (toValue!5387 Int) (toChars!5246 Int)) )
))
(declare-datatypes ((Regex!5195 0))(
  ( (ElementMatch!5195 (c!309258 C!10536)) (Concat!9102 (regOne!10902 Regex!5195) (regTwo!10902 Regex!5195)) (EmptyExpr!5195) (Star!5195 (reg!5524 Regex!5195)) (EmptyLang!5195) (Union!5195 (regOne!10903 Regex!5195) (regTwo!10903 Regex!5195)) )
))
(declare-datatypes ((Rule!7340 0))(
  ( (Rule!7341 (regex!3770 Regex!5195) (tag!4186 String!24648) (isSeparator!3770 Bool) (transformation!3770 TokenValueInjection!7396)) )
))
(declare-datatypes ((List!21326 0))(
  ( (Nil!21244) (Cons!21244 (h!26645 Rule!7340) (t!176169 List!21326)) )
))
(declare-fun rules!3198 () List!21326)

(declare-fun rulesValidInductive!1276 (LexerInterface!3383 List!21326) Bool)

(assert (=> b!1895576 (= lt!725072 (rulesValidInductive!1276 thiss!23328 rules!3198))))

(declare-fun lt!725073 () List!21325)

(declare-fun lt!725068 () BalanceConc!13962)

(declare-fun list!8642 (BalanceConc!13962) List!21325)

(assert (=> b!1895576 (= lt!725073 (list!8642 lt!725068))))

(declare-fun e!1210114 () Bool)

(assert (=> b!1895576 e!1210114))

(declare-fun res!845976 () Bool)

(assert (=> b!1895576 (=> (not res!845976) (not e!1210114))))

(declare-datatypes ((Option!4246 0))(
  ( (None!4245) (Some!4245 (v!26274 Rule!7340)) )
))
(declare-fun lt!725074 () Option!4246)

(declare-fun isDefined!3544 (Option!4246) Bool)

(assert (=> b!1895576 (= res!845976 (isDefined!3544 lt!725074))))

(declare-datatypes ((Token!7092 0))(
  ( (Token!7093 (value!119036 TokenValue!3906) (rule!5963 Rule!7340) (size!16844 Int) (originalCharacters!4577 List!21325)) )
))
(declare-fun separatorToken!354 () Token!7092)

(declare-fun getRuleFromTag!613 (LexerInterface!3383 List!21326 String!24648) Option!4246)

(assert (=> b!1895576 (= lt!725074 (getRuleFromTag!613 thiss!23328 rules!3198 (tag!4186 (rule!5963 separatorToken!354))))))

(declare-fun lt!725067 () List!21325)

(declare-datatypes ((Unit!35606 0))(
  ( (Unit!35607) )
))
(declare-fun lt!725071 () Unit!35606)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!613 (LexerInterface!3383 List!21326 List!21325 Token!7092) Unit!35606)

(assert (=> b!1895576 (= lt!725071 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!613 thiss!23328 rules!3198 lt!725067 separatorToken!354))))

(declare-fun charsOf!2326 (Token!7092) BalanceConc!13962)

(assert (=> b!1895576 (= lt!725067 (list!8642 (charsOf!2326 separatorToken!354)))))

(declare-fun lt!725070 () Unit!35606)

(declare-datatypes ((List!21327 0))(
  ( (Nil!21245) (Cons!21245 (h!26646 Token!7092) (t!176170 List!21327)) )
))
(declare-fun tokens!598 () List!21327)

(declare-fun lemmaEqSameImage!478 (TokenValueInjection!7396 BalanceConc!13962 BalanceConc!13962) Unit!35606)

(declare-fun seqFromList!2642 (List!21325) BalanceConc!13962)

(assert (=> b!1895576 (= lt!725070 (lemmaEqSameImage!478 (transformation!3770 (rule!5963 (h!26646 tokens!598))) lt!725068 (seqFromList!2642 (originalCharacters!4577 (h!26646 tokens!598)))))))

(declare-fun lt!725069 () Unit!35606)

(declare-fun lemmaSemiInverse!749 (TokenValueInjection!7396 BalanceConc!13962) Unit!35606)

(assert (=> b!1895576 (= lt!725069 (lemmaSemiInverse!749 (transformation!3770 (rule!5963 (h!26646 tokens!598))) lt!725068))))

(assert (=> b!1895576 (= lt!725068 (charsOf!2326 (h!26646 tokens!598)))))

(declare-fun res!845978 () Bool)

(assert (=> start!190060 (=> (not res!845978) (not e!1210113))))

(get-info :version)

(assert (=> start!190060 (= res!845978 ((_ is Lexer!3381) thiss!23328))))

(assert (=> start!190060 e!1210113))

(assert (=> start!190060 true))

(declare-fun e!1210111 () Bool)

(assert (=> start!190060 e!1210111))

(declare-fun e!1210116 () Bool)

(assert (=> start!190060 e!1210116))

(declare-fun e!1210105 () Bool)

(declare-fun inv!28347 (Token!7092) Bool)

(assert (=> start!190060 (and (inv!28347 separatorToken!354) e!1210105)))

(declare-fun e!1210112 () Bool)

(assert (=> b!1895577 (= e!1210112 (and tp!540931 tp!540934))))

(declare-fun b!1895578 () Bool)

(declare-fun res!845977 () Bool)

(assert (=> b!1895578 (=> (not res!845977) (not e!1210113))))

(assert (=> b!1895578 (= res!845977 ((_ is Cons!21245) tokens!598))))

(declare-fun b!1895579 () Bool)

(declare-fun res!845974 () Bool)

(assert (=> b!1895579 (=> (not res!845974) (not e!1210113))))

(declare-fun rulesProduceEachTokenIndividuallyList!1114 (LexerInterface!3383 List!21326 List!21327) Bool)

(assert (=> b!1895579 (= res!845974 (rulesProduceEachTokenIndividuallyList!1114 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1895580 () Bool)

(declare-fun res!845970 () Bool)

(assert (=> b!1895580 (=> (not res!845970) (not e!1210113))))

(declare-fun isEmpty!13044 (List!21326) Bool)

(assert (=> b!1895580 (= res!845970 (not (isEmpty!13044 rules!3198)))))

(declare-fun e!1210117 () Bool)

(declare-fun b!1895581 () Bool)

(declare-fun tp!540936 () Bool)

(assert (=> b!1895581 (= e!1210116 (and (inv!28347 (h!26646 tokens!598)) e!1210117 tp!540936))))

(declare-fun b!1895582 () Bool)

(declare-fun res!845969 () Bool)

(assert (=> b!1895582 (=> (not res!845969) (not e!1210113))))

(assert (=> b!1895582 (= res!845969 (isSeparator!3770 (rule!5963 separatorToken!354)))))

(declare-fun b!1895583 () Bool)

(declare-fun res!845975 () Bool)

(assert (=> b!1895583 (=> (not res!845975) (not e!1210113))))

(declare-fun lambda!74057 () Int)

(declare-fun forall!4446 (List!21327 Int) Bool)

(assert (=> b!1895583 (= res!845975 (forall!4446 tokens!598 lambda!74057))))

(declare-fun b!1895584 () Bool)

(declare-fun res!845972 () Bool)

(assert (=> b!1895584 (=> (not res!845972) (not e!1210113))))

(declare-fun sepAndNonSepRulesDisjointChars!868 (List!21326 List!21326) Bool)

(assert (=> b!1895584 (= res!845972 (sepAndNonSepRulesDisjointChars!868 rules!3198 rules!3198))))

(declare-fun b!1895585 () Bool)

(declare-fun e!1210107 () Bool)

(declare-fun tp!540927 () Bool)

(assert (=> b!1895585 (= e!1210111 (and e!1210107 tp!540927))))

(declare-fun tp!540930 () Bool)

(declare-fun e!1210109 () Bool)

(declare-fun e!1210120 () Bool)

(declare-fun b!1895586 () Bool)

(declare-fun inv!28344 (String!24648) Bool)

(declare-fun inv!28348 (TokenValueInjection!7396) Bool)

(assert (=> b!1895586 (= e!1210109 (and tp!540930 (inv!28344 (tag!4186 (rule!5963 (h!26646 tokens!598)))) (inv!28348 (transformation!3770 (rule!5963 (h!26646 tokens!598)))) e!1210120))))

(declare-fun b!1895587 () Bool)

(declare-fun res!845973 () Bool)

(assert (=> b!1895587 (=> (not res!845973) (not e!1210113))))

(declare-fun rulesProduceIndividualToken!1555 (LexerInterface!3383 List!21326 Token!7092) Bool)

(assert (=> b!1895587 (= res!845973 (rulesProduceIndividualToken!1555 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1895588 () Bool)

(declare-fun tp!540932 () Bool)

(assert (=> b!1895588 (= e!1210107 (and tp!540932 (inv!28344 (tag!4186 (h!26645 rules!3198))) (inv!28348 (transformation!3770 (h!26645 rules!3198))) e!1210112))))

(declare-fun e!1210106 () Bool)

(assert (=> b!1895589 (= e!1210106 (and tp!540928 tp!540935))))

(declare-fun b!1895590 () Bool)

(declare-fun e!1210115 () Bool)

(assert (=> b!1895590 (= e!1210114 e!1210115)))

(declare-fun res!845971 () Bool)

(assert (=> b!1895590 (=> (not res!845971) (not e!1210115))))

(declare-fun lt!725066 () Rule!7340)

(declare-fun matchR!2481 (Regex!5195 List!21325) Bool)

(assert (=> b!1895590 (= res!845971 (matchR!2481 (regex!3770 lt!725066) lt!725067))))

(declare-fun get!6542 (Option!4246) Rule!7340)

(assert (=> b!1895590 (= lt!725066 (get!6542 lt!725074))))

(assert (=> b!1895591 (= e!1210120 (and tp!540929 tp!540933))))

(declare-fun b!1895592 () Bool)

(assert (=> b!1895592 (= e!1210115 (= (rule!5963 separatorToken!354) lt!725066))))

(declare-fun b!1895593 () Bool)

(declare-fun res!845979 () Bool)

(assert (=> b!1895593 (=> (not res!845979) (not e!1210113))))

(declare-fun rulesInvariant!2990 (LexerInterface!3383 List!21326) Bool)

(assert (=> b!1895593 (= res!845979 (rulesInvariant!2990 thiss!23328 rules!3198))))

(declare-fun b!1895594 () Bool)

(declare-fun tp!540926 () Bool)

(declare-fun inv!21 (TokenValue!3906) Bool)

(assert (=> b!1895594 (= e!1210117 (and (inv!21 (value!119036 (h!26646 tokens!598))) e!1210109 tp!540926))))

(declare-fun b!1895595 () Bool)

(declare-fun e!1210118 () Bool)

(declare-fun tp!540924 () Bool)

(assert (=> b!1895595 (= e!1210105 (and (inv!21 (value!119036 separatorToken!354)) e!1210118 tp!540924))))

(declare-fun b!1895596 () Bool)

(declare-fun tp!540925 () Bool)

(assert (=> b!1895596 (= e!1210118 (and tp!540925 (inv!28344 (tag!4186 (rule!5963 separatorToken!354))) (inv!28348 (transformation!3770 (rule!5963 separatorToken!354))) e!1210106))))

(assert (= (and start!190060 res!845978) b!1895580))

(assert (= (and b!1895580 res!845970) b!1895593))

(assert (= (and b!1895593 res!845979) b!1895579))

(assert (= (and b!1895579 res!845974) b!1895587))

(assert (= (and b!1895587 res!845973) b!1895582))

(assert (= (and b!1895582 res!845969) b!1895583))

(assert (= (and b!1895583 res!845975) b!1895584))

(assert (= (and b!1895584 res!845972) b!1895578))

(assert (= (and b!1895578 res!845977) b!1895576))

(assert (= (and b!1895576 res!845976) b!1895590))

(assert (= (and b!1895590 res!845971) b!1895592))

(assert (= b!1895588 b!1895577))

(assert (= b!1895585 b!1895588))

(assert (= (and start!190060 ((_ is Cons!21244) rules!3198)) b!1895585))

(assert (= b!1895586 b!1895591))

(assert (= b!1895594 b!1895586))

(assert (= b!1895581 b!1895594))

(assert (= (and start!190060 ((_ is Cons!21245) tokens!598)) b!1895581))

(assert (= b!1895596 b!1895589))

(assert (= b!1895595 b!1895596))

(assert (= start!190060 b!1895595))

(declare-fun m!2326921 () Bool)

(assert (=> start!190060 m!2326921))

(declare-fun m!2326923 () Bool)

(assert (=> b!1895586 m!2326923))

(declare-fun m!2326925 () Bool)

(assert (=> b!1895586 m!2326925))

(declare-fun m!2326927 () Bool)

(assert (=> b!1895594 m!2326927))

(declare-fun m!2326929 () Bool)

(assert (=> b!1895596 m!2326929))

(declare-fun m!2326931 () Bool)

(assert (=> b!1895596 m!2326931))

(declare-fun m!2326933 () Bool)

(assert (=> b!1895593 m!2326933))

(declare-fun m!2326935 () Bool)

(assert (=> b!1895581 m!2326935))

(declare-fun m!2326937 () Bool)

(assert (=> b!1895588 m!2326937))

(declare-fun m!2326939 () Bool)

(assert (=> b!1895588 m!2326939))

(declare-fun m!2326941 () Bool)

(assert (=> b!1895583 m!2326941))

(declare-fun m!2326943 () Bool)

(assert (=> b!1895584 m!2326943))

(declare-fun m!2326945 () Bool)

(assert (=> b!1895595 m!2326945))

(declare-fun m!2326947 () Bool)

(assert (=> b!1895579 m!2326947))

(declare-fun m!2326949 () Bool)

(assert (=> b!1895590 m!2326949))

(declare-fun m!2326951 () Bool)

(assert (=> b!1895590 m!2326951))

(declare-fun m!2326953 () Bool)

(assert (=> b!1895576 m!2326953))

(declare-fun m!2326955 () Bool)

(assert (=> b!1895576 m!2326955))

(declare-fun m!2326957 () Bool)

(assert (=> b!1895576 m!2326957))

(assert (=> b!1895576 m!2326953))

(declare-fun m!2326959 () Bool)

(assert (=> b!1895576 m!2326959))

(declare-fun m!2326961 () Bool)

(assert (=> b!1895576 m!2326961))

(declare-fun m!2326963 () Bool)

(assert (=> b!1895576 m!2326963))

(declare-fun m!2326965 () Bool)

(assert (=> b!1895576 m!2326965))

(declare-fun m!2326967 () Bool)

(assert (=> b!1895576 m!2326967))

(declare-fun m!2326969 () Bool)

(assert (=> b!1895576 m!2326969))

(declare-fun m!2326971 () Bool)

(assert (=> b!1895576 m!2326971))

(assert (=> b!1895576 m!2326969))

(declare-fun m!2326973 () Bool)

(assert (=> b!1895576 m!2326973))

(declare-fun m!2326975 () Bool)

(assert (=> b!1895587 m!2326975))

(declare-fun m!2326977 () Bool)

(assert (=> b!1895580 m!2326977))

(check-sat (not b!1895585) (not b_next!53607) b_and!146199 (not b!1895594) (not b_next!53605) (not b!1895583) (not b!1895584) b_and!146201 (not b_next!53603) (not b!1895595) (not start!190060) (not b!1895580) (not b!1895587) (not b!1895576) (not b_next!53609) b_and!146203 (not b!1895590) (not b_next!53601) (not b!1895581) b_and!146197 b_and!146205 (not b!1895593) b_and!146195 (not b!1895596) (not b_next!53611) (not b!1895588) (not b!1895579) (not b!1895586))
(check-sat (not b_next!53607) (not b_next!53603) b_and!146199 (not b_next!53601) (not b_next!53605) b_and!146195 b_and!146201 (not b_next!53611) (not b_next!53609) b_and!146203 b_and!146197 b_and!146205)
