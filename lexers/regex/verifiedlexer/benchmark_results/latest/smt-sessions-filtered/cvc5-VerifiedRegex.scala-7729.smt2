; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!406328 () Bool)

(assert start!406328)

(declare-fun b!4244833 () Bool)

(declare-fun b_free!125899 () Bool)

(declare-fun b_next!126603 () Bool)

(assert (=> b!4244833 (= b_free!125899 (not b_next!126603))))

(declare-fun tp!1301650 () Bool)

(declare-fun b_and!336197 () Bool)

(assert (=> b!4244833 (= tp!1301650 b_and!336197)))

(declare-fun b_free!125901 () Bool)

(declare-fun b_next!126605 () Bool)

(assert (=> b!4244833 (= b_free!125901 (not b_next!126605))))

(declare-fun tp!1301645 () Bool)

(declare-fun b_and!336199 () Bool)

(assert (=> b!4244833 (= tp!1301645 b_and!336199)))

(declare-fun b!4244848 () Bool)

(declare-fun b_free!125903 () Bool)

(declare-fun b_next!126607 () Bool)

(assert (=> b!4244848 (= b_free!125903 (not b_next!126607))))

(declare-fun tp!1301653 () Bool)

(declare-fun b_and!336201 () Bool)

(assert (=> b!4244848 (= tp!1301653 b_and!336201)))

(declare-fun b_free!125905 () Bool)

(declare-fun b_next!126609 () Bool)

(assert (=> b!4244848 (= b_free!125905 (not b_next!126609))))

(declare-fun tp!1301644 () Bool)

(declare-fun b_and!336203 () Bool)

(assert (=> b!4244848 (= tp!1301644 b_and!336203)))

(declare-fun b!4244831 () Bool)

(declare-fun b_free!125907 () Bool)

(declare-fun b_next!126611 () Bool)

(assert (=> b!4244831 (= b_free!125907 (not b_next!126611))))

(declare-fun tp!1301649 () Bool)

(declare-fun b_and!336205 () Bool)

(assert (=> b!4244831 (= tp!1301649 b_and!336205)))

(declare-fun b_free!125909 () Bool)

(declare-fun b_next!126613 () Bool)

(assert (=> b!4244831 (= b_free!125909 (not b_next!126613))))

(declare-fun tp!1301659 () Bool)

(declare-fun b_and!336207 () Bool)

(assert (=> b!4244831 (= tp!1301659 b_and!336207)))

(declare-fun e!2636256 () Bool)

(assert (=> b!4244831 (= e!2636256 (and tp!1301649 tp!1301659))))

(declare-fun res!1745197 () Bool)

(declare-fun e!2636238 () Bool)

(assert (=> start!406328 (=> (not res!1745197) (not e!2636238))))

(declare-datatypes ((LexerInterface!7536 0))(
  ( (LexerInterfaceExt!7533 (__x!28565 Int)) (Lexer!7534) )
))
(declare-fun thiss!21540 () LexerInterface!7536)

(assert (=> start!406328 (= res!1745197 (is-Lexer!7534 thiss!21540))))

(assert (=> start!406328 e!2636238))

(assert (=> start!406328 true))

(declare-fun e!2636243 () Bool)

(assert (=> start!406328 e!2636243))

(declare-fun e!2636245 () Bool)

(assert (=> start!406328 e!2636245))

(declare-fun e!2636257 () Bool)

(assert (=> start!406328 e!2636257))

(declare-fun e!2636252 () Bool)

(assert (=> start!406328 e!2636252))

(declare-fun e!2636255 () Bool)

(assert (=> start!406328 e!2636255))

(declare-fun e!2636239 () Bool)

(assert (=> start!406328 e!2636239))

(declare-fun b!4244832 () Bool)

(declare-fun res!1745198 () Bool)

(assert (=> b!4244832 (=> (not res!1745198) (not e!2636238))))

(declare-datatypes ((C!25890 0))(
  ( (C!25891 (val!15135 Int)) )
))
(declare-datatypes ((List!47079 0))(
  ( (Nil!46955) (Cons!46955 (h!52375 C!25890) (t!351600 List!47079)) )
))
(declare-fun longerInput!51 () List!47079)

(declare-fun isEmpty!27770 (List!47079) Bool)

(assert (=> b!4244832 (= res!1745198 (not (isEmpty!27770 longerInput!51)))))

(declare-fun e!2636241 () Bool)

(assert (=> b!4244833 (= e!2636241 (and tp!1301650 tp!1301645))))

(declare-fun b!4244834 () Bool)

(declare-fun res!1745192 () Bool)

(assert (=> b!4244834 (=> (not res!1745192) (not e!2636238))))

(declare-fun shorterInput!51 () List!47079)

(declare-fun size!34392 (List!47079) Int)

(assert (=> b!4244834 (= res!1745192 (> (size!34392 longerInput!51) (size!34392 shorterInput!51)))))

(declare-fun b!4244835 () Bool)

(declare-fun res!1745195 () Bool)

(assert (=> b!4244835 (=> (not res!1745195) (not e!2636238))))

(declare-datatypes ((List!47080 0))(
  ( (Nil!46956) (Cons!46956 (h!52376 (_ BitVec 16)) (t!351601 List!47080)) )
))
(declare-datatypes ((TokenValue!8171 0))(
  ( (FloatLiteralValue!16342 (text!57642 List!47080)) (TokenValueExt!8170 (__x!28566 Int)) (Broken!40855 (value!246830 List!47080)) (Object!8294) (End!8171) (Def!8171) (Underscore!8171) (Match!8171) (Else!8171) (Error!8171) (Case!8171) (If!8171) (Extends!8171) (Abstract!8171) (Class!8171) (Val!8171) (DelimiterValue!16342 (del!8231 List!47080)) (KeywordValue!8177 (value!246831 List!47080)) (CommentValue!16342 (value!246832 List!47080)) (WhitespaceValue!16342 (value!246833 List!47080)) (IndentationValue!8171 (value!246834 List!47080)) (String!54786) (Int32!8171) (Broken!40856 (value!246835 List!47080)) (Boolean!8172) (Unit!66005) (OperatorValue!8174 (op!8231 List!47080)) (IdentifierValue!16342 (value!246836 List!47080)) (IdentifierValue!16343 (value!246837 List!47080)) (WhitespaceValue!16343 (value!246838 List!47080)) (True!16342) (False!16342) (Broken!40857 (value!246839 List!47080)) (Broken!40858 (value!246840 List!47080)) (True!16343) (RightBrace!8171) (RightBracket!8171) (Colon!8171) (Null!8171) (Comma!8171) (LeftBracket!8171) (False!16343) (LeftBrace!8171) (ImaginaryLiteralValue!8171 (text!57643 List!47080)) (StringLiteralValue!24513 (value!246841 List!47080)) (EOFValue!8171 (value!246842 List!47080)) (IdentValue!8171 (value!246843 List!47080)) (DelimiterValue!16343 (value!246844 List!47080)) (DedentValue!8171 (value!246845 List!47080)) (NewLineValue!8171 (value!246846 List!47080)) (IntegerValue!24513 (value!246847 (_ BitVec 32)) (text!57644 List!47080)) (IntegerValue!24514 (value!246848 Int) (text!57645 List!47080)) (Times!8171) (Or!8171) (Equal!8171) (Minus!8171) (Broken!40859 (value!246849 List!47080)) (And!8171) (Div!8171) (LessEqual!8171) (Mod!8171) (Concat!21017) (Not!8171) (Plus!8171) (SpaceValue!8171 (value!246850 List!47080)) (IntegerValue!24515 (value!246851 Int) (text!57646 List!47080)) (StringLiteralValue!24514 (text!57647 List!47080)) (FloatLiteralValue!16343 (text!57648 List!47080)) (BytesLiteralValue!8171 (value!246852 List!47080)) (CommentValue!16343 (value!246853 List!47080)) (StringLiteralValue!24515 (value!246854 List!47080)) (ErrorTokenValue!8171 (msg!8232 List!47080)) )
))
(declare-datatypes ((Regex!12846 0))(
  ( (ElementMatch!12846 (c!721097 C!25890)) (Concat!21018 (regOne!26204 Regex!12846) (regTwo!26204 Regex!12846)) (EmptyExpr!12846) (Star!12846 (reg!13175 Regex!12846)) (EmptyLang!12846) (Union!12846 (regOne!26205 Regex!12846) (regTwo!26205 Regex!12846)) )
))
(declare-datatypes ((String!54787 0))(
  ( (String!54788 (value!246855 String)) )
))
(declare-datatypes ((IArray!28309 0))(
  ( (IArray!28310 (innerList!14212 List!47079)) )
))
(declare-datatypes ((Conc!14152 0))(
  ( (Node!14152 (left!34873 Conc!14152) (right!35203 Conc!14152) (csize!28534 Int) (cheight!14363 Int)) (Leaf!21882 (xs!17458 IArray!28309) (csize!28535 Int)) (Empty!14152) )
))
(declare-datatypes ((BalanceConc!27898 0))(
  ( (BalanceConc!27899 (c!721098 Conc!14152)) )
))
(declare-datatypes ((TokenValueInjection!15770 0))(
  ( (TokenValueInjection!15771 (toValue!10701 Int) (toChars!10560 Int)) )
))
(declare-datatypes ((Rule!15682 0))(
  ( (Rule!15683 (regex!7941 Regex!12846) (tag!8805 String!54787) (isSeparator!7941 Bool) (transformation!7941 TokenValueInjection!15770)) )
))
(declare-datatypes ((Token!14508 0))(
  ( (Token!14509 (value!246856 TokenValue!8171) (rule!11071 Rule!15682) (size!34393 Int) (originalCharacters!8285 List!47079)) )
))
(declare-datatypes ((List!47081 0))(
  ( (Nil!46957) (Cons!46957 (h!52377 Token!14508) (t!351602 List!47081)) )
))
(declare-fun addTokens!17 () List!47081)

(declare-fun size!34394 (List!47081) Int)

(assert (=> b!4244835 (= res!1745195 (> (size!34394 addTokens!17) 0))))

(declare-fun e!2636247 () Bool)

(declare-fun b!4244836 () Bool)

(declare-fun e!2636250 () Bool)

(declare-fun tp!1301655 () Bool)

(declare-fun inv!61715 (String!54787) Bool)

(declare-fun inv!61718 (TokenValueInjection!15770) Bool)

(assert (=> b!4244836 (= e!2636247 (and tp!1301655 (inv!61715 (tag!8805 (rule!11071 (h!52377 addTokens!17)))) (inv!61718 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))) e!2636250))))

(declare-fun b!4244837 () Bool)

(declare-fun e!2636237 () Bool)

(declare-fun tp!1301651 () Bool)

(assert (=> b!4244837 (= e!2636243 (and e!2636237 tp!1301651))))

(declare-fun b!4244838 () Bool)

(declare-fun res!1745193 () Bool)

(assert (=> b!4244838 (=> (not res!1745193) (not e!2636238))))

(declare-fun isEmpty!27771 (List!47081) Bool)

(assert (=> b!4244838 (= res!1745193 (not (isEmpty!27771 addTokens!17)))))

(declare-fun b!4244839 () Bool)

(declare-fun tp!1301646 () Bool)

(declare-fun e!2636248 () Bool)

(declare-fun tokens!581 () List!47081)

(assert (=> b!4244839 (= e!2636248 (and tp!1301646 (inv!61715 (tag!8805 (rule!11071 (h!52377 tokens!581)))) (inv!61718 (transformation!7941 (rule!11071 (h!52377 tokens!581)))) e!2636241))))

(declare-fun b!4244840 () Bool)

(declare-fun res!1745191 () Bool)

(assert (=> b!4244840 (=> (not res!1745191) (not e!2636238))))

(declare-datatypes ((List!47082 0))(
  ( (Nil!46958) (Cons!46958 (h!52378 Rule!15682) (t!351603 List!47082)) )
))
(declare-fun rules!2932 () List!47082)

(declare-fun rulesInvariant!6647 (LexerInterface!7536 List!47082) Bool)

(assert (=> b!4244840 (= res!1745191 (rulesInvariant!6647 thiss!21540 rules!2932))))

(declare-fun e!2636249 () Bool)

(declare-fun tp!1301647 () Bool)

(declare-fun b!4244841 () Bool)

(declare-fun inv!61719 (Token!14508) Bool)

(assert (=> b!4244841 (= e!2636245 (and (inv!61719 (h!52377 addTokens!17)) e!2636249 tp!1301647))))

(declare-fun b!4244842 () Bool)

(declare-fun tp_is_empty!22683 () Bool)

(declare-fun tp!1301643 () Bool)

(assert (=> b!4244842 (= e!2636252 (and tp_is_empty!22683 tp!1301643))))

(declare-fun b!4244843 () Bool)

(declare-fun res!1745194 () Bool)

(assert (=> b!4244843 (=> (not res!1745194) (not e!2636238))))

(declare-fun isEmpty!27772 (List!47082) Bool)

(assert (=> b!4244843 (= res!1745194 (not (isEmpty!27772 rules!2932)))))

(declare-fun tp!1301654 () Bool)

(declare-fun b!4244844 () Bool)

(declare-fun inv!21 (TokenValue!8171) Bool)

(assert (=> b!4244844 (= e!2636249 (and (inv!21 (value!246856 (h!52377 addTokens!17))) e!2636247 tp!1301654))))

(declare-fun e!2636254 () Bool)

(declare-fun b!4244845 () Bool)

(declare-fun tp!1301658 () Bool)

(assert (=> b!4244845 (= e!2636254 (and (inv!21 (value!246856 (h!52377 tokens!581))) e!2636248 tp!1301658))))

(declare-fun b!4244846 () Bool)

(declare-fun tp!1301657 () Bool)

(assert (=> b!4244846 (= e!2636255 (and (inv!61719 (h!52377 tokens!581)) e!2636254 tp!1301657))))

(declare-fun b!4244847 () Bool)

(declare-fun res!1745196 () Bool)

(assert (=> b!4244847 (=> (not res!1745196) (not e!2636238))))

(declare-fun suffix!1262 () List!47079)

(declare-datatypes ((tuple2!44526 0))(
  ( (tuple2!44527 (_1!25397 List!47081) (_2!25397 List!47079)) )
))
(declare-fun lexList!2042 (LexerInterface!7536 List!47082 List!47079) tuple2!44526)

(assert (=> b!4244847 (= res!1745196 (= (lexList!2042 thiss!21540 rules!2932 longerInput!51) (tuple2!44527 tokens!581 suffix!1262)))))

(assert (=> b!4244848 (= e!2636250 (and tp!1301653 tp!1301644))))

(declare-fun b!4244849 () Bool)

(declare-fun e!2636244 () Bool)

(assert (=> b!4244849 (= e!2636238 e!2636244)))

(declare-fun res!1745199 () Bool)

(assert (=> b!4244849 (=> (not res!1745199) (not e!2636244))))

(declare-datatypes ((tuple2!44528 0))(
  ( (tuple2!44529 (_1!25398 Token!14508) (_2!25398 List!47079)) )
))
(declare-datatypes ((Option!10077 0))(
  ( (None!10076) (Some!10076 (v!41030 tuple2!44528)) )
))
(declare-fun lt!1507383 () Option!10077)

(declare-fun lt!1507384 () Option!10077)

(assert (=> b!4244849 (= res!1745199 (and (or (not (is-Some!10076 lt!1507383)) (not (is-Some!10076 lt!1507384))) (or (not (is-Some!10076 lt!1507383)) (not (is-None!10076 lt!1507384))) (or (not (is-None!10076 lt!1507383)) (not (is-Some!10076 lt!1507384))) (is-None!10076 lt!1507383) (is-None!10076 lt!1507384)))))

(declare-fun maxPrefix!4494 (LexerInterface!7536 List!47082 List!47079) Option!10077)

(assert (=> b!4244849 (= lt!1507384 (maxPrefix!4494 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> b!4244849 (= lt!1507383 (maxPrefix!4494 thiss!21540 rules!2932 longerInput!51))))

(declare-fun b!4244850 () Bool)

(declare-fun ++!11956 (List!47081 List!47081) List!47081)

(assert (=> b!4244850 (= e!2636244 (= (lexList!2042 thiss!21540 rules!2932 shorterInput!51) (tuple2!44527 (++!11956 addTokens!17 tokens!581) suffix!1262)))))

(declare-fun b!4244851 () Bool)

(declare-fun tp!1301656 () Bool)

(assert (=> b!4244851 (= e!2636239 (and tp_is_empty!22683 tp!1301656))))

(declare-fun tp!1301648 () Bool)

(declare-fun b!4244852 () Bool)

(assert (=> b!4244852 (= e!2636237 (and tp!1301648 (inv!61715 (tag!8805 (h!52378 rules!2932))) (inv!61718 (transformation!7941 (h!52378 rules!2932))) e!2636256))))

(declare-fun b!4244853 () Bool)

(declare-fun tp!1301652 () Bool)

(assert (=> b!4244853 (= e!2636257 (and tp_is_empty!22683 tp!1301652))))

(assert (= (and start!406328 res!1745197) b!4244843))

(assert (= (and b!4244843 res!1745194) b!4244840))

(assert (= (and b!4244840 res!1745191) b!4244832))

(assert (= (and b!4244832 res!1745198) b!4244834))

(assert (= (and b!4244834 res!1745192) b!4244847))

(assert (= (and b!4244847 res!1745196) b!4244838))

(assert (= (and b!4244838 res!1745193) b!4244835))

(assert (= (and b!4244835 res!1745195) b!4244849))

(assert (= (and b!4244849 res!1745199) b!4244850))

(assert (= b!4244852 b!4244831))

(assert (= b!4244837 b!4244852))

(assert (= (and start!406328 (is-Cons!46958 rules!2932)) b!4244837))

(assert (= b!4244836 b!4244848))

(assert (= b!4244844 b!4244836))

(assert (= b!4244841 b!4244844))

(assert (= (and start!406328 (is-Cons!46957 addTokens!17)) b!4244841))

(assert (= (and start!406328 (is-Cons!46955 shorterInput!51)) b!4244853))

(assert (= (and start!406328 (is-Cons!46955 suffix!1262)) b!4244842))

(assert (= b!4244839 b!4244833))

(assert (= b!4244845 b!4244839))

(assert (= b!4244846 b!4244845))

(assert (= (and start!406328 (is-Cons!46957 tokens!581)) b!4244846))

(assert (= (and start!406328 (is-Cons!46955 longerInput!51)) b!4244851))

(declare-fun m!4830179 () Bool)

(assert (=> b!4244841 m!4830179))

(declare-fun m!4830181 () Bool)

(assert (=> b!4244839 m!4830181))

(declare-fun m!4830183 () Bool)

(assert (=> b!4244839 m!4830183))

(declare-fun m!4830185 () Bool)

(assert (=> b!4244849 m!4830185))

(declare-fun m!4830187 () Bool)

(assert (=> b!4244849 m!4830187))

(declare-fun m!4830189 () Bool)

(assert (=> b!4244836 m!4830189))

(declare-fun m!4830191 () Bool)

(assert (=> b!4244836 m!4830191))

(declare-fun m!4830193 () Bool)

(assert (=> b!4244846 m!4830193))

(declare-fun m!4830195 () Bool)

(assert (=> b!4244843 m!4830195))

(declare-fun m!4830197 () Bool)

(assert (=> b!4244845 m!4830197))

(declare-fun m!4830199 () Bool)

(assert (=> b!4244834 m!4830199))

(declare-fun m!4830201 () Bool)

(assert (=> b!4244834 m!4830201))

(declare-fun m!4830203 () Bool)

(assert (=> b!4244844 m!4830203))

(declare-fun m!4830205 () Bool)

(assert (=> b!4244835 m!4830205))

(declare-fun m!4830207 () Bool)

(assert (=> b!4244838 m!4830207))

(declare-fun m!4830209 () Bool)

(assert (=> b!4244832 m!4830209))

(declare-fun m!4830211 () Bool)

(assert (=> b!4244840 m!4830211))

(declare-fun m!4830213 () Bool)

(assert (=> b!4244852 m!4830213))

(declare-fun m!4830215 () Bool)

(assert (=> b!4244852 m!4830215))

(declare-fun m!4830217 () Bool)

(assert (=> b!4244850 m!4830217))

(declare-fun m!4830219 () Bool)

(assert (=> b!4244850 m!4830219))

(declare-fun m!4830221 () Bool)

(assert (=> b!4244847 m!4830221))

(push 1)

(assert (not b!4244844))

(assert (not b!4244853))

(assert b_and!336205)

(assert (not b_next!126605))

(assert (not b!4244839))

(assert (not b!4244847))

(assert (not b!4244838))

(assert b_and!336207)

(assert (not b!4244840))

(assert (not b!4244849))

(assert (not b_next!126613))

(assert (not b!4244845))

(assert (not b!4244841))

(assert (not b!4244850))

(assert (not b!4244851))

(assert (not b!4244835))

(assert (not b!4244843))

(assert (not b!4244834))

(assert (not b!4244832))

(assert (not b!4244846))

(assert (not b!4244842))

(assert b_and!336203)

(assert b_and!336201)

(assert b_and!336199)

(assert (not b_next!126603))

(assert (not b_next!126607))

(assert (not b!4244836))

(assert (not b!4244852))

(assert tp_is_empty!22683)

(assert b_and!336197)

(assert (not b_next!126611))

(assert (not b!4244837))

(assert (not b_next!126609))

(check-sat)

(pop 1)

(push 1)

(assert b_and!336205)

(assert (not b_next!126605))

(assert b_and!336203)

(assert b_and!336207)

(assert (not b_next!126613))

(assert (not b_next!126609))

(assert b_and!336201)

(assert b_and!336199)

(assert (not b_next!126603))

(assert (not b_next!126607))

(assert b_and!336197)

(assert (not b_next!126611))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1248690 () Bool)

(declare-fun res!1745229 () Bool)

(declare-fun e!2636323 () Bool)

(assert (=> d!1248690 (=> (not res!1745229) (not e!2636323))))

(declare-fun rulesValid!3084 (LexerInterface!7536 List!47082) Bool)

(assert (=> d!1248690 (= res!1745229 (rulesValid!3084 thiss!21540 rules!2932))))

(assert (=> d!1248690 (= (rulesInvariant!6647 thiss!21540 rules!2932) e!2636323)))

(declare-fun b!4244925 () Bool)

(declare-datatypes ((List!47087 0))(
  ( (Nil!46963) (Cons!46963 (h!52383 String!54787) (t!351644 List!47087)) )
))
(declare-fun noDuplicateTag!3245 (LexerInterface!7536 List!47082 List!47087) Bool)

(assert (=> b!4244925 (= e!2636323 (noDuplicateTag!3245 thiss!21540 rules!2932 Nil!46963))))

(assert (= (and d!1248690 res!1745229) b!4244925))

(declare-fun m!4830267 () Bool)

(assert (=> d!1248690 m!4830267))

(declare-fun m!4830269 () Bool)

(assert (=> b!4244925 m!4830269))

(assert (=> b!4244840 d!1248690))

(declare-fun b!4244951 () Bool)

(declare-fun e!2636341 () tuple2!44526)

(declare-fun lt!1507397 () Option!10077)

(declare-fun lt!1507399 () tuple2!44526)

(assert (=> b!4244951 (= e!2636341 (tuple2!44527 (Cons!46957 (_1!25398 (v!41030 lt!1507397)) (_1!25397 lt!1507399)) (_2!25397 lt!1507399)))))

(assert (=> b!4244951 (= lt!1507399 (lexList!2042 thiss!21540 rules!2932 (_2!25398 (v!41030 lt!1507397))))))

(declare-fun b!4244952 () Bool)

(declare-fun e!2636342 () Bool)

(declare-fun e!2636340 () Bool)

(assert (=> b!4244952 (= e!2636342 e!2636340)))

(declare-fun res!1745242 () Bool)

(declare-fun lt!1507398 () tuple2!44526)

(assert (=> b!4244952 (= res!1745242 (< (size!34392 (_2!25397 lt!1507398)) (size!34392 shorterInput!51)))))

(assert (=> b!4244952 (=> (not res!1745242) (not e!2636340))))

(declare-fun b!4244953 () Bool)

(assert (=> b!4244953 (= e!2636342 (= (_2!25397 lt!1507398) shorterInput!51))))

(declare-fun b!4244954 () Bool)

(assert (=> b!4244954 (= e!2636341 (tuple2!44527 Nil!46957 shorterInput!51))))

(declare-fun b!4244955 () Bool)

(assert (=> b!4244955 (= e!2636340 (not (isEmpty!27771 (_1!25397 lt!1507398))))))

(declare-fun d!1248692 () Bool)

(assert (=> d!1248692 e!2636342))

(declare-fun c!721107 () Bool)

(assert (=> d!1248692 (= c!721107 (> (size!34394 (_1!25397 lt!1507398)) 0))))

(assert (=> d!1248692 (= lt!1507398 e!2636341)))

(declare-fun c!721106 () Bool)

(assert (=> d!1248692 (= c!721106 (is-Some!10076 lt!1507397))))

(assert (=> d!1248692 (= lt!1507397 (maxPrefix!4494 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> d!1248692 (= (lexList!2042 thiss!21540 rules!2932 shorterInput!51) lt!1507398)))

(assert (= (and d!1248692 c!721106) b!4244951))

(assert (= (and d!1248692 (not c!721106)) b!4244954))

(assert (= (and d!1248692 c!721107) b!4244952))

(assert (= (and d!1248692 (not c!721107)) b!4244953))

(assert (= (and b!4244952 res!1745242) b!4244955))

(declare-fun m!4830291 () Bool)

(assert (=> b!4244951 m!4830291))

(declare-fun m!4830293 () Bool)

(assert (=> b!4244952 m!4830293))

(assert (=> b!4244952 m!4830201))

(declare-fun m!4830295 () Bool)

(assert (=> b!4244955 m!4830295))

(declare-fun m!4830297 () Bool)

(assert (=> d!1248692 m!4830297))

(assert (=> d!1248692 m!4830185))

(assert (=> b!4244850 d!1248692))

(declare-fun b!4244966 () Bool)

(declare-fun res!1745248 () Bool)

(declare-fun e!2636348 () Bool)

(assert (=> b!4244966 (=> (not res!1745248) (not e!2636348))))

(declare-fun lt!1507402 () List!47081)

(assert (=> b!4244966 (= res!1745248 (= (size!34394 lt!1507402) (+ (size!34394 addTokens!17) (size!34394 tokens!581))))))

(declare-fun b!4244967 () Bool)

(assert (=> b!4244967 (= e!2636348 (or (not (= tokens!581 Nil!46957)) (= lt!1507402 addTokens!17)))))

(declare-fun b!4244964 () Bool)

(declare-fun e!2636347 () List!47081)

(assert (=> b!4244964 (= e!2636347 tokens!581)))

(declare-fun d!1248708 () Bool)

(assert (=> d!1248708 e!2636348))

(declare-fun res!1745247 () Bool)

(assert (=> d!1248708 (=> (not res!1745247) (not e!2636348))))

(declare-fun content!7387 (List!47081) (Set Token!14508))

(assert (=> d!1248708 (= res!1745247 (= (content!7387 lt!1507402) (set.union (content!7387 addTokens!17) (content!7387 tokens!581))))))

(assert (=> d!1248708 (= lt!1507402 e!2636347)))

(declare-fun c!721110 () Bool)

(assert (=> d!1248708 (= c!721110 (is-Nil!46957 addTokens!17))))

(assert (=> d!1248708 (= (++!11956 addTokens!17 tokens!581) lt!1507402)))

(declare-fun b!4244965 () Bool)

(assert (=> b!4244965 (= e!2636347 (Cons!46957 (h!52377 addTokens!17) (++!11956 (t!351602 addTokens!17) tokens!581)))))

(assert (= (and d!1248708 c!721110) b!4244964))

(assert (= (and d!1248708 (not c!721110)) b!4244965))

(assert (= (and d!1248708 res!1745247) b!4244966))

(assert (= (and b!4244966 res!1745248) b!4244967))

(declare-fun m!4830299 () Bool)

(assert (=> b!4244966 m!4830299))

(assert (=> b!4244966 m!4830205))

(declare-fun m!4830301 () Bool)

(assert (=> b!4244966 m!4830301))

(declare-fun m!4830303 () Bool)

(assert (=> d!1248708 m!4830303))

(declare-fun m!4830305 () Bool)

(assert (=> d!1248708 m!4830305))

(declare-fun m!4830307 () Bool)

(assert (=> d!1248708 m!4830307))

(declare-fun m!4830309 () Bool)

(assert (=> b!4244965 m!4830309))

(assert (=> b!4244850 d!1248708))

(declare-fun d!1248710 () Bool)

(assert (=> d!1248710 (= (inv!61715 (tag!8805 (rule!11071 (h!52377 tokens!581)))) (= (mod (str.len (value!246855 (tag!8805 (rule!11071 (h!52377 tokens!581))))) 2) 0))))

(assert (=> b!4244839 d!1248710))

(declare-fun d!1248712 () Bool)

(declare-fun res!1745251 () Bool)

(declare-fun e!2636351 () Bool)

(assert (=> d!1248712 (=> (not res!1745251) (not e!2636351))))

(declare-fun semiInverseModEq!3462 (Int Int) Bool)

(assert (=> d!1248712 (= res!1745251 (semiInverseModEq!3462 (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))) (toValue!10701 (transformation!7941 (rule!11071 (h!52377 tokens!581))))))))

(assert (=> d!1248712 (= (inv!61718 (transformation!7941 (rule!11071 (h!52377 tokens!581)))) e!2636351)))

(declare-fun b!4244970 () Bool)

(declare-fun equivClasses!3361 (Int Int) Bool)

(assert (=> b!4244970 (= e!2636351 (equivClasses!3361 (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))) (toValue!10701 (transformation!7941 (rule!11071 (h!52377 tokens!581))))))))

(assert (= (and d!1248712 res!1745251) b!4244970))

(declare-fun m!4830311 () Bool)

(assert (=> d!1248712 m!4830311))

(declare-fun m!4830313 () Bool)

(assert (=> b!4244970 m!4830313))

(assert (=> b!4244839 d!1248712))

(declare-fun d!1248714 () Bool)

(assert (=> d!1248714 (= (inv!61715 (tag!8805 (h!52378 rules!2932))) (= (mod (str.len (value!246855 (tag!8805 (h!52378 rules!2932)))) 2) 0))))

(assert (=> b!4244852 d!1248714))

(declare-fun d!1248716 () Bool)

(declare-fun res!1745252 () Bool)

(declare-fun e!2636352 () Bool)

(assert (=> d!1248716 (=> (not res!1745252) (not e!2636352))))

(assert (=> d!1248716 (= res!1745252 (semiInverseModEq!3462 (toChars!10560 (transformation!7941 (h!52378 rules!2932))) (toValue!10701 (transformation!7941 (h!52378 rules!2932)))))))

(assert (=> d!1248716 (= (inv!61718 (transformation!7941 (h!52378 rules!2932))) e!2636352)))

(declare-fun b!4244971 () Bool)

(assert (=> b!4244971 (= e!2636352 (equivClasses!3361 (toChars!10560 (transformation!7941 (h!52378 rules!2932))) (toValue!10701 (transformation!7941 (h!52378 rules!2932)))))))

(assert (= (and d!1248716 res!1745252) b!4244971))

(declare-fun m!4830315 () Bool)

(assert (=> d!1248716 m!4830315))

(declare-fun m!4830317 () Bool)

(assert (=> b!4244971 m!4830317))

(assert (=> b!4244852 d!1248716))

(declare-fun d!1248718 () Bool)

(declare-fun res!1745257 () Bool)

(declare-fun e!2636355 () Bool)

(assert (=> d!1248718 (=> (not res!1745257) (not e!2636355))))

(assert (=> d!1248718 (= res!1745257 (not (isEmpty!27770 (originalCharacters!8285 (h!52377 addTokens!17)))))))

(assert (=> d!1248718 (= (inv!61719 (h!52377 addTokens!17)) e!2636355)))

(declare-fun b!4244976 () Bool)

(declare-fun res!1745258 () Bool)

(assert (=> b!4244976 (=> (not res!1745258) (not e!2636355))))

(declare-fun list!16929 (BalanceConc!27898) List!47079)

(declare-fun dynLambda!20133 (Int TokenValue!8171) BalanceConc!27898)

(assert (=> b!4244976 (= res!1745258 (= (originalCharacters!8285 (h!52377 addTokens!17)) (list!16929 (dynLambda!20133 (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))) (value!246856 (h!52377 addTokens!17))))))))

(declare-fun b!4244977 () Bool)

(assert (=> b!4244977 (= e!2636355 (= (size!34393 (h!52377 addTokens!17)) (size!34392 (originalCharacters!8285 (h!52377 addTokens!17)))))))

(assert (= (and d!1248718 res!1745257) b!4244976))

(assert (= (and b!4244976 res!1745258) b!4244977))

(declare-fun b_lambda!125037 () Bool)

(assert (=> (not b_lambda!125037) (not b!4244976)))

(declare-fun tb!255713 () Bool)

(declare-fun t!351615 () Bool)

(assert (=> (and b!4244833 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17))))) t!351615) tb!255713))

(declare-fun b!4244982 () Bool)

(declare-fun e!2636358 () Bool)

(declare-fun tp!1301716 () Bool)

(declare-fun inv!61722 (Conc!14152) Bool)

(assert (=> b!4244982 (= e!2636358 (and (inv!61722 (c!721098 (dynLambda!20133 (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))) (value!246856 (h!52377 addTokens!17))))) tp!1301716))))

(declare-fun result!311816 () Bool)

(declare-fun inv!61723 (BalanceConc!27898) Bool)

(assert (=> tb!255713 (= result!311816 (and (inv!61723 (dynLambda!20133 (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))) (value!246856 (h!52377 addTokens!17)))) e!2636358))))

(assert (= tb!255713 b!4244982))

(declare-fun m!4830319 () Bool)

(assert (=> b!4244982 m!4830319))

(declare-fun m!4830321 () Bool)

(assert (=> tb!255713 m!4830321))

(assert (=> b!4244976 t!351615))

(declare-fun b_and!336227 () Bool)

(assert (= b_and!336199 (and (=> t!351615 result!311816) b_and!336227)))

(declare-fun t!351617 () Bool)

(declare-fun tb!255715 () Bool)

(assert (=> (and b!4244848 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17))))) t!351617) tb!255715))

(declare-fun result!311820 () Bool)

(assert (= result!311820 result!311816))

(assert (=> b!4244976 t!351617))

(declare-fun b_and!336229 () Bool)

(assert (= b_and!336203 (and (=> t!351617 result!311820) b_and!336229)))

(declare-fun tb!255717 () Bool)

(declare-fun t!351619 () Bool)

(assert (=> (and b!4244831 (= (toChars!10560 (transformation!7941 (h!52378 rules!2932))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17))))) t!351619) tb!255717))

(declare-fun result!311822 () Bool)

(assert (= result!311822 result!311816))

(assert (=> b!4244976 t!351619))

(declare-fun b_and!336231 () Bool)

(assert (= b_and!336207 (and (=> t!351619 result!311822) b_and!336231)))

(declare-fun m!4830323 () Bool)

(assert (=> d!1248718 m!4830323))

(declare-fun m!4830325 () Bool)

(assert (=> b!4244976 m!4830325))

(assert (=> b!4244976 m!4830325))

(declare-fun m!4830327 () Bool)

(assert (=> b!4244976 m!4830327))

(declare-fun m!4830329 () Bool)

(assert (=> b!4244977 m!4830329))

(assert (=> b!4244841 d!1248718))

(declare-fun d!1248720 () Bool)

(assert (=> d!1248720 (= (isEmpty!27770 longerInput!51) (is-Nil!46955 longerInput!51))))

(assert (=> b!4244832 d!1248720))

(declare-fun b!4244997 () Bool)

(declare-fun res!1745261 () Bool)

(declare-fun e!2636369 () Bool)

(assert (=> b!4244997 (=> res!1745261 e!2636369)))

(assert (=> b!4244997 (= res!1745261 (not (is-IntegerValue!24515 (value!246856 (h!52377 addTokens!17)))))))

(declare-fun e!2636368 () Bool)

(assert (=> b!4244997 (= e!2636368 e!2636369)))

(declare-fun b!4244998 () Bool)

(declare-fun inv!17 (TokenValue!8171) Bool)

(assert (=> b!4244998 (= e!2636368 (inv!17 (value!246856 (h!52377 addTokens!17))))))

(declare-fun b!4244999 () Bool)

(declare-fun inv!15 (TokenValue!8171) Bool)

(assert (=> b!4244999 (= e!2636369 (inv!15 (value!246856 (h!52377 addTokens!17))))))

(declare-fun d!1248722 () Bool)

(declare-fun c!721118 () Bool)

(assert (=> d!1248722 (= c!721118 (is-IntegerValue!24513 (value!246856 (h!52377 addTokens!17))))))

(declare-fun e!2636367 () Bool)

(assert (=> d!1248722 (= (inv!21 (value!246856 (h!52377 addTokens!17))) e!2636367)))

(declare-fun b!4245000 () Bool)

(assert (=> b!4245000 (= e!2636367 e!2636368)))

(declare-fun c!721117 () Bool)

(assert (=> b!4245000 (= c!721117 (is-IntegerValue!24514 (value!246856 (h!52377 addTokens!17))))))

(declare-fun b!4245001 () Bool)

(declare-fun inv!16 (TokenValue!8171) Bool)

(assert (=> b!4245001 (= e!2636367 (inv!16 (value!246856 (h!52377 addTokens!17))))))

(assert (= (and d!1248722 c!721118) b!4245001))

(assert (= (and d!1248722 (not c!721118)) b!4245000))

(assert (= (and b!4245000 c!721117) b!4244998))

(assert (= (and b!4245000 (not c!721117)) b!4244997))

(assert (= (and b!4244997 (not res!1745261)) b!4244999))

(declare-fun m!4830331 () Bool)

(assert (=> b!4244998 m!4830331))

(declare-fun m!4830333 () Bool)

(assert (=> b!4244999 m!4830333))

(declare-fun m!4830335 () Bool)

(assert (=> b!4245001 m!4830335))

(assert (=> b!4244844 d!1248722))

(declare-fun d!1248724 () Bool)

(assert (=> d!1248724 (= (isEmpty!27772 rules!2932) (is-Nil!46958 rules!2932))))

(assert (=> b!4244843 d!1248724))

(declare-fun b!4245008 () Bool)

(declare-fun res!1745264 () Bool)

(declare-fun e!2636376 () Bool)

(assert (=> b!4245008 (=> res!1745264 e!2636376)))

(assert (=> b!4245008 (= res!1745264 (not (is-IntegerValue!24515 (value!246856 (h!52377 tokens!581)))))))

(declare-fun e!2636375 () Bool)

(assert (=> b!4245008 (= e!2636375 e!2636376)))

(declare-fun b!4245009 () Bool)

(assert (=> b!4245009 (= e!2636375 (inv!17 (value!246856 (h!52377 tokens!581))))))

(declare-fun b!4245010 () Bool)

(assert (=> b!4245010 (= e!2636376 (inv!15 (value!246856 (h!52377 tokens!581))))))

(declare-fun d!1248726 () Bool)

(declare-fun c!721122 () Bool)

(assert (=> d!1248726 (= c!721122 (is-IntegerValue!24513 (value!246856 (h!52377 tokens!581))))))

(declare-fun e!2636374 () Bool)

(assert (=> d!1248726 (= (inv!21 (value!246856 (h!52377 tokens!581))) e!2636374)))

(declare-fun b!4245011 () Bool)

(assert (=> b!4245011 (= e!2636374 e!2636375)))

(declare-fun c!721121 () Bool)

(assert (=> b!4245011 (= c!721121 (is-IntegerValue!24514 (value!246856 (h!52377 tokens!581))))))

(declare-fun b!4245012 () Bool)

(assert (=> b!4245012 (= e!2636374 (inv!16 (value!246856 (h!52377 tokens!581))))))

(assert (= (and d!1248726 c!721122) b!4245012))

(assert (= (and d!1248726 (not c!721122)) b!4245011))

(assert (= (and b!4245011 c!721121) b!4245009))

(assert (= (and b!4245011 (not c!721121)) b!4245008))

(assert (= (and b!4245008 (not res!1745264)) b!4245010))

(declare-fun m!4830337 () Bool)

(assert (=> b!4245009 m!4830337))

(declare-fun m!4830339 () Bool)

(assert (=> b!4245010 m!4830339))

(declare-fun m!4830341 () Bool)

(assert (=> b!4245012 m!4830341))

(assert (=> b!4244845 d!1248726))

(declare-fun d!1248728 () Bool)

(declare-fun lt!1507411 () Int)

(assert (=> d!1248728 (>= lt!1507411 0)))

(declare-fun e!2636379 () Int)

(assert (=> d!1248728 (= lt!1507411 e!2636379)))

(declare-fun c!721125 () Bool)

(assert (=> d!1248728 (= c!721125 (is-Nil!46955 longerInput!51))))

(assert (=> d!1248728 (= (size!34392 longerInput!51) lt!1507411)))

(declare-fun b!4245017 () Bool)

(assert (=> b!4245017 (= e!2636379 0)))

(declare-fun b!4245018 () Bool)

(assert (=> b!4245018 (= e!2636379 (+ 1 (size!34392 (t!351600 longerInput!51))))))

(assert (= (and d!1248728 c!721125) b!4245017))

(assert (= (and d!1248728 (not c!721125)) b!4245018))

(declare-fun m!4830343 () Bool)

(assert (=> b!4245018 m!4830343))

(assert (=> b!4244834 d!1248728))

(declare-fun d!1248730 () Bool)

(declare-fun lt!1507412 () Int)

(assert (=> d!1248730 (>= lt!1507412 0)))

(declare-fun e!2636380 () Int)

(assert (=> d!1248730 (= lt!1507412 e!2636380)))

(declare-fun c!721126 () Bool)

(assert (=> d!1248730 (= c!721126 (is-Nil!46955 shorterInput!51))))

(assert (=> d!1248730 (= (size!34392 shorterInput!51) lt!1507412)))

(declare-fun b!4245019 () Bool)

(assert (=> b!4245019 (= e!2636380 0)))

(declare-fun b!4245020 () Bool)

(assert (=> b!4245020 (= e!2636380 (+ 1 (size!34392 (t!351600 shorterInput!51))))))

(assert (= (and d!1248730 c!721126) b!4245019))

(assert (= (and d!1248730 (not c!721126)) b!4245020))

(declare-fun m!4830345 () Bool)

(assert (=> b!4245020 m!4830345))

(assert (=> b!4244834 d!1248730))

(declare-fun d!1248732 () Bool)

(assert (=> d!1248732 (= (inv!61715 (tag!8805 (rule!11071 (h!52377 addTokens!17)))) (= (mod (str.len (value!246855 (tag!8805 (rule!11071 (h!52377 addTokens!17))))) 2) 0))))

(assert (=> b!4244836 d!1248732))

(declare-fun d!1248734 () Bool)

(declare-fun res!1745265 () Bool)

(declare-fun e!2636381 () Bool)

(assert (=> d!1248734 (=> (not res!1745265) (not e!2636381))))

(assert (=> d!1248734 (= res!1745265 (semiInverseModEq!3462 (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))) (toValue!10701 (transformation!7941 (rule!11071 (h!52377 addTokens!17))))))))

(assert (=> d!1248734 (= (inv!61718 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))) e!2636381)))

(declare-fun b!4245021 () Bool)

(assert (=> b!4245021 (= e!2636381 (equivClasses!3361 (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))) (toValue!10701 (transformation!7941 (rule!11071 (h!52377 addTokens!17))))))))

(assert (= (and d!1248734 res!1745265) b!4245021))

(declare-fun m!4830347 () Bool)

(assert (=> d!1248734 m!4830347))

(declare-fun m!4830349 () Bool)

(assert (=> b!4245021 m!4830349))

(assert (=> b!4244836 d!1248734))

(declare-fun d!1248736 () Bool)

(declare-fun res!1745266 () Bool)

(declare-fun e!2636382 () Bool)

(assert (=> d!1248736 (=> (not res!1745266) (not e!2636382))))

(assert (=> d!1248736 (= res!1745266 (not (isEmpty!27770 (originalCharacters!8285 (h!52377 tokens!581)))))))

(assert (=> d!1248736 (= (inv!61719 (h!52377 tokens!581)) e!2636382)))

(declare-fun b!4245022 () Bool)

(declare-fun res!1745267 () Bool)

(assert (=> b!4245022 (=> (not res!1745267) (not e!2636382))))

(assert (=> b!4245022 (= res!1745267 (= (originalCharacters!8285 (h!52377 tokens!581)) (list!16929 (dynLambda!20133 (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))) (value!246856 (h!52377 tokens!581))))))))

(declare-fun b!4245023 () Bool)

(assert (=> b!4245023 (= e!2636382 (= (size!34393 (h!52377 tokens!581)) (size!34392 (originalCharacters!8285 (h!52377 tokens!581)))))))

(assert (= (and d!1248736 res!1745266) b!4245022))

(assert (= (and b!4245022 res!1745267) b!4245023))

(declare-fun b_lambda!125039 () Bool)

(assert (=> (not b_lambda!125039) (not b!4245022)))

(declare-fun t!351621 () Bool)

(declare-fun tb!255719 () Bool)

(assert (=> (and b!4244833 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581))))) t!351621) tb!255719))

(declare-fun b!4245029 () Bool)

(declare-fun e!2636386 () Bool)

(declare-fun tp!1301717 () Bool)

(assert (=> b!4245029 (= e!2636386 (and (inv!61722 (c!721098 (dynLambda!20133 (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))) (value!246856 (h!52377 tokens!581))))) tp!1301717))))

(declare-fun result!311824 () Bool)

(assert (=> tb!255719 (= result!311824 (and (inv!61723 (dynLambda!20133 (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))) (value!246856 (h!52377 tokens!581)))) e!2636386))))

(assert (= tb!255719 b!4245029))

(declare-fun m!4830351 () Bool)

(assert (=> b!4245029 m!4830351))

(declare-fun m!4830353 () Bool)

(assert (=> tb!255719 m!4830353))

(assert (=> b!4245022 t!351621))

(declare-fun b_and!336233 () Bool)

(assert (= b_and!336227 (and (=> t!351621 result!311824) b_and!336233)))

(declare-fun tb!255721 () Bool)

(declare-fun t!351623 () Bool)

(assert (=> (and b!4244848 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581))))) t!351623) tb!255721))

(declare-fun result!311826 () Bool)

(assert (= result!311826 result!311824))

(assert (=> b!4245022 t!351623))

(declare-fun b_and!336235 () Bool)

(assert (= b_and!336229 (and (=> t!351623 result!311826) b_and!336235)))

(declare-fun t!351625 () Bool)

(declare-fun tb!255723 () Bool)

(assert (=> (and b!4244831 (= (toChars!10560 (transformation!7941 (h!52378 rules!2932))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581))))) t!351625) tb!255723))

(declare-fun result!311828 () Bool)

(assert (= result!311828 result!311824))

(assert (=> b!4245022 t!351625))

(declare-fun b_and!336237 () Bool)

(assert (= b_and!336231 (and (=> t!351625 result!311828) b_and!336237)))

(declare-fun m!4830355 () Bool)

(assert (=> d!1248736 m!4830355))

(declare-fun m!4830357 () Bool)

(assert (=> b!4245022 m!4830357))

(assert (=> b!4245022 m!4830357))

(declare-fun m!4830359 () Bool)

(assert (=> b!4245022 m!4830359))

(declare-fun m!4830361 () Bool)

(assert (=> b!4245023 m!4830361))

(assert (=> b!4244846 d!1248736))

(declare-fun d!1248738 () Bool)

(declare-fun lt!1507418 () Int)

(assert (=> d!1248738 (>= lt!1507418 0)))

(declare-fun e!2636389 () Int)

(assert (=> d!1248738 (= lt!1507418 e!2636389)))

(declare-fun c!721131 () Bool)

(assert (=> d!1248738 (= c!721131 (is-Nil!46957 addTokens!17))))

(assert (=> d!1248738 (= (size!34394 addTokens!17) lt!1507418)))

(declare-fun b!4245034 () Bool)

(assert (=> b!4245034 (= e!2636389 0)))

(declare-fun b!4245035 () Bool)

(assert (=> b!4245035 (= e!2636389 (+ 1 (size!34394 (t!351602 addTokens!17))))))

(assert (= (and d!1248738 c!721131) b!4245034))

(assert (= (and d!1248738 (not c!721131)) b!4245035))

(declare-fun m!4830371 () Bool)

(assert (=> b!4245035 m!4830371))

(assert (=> b!4244835 d!1248738))

(declare-fun b!4245036 () Bool)

(declare-fun e!2636391 () tuple2!44526)

(declare-fun lt!1507419 () Option!10077)

(declare-fun lt!1507421 () tuple2!44526)

(assert (=> b!4245036 (= e!2636391 (tuple2!44527 (Cons!46957 (_1!25398 (v!41030 lt!1507419)) (_1!25397 lt!1507421)) (_2!25397 lt!1507421)))))

(assert (=> b!4245036 (= lt!1507421 (lexList!2042 thiss!21540 rules!2932 (_2!25398 (v!41030 lt!1507419))))))

(declare-fun b!4245037 () Bool)

(declare-fun e!2636392 () Bool)

(declare-fun e!2636390 () Bool)

(assert (=> b!4245037 (= e!2636392 e!2636390)))

(declare-fun res!1745269 () Bool)

(declare-fun lt!1507420 () tuple2!44526)

(assert (=> b!4245037 (= res!1745269 (< (size!34392 (_2!25397 lt!1507420)) (size!34392 longerInput!51)))))

(assert (=> b!4245037 (=> (not res!1745269) (not e!2636390))))

(declare-fun b!4245038 () Bool)

(assert (=> b!4245038 (= e!2636392 (= (_2!25397 lt!1507420) longerInput!51))))

(declare-fun b!4245039 () Bool)

(assert (=> b!4245039 (= e!2636391 (tuple2!44527 Nil!46957 longerInput!51))))

(declare-fun b!4245040 () Bool)

(assert (=> b!4245040 (= e!2636390 (not (isEmpty!27771 (_1!25397 lt!1507420))))))

(declare-fun d!1248742 () Bool)

(assert (=> d!1248742 e!2636392))

(declare-fun c!721133 () Bool)

(assert (=> d!1248742 (= c!721133 (> (size!34394 (_1!25397 lt!1507420)) 0))))

(assert (=> d!1248742 (= lt!1507420 e!2636391)))

(declare-fun c!721132 () Bool)

(assert (=> d!1248742 (= c!721132 (is-Some!10076 lt!1507419))))

(assert (=> d!1248742 (= lt!1507419 (maxPrefix!4494 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1248742 (= (lexList!2042 thiss!21540 rules!2932 longerInput!51) lt!1507420)))

(assert (= (and d!1248742 c!721132) b!4245036))

(assert (= (and d!1248742 (not c!721132)) b!4245039))

(assert (= (and d!1248742 c!721133) b!4245037))

(assert (= (and d!1248742 (not c!721133)) b!4245038))

(assert (= (and b!4245037 res!1745269) b!4245040))

(declare-fun m!4830373 () Bool)

(assert (=> b!4245036 m!4830373))

(declare-fun m!4830375 () Bool)

(assert (=> b!4245037 m!4830375))

(assert (=> b!4245037 m!4830199))

(declare-fun m!4830377 () Bool)

(assert (=> b!4245040 m!4830377))

(declare-fun m!4830379 () Bool)

(assert (=> d!1248742 m!4830379))

(assert (=> d!1248742 m!4830187))

(assert (=> b!4244847 d!1248742))

(declare-fun b!4245093 () Bool)

(declare-fun res!1745297 () Bool)

(declare-fun e!2636421 () Bool)

(assert (=> b!4245093 (=> (not res!1745297) (not e!2636421))))

(declare-fun lt!1507444 () Option!10077)

(declare-fun get!15262 (Option!10077) tuple2!44528)

(declare-fun apply!10761 (TokenValueInjection!15770 BalanceConc!27898) TokenValue!8171)

(declare-fun seqFromList!5821 (List!47079) BalanceConc!27898)

(assert (=> b!4245093 (= res!1745297 (= (value!246856 (_1!25398 (get!15262 lt!1507444))) (apply!10761 (transformation!7941 (rule!11071 (_1!25398 (get!15262 lt!1507444)))) (seqFromList!5821 (originalCharacters!8285 (_1!25398 (get!15262 lt!1507444)))))))))

(declare-fun d!1248744 () Bool)

(declare-fun e!2636420 () Bool)

(assert (=> d!1248744 e!2636420))

(declare-fun res!1745293 () Bool)

(assert (=> d!1248744 (=> res!1745293 e!2636420)))

(declare-fun isEmpty!27776 (Option!10077) Bool)

(assert (=> d!1248744 (= res!1745293 (isEmpty!27776 lt!1507444))))

(declare-fun e!2636422 () Option!10077)

(assert (=> d!1248744 (= lt!1507444 e!2636422)))

(declare-fun c!721149 () Bool)

(assert (=> d!1248744 (= c!721149 (and (is-Cons!46958 rules!2932) (is-Nil!46958 (t!351603 rules!2932))))))

(declare-datatypes ((Unit!66007 0))(
  ( (Unit!66008) )
))
(declare-fun lt!1507440 () Unit!66007)

(declare-fun lt!1507441 () Unit!66007)

(assert (=> d!1248744 (= lt!1507440 lt!1507441)))

(declare-fun isPrefix!4734 (List!47079 List!47079) Bool)

(assert (=> d!1248744 (isPrefix!4734 shorterInput!51 shorterInput!51)))

(declare-fun lemmaIsPrefixRefl!3131 (List!47079 List!47079) Unit!66007)

(assert (=> d!1248744 (= lt!1507441 (lemmaIsPrefixRefl!3131 shorterInput!51 shorterInput!51))))

(declare-fun rulesValidInductive!2983 (LexerInterface!7536 List!47082) Bool)

(assert (=> d!1248744 (rulesValidInductive!2983 thiss!21540 rules!2932)))

(assert (=> d!1248744 (= (maxPrefix!4494 thiss!21540 rules!2932 shorterInput!51) lt!1507444)))

(declare-fun b!4245094 () Bool)

(declare-fun call!293893 () Option!10077)

(assert (=> b!4245094 (= e!2636422 call!293893)))

(declare-fun bm!293888 () Bool)

(declare-fun maxPrefixOneRule!3459 (LexerInterface!7536 Rule!15682 List!47079) Option!10077)

(assert (=> bm!293888 (= call!293893 (maxPrefixOneRule!3459 thiss!21540 (h!52378 rules!2932) shorterInput!51))))

(declare-fun b!4245095 () Bool)

(declare-fun res!1745295 () Bool)

(assert (=> b!4245095 (=> (not res!1745295) (not e!2636421))))

(assert (=> b!4245095 (= res!1745295 (< (size!34392 (_2!25398 (get!15262 lt!1507444))) (size!34392 shorterInput!51)))))

(declare-fun b!4245096 () Bool)

(declare-fun res!1745296 () Bool)

(assert (=> b!4245096 (=> (not res!1745296) (not e!2636421))))

(declare-fun matchR!6456 (Regex!12846 List!47079) Bool)

(declare-fun charsOf!5291 (Token!14508) BalanceConc!27898)

(assert (=> b!4245096 (= res!1745296 (matchR!6456 (regex!7941 (rule!11071 (_1!25398 (get!15262 lt!1507444)))) (list!16929 (charsOf!5291 (_1!25398 (get!15262 lt!1507444))))))))

(declare-fun b!4245097 () Bool)

(declare-fun res!1745298 () Bool)

(assert (=> b!4245097 (=> (not res!1745298) (not e!2636421))))

(declare-fun ++!11958 (List!47079 List!47079) List!47079)

(assert (=> b!4245097 (= res!1745298 (= (++!11958 (list!16929 (charsOf!5291 (_1!25398 (get!15262 lt!1507444)))) (_2!25398 (get!15262 lt!1507444))) shorterInput!51))))

(declare-fun b!4245098 () Bool)

(assert (=> b!4245098 (= e!2636420 e!2636421)))

(declare-fun res!1745292 () Bool)

(assert (=> b!4245098 (=> (not res!1745292) (not e!2636421))))

(declare-fun isDefined!7449 (Option!10077) Bool)

(assert (=> b!4245098 (= res!1745292 (isDefined!7449 lt!1507444))))

(declare-fun b!4245099 () Bool)

(declare-fun res!1745294 () Bool)

(assert (=> b!4245099 (=> (not res!1745294) (not e!2636421))))

(assert (=> b!4245099 (= res!1745294 (= (list!16929 (charsOf!5291 (_1!25398 (get!15262 lt!1507444)))) (originalCharacters!8285 (_1!25398 (get!15262 lt!1507444)))))))

(declare-fun b!4245100 () Bool)

(declare-fun lt!1507442 () Option!10077)

(declare-fun lt!1507443 () Option!10077)

(assert (=> b!4245100 (= e!2636422 (ite (and (is-None!10076 lt!1507442) (is-None!10076 lt!1507443)) None!10076 (ite (is-None!10076 lt!1507443) lt!1507442 (ite (is-None!10076 lt!1507442) lt!1507443 (ite (>= (size!34393 (_1!25398 (v!41030 lt!1507442))) (size!34393 (_1!25398 (v!41030 lt!1507443)))) lt!1507442 lt!1507443)))))))

(assert (=> b!4245100 (= lt!1507442 call!293893)))

(assert (=> b!4245100 (= lt!1507443 (maxPrefix!4494 thiss!21540 (t!351603 rules!2932) shorterInput!51))))

(declare-fun b!4245101 () Bool)

(declare-fun contains!9740 (List!47082 Rule!15682) Bool)

(assert (=> b!4245101 (= e!2636421 (contains!9740 rules!2932 (rule!11071 (_1!25398 (get!15262 lt!1507444)))))))

(assert (= (and d!1248744 c!721149) b!4245094))

(assert (= (and d!1248744 (not c!721149)) b!4245100))

(assert (= (or b!4245094 b!4245100) bm!293888))

(assert (= (and d!1248744 (not res!1745293)) b!4245098))

(assert (= (and b!4245098 res!1745292) b!4245099))

(assert (= (and b!4245099 res!1745294) b!4245095))

(assert (= (and b!4245095 res!1745295) b!4245097))

(assert (= (and b!4245097 res!1745298) b!4245093))

(assert (= (and b!4245093 res!1745297) b!4245096))

(assert (= (and b!4245096 res!1745296) b!4245101))

(declare-fun m!4830405 () Bool)

(assert (=> b!4245098 m!4830405))

(declare-fun m!4830407 () Bool)

(assert (=> b!4245099 m!4830407))

(declare-fun m!4830409 () Bool)

(assert (=> b!4245099 m!4830409))

(assert (=> b!4245099 m!4830409))

(declare-fun m!4830411 () Bool)

(assert (=> b!4245099 m!4830411))

(assert (=> b!4245095 m!4830407))

(declare-fun m!4830413 () Bool)

(assert (=> b!4245095 m!4830413))

(assert (=> b!4245095 m!4830201))

(assert (=> b!4245093 m!4830407))

(declare-fun m!4830415 () Bool)

(assert (=> b!4245093 m!4830415))

(assert (=> b!4245093 m!4830415))

(declare-fun m!4830417 () Bool)

(assert (=> b!4245093 m!4830417))

(declare-fun m!4830419 () Bool)

(assert (=> d!1248744 m!4830419))

(declare-fun m!4830421 () Bool)

(assert (=> d!1248744 m!4830421))

(declare-fun m!4830423 () Bool)

(assert (=> d!1248744 m!4830423))

(declare-fun m!4830425 () Bool)

(assert (=> d!1248744 m!4830425))

(assert (=> b!4245096 m!4830407))

(assert (=> b!4245096 m!4830409))

(assert (=> b!4245096 m!4830409))

(assert (=> b!4245096 m!4830411))

(assert (=> b!4245096 m!4830411))

(declare-fun m!4830427 () Bool)

(assert (=> b!4245096 m!4830427))

(declare-fun m!4830429 () Bool)

(assert (=> bm!293888 m!4830429))

(assert (=> b!4245097 m!4830407))

(assert (=> b!4245097 m!4830409))

(assert (=> b!4245097 m!4830409))

(assert (=> b!4245097 m!4830411))

(assert (=> b!4245097 m!4830411))

(declare-fun m!4830431 () Bool)

(assert (=> b!4245097 m!4830431))

(assert (=> b!4245101 m!4830407))

(declare-fun m!4830433 () Bool)

(assert (=> b!4245101 m!4830433))

(declare-fun m!4830435 () Bool)

(assert (=> b!4245100 m!4830435))

(assert (=> b!4244849 d!1248744))

(declare-fun b!4245106 () Bool)

(declare-fun res!1745308 () Bool)

(declare-fun e!2636426 () Bool)

(assert (=> b!4245106 (=> (not res!1745308) (not e!2636426))))

(declare-fun lt!1507449 () Option!10077)

(assert (=> b!4245106 (= res!1745308 (= (value!246856 (_1!25398 (get!15262 lt!1507449))) (apply!10761 (transformation!7941 (rule!11071 (_1!25398 (get!15262 lt!1507449)))) (seqFromList!5821 (originalCharacters!8285 (_1!25398 (get!15262 lt!1507449)))))))))

(declare-fun d!1248760 () Bool)

(declare-fun e!2636425 () Bool)

(assert (=> d!1248760 e!2636425))

(declare-fun res!1745304 () Bool)

(assert (=> d!1248760 (=> res!1745304 e!2636425)))

(assert (=> d!1248760 (= res!1745304 (isEmpty!27776 lt!1507449))))

(declare-fun e!2636427 () Option!10077)

(assert (=> d!1248760 (= lt!1507449 e!2636427)))

(declare-fun c!721150 () Bool)

(assert (=> d!1248760 (= c!721150 (and (is-Cons!46958 rules!2932) (is-Nil!46958 (t!351603 rules!2932))))))

(declare-fun lt!1507445 () Unit!66007)

(declare-fun lt!1507446 () Unit!66007)

(assert (=> d!1248760 (= lt!1507445 lt!1507446)))

(assert (=> d!1248760 (isPrefix!4734 longerInput!51 longerInput!51)))

(assert (=> d!1248760 (= lt!1507446 (lemmaIsPrefixRefl!3131 longerInput!51 longerInput!51))))

(assert (=> d!1248760 (rulesValidInductive!2983 thiss!21540 rules!2932)))

(assert (=> d!1248760 (= (maxPrefix!4494 thiss!21540 rules!2932 longerInput!51) lt!1507449)))

(declare-fun b!4245107 () Bool)

(declare-fun call!293894 () Option!10077)

(assert (=> b!4245107 (= e!2636427 call!293894)))

(declare-fun bm!293889 () Bool)

(assert (=> bm!293889 (= call!293894 (maxPrefixOneRule!3459 thiss!21540 (h!52378 rules!2932) longerInput!51))))

(declare-fun b!4245108 () Bool)

(declare-fun res!1745306 () Bool)

(assert (=> b!4245108 (=> (not res!1745306) (not e!2636426))))

(assert (=> b!4245108 (= res!1745306 (< (size!34392 (_2!25398 (get!15262 lt!1507449))) (size!34392 longerInput!51)))))

(declare-fun b!4245109 () Bool)

(declare-fun res!1745307 () Bool)

(assert (=> b!4245109 (=> (not res!1745307) (not e!2636426))))

(assert (=> b!4245109 (= res!1745307 (matchR!6456 (regex!7941 (rule!11071 (_1!25398 (get!15262 lt!1507449)))) (list!16929 (charsOf!5291 (_1!25398 (get!15262 lt!1507449))))))))

(declare-fun b!4245110 () Bool)

(declare-fun res!1745309 () Bool)

(assert (=> b!4245110 (=> (not res!1745309) (not e!2636426))))

(assert (=> b!4245110 (= res!1745309 (= (++!11958 (list!16929 (charsOf!5291 (_1!25398 (get!15262 lt!1507449)))) (_2!25398 (get!15262 lt!1507449))) longerInput!51))))

(declare-fun b!4245111 () Bool)

(assert (=> b!4245111 (= e!2636425 e!2636426)))

(declare-fun res!1745303 () Bool)

(assert (=> b!4245111 (=> (not res!1745303) (not e!2636426))))

(assert (=> b!4245111 (= res!1745303 (isDefined!7449 lt!1507449))))

(declare-fun b!4245112 () Bool)

(declare-fun res!1745305 () Bool)

(assert (=> b!4245112 (=> (not res!1745305) (not e!2636426))))

(assert (=> b!4245112 (= res!1745305 (= (list!16929 (charsOf!5291 (_1!25398 (get!15262 lt!1507449)))) (originalCharacters!8285 (_1!25398 (get!15262 lt!1507449)))))))

(declare-fun b!4245113 () Bool)

(declare-fun lt!1507447 () Option!10077)

(declare-fun lt!1507448 () Option!10077)

(assert (=> b!4245113 (= e!2636427 (ite (and (is-None!10076 lt!1507447) (is-None!10076 lt!1507448)) None!10076 (ite (is-None!10076 lt!1507448) lt!1507447 (ite (is-None!10076 lt!1507447) lt!1507448 (ite (>= (size!34393 (_1!25398 (v!41030 lt!1507447))) (size!34393 (_1!25398 (v!41030 lt!1507448)))) lt!1507447 lt!1507448)))))))

(assert (=> b!4245113 (= lt!1507447 call!293894)))

(assert (=> b!4245113 (= lt!1507448 (maxPrefix!4494 thiss!21540 (t!351603 rules!2932) longerInput!51))))

(declare-fun b!4245114 () Bool)

(assert (=> b!4245114 (= e!2636426 (contains!9740 rules!2932 (rule!11071 (_1!25398 (get!15262 lt!1507449)))))))

(assert (= (and d!1248760 c!721150) b!4245107))

(assert (= (and d!1248760 (not c!721150)) b!4245113))

(assert (= (or b!4245107 b!4245113) bm!293889))

(assert (= (and d!1248760 (not res!1745304)) b!4245111))

(assert (= (and b!4245111 res!1745303) b!4245112))

(assert (= (and b!4245112 res!1745305) b!4245108))

(assert (= (and b!4245108 res!1745306) b!4245110))

(assert (= (and b!4245110 res!1745309) b!4245106))

(assert (= (and b!4245106 res!1745308) b!4245109))

(assert (= (and b!4245109 res!1745307) b!4245114))

(declare-fun m!4830437 () Bool)

(assert (=> b!4245111 m!4830437))

(declare-fun m!4830439 () Bool)

(assert (=> b!4245112 m!4830439))

(declare-fun m!4830441 () Bool)

(assert (=> b!4245112 m!4830441))

(assert (=> b!4245112 m!4830441))

(declare-fun m!4830443 () Bool)

(assert (=> b!4245112 m!4830443))

(assert (=> b!4245108 m!4830439))

(declare-fun m!4830445 () Bool)

(assert (=> b!4245108 m!4830445))

(assert (=> b!4245108 m!4830199))

(assert (=> b!4245106 m!4830439))

(declare-fun m!4830447 () Bool)

(assert (=> b!4245106 m!4830447))

(assert (=> b!4245106 m!4830447))

(declare-fun m!4830449 () Bool)

(assert (=> b!4245106 m!4830449))

(declare-fun m!4830451 () Bool)

(assert (=> d!1248760 m!4830451))

(declare-fun m!4830453 () Bool)

(assert (=> d!1248760 m!4830453))

(declare-fun m!4830455 () Bool)

(assert (=> d!1248760 m!4830455))

(assert (=> d!1248760 m!4830425))

(assert (=> b!4245109 m!4830439))

(assert (=> b!4245109 m!4830441))

(assert (=> b!4245109 m!4830441))

(assert (=> b!4245109 m!4830443))

(assert (=> b!4245109 m!4830443))

(declare-fun m!4830457 () Bool)

(assert (=> b!4245109 m!4830457))

(declare-fun m!4830459 () Bool)

(assert (=> bm!293889 m!4830459))

(assert (=> b!4245110 m!4830439))

(assert (=> b!4245110 m!4830441))

(assert (=> b!4245110 m!4830441))

(assert (=> b!4245110 m!4830443))

(assert (=> b!4245110 m!4830443))

(declare-fun m!4830461 () Bool)

(assert (=> b!4245110 m!4830461))

(assert (=> b!4245114 m!4830439))

(declare-fun m!4830463 () Bool)

(assert (=> b!4245114 m!4830463))

(declare-fun m!4830465 () Bool)

(assert (=> b!4245113 m!4830465))

(assert (=> b!4244849 d!1248760))

(declare-fun d!1248762 () Bool)

(assert (=> d!1248762 (= (isEmpty!27771 addTokens!17) (is-Nil!46957 addTokens!17))))

(assert (=> b!4244838 d!1248762))

(declare-fun b!4245131 () Bool)

(declare-fun e!2636432 () Bool)

(declare-fun tp!1301728 () Bool)

(assert (=> b!4245131 (= e!2636432 tp!1301728)))

(declare-fun b!4245132 () Bool)

(declare-fun tp!1301732 () Bool)

(declare-fun tp!1301730 () Bool)

(assert (=> b!4245132 (= e!2636432 (and tp!1301732 tp!1301730))))

(declare-fun b!4245130 () Bool)

(declare-fun tp!1301729 () Bool)

(declare-fun tp!1301731 () Bool)

(assert (=> b!4245130 (= e!2636432 (and tp!1301729 tp!1301731))))

(declare-fun b!4245129 () Bool)

(assert (=> b!4245129 (= e!2636432 tp_is_empty!22683)))

(assert (=> b!4244839 (= tp!1301646 e!2636432)))

(assert (= (and b!4244839 (is-ElementMatch!12846 (regex!7941 (rule!11071 (h!52377 tokens!581))))) b!4245129))

(assert (= (and b!4244839 (is-Concat!21018 (regex!7941 (rule!11071 (h!52377 tokens!581))))) b!4245130))

(assert (= (and b!4244839 (is-Star!12846 (regex!7941 (rule!11071 (h!52377 tokens!581))))) b!4245131))

(assert (= (and b!4244839 (is-Union!12846 (regex!7941 (rule!11071 (h!52377 tokens!581))))) b!4245132))

(declare-fun b!4245135 () Bool)

(declare-fun e!2636433 () Bool)

(declare-fun tp!1301733 () Bool)

(assert (=> b!4245135 (= e!2636433 tp!1301733)))

(declare-fun b!4245136 () Bool)

(declare-fun tp!1301737 () Bool)

(declare-fun tp!1301735 () Bool)

(assert (=> b!4245136 (= e!2636433 (and tp!1301737 tp!1301735))))

(declare-fun b!4245134 () Bool)

(declare-fun tp!1301734 () Bool)

(declare-fun tp!1301736 () Bool)

(assert (=> b!4245134 (= e!2636433 (and tp!1301734 tp!1301736))))

(declare-fun b!4245133 () Bool)

(assert (=> b!4245133 (= e!2636433 tp_is_empty!22683)))

(assert (=> b!4244852 (= tp!1301648 e!2636433)))

(assert (= (and b!4244852 (is-ElementMatch!12846 (regex!7941 (h!52378 rules!2932)))) b!4245133))

(assert (= (and b!4244852 (is-Concat!21018 (regex!7941 (h!52378 rules!2932)))) b!4245134))

(assert (= (and b!4244852 (is-Star!12846 (regex!7941 (h!52378 rules!2932)))) b!4245135))

(assert (= (and b!4244852 (is-Union!12846 (regex!7941 (h!52378 rules!2932)))) b!4245136))

(declare-fun b!4245154 () Bool)

(declare-fun b_free!125923 () Bool)

(declare-fun b_next!126627 () Bool)

(assert (=> b!4245154 (= b_free!125923 (not b_next!126627))))

(declare-fun tp!1301751 () Bool)

(declare-fun b_and!336239 () Bool)

(assert (=> b!4245154 (= tp!1301751 b_and!336239)))

(declare-fun b_free!125925 () Bool)

(declare-fun b_next!126629 () Bool)

(assert (=> b!4245154 (= b_free!125925 (not b_next!126629))))

(declare-fun t!351627 () Bool)

(declare-fun tb!255725 () Bool)

(assert (=> (and b!4245154 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 (t!351602 addTokens!17))))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17))))) t!351627) tb!255725))

(declare-fun result!311834 () Bool)

(assert (= result!311834 result!311816))

(assert (=> b!4244976 t!351627))

(declare-fun tb!255727 () Bool)

(declare-fun t!351629 () Bool)

(assert (=> (and b!4245154 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 (t!351602 addTokens!17))))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581))))) t!351629) tb!255727))

(declare-fun result!311836 () Bool)

(assert (= result!311836 result!311824))

(assert (=> b!4245022 t!351629))

(declare-fun b_and!336241 () Bool)

(declare-fun tp!1301748 () Bool)

(assert (=> b!4245154 (= tp!1301748 (and (=> t!351627 result!311834) (=> t!351629 result!311836) b_and!336241))))

(declare-fun e!2636449 () Bool)

(assert (=> b!4245154 (= e!2636449 (and tp!1301751 tp!1301748))))

(declare-fun tp!1301749 () Bool)

(declare-fun e!2636453 () Bool)

(declare-fun e!2636452 () Bool)

(declare-fun b!4245152 () Bool)

(assert (=> b!4245152 (= e!2636453 (and (inv!21 (value!246856 (h!52377 (t!351602 addTokens!17)))) e!2636452 tp!1301749))))

(declare-fun e!2636451 () Bool)

(assert (=> b!4244841 (= tp!1301647 e!2636451)))

(declare-fun b!4245153 () Bool)

(declare-fun tp!1301752 () Bool)

(assert (=> b!4245153 (= e!2636452 (and tp!1301752 (inv!61715 (tag!8805 (rule!11071 (h!52377 (t!351602 addTokens!17))))) (inv!61718 (transformation!7941 (rule!11071 (h!52377 (t!351602 addTokens!17))))) e!2636449))))

(declare-fun b!4245151 () Bool)

(declare-fun tp!1301750 () Bool)

(assert (=> b!4245151 (= e!2636451 (and (inv!61719 (h!52377 (t!351602 addTokens!17))) e!2636453 tp!1301750))))

(assert (= b!4245153 b!4245154))

(assert (= b!4245152 b!4245153))

(assert (= b!4245151 b!4245152))

(assert (= (and b!4244841 (is-Cons!46957 (t!351602 addTokens!17))) b!4245151))

(declare-fun m!4830479 () Bool)

(assert (=> b!4245152 m!4830479))

(declare-fun m!4830481 () Bool)

(assert (=> b!4245153 m!4830481))

(declare-fun m!4830483 () Bool)

(assert (=> b!4245153 m!4830483))

(declare-fun m!4830485 () Bool)

(assert (=> b!4245151 m!4830485))

(declare-fun b!4245159 () Bool)

(declare-fun e!2636456 () Bool)

(declare-fun tp!1301755 () Bool)

(assert (=> b!4245159 (= e!2636456 (and tp_is_empty!22683 tp!1301755))))

(assert (=> b!4244851 (= tp!1301656 e!2636456)))

(assert (= (and b!4244851 (is-Cons!46955 (t!351600 longerInput!51))) b!4245159))

(declare-fun b!4245162 () Bool)

(declare-fun e!2636458 () Bool)

(declare-fun tp!1301756 () Bool)

(assert (=> b!4245162 (= e!2636458 (and tp_is_empty!22683 tp!1301756))))

(assert (=> b!4244853 (= tp!1301652 e!2636458)))

(assert (= (and b!4244853 (is-Cons!46955 (t!351600 shorterInput!51))) b!4245162))

(declare-fun b!4245163 () Bool)

(declare-fun e!2636459 () Bool)

(declare-fun tp!1301757 () Bool)

(assert (=> b!4245163 (= e!2636459 (and tp_is_empty!22683 tp!1301757))))

(assert (=> b!4244842 (= tp!1301643 e!2636459)))

(assert (= (and b!4244842 (is-Cons!46955 (t!351600 suffix!1262))) b!4245163))

(declare-fun b!4245164 () Bool)

(declare-fun e!2636460 () Bool)

(declare-fun tp!1301758 () Bool)

(assert (=> b!4245164 (= e!2636460 (and tp_is_empty!22683 tp!1301758))))

(assert (=> b!4244844 (= tp!1301654 e!2636460)))

(assert (= (and b!4244844 (is-Cons!46955 (originalCharacters!8285 (h!52377 addTokens!17)))) b!4245164))

(declare-fun b!4245165 () Bool)

(declare-fun e!2636461 () Bool)

(declare-fun tp!1301759 () Bool)

(assert (=> b!4245165 (= e!2636461 (and tp_is_empty!22683 tp!1301759))))

(assert (=> b!4244845 (= tp!1301658 e!2636461)))

(assert (= (and b!4244845 (is-Cons!46955 (originalCharacters!8285 (h!52377 tokens!581)))) b!4245165))

(declare-fun b!4245168 () Bool)

(declare-fun e!2636462 () Bool)

(declare-fun tp!1301760 () Bool)

(assert (=> b!4245168 (= e!2636462 tp!1301760)))

(declare-fun b!4245169 () Bool)

(declare-fun tp!1301764 () Bool)

(declare-fun tp!1301762 () Bool)

(assert (=> b!4245169 (= e!2636462 (and tp!1301764 tp!1301762))))

(declare-fun b!4245167 () Bool)

(declare-fun tp!1301761 () Bool)

(declare-fun tp!1301763 () Bool)

(assert (=> b!4245167 (= e!2636462 (and tp!1301761 tp!1301763))))

(declare-fun b!4245166 () Bool)

(assert (=> b!4245166 (= e!2636462 tp_is_empty!22683)))

(assert (=> b!4244836 (= tp!1301655 e!2636462)))

(assert (= (and b!4244836 (is-ElementMatch!12846 (regex!7941 (rule!11071 (h!52377 addTokens!17))))) b!4245166))

(assert (= (and b!4244836 (is-Concat!21018 (regex!7941 (rule!11071 (h!52377 addTokens!17))))) b!4245167))

(assert (= (and b!4244836 (is-Star!12846 (regex!7941 (rule!11071 (h!52377 addTokens!17))))) b!4245168))

(assert (= (and b!4244836 (is-Union!12846 (regex!7941 (rule!11071 (h!52377 addTokens!17))))) b!4245169))

(declare-fun b!4245175 () Bool)

(declare-fun b_free!125927 () Bool)

(declare-fun b_next!126631 () Bool)

(assert (=> b!4245175 (= b_free!125927 (not b_next!126631))))

(declare-fun tp!1301768 () Bool)

(declare-fun b_and!336243 () Bool)

(assert (=> b!4245175 (= tp!1301768 b_and!336243)))

(declare-fun b_free!125929 () Bool)

(declare-fun b_next!126633 () Bool)

(assert (=> b!4245175 (= b_free!125929 (not b_next!126633))))

(declare-fun tb!255729 () Bool)

(declare-fun t!351631 () Bool)

(assert (=> (and b!4245175 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 (t!351602 tokens!581))))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17))))) t!351631) tb!255729))

(declare-fun result!311840 () Bool)

(assert (= result!311840 result!311816))

(assert (=> b!4244976 t!351631))

(declare-fun t!351633 () Bool)

(declare-fun tb!255731 () Bool)

(assert (=> (and b!4245175 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 (t!351602 tokens!581))))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581))))) t!351633) tb!255731))

(declare-fun result!311842 () Bool)

(assert (= result!311842 result!311824))

(assert (=> b!4245022 t!351633))

(declare-fun tp!1301765 () Bool)

(declare-fun b_and!336245 () Bool)

(assert (=> b!4245175 (= tp!1301765 (and (=> t!351631 result!311840) (=> t!351633 result!311842) b_and!336245))))

(declare-fun e!2636465 () Bool)

(assert (=> b!4245175 (= e!2636465 (and tp!1301768 tp!1301765))))

(declare-fun e!2636468 () Bool)

(declare-fun e!2636469 () Bool)

(declare-fun b!4245173 () Bool)

(declare-fun tp!1301766 () Bool)

(assert (=> b!4245173 (= e!2636469 (and (inv!21 (value!246856 (h!52377 (t!351602 tokens!581)))) e!2636468 tp!1301766))))

(declare-fun e!2636467 () Bool)

(assert (=> b!4244846 (= tp!1301657 e!2636467)))

(declare-fun b!4245174 () Bool)

(declare-fun tp!1301769 () Bool)

(assert (=> b!4245174 (= e!2636468 (and tp!1301769 (inv!61715 (tag!8805 (rule!11071 (h!52377 (t!351602 tokens!581))))) (inv!61718 (transformation!7941 (rule!11071 (h!52377 (t!351602 tokens!581))))) e!2636465))))

(declare-fun tp!1301767 () Bool)

(declare-fun b!4245172 () Bool)

(assert (=> b!4245172 (= e!2636467 (and (inv!61719 (h!52377 (t!351602 tokens!581))) e!2636469 tp!1301767))))

(assert (= b!4245174 b!4245175))

(assert (= b!4245173 b!4245174))

(assert (= b!4245172 b!4245173))

(assert (= (and b!4244846 (is-Cons!46957 (t!351602 tokens!581))) b!4245172))

(declare-fun m!4830491 () Bool)

(assert (=> b!4245173 m!4830491))

(declare-fun m!4830493 () Bool)

(assert (=> b!4245174 m!4830493))

(declare-fun m!4830495 () Bool)

(assert (=> b!4245174 m!4830495))

(declare-fun m!4830497 () Bool)

(assert (=> b!4245172 m!4830497))

(declare-fun b!4245189 () Bool)

(declare-fun b_free!125931 () Bool)

(declare-fun b_next!126635 () Bool)

(assert (=> b!4245189 (= b_free!125931 (not b_next!126635))))

(declare-fun tp!1301780 () Bool)

(declare-fun b_and!336253 () Bool)

(assert (=> b!4245189 (= tp!1301780 b_and!336253)))

(declare-fun b_free!125933 () Bool)

(declare-fun b_next!126637 () Bool)

(assert (=> b!4245189 (= b_free!125933 (not b_next!126637))))

(declare-fun t!351641 () Bool)

(declare-fun tb!255739 () Bool)

(assert (=> (and b!4245189 (= (toChars!10560 (transformation!7941 (h!52378 (t!351603 rules!2932)))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17))))) t!351641) tb!255739))

(declare-fun result!311852 () Bool)

(assert (= result!311852 result!311816))

(assert (=> b!4244976 t!351641))

(declare-fun tb!255741 () Bool)

(declare-fun t!351643 () Bool)

(assert (=> (and b!4245189 (= (toChars!10560 (transformation!7941 (h!52378 (t!351603 rules!2932)))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581))))) t!351643) tb!255741))

(declare-fun result!311854 () Bool)

(assert (= result!311854 result!311824))

(assert (=> b!4245022 t!351643))

(declare-fun tp!1301782 () Bool)

(declare-fun b_and!336255 () Bool)

(assert (=> b!4245189 (= tp!1301782 (and (=> t!351641 result!311852) (=> t!351643 result!311854) b_and!336255))))

(declare-fun e!2636481 () Bool)

(assert (=> b!4245189 (= e!2636481 (and tp!1301780 tp!1301782))))

(declare-fun e!2636483 () Bool)

(declare-fun tp!1301781 () Bool)

(declare-fun b!4245188 () Bool)

(assert (=> b!4245188 (= e!2636483 (and tp!1301781 (inv!61715 (tag!8805 (h!52378 (t!351603 rules!2932)))) (inv!61718 (transformation!7941 (h!52378 (t!351603 rules!2932)))) e!2636481))))

(declare-fun b!4245187 () Bool)

(declare-fun e!2636482 () Bool)

(declare-fun tp!1301779 () Bool)

(assert (=> b!4245187 (= e!2636482 (and e!2636483 tp!1301779))))

(assert (=> b!4244837 (= tp!1301651 e!2636482)))

(assert (= b!4245188 b!4245189))

(assert (= b!4245187 b!4245188))

(assert (= (and b!4244837 (is-Cons!46958 (t!351603 rules!2932))) b!4245187))

(declare-fun m!4830511 () Bool)

(assert (=> b!4245188 m!4830511))

(declare-fun m!4830513 () Bool)

(assert (=> b!4245188 m!4830513))

(declare-fun b_lambda!125043 () Bool)

(assert (= b_lambda!125037 (or (and b!4244831 b_free!125909 (= (toChars!10560 (transformation!7941 (h!52378 rules!2932))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))))) (and b!4245154 b_free!125925 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 (t!351602 addTokens!17))))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))))) (and b!4245189 b_free!125933 (= (toChars!10560 (transformation!7941 (h!52378 (t!351603 rules!2932)))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))))) (and b!4244848 b_free!125905) (and b!4245175 b_free!125929 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 (t!351602 tokens!581))))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))))) (and b!4244833 b_free!125901 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))))) b_lambda!125043)))

(declare-fun b_lambda!125045 () Bool)

(assert (= b_lambda!125039 (or (and b!4245189 b_free!125933 (= (toChars!10560 (transformation!7941 (h!52378 (t!351603 rules!2932)))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))))) (and b!4245154 b_free!125925 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 (t!351602 addTokens!17))))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))))) (and b!4244833 b_free!125901) (and b!4244831 b_free!125909 (= (toChars!10560 (transformation!7941 (h!52378 rules!2932))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))))) (and b!4244848 b_free!125905 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 addTokens!17)))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))))) (and b!4245175 b_free!125929 (= (toChars!10560 (transformation!7941 (rule!11071 (h!52377 (t!351602 tokens!581))))) (toChars!10560 (transformation!7941 (rule!11071 (h!52377 tokens!581)))))) b_lambda!125045)))

(push 1)

(assert (not d!1248708))

(assert (not b_next!126631))

(assert b_and!336233)

(assert (not b!4245021))

(assert (not b!4244925))

(assert (not b!4245167))

(assert (not d!1248712))

(assert (not b!4245022))

(assert (not b!4245037))

(assert (not b!4244965))

(assert (not b!4245010))

(assert b_and!336205)

(assert (not b!4245174))

(assert (not b!4245040))

(assert (not d!1248736))

(assert (not b!4245101))

(assert (not b_lambda!125045))

(assert (not b_next!126605))

(assert (not b!4245009))

(assert (not b!4245036))

(assert (not b!4244966))

(assert (not b_next!126637))

(assert (not b!4245114))

(assert (not b!4245023))

(assert (not b!4245172))

(assert (not b!4244970))

(assert (not b!4245096))

(assert (not b!4245152))

(assert (not b!4245163))

(assert (not b!4245135))

(assert (not b!4245100))

(assert (not d!1248744))

(assert (not b!4244999))

(assert (not b!4245159))

(assert (not b!4245109))

(assert (not d!1248690))

(assert (not b!4245131))

(assert (not b!4245106))

(assert b_and!336243)

(assert (not d!1248692))

(assert (not bm!293889))

(assert b_and!336239)

(assert (not b_next!126635))

(assert (not tb!255719))

(assert (not b!4245164))

(assert (not b!4245095))

(assert (not b!4245112))

(assert b_and!336245)

(assert (not b!4245111))

(assert (not b!4245113))

(assert (not d!1248734))

(assert (not b!4245018))

(assert (not b!4244952))

(assert (not d!1248716))

(assert (not b!4245097))

(assert (not b!4245099))

(assert b_and!336255)

(assert (not b!4245168))

(assert (not b!4245187))

(assert (not b_next!126627))

(assert (not b!4245001))

(assert b_and!336253)

(assert (not b!4245173))

(assert (not tb!255713))

(assert (not b!4245029))

(assert (not d!1248760))

(assert (not b!4245098))

(assert (not bm!293888))

(assert b_and!336201)

(assert (not b!4245132))

(assert b_and!336241)

(assert (not b!4245134))

(assert (not b_next!126603))

(assert (not b_next!126607))

(assert (not b!4244951))

(assert (not b_next!126629))

(assert (not b!4244976))

(assert (not b!4245165))

(assert (not d!1248742))

(assert (not b!4244977))

(assert (not b_next!126613))

(assert (not b!4245153))

(assert (not b!4244998))

(assert (not b!4245035))

(assert (not b!4245093))

(assert (not b!4245151))

(assert (not b_lambda!125043))

(assert (not b!4245108))

(assert tp_is_empty!22683)

(assert (not b!4245188))

(assert (not b!4244955))

(assert (not b!4244982))

(assert (not d!1248718))

(assert (not b!4245136))

(assert b_and!336197)

(assert (not b_next!126611))

(assert b_and!336235)

(assert (not b!4245020))

(assert (not b!4245169))

(assert (not b!4245130))

(assert (not b_next!126633))

(assert (not b!4245110))

(assert (not b!4244971))

(assert (not b!4245012))

(assert (not b_next!126609))

(assert b_and!336237)

(assert (not b!4245162))

(check-sat)

(pop 1)

(push 1)

(assert b_and!336205)

(assert (not b_next!126605))

(assert (not b_next!126637))

(assert b_and!336243)

(assert b_and!336239)

(assert (not b_next!126635))

(assert b_and!336245)

(assert b_and!336255)

(assert (not b_next!126629))

(assert (not b_next!126613))

(assert (not b_next!126633))

(assert (not b_next!126609))

(assert b_and!336237)

(assert (not b_next!126631))

(assert b_and!336233)

(assert (not b_next!126627))

(assert b_and!336253)

(assert b_and!336201)

(assert b_and!336241)

(assert (not b_next!126603))

(assert (not b_next!126607))

(assert b_and!336197)

(assert (not b_next!126611))

(assert b_and!336235)

(check-sat)

(pop 1)

