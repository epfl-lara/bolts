; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757694 () Bool)

(assert start!757694)

(declare-fun b!8046686 () Bool)

(declare-fun b_free!136459 () Bool)

(declare-fun b_next!137249 () Bool)

(assert (=> b!8046686 (= b_free!136459 (not b_next!137249))))

(declare-fun tp!2412269 () Bool)

(declare-fun b_and!354895 () Bool)

(assert (=> b!8046686 (= tp!2412269 b_and!354895)))

(declare-fun b_free!136461 () Bool)

(declare-fun b_next!137251 () Bool)

(assert (=> b!8046686 (= b_free!136461 (not b_next!137251))))

(declare-fun tp!2412266 () Bool)

(declare-fun b_and!354897 () Bool)

(assert (=> b!8046686 (= tp!2412266 b_and!354897)))

(declare-fun res!3180915 () Bool)

(declare-fun e!4740739 () Bool)

(assert (=> start!757694 (=> (not res!3180915) (not e!4740739))))

(declare-datatypes ((LexerInterface!8358 0))(
  ( (LexerInterfaceExt!8355 (__x!35457 Int)) (Lexer!8356) )
))
(declare-fun thiss!26941 () LexerInterface!8358)

(get-info :version)

(assert (=> start!757694 (= res!3180915 ((_ is Lexer!8356) thiss!26941))))

(assert (=> start!757694 e!4740739))

(assert (=> start!757694 true))

(declare-fun e!4740741 () Bool)

(assert (=> start!757694 e!4740741))

(declare-fun e!4740735 () Bool)

(assert (=> start!757694 e!4740735))

(declare-fun e!4740736 () Bool)

(assert (=> start!757694 e!4740736))

(declare-fun b!8046680 () Bool)

(declare-datatypes ((String!85221 0))(
  ( (String!85222 (value!292891 String)) )
))
(declare-datatypes ((List!75490 0))(
  ( (Nil!75364) (Cons!75364 (h!81812 String!85221) (t!391260 List!75490)) )
))
(declare-fun acc!573 () List!75490)

(declare-fun tp!2412265 () Bool)

(declare-fun inv!97090 (String!85221) Bool)

(assert (=> b!8046680 (= e!4740735 (and (inv!97090 (h!81812 acc!573)) tp!2412265))))

(declare-fun b!8046681 () Bool)

(declare-fun res!3180914 () Bool)

(assert (=> b!8046681 (=> (not res!3180914) (not e!4740739))))

(declare-fun newAcc!87 () List!75490)

(declare-fun subseq!919 (List!75490 List!75490) Bool)

(assert (=> b!8046681 (= res!3180914 (subseq!919 newAcc!87 acc!573))))

(declare-fun b!8046682 () Bool)

(declare-fun e!4740740 () Bool)

(declare-fun tp!2412267 () Bool)

(assert (=> b!8046682 (= e!4740736 (and e!4740740 tp!2412267))))

(declare-fun tp!2412264 () Bool)

(declare-fun e!4740734 () Bool)

(declare-fun b!8046683 () Bool)

(declare-datatypes ((List!75491 0))(
  ( (Nil!75365) (Cons!75365 (h!81813 (_ BitVec 16)) (t!391261 List!75491)) )
))
(declare-datatypes ((TokenValue!9088 0))(
  ( (FloatLiteralValue!18176 (text!64061 List!75491)) (TokenValueExt!9087 (__x!35458 Int)) (Broken!45440 (value!292892 List!75491)) (Object!9213) (End!9088) (Def!9088) (Underscore!9088) (Match!9088) (Else!9088) (Error!9088) (Case!9088) (If!9088) (Extends!9088) (Abstract!9088) (Class!9088) (Val!9088) (DelimiterValue!18176 (del!9148 List!75491)) (KeywordValue!9094 (value!292893 List!75491)) (CommentValue!18176 (value!292894 List!75491)) (WhitespaceValue!18176 (value!292895 List!75491)) (IndentationValue!9088 (value!292896 List!75491)) (String!85223) (Int32!9088) (Broken!45441 (value!292897 List!75491)) (Boolean!9089) (Unit!171147) (OperatorValue!9091 (op!9148 List!75491)) (IdentifierValue!18176 (value!292898 List!75491)) (IdentifierValue!18177 (value!292899 List!75491)) (WhitespaceValue!18177 (value!292900 List!75491)) (True!18176) (False!18176) (Broken!45442 (value!292901 List!75491)) (Broken!45443 (value!292902 List!75491)) (True!18177) (RightBrace!9088) (RightBracket!9088) (Colon!9088) (Null!9088) (Comma!9088) (LeftBracket!9088) (False!18177) (LeftBrace!9088) (ImaginaryLiteralValue!9088 (text!64062 List!75491)) (StringLiteralValue!27264 (value!292903 List!75491)) (EOFValue!9088 (value!292904 List!75491)) (IdentValue!9088 (value!292905 List!75491)) (DelimiterValue!18177 (value!292906 List!75491)) (DedentValue!9088 (value!292907 List!75491)) (NewLineValue!9088 (value!292908 List!75491)) (IntegerValue!27264 (value!292909 (_ BitVec 32)) (text!64063 List!75491)) (IntegerValue!27265 (value!292910 Int) (text!64064 List!75491)) (Times!9088) (Or!9088) (Equal!9088) (Minus!9088) (Broken!45444 (value!292911 List!75491)) (And!9088) (Div!9088) (LessEqual!9088) (Mod!9088) (Concat!30927) (Not!9088) (Plus!9088) (SpaceValue!9088 (value!292912 List!75491)) (IntegerValue!27266 (value!292913 Int) (text!64065 List!75491)) (StringLiteralValue!27265 (text!64066 List!75491)) (FloatLiteralValue!18177 (text!64067 List!75491)) (BytesLiteralValue!9088 (value!292914 List!75491)) (CommentValue!18177 (value!292915 List!75491)) (StringLiteralValue!27266 (value!292916 List!75491)) (ErrorTokenValue!9088 (msg!9149 List!75491)) )
))
(declare-datatypes ((C!44016 0))(
  ( (C!44017 (val!32784 Int)) )
))
(declare-datatypes ((Regex!21839 0))(
  ( (ElementMatch!21839 (c!1475455 C!44016)) (Concat!30928 (regOne!44190 Regex!21839) (regTwo!44190 Regex!21839)) (EmptyExpr!21839) (Star!21839 (reg!22168 Regex!21839)) (EmptyLang!21839) (Union!21839 (regOne!44191 Regex!21839) (regTwo!44191 Regex!21839)) )
))
(declare-datatypes ((List!75492 0))(
  ( (Nil!75366) (Cons!75366 (h!81814 C!44016) (t!391262 List!75492)) )
))
(declare-datatypes ((IArray!32133 0))(
  ( (IArray!32134 (innerList!16124 List!75492)) )
))
(declare-datatypes ((Conc!16036 0))(
  ( (Node!16036 (left!57398 Conc!16036) (right!57728 Conc!16036) (csize!32302 Int) (cheight!16247 Int)) (Leaf!30731 (xs!19434 IArray!32133) (csize!32303 Int)) (Empty!16036) )
))
(declare-datatypes ((BalanceConc!31028 0))(
  ( (BalanceConc!31029 (c!1475456 Conc!16036)) )
))
(declare-datatypes ((TokenValueInjection!17484 0))(
  ( (TokenValueInjection!17485 (toValue!11851 Int) (toChars!11710 Int)) )
))
(declare-datatypes ((Rule!17336 0))(
  ( (Rule!17337 (regex!8768 Regex!21839) (tag!9632 String!85221) (isSeparator!8768 Bool) (transformation!8768 TokenValueInjection!17484)) )
))
(declare-datatypes ((List!75493 0))(
  ( (Nil!75367) (Cons!75367 (h!81815 Rule!17336) (t!391263 List!75493)) )
))
(declare-fun rules!4081 () List!75493)

(declare-fun inv!97092 (TokenValueInjection!17484) Bool)

(assert (=> b!8046683 (= e!4740740 (and tp!2412264 (inv!97090 (tag!9632 (h!81815 rules!4081))) (inv!97092 (transformation!8768 (h!81815 rules!4081))) e!4740734))))

(declare-fun b!8046684 () Bool)

(declare-fun res!3180916 () Bool)

(assert (=> b!8046684 (=> (not res!3180916) (not e!4740739))))

(declare-fun noDuplicateTag!3346 (LexerInterface!8358 List!75493 List!75490) Bool)

(assert (=> b!8046684 (= res!3180916 (noDuplicateTag!3346 thiss!26941 rules!4081 acc!573))))

(declare-fun b!8046685 () Bool)

(declare-fun res!3180913 () Bool)

(assert (=> b!8046685 (=> (not res!3180913) (not e!4740739))))

(assert (=> b!8046685 (= res!3180913 ((_ is Cons!75367) rules!4081))))

(assert (=> b!8046686 (= e!4740734 (and tp!2412269 tp!2412266))))

(declare-fun b!8046687 () Bool)

(assert (=> b!8046687 (= e!4740739 (not (subseq!919 (Cons!75364 (tag!9632 (h!81815 rules!4081)) newAcc!87) (Cons!75364 (tag!9632 (h!81815 rules!4081)) acc!573))))))

(declare-fun b!8046688 () Bool)

(declare-fun tp!2412268 () Bool)

(assert (=> b!8046688 (= e!4740741 (and (inv!97090 (h!81812 newAcc!87)) tp!2412268))))

(assert (= (and start!757694 res!3180915) b!8046681))

(assert (= (and b!8046681 res!3180914) b!8046684))

(assert (= (and b!8046684 res!3180916) b!8046685))

(assert (= (and b!8046685 res!3180913) b!8046687))

(assert (= (and start!757694 ((_ is Cons!75364) newAcc!87)) b!8046688))

(assert (= (and start!757694 ((_ is Cons!75364) acc!573)) b!8046680))

(assert (= b!8046683 b!8046686))

(assert (= b!8046682 b!8046683))

(assert (= (and start!757694 ((_ is Cons!75367) rules!4081)) b!8046682))

(declare-fun m!8398696 () Bool)

(assert (=> b!8046680 m!8398696))

(declare-fun m!8398698 () Bool)

(assert (=> b!8046683 m!8398698))

(declare-fun m!8398700 () Bool)

(assert (=> b!8046683 m!8398700))

(declare-fun m!8398702 () Bool)

(assert (=> b!8046687 m!8398702))

(declare-fun m!8398704 () Bool)

(assert (=> b!8046681 m!8398704))

(declare-fun m!8398706 () Bool)

(assert (=> b!8046688 m!8398706))

(declare-fun m!8398708 () Bool)

(assert (=> b!8046684 m!8398708))

(check-sat (not b!8046680) (not b!8046684) (not b!8046682) (not b!8046681) (not b!8046683) (not b_next!137249) b_and!354895 b_and!354897 (not b!8046688) (not b!8046687) (not b_next!137251))
(check-sat b_and!354897 b_and!354895 (not b_next!137251) (not b_next!137249))
(get-model)

(declare-fun d!2396623 () Bool)

(assert (=> d!2396623 (= (inv!97090 (h!81812 acc!573)) (= (mod (str.len (value!292891 (h!81812 acc!573))) 2) 0))))

(assert (=> b!8046680 d!2396623))

(declare-fun b!8046701 () Bool)

(declare-fun e!4740755 () Bool)

(assert (=> b!8046701 (= e!4740755 (subseq!919 (t!391260 newAcc!87) (t!391260 acc!573)))))

(declare-fun b!8046699 () Bool)

(declare-fun e!4740756 () Bool)

(declare-fun e!4740753 () Bool)

(assert (=> b!8046699 (= e!4740756 e!4740753)))

(declare-fun res!3180931 () Bool)

(assert (=> b!8046699 (=> (not res!3180931) (not e!4740753))))

(assert (=> b!8046699 (= res!3180931 ((_ is Cons!75364) acc!573))))

(declare-fun d!2396625 () Bool)

(declare-fun res!3180932 () Bool)

(assert (=> d!2396625 (=> res!3180932 e!4740756)))

(assert (=> d!2396625 (= res!3180932 ((_ is Nil!75364) newAcc!87))))

(assert (=> d!2396625 (= (subseq!919 newAcc!87 acc!573) e!4740756)))

(declare-fun b!8046700 () Bool)

(declare-fun e!4740754 () Bool)

(assert (=> b!8046700 (= e!4740753 e!4740754)))

(declare-fun res!3180933 () Bool)

(assert (=> b!8046700 (=> res!3180933 e!4740754)))

(assert (=> b!8046700 (= res!3180933 e!4740755)))

(declare-fun res!3180934 () Bool)

(assert (=> b!8046700 (=> (not res!3180934) (not e!4740755))))

(assert (=> b!8046700 (= res!3180934 (= (h!81812 newAcc!87) (h!81812 acc!573)))))

(declare-fun b!8046702 () Bool)

(assert (=> b!8046702 (= e!4740754 (subseq!919 newAcc!87 (t!391260 acc!573)))))

(assert (= (and d!2396625 (not res!3180932)) b!8046699))

(assert (= (and b!8046699 res!3180931) b!8046700))

(assert (= (and b!8046700 res!3180934) b!8046701))

(assert (= (and b!8046700 (not res!3180933)) b!8046702))

(declare-fun m!8398710 () Bool)

(assert (=> b!8046701 m!8398710))

(declare-fun m!8398712 () Bool)

(assert (=> b!8046702 m!8398712))

(assert (=> b!8046681 d!2396625))

(declare-fun b!8046705 () Bool)

(declare-fun e!4740759 () Bool)

(assert (=> b!8046705 (= e!4740759 (subseq!919 (t!391260 (Cons!75364 (tag!9632 (h!81815 rules!4081)) newAcc!87)) (t!391260 (Cons!75364 (tag!9632 (h!81815 rules!4081)) acc!573))))))

(declare-fun b!8046703 () Bool)

(declare-fun e!4740760 () Bool)

(declare-fun e!4740757 () Bool)

(assert (=> b!8046703 (= e!4740760 e!4740757)))

(declare-fun res!3180935 () Bool)

(assert (=> b!8046703 (=> (not res!3180935) (not e!4740757))))

(assert (=> b!8046703 (= res!3180935 ((_ is Cons!75364) (Cons!75364 (tag!9632 (h!81815 rules!4081)) acc!573)))))

(declare-fun d!2396633 () Bool)

(declare-fun res!3180936 () Bool)

(assert (=> d!2396633 (=> res!3180936 e!4740760)))

(assert (=> d!2396633 (= res!3180936 ((_ is Nil!75364) (Cons!75364 (tag!9632 (h!81815 rules!4081)) newAcc!87)))))

(assert (=> d!2396633 (= (subseq!919 (Cons!75364 (tag!9632 (h!81815 rules!4081)) newAcc!87) (Cons!75364 (tag!9632 (h!81815 rules!4081)) acc!573)) e!4740760)))

(declare-fun b!8046704 () Bool)

(declare-fun e!4740758 () Bool)

(assert (=> b!8046704 (= e!4740757 e!4740758)))

(declare-fun res!3180937 () Bool)

(assert (=> b!8046704 (=> res!3180937 e!4740758)))

(assert (=> b!8046704 (= res!3180937 e!4740759)))

(declare-fun res!3180938 () Bool)

(assert (=> b!8046704 (=> (not res!3180938) (not e!4740759))))

(assert (=> b!8046704 (= res!3180938 (= (h!81812 (Cons!75364 (tag!9632 (h!81815 rules!4081)) newAcc!87)) (h!81812 (Cons!75364 (tag!9632 (h!81815 rules!4081)) acc!573))))))

(declare-fun b!8046706 () Bool)

(assert (=> b!8046706 (= e!4740758 (subseq!919 (Cons!75364 (tag!9632 (h!81815 rules!4081)) newAcc!87) (t!391260 (Cons!75364 (tag!9632 (h!81815 rules!4081)) acc!573))))))

(assert (= (and d!2396633 (not res!3180936)) b!8046703))

(assert (= (and b!8046703 res!3180935) b!8046704))

(assert (= (and b!8046704 res!3180938) b!8046705))

(assert (= (and b!8046704 (not res!3180937)) b!8046706))

(declare-fun m!8398718 () Bool)

(assert (=> b!8046705 m!8398718))

(declare-fun m!8398720 () Bool)

(assert (=> b!8046706 m!8398720))

(assert (=> b!8046687 d!2396633))

(declare-fun d!2396637 () Bool)

(assert (=> d!2396637 (= (inv!97090 (h!81812 newAcc!87)) (= (mod (str.len (value!292891 (h!81812 newAcc!87))) 2) 0))))

(assert (=> b!8046688 d!2396637))

(declare-fun d!2396639 () Bool)

(assert (=> d!2396639 (= (inv!97090 (tag!9632 (h!81815 rules!4081))) (= (mod (str.len (value!292891 (tag!9632 (h!81815 rules!4081)))) 2) 0))))

(assert (=> b!8046683 d!2396639))

(declare-fun d!2396641 () Bool)

(declare-fun res!3180950 () Bool)

(declare-fun e!4740772 () Bool)

(assert (=> d!2396641 (=> (not res!3180950) (not e!4740772))))

(declare-fun semiInverseModEq!3891 (Int Int) Bool)

(assert (=> d!2396641 (= res!3180950 (semiInverseModEq!3891 (toChars!11710 (transformation!8768 (h!81815 rules!4081))) (toValue!11851 (transformation!8768 (h!81815 rules!4081)))))))

(assert (=> d!2396641 (= (inv!97092 (transformation!8768 (h!81815 rules!4081))) e!4740772)))

(declare-fun b!8046718 () Bool)

(declare-fun equivClasses!3706 (Int Int) Bool)

(assert (=> b!8046718 (= e!4740772 (equivClasses!3706 (toChars!11710 (transformation!8768 (h!81815 rules!4081))) (toValue!11851 (transformation!8768 (h!81815 rules!4081)))))))

(assert (= (and d!2396641 res!3180950) b!8046718))

(declare-fun m!8398722 () Bool)

(assert (=> d!2396641 m!8398722))

(declare-fun m!8398724 () Bool)

(assert (=> b!8046718 m!8398724))

(assert (=> b!8046683 d!2396641))

(declare-fun d!2396643 () Bool)

(declare-fun res!3180967 () Bool)

(declare-fun e!4740789 () Bool)

(assert (=> d!2396643 (=> res!3180967 e!4740789)))

(assert (=> d!2396643 (= res!3180967 ((_ is Nil!75367) rules!4081))))

(assert (=> d!2396643 (= (noDuplicateTag!3346 thiss!26941 rules!4081 acc!573) e!4740789)))

(declare-fun b!8046735 () Bool)

(declare-fun e!4740790 () Bool)

(assert (=> b!8046735 (= e!4740789 e!4740790)))

(declare-fun res!3180968 () Bool)

(assert (=> b!8046735 (=> (not res!3180968) (not e!4740790))))

(declare-fun contains!21066 (List!75490 String!85221) Bool)

(assert (=> b!8046735 (= res!3180968 (not (contains!21066 acc!573 (tag!9632 (h!81815 rules!4081)))))))

(declare-fun b!8046736 () Bool)

(assert (=> b!8046736 (= e!4740790 (noDuplicateTag!3346 thiss!26941 (t!391263 rules!4081) (Cons!75364 (tag!9632 (h!81815 rules!4081)) acc!573)))))

(assert (= (and d!2396643 (not res!3180967)) b!8046735))

(assert (= (and b!8046735 res!3180968) b!8046736))

(declare-fun m!8398734 () Bool)

(assert (=> b!8046735 m!8398734))

(declare-fun m!8398736 () Bool)

(assert (=> b!8046736 m!8398736))

(assert (=> b!8046684 d!2396643))

(declare-fun b!8046743 () Bool)

(declare-fun e!4740797 () Bool)

(declare-fun tp!2412272 () Bool)

(assert (=> b!8046743 (= e!4740797 (and (inv!97090 (h!81812 (t!391260 acc!573))) tp!2412272))))

(assert (=> b!8046680 (= tp!2412265 e!4740797)))

(assert (= (and b!8046680 ((_ is Cons!75364) (t!391260 acc!573))) b!8046743))

(declare-fun m!8398742 () Bool)

(assert (=> b!8046743 m!8398742))

(declare-fun b!8046767 () Bool)

(declare-fun b_free!136463 () Bool)

(declare-fun b_next!137253 () Bool)

(assert (=> b!8046767 (= b_free!136463 (not b_next!137253))))

(declare-fun tp!2412293 () Bool)

(declare-fun b_and!354899 () Bool)

(assert (=> b!8046767 (= tp!2412293 b_and!354899)))

(declare-fun b_free!136465 () Bool)

(declare-fun b_next!137255 () Bool)

(assert (=> b!8046767 (= b_free!136465 (not b_next!137255))))

(declare-fun tp!2412295 () Bool)

(declare-fun b_and!354901 () Bool)

(assert (=> b!8046767 (= tp!2412295 b_and!354901)))

(declare-fun e!4740822 () Bool)

(assert (=> b!8046767 (= e!4740822 (and tp!2412293 tp!2412295))))

(declare-fun b!8046766 () Bool)

(declare-fun tp!2412292 () Bool)

(declare-fun e!4740821 () Bool)

(assert (=> b!8046766 (= e!4740821 (and tp!2412292 (inv!97090 (tag!9632 (h!81815 (t!391263 rules!4081)))) (inv!97092 (transformation!8768 (h!81815 (t!391263 rules!4081)))) e!4740822))))

(declare-fun b!8046765 () Bool)

(declare-fun e!4740823 () Bool)

(declare-fun tp!2412294 () Bool)

(assert (=> b!8046765 (= e!4740823 (and e!4740821 tp!2412294))))

(assert (=> b!8046682 (= tp!2412267 e!4740823)))

(assert (= b!8046766 b!8046767))

(assert (= b!8046765 b!8046766))

(assert (= (and b!8046682 ((_ is Cons!75367) (t!391263 rules!4081))) b!8046765))

(declare-fun m!8398746 () Bool)

(assert (=> b!8046766 m!8398746))

(declare-fun m!8398748 () Bool)

(assert (=> b!8046766 m!8398748))

(declare-fun b!8046768 () Bool)

(declare-fun e!4740825 () Bool)

(declare-fun tp!2412296 () Bool)

(assert (=> b!8046768 (= e!4740825 (and (inv!97090 (h!81812 (t!391260 newAcc!87))) tp!2412296))))

(assert (=> b!8046688 (= tp!2412268 e!4740825)))

(assert (= (and b!8046688 ((_ is Cons!75364) (t!391260 newAcc!87))) b!8046768))

(declare-fun m!8398750 () Bool)

(assert (=> b!8046768 m!8398750))

(declare-fun b!8046795 () Bool)

(declare-fun e!4740835 () Bool)

(declare-fun tp!2412325 () Bool)

(declare-fun tp!2412323 () Bool)

(assert (=> b!8046795 (= e!4740835 (and tp!2412325 tp!2412323))))

(declare-fun b!8046793 () Bool)

(declare-fun tp!2412321 () Bool)

(declare-fun tp!2412322 () Bool)

(assert (=> b!8046793 (= e!4740835 (and tp!2412321 tp!2412322))))

(declare-fun b!8046794 () Bool)

(declare-fun tp!2412324 () Bool)

(assert (=> b!8046794 (= e!4740835 tp!2412324)))

(declare-fun b!8046792 () Bool)

(declare-fun tp_is_empty!54635 () Bool)

(assert (=> b!8046792 (= e!4740835 tp_is_empty!54635)))

(assert (=> b!8046683 (= tp!2412264 e!4740835)))

(assert (= (and b!8046683 ((_ is ElementMatch!21839) (regex!8768 (h!81815 rules!4081)))) b!8046792))

(assert (= (and b!8046683 ((_ is Concat!30928) (regex!8768 (h!81815 rules!4081)))) b!8046793))

(assert (= (and b!8046683 ((_ is Star!21839) (regex!8768 (h!81815 rules!4081)))) b!8046794))

(assert (= (and b!8046683 ((_ is Union!21839) (regex!8768 (h!81815 rules!4081)))) b!8046795))

(check-sat (not b!8046705) (not b_next!137253) (not b!8046793) tp_is_empty!54635 b_and!354899 (not d!2396641) b_and!354901 (not b!8046706) (not b!8046765) b_and!354897 (not b!8046768) (not b!8046736) (not b!8046766) (not b!8046701) (not b!8046743) (not b!8046702) (not b_next!137251) (not b_next!137249) (not b!8046795) (not b!8046718) b_and!354895 (not b!8046735) (not b!8046794) (not b_next!137255))
(check-sat (not b_next!137251) (not b_next!137253) b_and!354899 b_and!354901 (not b_next!137249) b_and!354895 b_and!354897 (not b_next!137255))
