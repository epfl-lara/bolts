; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187930 () Bool)

(assert start!187930)

(declare-fun b!1874924 () Bool)

(declare-fun b_free!52137 () Bool)

(declare-fun b_next!52841 () Bool)

(assert (=> b!1874924 (= b_free!52137 (not b_next!52841))))

(declare-fun tp!534359 () Bool)

(declare-fun b_and!144423 () Bool)

(assert (=> b!1874924 (= tp!534359 b_and!144423)))

(declare-fun b_free!52139 () Bool)

(declare-fun b_next!52843 () Bool)

(assert (=> b!1874924 (= b_free!52139 (not b_next!52843))))

(declare-fun tp!534360 () Bool)

(declare-fun b_and!144425 () Bool)

(assert (=> b!1874924 (= tp!534360 b_and!144425)))

(declare-fun res!838526 () Bool)

(declare-fun e!1196530 () Bool)

(assert (=> start!187930 (=> (not res!838526) (not e!1196530))))

(declare-datatypes ((LexerInterface!3314 0))(
  ( (LexerInterfaceExt!3311 (__x!13094 Int)) (Lexer!3312) )
))
(declare-fun thiss!13718 () LexerInterface!3314)

(declare-fun from!845 () Int)

(get-info :version)

(assert (=> start!187930 (= res!838526 (and ((_ is Lexer!3312) thiss!13718) (>= from!845 0)))))

(assert (=> start!187930 e!1196530))

(assert (=> start!187930 true))

(declare-datatypes ((List!20943 0))(
  ( (Nil!20861) (Cons!20861 (h!26262 (_ BitVec 16)) (t!173160 List!20943)) )
))
(declare-datatypes ((TokenValue!3828 0))(
  ( (FloatLiteralValue!7656 (text!27241 List!20943)) (TokenValueExt!3827 (__x!13095 Int)) (Broken!19140 (value!116661 List!20943)) (Object!3909) (End!3828) (Def!3828) (Underscore!3828) (Match!3828) (Else!3828) (Error!3828) (Case!3828) (If!3828) (Extends!3828) (Abstract!3828) (Class!3828) (Val!3828) (DelimiterValue!7656 (del!3888 List!20943)) (KeywordValue!3834 (value!116662 List!20943)) (CommentValue!7656 (value!116663 List!20943)) (WhitespaceValue!7656 (value!116664 List!20943)) (IndentationValue!3828 (value!116665 List!20943)) (String!24089) (Int32!3828) (Broken!19141 (value!116666 List!20943)) (Boolean!3829) (Unit!35387) (OperatorValue!3831 (op!3888 List!20943)) (IdentifierValue!7656 (value!116667 List!20943)) (IdentifierValue!7657 (value!116668 List!20943)) (WhitespaceValue!7657 (value!116669 List!20943)) (True!7656) (False!7656) (Broken!19142 (value!116670 List!20943)) (Broken!19143 (value!116671 List!20943)) (True!7657) (RightBrace!3828) (RightBracket!3828) (Colon!3828) (Null!3828) (Comma!3828) (LeftBracket!3828) (False!7657) (LeftBrace!3828) (ImaginaryLiteralValue!3828 (text!27242 List!20943)) (StringLiteralValue!11484 (value!116672 List!20943)) (EOFValue!3828 (value!116673 List!20943)) (IdentValue!3828 (value!116674 List!20943)) (DelimiterValue!7657 (value!116675 List!20943)) (DedentValue!3828 (value!116676 List!20943)) (NewLineValue!3828 (value!116677 List!20943)) (IntegerValue!11484 (value!116678 (_ BitVec 32)) (text!27243 List!20943)) (IntegerValue!11485 (value!116679 Int) (text!27244 List!20943)) (Times!3828) (Or!3828) (Equal!3828) (Minus!3828) (Broken!19144 (value!116680 List!20943)) (And!3828) (Div!3828) (LessEqual!3828) (Mod!3828) (Concat!8929) (Not!3828) (Plus!3828) (SpaceValue!3828 (value!116681 List!20943)) (IntegerValue!11486 (value!116682 Int) (text!27245 List!20943)) (StringLiteralValue!11485 (text!27246 List!20943)) (FloatLiteralValue!7657 (text!27247 List!20943)) (BytesLiteralValue!3828 (value!116683 List!20943)) (CommentValue!7657 (value!116684 List!20943)) (StringLiteralValue!11486 (value!116685 List!20943)) (ErrorTokenValue!3828 (msg!3889 List!20943)) )
))
(declare-datatypes ((C!10360 0))(
  ( (C!10361 (val!6068 Int)) )
))
(declare-datatypes ((Regex!5101 0))(
  ( (ElementMatch!5101 (c!305474 C!10360)) (Concat!8930 (regOne!10714 Regex!5101) (regTwo!10714 Regex!5101)) (EmptyExpr!5101) (Star!5101 (reg!5430 Regex!5101)) (EmptyLang!5101) (Union!5101 (regOne!10715 Regex!5101) (regTwo!10715 Regex!5101)) )
))
(declare-datatypes ((String!24090 0))(
  ( (String!24091 (value!116686 String)) )
))
(declare-datatypes ((List!20944 0))(
  ( (Nil!20862) (Cons!20862 (h!26263 C!10360) (t!173161 List!20944)) )
))
(declare-datatypes ((IArray!13831 0))(
  ( (IArray!13832 (innerList!6973 List!20944)) )
))
(declare-datatypes ((Conc!6913 0))(
  ( (Node!6913 (left!16765 Conc!6913) (right!17095 Conc!6913) (csize!14056 Int) (cheight!7124 Int)) (Leaf!10180 (xs!9797 IArray!13831) (csize!14057 Int)) (Empty!6913) )
))
(declare-datatypes ((BalanceConc!13642 0))(
  ( (BalanceConc!13643 (c!305475 Conc!6913)) )
))
(declare-datatypes ((TokenValueInjection!7240 0))(
  ( (TokenValueInjection!7241 (toValue!5289 Int) (toChars!5148 Int)) )
))
(declare-datatypes ((Rule!7184 0))(
  ( (Rule!7185 (regex!3692 Regex!5101) (tag!4106 String!24090) (isSeparator!3692 Bool) (transformation!3692 TokenValueInjection!7240)) )
))
(declare-datatypes ((Token!6936 0))(
  ( (Token!6937 (value!116687 TokenValue!3828) (rule!5885 Rule!7184) (size!16547 Int) (originalCharacters!4499 List!20944)) )
))
(declare-datatypes ((List!20945 0))(
  ( (Nil!20863) (Cons!20863 (h!26264 Token!6936) (t!173162 List!20945)) )
))
(declare-datatypes ((IArray!13833 0))(
  ( (IArray!13834 (innerList!6974 List!20945)) )
))
(declare-datatypes ((Conc!6914 0))(
  ( (Node!6914 (left!16766 Conc!6914) (right!17096 Conc!6914) (csize!14058 Int) (cheight!7125 Int)) (Leaf!10181 (xs!9798 IArray!13833) (csize!14059 Int)) (Empty!6914) )
))
(declare-datatypes ((BalanceConc!13644 0))(
  ( (BalanceConc!13645 (c!305476 Conc!6914)) )
))
(declare-fun acc!408 () BalanceConc!13644)

(declare-fun e!1196535 () Bool)

(declare-fun inv!27701 (BalanceConc!13644) Bool)

(assert (=> start!187930 (and (inv!27701 acc!408) e!1196535)))

(declare-fun v!6352 () BalanceConc!13644)

(declare-fun e!1196532 () Bool)

(assert (=> start!187930 (and (inv!27701 v!6352) e!1196532)))

(declare-fun separatorToken!84 () Token!6936)

(declare-fun e!1196536 () Bool)

(declare-fun inv!27702 (Token!6936) Bool)

(assert (=> start!187930 (and (inv!27702 separatorToken!84) e!1196536)))

(declare-fun b!1874923 () Bool)

(declare-fun tp!534356 () Bool)

(declare-fun inv!27703 (Conc!6914) Bool)

(assert (=> b!1874923 (= e!1196532 (and (inv!27703 (c!305476 v!6352)) tp!534356))))

(declare-fun e!1196533 () Bool)

(assert (=> b!1874924 (= e!1196533 (and tp!534359 tp!534360))))

(declare-fun b!1874925 () Bool)

(declare-fun e!1196534 () Bool)

(assert (=> b!1874925 (= e!1196530 e!1196534)))

(declare-fun res!838527 () Bool)

(assert (=> b!1874925 (=> (not res!838527) (not e!1196534))))

(declare-fun lt!720257 () Int)

(assert (=> b!1874925 (= res!838527 (and (<= from!845 lt!720257) (isSeparator!3692 (rule!5885 separatorToken!84)) (< from!845 lt!720257)))))

(declare-fun size!16548 (BalanceConc!13644) Int)

(assert (=> b!1874925 (= lt!720257 (size!16548 v!6352))))

(declare-fun b!1874926 () Bool)

(declare-fun e!1196537 () Bool)

(declare-fun tp!534361 () Bool)

(declare-fun inv!27696 (String!24090) Bool)

(declare-fun inv!27704 (TokenValueInjection!7240) Bool)

(assert (=> b!1874926 (= e!1196537 (and tp!534361 (inv!27696 (tag!4106 (rule!5885 separatorToken!84))) (inv!27704 (transformation!3692 (rule!5885 separatorToken!84))) e!1196533))))

(declare-fun b!1874927 () Bool)

(assert (=> b!1874927 (= e!1196534 (not true))))

(declare-fun lt!720255 () Token!6936)

(declare-fun lt!720262 () BalanceConc!13644)

(declare-fun ++!5641 (BalanceConc!13644 BalanceConc!13644) BalanceConc!13644)

(declare-fun singletonSeq!1807 (Token!6936) BalanceConc!13644)

(assert (=> b!1874927 (= lt!720262 (++!5641 acc!408 (++!5641 (singletonSeq!1807 lt!720255) (singletonSeq!1807 separatorToken!84))))))

(declare-fun lt!720264 () List!20945)

(declare-fun lt!720256 () List!20945)

(declare-fun lt!720265 () List!20945)

(declare-fun ++!5642 (List!20945 List!20945) List!20945)

(assert (=> b!1874927 (= (++!5642 (++!5642 lt!720264 lt!720256) lt!720265) (++!5642 lt!720264 (++!5642 lt!720256 lt!720265)))))

(declare-datatypes ((Unit!35388 0))(
  ( (Unit!35389) )
))
(declare-fun lt!720258 () Unit!35388)

(declare-fun lemmaConcatAssociativity!1103 (List!20945 List!20945 List!20945) Unit!35388)

(assert (=> b!1874927 (= lt!720258 (lemmaConcatAssociativity!1103 lt!720264 lt!720256 lt!720265))))

(declare-fun lt!720254 () List!20945)

(declare-fun withSeparatorTokenList!100 (LexerInterface!3314 List!20945 Token!6936) List!20945)

(assert (=> b!1874927 (= lt!720265 (withSeparatorTokenList!100 thiss!13718 lt!720254 separatorToken!84))))

(assert (=> b!1874927 (= lt!720256 (Cons!20863 lt!720255 (Cons!20863 separatorToken!84 Nil!20863)))))

(declare-fun apply!5484 (BalanceConc!13644 Int) Token!6936)

(assert (=> b!1874927 (= lt!720255 (apply!5484 v!6352 from!845))))

(declare-fun list!8506 (BalanceConc!13644) List!20945)

(assert (=> b!1874927 (= lt!720264 (list!8506 acc!408))))

(declare-fun lt!720263 () List!20945)

(declare-fun tail!2892 (List!20945) List!20945)

(assert (=> b!1874927 (= (tail!2892 lt!720263) lt!720254)))

(declare-fun lt!720259 () List!20945)

(declare-fun drop!1012 (List!20945 Int) List!20945)

(assert (=> b!1874927 (= lt!720254 (drop!1012 lt!720259 (+ 1 from!845)))))

(declare-fun lt!720260 () Unit!35388)

(declare-fun lemmaDropTail!630 (List!20945 Int) Unit!35388)

(assert (=> b!1874927 (= lt!720260 (lemmaDropTail!630 lt!720259 from!845))))

(declare-fun head!4363 (List!20945) Token!6936)

(declare-fun apply!5485 (List!20945 Int) Token!6936)

(assert (=> b!1874927 (= (head!4363 lt!720263) (apply!5485 lt!720259 from!845))))

(assert (=> b!1874927 (= lt!720263 (drop!1012 lt!720259 from!845))))

(declare-fun lt!720261 () Unit!35388)

(declare-fun lemmaDropApply!650 (List!20945 Int) Unit!35388)

(assert (=> b!1874927 (= lt!720261 (lemmaDropApply!650 lt!720259 from!845))))

(assert (=> b!1874927 (= lt!720259 (list!8506 v!6352))))

(declare-fun b!1874928 () Bool)

(declare-fun tp!534357 () Bool)

(assert (=> b!1874928 (= e!1196535 (and (inv!27703 (c!305476 acc!408)) tp!534357))))

(declare-fun b!1874929 () Bool)

(declare-fun tp!534358 () Bool)

(declare-fun inv!21 (TokenValue!3828) Bool)

(assert (=> b!1874929 (= e!1196536 (and (inv!21 (value!116687 separatorToken!84)) e!1196537 tp!534358))))

(assert (= (and start!187930 res!838526) b!1874925))

(assert (= (and b!1874925 res!838527) b!1874927))

(assert (= start!187930 b!1874928))

(assert (= start!187930 b!1874923))

(assert (= b!1874926 b!1874924))

(assert (= b!1874929 b!1874926))

(assert (= start!187930 b!1874929))

(declare-fun m!2299941 () Bool)

(assert (=> b!1874927 m!2299941))

(declare-fun m!2299943 () Bool)

(assert (=> b!1874927 m!2299943))

(declare-fun m!2299945 () Bool)

(assert (=> b!1874927 m!2299945))

(declare-fun m!2299947 () Bool)

(assert (=> b!1874927 m!2299947))

(declare-fun m!2299949 () Bool)

(assert (=> b!1874927 m!2299949))

(declare-fun m!2299951 () Bool)

(assert (=> b!1874927 m!2299951))

(declare-fun m!2299953 () Bool)

(assert (=> b!1874927 m!2299953))

(assert (=> b!1874927 m!2299947))

(declare-fun m!2299955 () Bool)

(assert (=> b!1874927 m!2299955))

(declare-fun m!2299957 () Bool)

(assert (=> b!1874927 m!2299957))

(declare-fun m!2299959 () Bool)

(assert (=> b!1874927 m!2299959))

(assert (=> b!1874927 m!2299957))

(declare-fun m!2299961 () Bool)

(assert (=> b!1874927 m!2299961))

(declare-fun m!2299963 () Bool)

(assert (=> b!1874927 m!2299963))

(declare-fun m!2299965 () Bool)

(assert (=> b!1874927 m!2299965))

(declare-fun m!2299967 () Bool)

(assert (=> b!1874927 m!2299967))

(declare-fun m!2299969 () Bool)

(assert (=> b!1874927 m!2299969))

(declare-fun m!2299971 () Bool)

(assert (=> b!1874927 m!2299971))

(declare-fun m!2299973 () Bool)

(assert (=> b!1874927 m!2299973))

(assert (=> b!1874927 m!2299971))

(assert (=> b!1874927 m!2299941))

(assert (=> b!1874927 m!2299961))

(declare-fun m!2299975 () Bool)

(assert (=> b!1874927 m!2299975))

(declare-fun m!2299977 () Bool)

(assert (=> b!1874927 m!2299977))

(declare-fun m!2299979 () Bool)

(assert (=> b!1874927 m!2299979))

(declare-fun m!2299981 () Bool)

(assert (=> start!187930 m!2299981))

(declare-fun m!2299983 () Bool)

(assert (=> start!187930 m!2299983))

(declare-fun m!2299985 () Bool)

(assert (=> start!187930 m!2299985))

(declare-fun m!2299987 () Bool)

(assert (=> b!1874928 m!2299987))

(declare-fun m!2299989 () Bool)

(assert (=> b!1874926 m!2299989))

(declare-fun m!2299991 () Bool)

(assert (=> b!1874926 m!2299991))

(declare-fun m!2299993 () Bool)

(assert (=> b!1874929 m!2299993))

(declare-fun m!2299995 () Bool)

(assert (=> b!1874923 m!2299995))

(declare-fun m!2299997 () Bool)

(assert (=> b!1874925 m!2299997))

(check-sat (not b!1874923) (not start!187930) (not b_next!52841) (not b!1874926) b_and!144423 b_and!144425 (not b_next!52843) (not b!1874928) (not b!1874927) (not b!1874925) (not b!1874929))
(check-sat b_and!144425 b_and!144423 (not b_next!52841) (not b_next!52843))
