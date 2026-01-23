; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537210 () Bool)

(assert start!537210)

(declare-fun b!5095769 () Bool)

(declare-fun b_free!133427 () Bool)

(declare-fun b_next!134217 () Bool)

(assert (=> b!5095769 (= b_free!133427 (not b_next!134217))))

(declare-fun tp!1420919 () Bool)

(declare-fun b_and!350311 () Bool)

(assert (=> b!5095769 (= tp!1420919 b_and!350311)))

(declare-fun b_free!133429 () Bool)

(declare-fun b_next!134219 () Bool)

(assert (=> b!5095769 (= b_free!133429 (not b_next!134219))))

(declare-fun tp!1420922 () Bool)

(declare-fun b_and!350313 () Bool)

(assert (=> b!5095769 (= tp!1420922 b_and!350313)))

(declare-fun b!5095764 () Bool)

(declare-fun res!2168743 () Bool)

(declare-fun e!3178038 () Bool)

(assert (=> b!5095764 (=> (not res!2168743) (not e!3178038))))

(declare-datatypes ((List!58761 0))(
  ( (Nil!58637) (Cons!58637 (h!65085 (_ BitVec 16)) (t!371716 List!58761)) )
))
(declare-datatypes ((TokenValue!8828 0))(
  ( (FloatLiteralValue!17656 (text!62241 List!58761)) (TokenValueExt!8827 (__x!34945 Int)) (Broken!44140 (value!272932 List!58761)) (Object!8951) (End!8828) (Def!8828) (Underscore!8828) (Match!8828) (Else!8828) (Error!8828) (Case!8828) (If!8828) (Extends!8828) (Abstract!8828) (Class!8828) (Val!8828) (DelimiterValue!17656 (del!8888 List!58761)) (KeywordValue!8834 (value!272933 List!58761)) (CommentValue!17656 (value!272934 List!58761)) (WhitespaceValue!17656 (value!272935 List!58761)) (IndentationValue!8828 (value!272936 List!58761)) (String!67061) (Int32!8828) (Broken!44141 (value!272937 List!58761)) (Boolean!8829) (Unit!149678) (OperatorValue!8831 (op!8888 List!58761)) (IdentifierValue!17656 (value!272938 List!58761)) (IdentifierValue!17657 (value!272939 List!58761)) (WhitespaceValue!17657 (value!272940 List!58761)) (True!17656) (False!17656) (Broken!44142 (value!272941 List!58761)) (Broken!44143 (value!272942 List!58761)) (True!17657) (RightBrace!8828) (RightBracket!8828) (Colon!8828) (Null!8828) (Comma!8828) (LeftBracket!8828) (False!17657) (LeftBrace!8828) (ImaginaryLiteralValue!8828 (text!62242 List!58761)) (StringLiteralValue!26484 (value!272943 List!58761)) (EOFValue!8828 (value!272944 List!58761)) (IdentValue!8828 (value!272945 List!58761)) (DelimiterValue!17657 (value!272946 List!58761)) (DedentValue!8828 (value!272947 List!58761)) (NewLineValue!8828 (value!272948 List!58761)) (IntegerValue!26484 (value!272949 (_ BitVec 32)) (text!62243 List!58761)) (IntegerValue!26485 (value!272950 Int) (text!62244 List!58761)) (Times!8828) (Or!8828) (Equal!8828) (Minus!8828) (Broken!44144 (value!272951 List!58761)) (And!8828) (Div!8828) (LessEqual!8828) (Mod!8828) (Concat!22817) (Not!8828) (Plus!8828) (SpaceValue!8828 (value!272952 List!58761)) (IntegerValue!26486 (value!272953 Int) (text!62245 List!58761)) (StringLiteralValue!26485 (text!62246 List!58761)) (FloatLiteralValue!17657 (text!62247 List!58761)) (BytesLiteralValue!8828 (value!272954 List!58761)) (CommentValue!17657 (value!272955 List!58761)) (StringLiteralValue!26486 (value!272956 List!58761)) (ErrorTokenValue!8828 (msg!8889 List!58761)) )
))
(declare-datatypes ((C!28236 0))(
  ( (C!28237 (val!23770 Int)) )
))
(declare-datatypes ((List!58762 0))(
  ( (Nil!58638) (Cons!58638 (h!65086 C!28236) (t!371717 List!58762)) )
))
(declare-datatypes ((IArray!31433 0))(
  ( (IArray!31434 (innerList!15774 List!58762)) )
))
(declare-datatypes ((Conc!15686 0))(
  ( (Node!15686 (left!43053 Conc!15686) (right!43383 Conc!15686) (csize!31602 Int) (cheight!15897 Int)) (Leaf!26034 (xs!19068 IArray!31433) (csize!31603 Int)) (Empty!15686) )
))
(declare-datatypes ((BalanceConc!30490 0))(
  ( (BalanceConc!30491 (c!875606 Conc!15686)) )
))
(declare-datatypes ((TokenValueInjection!16964 0))(
  ( (TokenValueInjection!16965 (toValue!11537 Int) (toChars!11396 Int)) )
))
(declare-datatypes ((Regex!13989 0))(
  ( (ElementMatch!13989 (c!875607 C!28236)) (Concat!22818 (regOne!28490 Regex!13989) (regTwo!28490 Regex!13989)) (EmptyExpr!13989) (Star!13989 (reg!14318 Regex!13989)) (EmptyLang!13989) (Union!13989 (regOne!28491 Regex!13989) (regTwo!28491 Regex!13989)) )
))
(declare-datatypes ((String!67062 0))(
  ( (String!67063 (value!272957 String)) )
))
(declare-datatypes ((Rule!16828 0))(
  ( (Rule!16829 (regex!8514 Regex!13989) (tag!9378 String!67062) (isSeparator!8514 Bool) (transformation!8514 TokenValueInjection!16964)) )
))
(declare-datatypes ((List!58763 0))(
  ( (Nil!58639) (Cons!58639 (h!65087 Rule!16828) (t!371718 List!58763)) )
))
(declare-fun rulesArg!145 () List!58763)

(declare-fun isEmpty!31741 (List!58763) Bool)

(assert (=> b!5095764 (= res!2168743 (not (isEmpty!31741 rulesArg!145)))))

(declare-fun tp!1420923 () Bool)

(declare-fun e!3178036 () Bool)

(declare-fun e!3178035 () Bool)

(declare-fun b!5095765 () Bool)

(declare-fun inv!78127 (String!67062) Bool)

(declare-fun inv!78129 (TokenValueInjection!16964) Bool)

(assert (=> b!5095765 (= e!3178035 (and tp!1420923 (inv!78127 (tag!9378 (h!65087 rulesArg!145))) (inv!78129 (transformation!8514 (h!65087 rulesArg!145))) e!3178036))))

(declare-fun res!2168742 () Bool)

(assert (=> start!537210 (=> (not res!2168742) (not e!3178038))))

(declare-datatypes ((LexerInterface!8106 0))(
  ( (LexerInterfaceExt!8103 (__x!34946 Int)) (Lexer!8104) )
))
(declare-fun thiss!14775 () LexerInterface!8106)

(get-info :version)

(assert (=> start!537210 (= res!2168742 ((_ is Lexer!8104) thiss!14775))))

(assert (=> start!537210 e!3178038))

(assert (=> start!537210 true))

(declare-fun e!3178034 () Bool)

(assert (=> start!537210 e!3178034))

(declare-fun e!3178039 () Bool)

(assert (=> start!537210 e!3178039))

(declare-fun b!5095766 () Bool)

(declare-fun tp!1420921 () Bool)

(assert (=> b!5095766 (= e!3178034 (and e!3178035 tp!1420921))))

(declare-fun b!5095767 () Bool)

(declare-fun tp_is_empty!37243 () Bool)

(declare-fun tp!1420920 () Bool)

(assert (=> b!5095767 (= e!3178039 (and tp_is_empty!37243 tp!1420920))))

(declare-fun b!5095768 () Bool)

(declare-fun res!2168741 () Bool)

(assert (=> b!5095768 (=> (not res!2168741) (not e!3178038))))

(declare-fun rulesValidInductive!3339 (LexerInterface!8106 List!58763) Bool)

(assert (=> b!5095768 (= res!2168741 (rulesValidInductive!3339 thiss!14775 rulesArg!145))))

(assert (=> b!5095769 (= e!3178036 (and tp!1420919 tp!1420922))))

(declare-fun b!5095770 () Bool)

(assert (=> b!5095770 (= e!3178038 (not (or (and ((_ is Cons!58639) rulesArg!145) ((_ is Nil!58639) (t!371718 rulesArg!145))) ((_ is Cons!58639) rulesArg!145))))))

(declare-fun input!1210 () List!58762)

(declare-fun isPrefix!5410 (List!58762 List!58762) Bool)

(assert (=> b!5095770 (isPrefix!5410 input!1210 input!1210)))

(declare-datatypes ((Unit!149679 0))(
  ( (Unit!149680) )
))
(declare-fun lt!2093772 () Unit!149679)

(declare-fun lemmaIsPrefixRefl!3669 (List!58762 List!58762) Unit!149679)

(assert (=> b!5095770 (= lt!2093772 (lemmaIsPrefixRefl!3669 input!1210 input!1210))))

(assert (= (and start!537210 res!2168742) b!5095768))

(assert (= (and b!5095768 res!2168741) b!5095764))

(assert (= (and b!5095764 res!2168743) b!5095770))

(assert (= b!5095765 b!5095769))

(assert (= b!5095766 b!5095765))

(assert (= (and start!537210 ((_ is Cons!58639) rulesArg!145)) b!5095766))

(assert (= (and start!537210 ((_ is Cons!58638) input!1210)) b!5095767))

(declare-fun m!6153210 () Bool)

(assert (=> b!5095764 m!6153210))

(declare-fun m!6153212 () Bool)

(assert (=> b!5095765 m!6153212))

(declare-fun m!6153214 () Bool)

(assert (=> b!5095765 m!6153214))

(declare-fun m!6153216 () Bool)

(assert (=> b!5095768 m!6153216))

(declare-fun m!6153218 () Bool)

(assert (=> b!5095770 m!6153218))

(declare-fun m!6153220 () Bool)

(assert (=> b!5095770 m!6153220))

(check-sat (not b!5095768) b_and!350311 b_and!350313 (not b!5095765) (not b_next!134219) (not b!5095766) (not b_next!134217) (not b!5095770) tp_is_empty!37243 (not b!5095764) (not b!5095767))
(check-sat b_and!350313 b_and!350311 (not b_next!134217) (not b_next!134219))
(get-model)

(declare-fun d!1649030 () Bool)

(assert (=> d!1649030 (= (isEmpty!31741 rulesArg!145) ((_ is Nil!58639) rulesArg!145))))

(assert (=> b!5095764 d!1649030))

(declare-fun b!5095779 () Bool)

(declare-fun e!3178048 () Bool)

(declare-fun e!3178046 () Bool)

(assert (=> b!5095779 (= e!3178048 e!3178046)))

(declare-fun res!2168753 () Bool)

(assert (=> b!5095779 (=> (not res!2168753) (not e!3178046))))

(assert (=> b!5095779 (= res!2168753 (not ((_ is Nil!58638) input!1210)))))

(declare-fun b!5095780 () Bool)

(declare-fun res!2168754 () Bool)

(assert (=> b!5095780 (=> (not res!2168754) (not e!3178046))))

(declare-fun head!10824 (List!58762) C!28236)

(assert (=> b!5095780 (= res!2168754 (= (head!10824 input!1210) (head!10824 input!1210)))))

(declare-fun d!1649032 () Bool)

(declare-fun e!3178047 () Bool)

(assert (=> d!1649032 e!3178047))

(declare-fun res!2168755 () Bool)

(assert (=> d!1649032 (=> res!2168755 e!3178047)))

(declare-fun lt!2093775 () Bool)

(assert (=> d!1649032 (= res!2168755 (not lt!2093775))))

(assert (=> d!1649032 (= lt!2093775 e!3178048)))

(declare-fun res!2168752 () Bool)

(assert (=> d!1649032 (=> res!2168752 e!3178048)))

(assert (=> d!1649032 (= res!2168752 ((_ is Nil!58638) input!1210))))

(assert (=> d!1649032 (= (isPrefix!5410 input!1210 input!1210) lt!2093775)))

(declare-fun b!5095781 () Bool)

(declare-fun tail!9979 (List!58762) List!58762)

(assert (=> b!5095781 (= e!3178046 (isPrefix!5410 (tail!9979 input!1210) (tail!9979 input!1210)))))

(declare-fun b!5095782 () Bool)

(declare-fun size!39288 (List!58762) Int)

(assert (=> b!5095782 (= e!3178047 (>= (size!39288 input!1210) (size!39288 input!1210)))))

(assert (= (and d!1649032 (not res!2168752)) b!5095779))

(assert (= (and b!5095779 res!2168753) b!5095780))

(assert (= (and b!5095780 res!2168754) b!5095781))

(assert (= (and d!1649032 (not res!2168755)) b!5095782))

(declare-fun m!6153222 () Bool)

(assert (=> b!5095780 m!6153222))

(assert (=> b!5095780 m!6153222))

(declare-fun m!6153224 () Bool)

(assert (=> b!5095781 m!6153224))

(assert (=> b!5095781 m!6153224))

(assert (=> b!5095781 m!6153224))

(assert (=> b!5095781 m!6153224))

(declare-fun m!6153226 () Bool)

(assert (=> b!5095781 m!6153226))

(declare-fun m!6153228 () Bool)

(assert (=> b!5095782 m!6153228))

(assert (=> b!5095782 m!6153228))

(assert (=> b!5095770 d!1649032))

(declare-fun d!1649038 () Bool)

(assert (=> d!1649038 (isPrefix!5410 input!1210 input!1210)))

(declare-fun lt!2093780 () Unit!149679)

(declare-fun choose!37311 (List!58762 List!58762) Unit!149679)

(assert (=> d!1649038 (= lt!2093780 (choose!37311 input!1210 input!1210))))

(assert (=> d!1649038 (= (lemmaIsPrefixRefl!3669 input!1210 input!1210) lt!2093780)))

(declare-fun bs!1191321 () Bool)

(assert (= bs!1191321 d!1649038))

(assert (=> bs!1191321 m!6153218))

(declare-fun m!6153230 () Bool)

(assert (=> bs!1191321 m!6153230))

(assert (=> b!5095770 d!1649038))

(declare-fun d!1649040 () Bool)

(assert (=> d!1649040 (= (inv!78127 (tag!9378 (h!65087 rulesArg!145))) (= (mod (str.len (value!272957 (tag!9378 (h!65087 rulesArg!145)))) 2) 0))))

(assert (=> b!5095765 d!1649040))

(declare-fun d!1649042 () Bool)

(declare-fun res!2168770 () Bool)

(declare-fun e!3178060 () Bool)

(assert (=> d!1649042 (=> (not res!2168770) (not e!3178060))))

(declare-fun semiInverseModEq!3793 (Int Int) Bool)

(assert (=> d!1649042 (= res!2168770 (semiInverseModEq!3793 (toChars!11396 (transformation!8514 (h!65087 rulesArg!145))) (toValue!11537 (transformation!8514 (h!65087 rulesArg!145)))))))

(assert (=> d!1649042 (= (inv!78129 (transformation!8514 (h!65087 rulesArg!145))) e!3178060)))

(declare-fun b!5095797 () Bool)

(declare-fun equivClasses!3608 (Int Int) Bool)

(assert (=> b!5095797 (= e!3178060 (equivClasses!3608 (toChars!11396 (transformation!8514 (h!65087 rulesArg!145))) (toValue!11537 (transformation!8514 (h!65087 rulesArg!145)))))))

(assert (= (and d!1649042 res!2168770) b!5095797))

(declare-fun m!6153242 () Bool)

(assert (=> d!1649042 m!6153242))

(declare-fun m!6153244 () Bool)

(assert (=> b!5095797 m!6153244))

(assert (=> b!5095765 d!1649042))

(declare-fun d!1649048 () Bool)

(assert (=> d!1649048 true))

(declare-fun lt!2093790 () Bool)

(declare-fun lambda!249892 () Int)

(declare-fun forall!13480 (List!58763 Int) Bool)

(assert (=> d!1649048 (= lt!2093790 (forall!13480 rulesArg!145 lambda!249892))))

(declare-fun e!3178087 () Bool)

(assert (=> d!1649048 (= lt!2093790 e!3178087)))

(declare-fun res!2168785 () Bool)

(assert (=> d!1649048 (=> res!2168785 e!3178087)))

(assert (=> d!1649048 (= res!2168785 (not ((_ is Cons!58639) rulesArg!145)))))

(assert (=> d!1649048 (= (rulesValidInductive!3339 thiss!14775 rulesArg!145) lt!2093790)))

(declare-fun b!5095824 () Bool)

(declare-fun e!3178086 () Bool)

(assert (=> b!5095824 (= e!3178087 e!3178086)))

(declare-fun res!2168784 () Bool)

(assert (=> b!5095824 (=> (not res!2168784) (not e!3178086))))

(declare-fun ruleValid!3907 (LexerInterface!8106 Rule!16828) Bool)

(assert (=> b!5095824 (= res!2168784 (ruleValid!3907 thiss!14775 (h!65087 rulesArg!145)))))

(declare-fun b!5095825 () Bool)

(assert (=> b!5095825 (= e!3178086 (rulesValidInductive!3339 thiss!14775 (t!371718 rulesArg!145)))))

(assert (= (and d!1649048 (not res!2168785)) b!5095824))

(assert (= (and b!5095824 res!2168784) b!5095825))

(declare-fun m!6153260 () Bool)

(assert (=> d!1649048 m!6153260))

(declare-fun m!6153262 () Bool)

(assert (=> b!5095824 m!6153262))

(declare-fun m!6153264 () Bool)

(assert (=> b!5095825 m!6153264))

(assert (=> b!5095768 d!1649048))

(declare-fun e!3178096 () Bool)

(assert (=> b!5095765 (= tp!1420923 e!3178096)))

(declare-fun b!5095858 () Bool)

(declare-fun tp!1420967 () Bool)

(declare-fun tp!1420966 () Bool)

(assert (=> b!5095858 (= e!3178096 (and tp!1420967 tp!1420966))))

(declare-fun b!5095860 () Bool)

(declare-fun tp!1420968 () Bool)

(declare-fun tp!1420964 () Bool)

(assert (=> b!5095860 (= e!3178096 (and tp!1420968 tp!1420964))))

(declare-fun b!5095857 () Bool)

(assert (=> b!5095857 (= e!3178096 tp_is_empty!37243)))

(declare-fun b!5095859 () Bool)

(declare-fun tp!1420965 () Bool)

(assert (=> b!5095859 (= e!3178096 tp!1420965)))

(assert (= (and b!5095765 ((_ is ElementMatch!13989) (regex!8514 (h!65087 rulesArg!145)))) b!5095857))

(assert (= (and b!5095765 ((_ is Concat!22818) (regex!8514 (h!65087 rulesArg!145)))) b!5095858))

(assert (= (and b!5095765 ((_ is Star!13989) (regex!8514 (h!65087 rulesArg!145)))) b!5095859))

(assert (= (and b!5095765 ((_ is Union!13989) (regex!8514 (h!65087 rulesArg!145)))) b!5095860))

(declare-fun b!5095871 () Bool)

(declare-fun b_free!133435 () Bool)

(declare-fun b_next!134225 () Bool)

(assert (=> b!5095871 (= b_free!133435 (not b_next!134225))))

(declare-fun tp!1420979 () Bool)

(declare-fun b_and!350319 () Bool)

(assert (=> b!5095871 (= tp!1420979 b_and!350319)))

(declare-fun b_free!133437 () Bool)

(declare-fun b_next!134227 () Bool)

(assert (=> b!5095871 (= b_free!133437 (not b_next!134227))))

(declare-fun tp!1420977 () Bool)

(declare-fun b_and!350321 () Bool)

(assert (=> b!5095871 (= tp!1420977 b_and!350321)))

(declare-fun e!3178108 () Bool)

(assert (=> b!5095871 (= e!3178108 (and tp!1420979 tp!1420977))))

(declare-fun b!5095870 () Bool)

(declare-fun e!3178105 () Bool)

(declare-fun tp!1420980 () Bool)

(assert (=> b!5095870 (= e!3178105 (and tp!1420980 (inv!78127 (tag!9378 (h!65087 (t!371718 rulesArg!145)))) (inv!78129 (transformation!8514 (h!65087 (t!371718 rulesArg!145)))) e!3178108))))

(declare-fun b!5095869 () Bool)

(declare-fun e!3178107 () Bool)

(declare-fun tp!1420978 () Bool)

(assert (=> b!5095869 (= e!3178107 (and e!3178105 tp!1420978))))

(assert (=> b!5095766 (= tp!1420921 e!3178107)))

(assert (= b!5095870 b!5095871))

(assert (= b!5095869 b!5095870))

(assert (= (and b!5095766 ((_ is Cons!58639) (t!371718 rulesArg!145))) b!5095869))

(declare-fun m!6153266 () Bool)

(assert (=> b!5095870 m!6153266))

(declare-fun m!6153268 () Bool)

(assert (=> b!5095870 m!6153268))

(declare-fun b!5095876 () Bool)

(declare-fun e!3178111 () Bool)

(declare-fun tp!1420983 () Bool)

(assert (=> b!5095876 (= e!3178111 (and tp_is_empty!37243 tp!1420983))))

(assert (=> b!5095767 (= tp!1420920 e!3178111)))

(assert (= (and b!5095767 ((_ is Cons!58638) (t!371717 input!1210))) b!5095876))

(check-sat (not b!5095825) (not b!5095782) (not d!1649042) b_and!350311 b_and!350313 (not b!5095797) b_and!350319 (not b!5095870) (not d!1649048) (not b_next!134225) (not b!5095781) (not b!5095780) (not b_next!134217) (not b!5095859) (not b!5095858) (not b!5095869) tp_is_empty!37243 (not b!5095860) (not b_next!134227) (not d!1649038) (not b!5095824) b_and!350321 (not b_next!134219) (not b!5095876))
(check-sat (not b_next!134227) b_and!350311 b_and!350313 b_and!350319 (not b_next!134225) (not b_next!134217) b_and!350321 (not b_next!134219))
