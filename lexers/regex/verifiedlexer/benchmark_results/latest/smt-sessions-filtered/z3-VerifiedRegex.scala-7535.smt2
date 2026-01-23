; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!397902 () Bool)

(assert start!397902)

(declare-fun b!4172956 () Bool)

(declare-fun b_free!120823 () Bool)

(declare-fun b_next!121527 () Bool)

(assert (=> b!4172956 (= b_free!120823 (not b_next!121527))))

(declare-fun tp!1275006 () Bool)

(declare-fun b_and!325981 () Bool)

(assert (=> b!4172956 (= tp!1275006 b_and!325981)))

(declare-fun b_free!120825 () Bool)

(declare-fun b_next!121529 () Bool)

(assert (=> b!4172956 (= b_free!120825 (not b_next!121529))))

(declare-fun tp!1275003 () Bool)

(declare-fun b_and!325983 () Bool)

(assert (=> b!4172956 (= tp!1275003 b_and!325983)))

(declare-fun b!4172944 () Bool)

(declare-fun b_free!120827 () Bool)

(declare-fun b_next!121531 () Bool)

(assert (=> b!4172944 (= b_free!120827 (not b_next!121531))))

(declare-fun tp!1275007 () Bool)

(declare-fun b_and!325985 () Bool)

(assert (=> b!4172944 (= tp!1275007 b_and!325985)))

(declare-fun b_free!120829 () Bool)

(declare-fun b_next!121533 () Bool)

(assert (=> b!4172944 (= b_free!120829 (not b_next!121533))))

(declare-fun tp!1274999 () Bool)

(declare-fun b_and!325987 () Bool)

(assert (=> b!4172944 (= tp!1274999 b_and!325987)))

(declare-fun b!4172950 () Bool)

(declare-fun b_free!120831 () Bool)

(declare-fun b_next!121535 () Bool)

(assert (=> b!4172950 (= b_free!120831 (not b_next!121535))))

(declare-fun tp!1275010 () Bool)

(declare-fun b_and!325989 () Bool)

(assert (=> b!4172950 (= tp!1275010 b_and!325989)))

(declare-fun b_free!120833 () Bool)

(declare-fun b_next!121537 () Bool)

(assert (=> b!4172950 (= b_free!120833 (not b_next!121537))))

(declare-fun tp!1275008 () Bool)

(declare-fun b_and!325991 () Bool)

(assert (=> b!4172950 (= tp!1275008 b_and!325991)))

(declare-fun e!2590617 () Bool)

(declare-fun tp!1275000 () Bool)

(declare-datatypes ((C!25172 0))(
  ( (C!25173 (val!14748 Int)) )
))
(declare-datatypes ((List!45857 0))(
  ( (Nil!45733) (Cons!45733 (h!51153 C!25172) (t!344552 List!45857)) )
))
(declare-datatypes ((IArray!27599 0))(
  ( (IArray!27600 (innerList!13857 List!45857)) )
))
(declare-datatypes ((Conc!13797 0))(
  ( (Node!13797 (left!34088 Conc!13797) (right!34418 Conc!13797) (csize!27824 Int) (cheight!14008 Int)) (Leaf!21333 (xs!17103 IArray!27599) (csize!27825 Int)) (Empty!13797) )
))
(declare-datatypes ((BalanceConc!27188 0))(
  ( (BalanceConc!27189 (c!713176 Conc!13797)) )
))
(declare-datatypes ((List!45858 0))(
  ( (Nil!45734) (Cons!45734 (h!51154 (_ BitVec 16)) (t!344553 List!45858)) )
))
(declare-datatypes ((TokenValue!7816 0))(
  ( (FloatLiteralValue!15632 (text!55157 List!45858)) (TokenValueExt!7815 (__x!27853 Int)) (Broken!39080 (value!236707 List!45858)) (Object!7939) (End!7816) (Def!7816) (Underscore!7816) (Match!7816) (Else!7816) (Error!7816) (Case!7816) (If!7816) (Extends!7816) (Abstract!7816) (Class!7816) (Val!7816) (DelimiterValue!15632 (del!7876 List!45858)) (KeywordValue!7822 (value!236708 List!45858)) (CommentValue!15632 (value!236709 List!45858)) (WhitespaceValue!15632 (value!236710 List!45858)) (IndentationValue!7816 (value!236711 List!45858)) (String!52945) (Int32!7816) (Broken!39081 (value!236712 List!45858)) (Boolean!7817) (Unit!64802) (OperatorValue!7819 (op!7876 List!45858)) (IdentifierValue!15632 (value!236713 List!45858)) (IdentifierValue!15633 (value!236714 List!45858)) (WhitespaceValue!15633 (value!236715 List!45858)) (True!15632) (False!15632) (Broken!39082 (value!236716 List!45858)) (Broken!39083 (value!236717 List!45858)) (True!15633) (RightBrace!7816) (RightBracket!7816) (Colon!7816) (Null!7816) (Comma!7816) (LeftBracket!7816) (False!15633) (LeftBrace!7816) (ImaginaryLiteralValue!7816 (text!55158 List!45858)) (StringLiteralValue!23448 (value!236718 List!45858)) (EOFValue!7816 (value!236719 List!45858)) (IdentValue!7816 (value!236720 List!45858)) (DelimiterValue!15633 (value!236721 List!45858)) (DedentValue!7816 (value!236722 List!45858)) (NewLineValue!7816 (value!236723 List!45858)) (IntegerValue!23448 (value!236724 (_ BitVec 32)) (text!55159 List!45858)) (IntegerValue!23449 (value!236725 Int) (text!55160 List!45858)) (Times!7816) (Or!7816) (Equal!7816) (Minus!7816) (Broken!39084 (value!236726 List!45858)) (And!7816) (Div!7816) (LessEqual!7816) (Mod!7816) (Concat!20307) (Not!7816) (Plus!7816) (SpaceValue!7816 (value!236727 List!45858)) (IntegerValue!23450 (value!236728 Int) (text!55161 List!45858)) (StringLiteralValue!23449 (text!55162 List!45858)) (FloatLiteralValue!15633 (text!55163 List!45858)) (BytesLiteralValue!7816 (value!236729 List!45858)) (CommentValue!15633 (value!236730 List!45858)) (StringLiteralValue!23450 (value!236731 List!45858)) (ErrorTokenValue!7816 (msg!7877 List!45858)) )
))
(declare-datatypes ((Regex!12491 0))(
  ( (ElementMatch!12491 (c!713177 C!25172)) (Concat!20308 (regOne!25494 Regex!12491) (regTwo!25494 Regex!12491)) (EmptyExpr!12491) (Star!12491 (reg!12820 Regex!12491)) (EmptyLang!12491) (Union!12491 (regOne!25495 Regex!12491) (regTwo!25495 Regex!12491)) )
))
(declare-datatypes ((String!52946 0))(
  ( (String!52947 (value!236732 String)) )
))
(declare-datatypes ((TokenValueInjection!15060 0))(
  ( (TokenValueInjection!15061 (toValue!10270 Int) (toChars!10129 Int)) )
))
(declare-datatypes ((Rule!14972 0))(
  ( (Rule!14973 (regex!7586 Regex!12491) (tag!8450 String!52946) (isSeparator!7586 Bool) (transformation!7586 TokenValueInjection!15060)) )
))
(declare-fun r!4142 () Rule!14972)

(declare-fun e!2590618 () Bool)

(declare-fun b!4172936 () Bool)

(declare-fun inv!60266 (String!52946) Bool)

(declare-fun inv!60268 (TokenValueInjection!15060) Bool)

(assert (=> b!4172936 (= e!2590617 (and tp!1275000 (inv!60266 (tag!8450 r!4142)) (inv!60268 (transformation!7586 r!4142)) e!2590618))))

(declare-fun b!4172937 () Bool)

(declare-fun res!1709987 () Bool)

(declare-fun e!2590624 () Bool)

(assert (=> b!4172937 (=> (not res!1709987) (not e!2590624))))

(declare-datatypes ((List!45859 0))(
  ( (Nil!45735) (Cons!45735 (h!51155 Rule!14972) (t!344554 List!45859)) )
))
(declare-fun rules!3843 () List!45859)

(declare-fun rBis!167 () Rule!14972)

(declare-fun contains!9389 (List!45859 Rule!14972) Bool)

(assert (=> b!4172937 (= res!1709987 (contains!9389 rules!3843 rBis!167))))

(declare-fun b!4172938 () Bool)

(declare-fun res!1709988 () Bool)

(assert (=> b!4172938 (=> (not res!1709988) (not e!2590624))))

(declare-fun p!2959 () List!45857)

(declare-fun input!3342 () List!45857)

(declare-fun isPrefix!4443 (List!45857 List!45857) Bool)

(assert (=> b!4172938 (= res!1709988 (isPrefix!4443 p!2959 input!3342))))

(declare-fun e!2590627 () Bool)

(declare-fun e!2590630 () Bool)

(declare-fun b!4172939 () Bool)

(declare-fun tp!1275004 () Bool)

(assert (=> b!4172939 (= e!2590627 (and tp!1275004 (inv!60266 (tag!8450 rBis!167)) (inv!60268 (transformation!7586 rBis!167)) e!2590630))))

(declare-fun b!4172940 () Bool)

(declare-fun res!1709985 () Bool)

(assert (=> b!4172940 (=> (not res!1709985) (not e!2590624))))

(declare-datatypes ((LexerInterface!7179 0))(
  ( (LexerInterfaceExt!7176 (__x!27854 Int)) (Lexer!7177) )
))
(declare-fun thiss!25986 () LexerInterface!7179)

(declare-fun ruleValid!3304 (LexerInterface!7179 Rule!14972) Bool)

(assert (=> b!4172940 (= res!1709985 (ruleValid!3304 thiss!25986 r!4142))))

(declare-fun res!1709993 () Bool)

(assert (=> start!397902 (=> (not res!1709993) (not e!2590624))))

(get-info :version)

(assert (=> start!397902 (= res!1709993 ((_ is Lexer!7177) thiss!25986))))

(assert (=> start!397902 e!2590624))

(assert (=> start!397902 true))

(assert (=> start!397902 e!2590627))

(assert (=> start!397902 e!2590617))

(declare-fun e!2590620 () Bool)

(assert (=> start!397902 e!2590620))

(declare-fun e!2590619 () Bool)

(assert (=> start!397902 e!2590619))

(declare-fun e!2590623 () Bool)

(assert (=> start!397902 e!2590623))

(declare-fun e!2590622 () Bool)

(assert (=> start!397902 e!2590622))

(declare-fun b!4172941 () Bool)

(declare-fun res!1709995 () Bool)

(declare-fun e!2590628 () Bool)

(assert (=> b!4172941 (=> res!1709995 e!2590628)))

(assert (=> b!4172941 (= res!1709995 (not (ruleValid!3304 thiss!25986 rBis!167)))))

(declare-fun b!4172942 () Bool)

(declare-fun tp_is_empty!21945 () Bool)

(declare-fun tp!1275001 () Bool)

(assert (=> b!4172942 (= e!2590622 (and tp_is_empty!21945 tp!1275001))))

(declare-fun b!4172943 () Bool)

(assert (=> b!4172943 (= e!2590624 (not e!2590628))))

(declare-fun res!1709990 () Bool)

(assert (=> b!4172943 (=> res!1709990 e!2590628)))

(declare-fun lt!1485863 () Int)

(declare-fun lt!1485867 () TokenValue!7816)

(declare-datatypes ((Token!13886 0))(
  ( (Token!13887 (value!236733 TokenValue!7816) (rule!10636 Rule!14972) (size!33571 Int) (originalCharacters!7974 List!45857)) )
))
(declare-datatypes ((tuple2!43590 0))(
  ( (tuple2!43591 (_1!24929 Token!13886) (_2!24929 List!45857)) )
))
(declare-datatypes ((Option!9782 0))(
  ( (None!9781) (Some!9781 (v!40577 tuple2!43590)) )
))
(declare-fun maxPrefixOneRule!3190 (LexerInterface!7179 Rule!14972 List!45857) Option!9782)

(declare-fun getSuffix!2738 (List!45857 List!45857) List!45857)

(assert (=> b!4172943 (= res!1709990 (not (= (maxPrefixOneRule!3190 thiss!25986 r!4142 input!3342) (Some!9781 (tuple2!43591 (Token!13887 lt!1485867 r!4142 lt!1485863 p!2959) (getSuffix!2738 input!3342 p!2959))))))))

(declare-fun size!33572 (List!45857) Int)

(assert (=> b!4172943 (= lt!1485863 (size!33572 p!2959))))

(declare-fun lt!1485865 () BalanceConc!27188)

(declare-fun apply!10551 (TokenValueInjection!15060 BalanceConc!27188) TokenValue!7816)

(assert (=> b!4172943 (= lt!1485867 (apply!10551 (transformation!7586 r!4142) lt!1485865))))

(assert (=> b!4172943 (isPrefix!4443 input!3342 input!3342)))

(declare-datatypes ((Unit!64803 0))(
  ( (Unit!64804) )
))
(declare-fun lt!1485866 () Unit!64803)

(declare-fun lemmaIsPrefixRefl!2872 (List!45857 List!45857) Unit!64803)

(assert (=> b!4172943 (= lt!1485866 (lemmaIsPrefixRefl!2872 input!3342 input!3342))))

(declare-fun lt!1485868 () Unit!64803)

(declare-fun lemmaSemiInverse!2352 (TokenValueInjection!15060 BalanceConc!27188) Unit!64803)

(assert (=> b!4172943 (= lt!1485868 (lemmaSemiInverse!2352 (transformation!7586 r!4142) lt!1485865))))

(declare-fun seqFromList!5611 (List!45857) BalanceConc!27188)

(assert (=> b!4172943 (= lt!1485865 (seqFromList!5611 p!2959))))

(assert (=> b!4172944 (= e!2590630 (and tp!1275007 tp!1274999))))

(declare-fun b!4172945 () Bool)

(declare-fun res!1709991 () Bool)

(assert (=> b!4172945 (=> (not res!1709991) (not e!2590624))))

(declare-fun rulesInvariant!6392 (LexerInterface!7179 List!45859) Bool)

(assert (=> b!4172945 (= res!1709991 (rulesInvariant!6392 thiss!25986 rules!3843))))

(declare-fun b!4172946 () Bool)

(declare-fun res!1709989 () Bool)

(assert (=> b!4172946 (=> (not res!1709989) (not e!2590624))))

(assert (=> b!4172946 (= res!1709989 (contains!9389 rules!3843 r!4142))))

(declare-fun b!4172947 () Bool)

(declare-fun tp!1275002 () Bool)

(assert (=> b!4172947 (= e!2590619 (and tp_is_empty!21945 tp!1275002))))

(declare-fun b!4172948 () Bool)

(declare-fun res!1709996 () Bool)

(assert (=> b!4172948 (=> (not res!1709996) (not e!2590624))))

(declare-fun isEmpty!27055 (List!45859) Bool)

(assert (=> b!4172948 (= res!1709996 (not (isEmpty!27055 rules!3843)))))

(declare-fun b!4172949 () Bool)

(declare-fun res!1709994 () Bool)

(assert (=> b!4172949 (=> (not res!1709994) (not e!2590624))))

(declare-fun pBis!107 () List!45857)

(assert (=> b!4172949 (= res!1709994 (isPrefix!4443 pBis!107 input!3342))))

(declare-fun e!2590629 () Bool)

(assert (=> b!4172950 (= e!2590629 (and tp!1275010 tp!1275008))))

(declare-fun b!4172951 () Bool)

(declare-fun e!2590621 () Bool)

(declare-fun tp!1275009 () Bool)

(assert (=> b!4172951 (= e!2590620 (and e!2590621 tp!1275009))))

(declare-fun b!4172952 () Bool)

(assert (=> b!4172952 (= e!2590628 true)))

(declare-fun lt!1485864 () Int)

(assert (=> b!4172952 (= lt!1485864 (size!33572 input!3342))))

(declare-fun b!4172953 () Bool)

(declare-fun res!1709986 () Bool)

(assert (=> b!4172953 (=> (not res!1709986) (not e!2590624))))

(declare-fun matchR!6230 (Regex!12491 List!45857) Bool)

(assert (=> b!4172953 (= res!1709986 (matchR!6230 (regex!7586 r!4142) p!2959))))

(declare-fun b!4172954 () Bool)

(declare-fun tp!1275005 () Bool)

(assert (=> b!4172954 (= e!2590623 (and tp_is_empty!21945 tp!1275005))))

(declare-fun b!4172955 () Bool)

(declare-fun res!1709992 () Bool)

(assert (=> b!4172955 (=> res!1709992 e!2590628)))

(assert (=> b!4172955 (= res!1709992 (<= (size!33572 pBis!107) lt!1485863))))

(assert (=> b!4172956 (= e!2590618 (and tp!1275006 tp!1275003))))

(declare-fun b!4172957 () Bool)

(declare-fun tp!1274998 () Bool)

(assert (=> b!4172957 (= e!2590621 (and tp!1274998 (inv!60266 (tag!8450 (h!51155 rules!3843))) (inv!60268 (transformation!7586 (h!51155 rules!3843))) e!2590629))))

(declare-fun b!4172958 () Bool)

(declare-fun res!1709984 () Bool)

(assert (=> b!4172958 (=> (not res!1709984) (not e!2590624))))

(declare-fun validRegex!5608 (Regex!12491) Bool)

(assert (=> b!4172958 (= res!1709984 (validRegex!5608 (regex!7586 r!4142)))))

(assert (= (and start!397902 res!1709993) b!4172938))

(assert (= (and b!4172938 res!1709988) b!4172949))

(assert (= (and b!4172949 res!1709994) b!4172948))

(assert (= (and b!4172948 res!1709996) b!4172945))

(assert (= (and b!4172945 res!1709991) b!4172946))

(assert (= (and b!4172946 res!1709989) b!4172937))

(assert (= (and b!4172937 res!1709987) b!4172958))

(assert (= (and b!4172958 res!1709984) b!4172953))

(assert (= (and b!4172953 res!1709986) b!4172940))

(assert (= (and b!4172940 res!1709985) b!4172943))

(assert (= (and b!4172943 (not res!1709990)) b!4172955))

(assert (= (and b!4172955 (not res!1709992)) b!4172941))

(assert (= (and b!4172941 (not res!1709995)) b!4172952))

(assert (= b!4172939 b!4172944))

(assert (= start!397902 b!4172939))

(assert (= b!4172936 b!4172956))

(assert (= start!397902 b!4172936))

(assert (= b!4172957 b!4172950))

(assert (= b!4172951 b!4172957))

(assert (= (and start!397902 ((_ is Cons!45735) rules!3843)) b!4172951))

(assert (= (and start!397902 ((_ is Cons!45733) input!3342)) b!4172947))

(assert (= (and start!397902 ((_ is Cons!45733) pBis!107)) b!4172954))

(assert (= (and start!397902 ((_ is Cons!45733) p!2959)) b!4172942))

(declare-fun m!4762995 () Bool)

(assert (=> b!4172938 m!4762995))

(declare-fun m!4762997 () Bool)

(assert (=> b!4172943 m!4762997))

(declare-fun m!4762999 () Bool)

(assert (=> b!4172943 m!4762999))

(declare-fun m!4763001 () Bool)

(assert (=> b!4172943 m!4763001))

(declare-fun m!4763003 () Bool)

(assert (=> b!4172943 m!4763003))

(declare-fun m!4763005 () Bool)

(assert (=> b!4172943 m!4763005))

(declare-fun m!4763007 () Bool)

(assert (=> b!4172943 m!4763007))

(declare-fun m!4763009 () Bool)

(assert (=> b!4172943 m!4763009))

(declare-fun m!4763011 () Bool)

(assert (=> b!4172943 m!4763011))

(declare-fun m!4763013 () Bool)

(assert (=> b!4172941 m!4763013))

(declare-fun m!4763015 () Bool)

(assert (=> b!4172955 m!4763015))

(declare-fun m!4763017 () Bool)

(assert (=> b!4172940 m!4763017))

(declare-fun m!4763019 () Bool)

(assert (=> b!4172939 m!4763019))

(declare-fun m!4763021 () Bool)

(assert (=> b!4172939 m!4763021))

(declare-fun m!4763023 () Bool)

(assert (=> b!4172945 m!4763023))

(declare-fun m!4763025 () Bool)

(assert (=> b!4172946 m!4763025))

(declare-fun m!4763027 () Bool)

(assert (=> b!4172936 m!4763027))

(declare-fun m!4763029 () Bool)

(assert (=> b!4172936 m!4763029))

(declare-fun m!4763031 () Bool)

(assert (=> b!4172953 m!4763031))

(declare-fun m!4763033 () Bool)

(assert (=> b!4172948 m!4763033))

(declare-fun m!4763035 () Bool)

(assert (=> b!4172957 m!4763035))

(declare-fun m!4763037 () Bool)

(assert (=> b!4172957 m!4763037))

(declare-fun m!4763039 () Bool)

(assert (=> b!4172949 m!4763039))

(declare-fun m!4763041 () Bool)

(assert (=> b!4172937 m!4763041))

(declare-fun m!4763043 () Bool)

(assert (=> b!4172958 m!4763043))

(declare-fun m!4763045 () Bool)

(assert (=> b!4172952 m!4763045))

(check-sat (not b!4172957) b_and!325989 (not b!4172937) (not b!4172946) (not b!4172938) (not b_next!121529) (not b!4172940) b_and!325983 (not b_next!121531) (not b_next!121537) (not b!4172941) (not b_next!121535) (not b!4172942) b_and!325985 (not b!4172947) (not b_next!121533) (not b!4172943) (not b!4172958) (not b!4172948) b_and!325987 (not b!4172951) (not b!4172952) (not b!4172949) (not b!4172955) (not b!4172953) (not b!4172954) (not b!4172945) (not b!4172936) (not b_next!121527) b_and!325981 tp_is_empty!21945 (not b!4172939) b_and!325991)
(check-sat (not b_next!121535) b_and!325989 b_and!325987 (not b_next!121529) b_and!325983 (not b_next!121527) b_and!325981 b_and!325991 (not b_next!121531) (not b_next!121537) b_and!325985 (not b_next!121533))
