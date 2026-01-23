; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262824 () Bool)

(assert start!262824)

(declare-fun b!2707319 () Bool)

(declare-fun b_free!76449 () Bool)

(declare-fun b_next!77153 () Bool)

(assert (=> b!2707319 (= b_free!76449 (not b_next!77153))))

(declare-fun tp!856331 () Bool)

(declare-fun b_and!199881 () Bool)

(assert (=> b!2707319 (= tp!856331 b_and!199881)))

(declare-fun b_free!76451 () Bool)

(declare-fun b_next!77155 () Bool)

(assert (=> b!2707319 (= b_free!76451 (not b_next!77155))))

(declare-fun tp!856336 () Bool)

(declare-fun b_and!199883 () Bool)

(assert (=> b!2707319 (= tp!856336 b_and!199883)))

(declare-fun b!2707310 () Bool)

(declare-fun e!1707043 () Bool)

(declare-datatypes ((List!31389 0))(
  ( (Nil!31289) (Cons!31289 (h!36709 (_ BitVec 16)) (t!225837 List!31389)) )
))
(declare-datatypes ((TokenValue!5005 0))(
  ( (FloatLiteralValue!10010 (text!35480 List!31389)) (TokenValueExt!5004 (__x!20145 Int)) (Broken!25025 (value!153902 List!31389)) (Object!5104) (End!5005) (Def!5005) (Underscore!5005) (Match!5005) (Else!5005) (Error!5005) (Case!5005) (If!5005) (Extends!5005) (Abstract!5005) (Class!5005) (Val!5005) (DelimiterValue!10010 (del!5065 List!31389)) (KeywordValue!5011 (value!153903 List!31389)) (CommentValue!10010 (value!153904 List!31389)) (WhitespaceValue!10010 (value!153905 List!31389)) (IndentationValue!5005 (value!153906 List!31389)) (String!34924) (Int32!5005) (Broken!25026 (value!153907 List!31389)) (Boolean!5006) (Unit!45324) (OperatorValue!5008 (op!5065 List!31389)) (IdentifierValue!10010 (value!153908 List!31389)) (IdentifierValue!10011 (value!153909 List!31389)) (WhitespaceValue!10011 (value!153910 List!31389)) (True!10010) (False!10010) (Broken!25027 (value!153911 List!31389)) (Broken!25028 (value!153912 List!31389)) (True!10011) (RightBrace!5005) (RightBracket!5005) (Colon!5005) (Null!5005) (Comma!5005) (LeftBracket!5005) (False!10011) (LeftBrace!5005) (ImaginaryLiteralValue!5005 (text!35481 List!31389)) (StringLiteralValue!15015 (value!153913 List!31389)) (EOFValue!5005 (value!153914 List!31389)) (IdentValue!5005 (value!153915 List!31389)) (DelimiterValue!10011 (value!153916 List!31389)) (DedentValue!5005 (value!153917 List!31389)) (NewLineValue!5005 (value!153918 List!31389)) (IntegerValue!15015 (value!153919 (_ BitVec 32)) (text!35482 List!31389)) (IntegerValue!15016 (value!153920 Int) (text!35483 List!31389)) (Times!5005) (Or!5005) (Equal!5005) (Minus!5005) (Broken!25029 (value!153921 List!31389)) (And!5005) (Div!5005) (LessEqual!5005) (Mod!5005) (Concat!12940) (Not!5005) (Plus!5005) (SpaceValue!5005 (value!153922 List!31389)) (IntegerValue!15017 (value!153923 Int) (text!35484 List!31389)) (StringLiteralValue!15016 (text!35485 List!31389)) (FloatLiteralValue!10011 (text!35486 List!31389)) (BytesLiteralValue!5005 (value!153924 List!31389)) (CommentValue!10011 (value!153925 List!31389)) (StringLiteralValue!15017 (value!153926 List!31389)) (ErrorTokenValue!5005 (msg!5066 List!31389)) )
))
(declare-datatypes ((C!16028 0))(
  ( (C!16029 (val!9948 Int)) )
))
(declare-datatypes ((Regex!7935 0))(
  ( (ElementMatch!7935 (c!436800 C!16028)) (Concat!12941 (regOne!16382 Regex!7935) (regTwo!16382 Regex!7935)) (EmptyExpr!7935) (Star!7935 (reg!8264 Regex!7935)) (EmptyLang!7935) (Union!7935 (regOne!16383 Regex!7935) (regTwo!16383 Regex!7935)) )
))
(declare-datatypes ((String!34925 0))(
  ( (String!34926 (value!153927 String)) )
))
(declare-datatypes ((List!31390 0))(
  ( (Nil!31290) (Cons!31290 (h!36710 C!16028) (t!225838 List!31390)) )
))
(declare-datatypes ((IArray!19591 0))(
  ( (IArray!19592 (innerList!9853 List!31390)) )
))
(declare-datatypes ((Conc!9793 0))(
  ( (Node!9793 (left!24062 Conc!9793) (right!24392 Conc!9793) (csize!19816 Int) (cheight!10004 Int)) (Leaf!14929 (xs!12845 IArray!19591) (csize!19817 Int)) (Empty!9793) )
))
(declare-datatypes ((BalanceConc!19200 0))(
  ( (BalanceConc!19201 (c!436801 Conc!9793)) )
))
(declare-datatypes ((TokenValueInjection!9450 0))(
  ( (TokenValueInjection!9451 (toValue!6749 Int) (toChars!6608 Int)) )
))
(declare-datatypes ((Rule!9366 0))(
  ( (Rule!9367 (regex!4783 Regex!7935) (tag!5287 String!34925) (isSeparator!4783 Bool) (transformation!4783 TokenValueInjection!9450)) )
))
(declare-datatypes ((Token!9028 0))(
  ( (Token!9029 (value!153928 TokenValue!5005) (rule!7203 Rule!9366) (size!24129 Int) (originalCharacters!5545 List!31390)) )
))
(declare-datatypes ((List!31391 0))(
  ( (Nil!31291) (Cons!31291 (h!36711 Token!9028) (t!225839 List!31391)) )
))
(declare-datatypes ((IArray!19593 0))(
  ( (IArray!19594 (innerList!9854 List!31391)) )
))
(declare-datatypes ((Conc!9794 0))(
  ( (Node!9794 (left!24063 Conc!9794) (right!24393 Conc!9794) (csize!19818 Int) (cheight!10005 Int)) (Leaf!14930 (xs!12846 IArray!19593) (csize!19819 Int)) (Empty!9794) )
))
(declare-datatypes ((BalanceConc!19202 0))(
  ( (BalanceConc!19203 (c!436802 Conc!9794)) )
))
(declare-fun acc!331 () BalanceConc!19202)

(declare-fun tp!856332 () Bool)

(declare-fun inv!42430 (Conc!9794) Bool)

(assert (=> b!2707310 (= e!1707043 (and (inv!42430 (c!436802 acc!331)) tp!856332))))

(declare-fun b!2707311 () Bool)

(declare-fun res!1136991 () Bool)

(declare-fun e!1707029 () Bool)

(assert (=> b!2707311 (=> (not res!1136991) (not e!1707029))))

(declare-datatypes ((tuple2!30922 0))(
  ( (tuple2!30923 (_1!18093 BalanceConc!19202) (_2!18093 BalanceConc!19200)) )
))
(declare-fun lt!957421 () tuple2!30922)

(declare-fun isEmpty!17819 (List!31390) Bool)

(declare-fun list!11824 (BalanceConc!19200) List!31390)

(assert (=> b!2707311 (= res!1136991 (isEmpty!17819 (list!11824 (_2!18093 lt!957421))))))

(declare-fun e!1707034 () Bool)

(declare-fun e!1707035 () Bool)

(declare-fun tp!856335 () Bool)

(declare-fun b!2707312 () Bool)

(declare-datatypes ((List!31392 0))(
  ( (Nil!31292) (Cons!31292 (h!36712 Rule!9366) (t!225840 List!31392)) )
))
(declare-fun rules!1182 () List!31392)

(declare-fun inv!42424 (String!34925) Bool)

(declare-fun inv!42431 (TokenValueInjection!9450) Bool)

(assert (=> b!2707312 (= e!1707034 (and tp!856335 (inv!42424 (tag!5287 (h!36712 rules!1182))) (inv!42431 (transformation!4783 (h!36712 rules!1182))) e!1707035))))

(declare-fun b!2707313 () Bool)

(declare-fun e!1707041 () Bool)

(declare-fun totalInput!328 () BalanceConc!19200)

(declare-fun tp!856337 () Bool)

(declare-fun inv!42432 (Conc!9793) Bool)

(assert (=> b!2707313 (= e!1707041 (and (inv!42432 (c!436801 totalInput!328)) tp!856337))))

(declare-fun b!2707314 () Bool)

(declare-fun res!1136988 () Bool)

(declare-fun e!1707036 () Bool)

(assert (=> b!2707314 (=> (not res!1136988) (not e!1707036))))

(declare-fun lt!957432 () tuple2!30922)

(declare-fun lt!957427 () tuple2!30922)

(assert (=> b!2707314 (= res!1136988 (= (list!11824 (_2!18093 lt!957432)) (list!11824 (_2!18093 lt!957427))))))

(declare-datatypes ((tuple2!30924 0))(
  ( (tuple2!30925 (_1!18094 Token!9028) (_2!18094 BalanceConc!19200)) )
))
(declare-datatypes ((Option!6169 0))(
  ( (None!6168) (Some!6168 (v!32980 tuple2!30924)) )
))
(declare-fun lt!957441 () Option!6169)

(declare-fun e!1707037 () Bool)

(declare-fun b!2707315 () Bool)

(declare-fun lt!957433 () tuple2!30922)

(declare-fun lt!957422 () tuple2!30922)

(declare-fun prepend!1103 (BalanceConc!19202 Token!9028) BalanceConc!19202)

(assert (=> b!2707315 (= e!1707037 (= lt!957422 (tuple2!30923 (prepend!1103 (_1!18093 lt!957433) (_1!18094 (v!32980 lt!957441))) (_2!18093 lt!957433))))))

(declare-datatypes ((LexerInterface!4379 0))(
  ( (LexerInterfaceExt!4376 (__x!20146 Int)) (Lexer!4377) )
))
(declare-fun thiss!11556 () LexerInterface!4379)

(declare-fun lexRec!639 (LexerInterface!4379 List!31392 BalanceConc!19200) tuple2!30922)

(assert (=> b!2707315 (= lt!957433 (lexRec!639 thiss!11556 rules!1182 (_2!18094 (v!32980 lt!957441))))))

(declare-fun b!2707316 () Bool)

(declare-fun e!1707039 () Bool)

(declare-fun treated!9 () BalanceConc!19200)

(declare-fun tp!856334 () Bool)

(assert (=> b!2707316 (= e!1707039 (and (inv!42432 (c!436801 treated!9)) tp!856334))))

(declare-fun b!2707317 () Bool)

(assert (=> b!2707317 (= e!1707029 e!1707036)))

(declare-fun res!1136986 () Bool)

(assert (=> b!2707317 (=> (not res!1136986) (not e!1707036))))

(declare-fun list!11825 (BalanceConc!19202) List!31391)

(declare-fun ++!7726 (BalanceConc!19202 BalanceConc!19202) BalanceConc!19202)

(assert (=> b!2707317 (= res!1136986 (= (list!11825 (_1!18093 lt!957432)) (list!11825 (++!7726 acc!331 (_1!18093 lt!957427)))))))

(declare-fun input!603 () BalanceConc!19200)

(assert (=> b!2707317 (= lt!957427 (lexRec!639 thiss!11556 rules!1182 input!603))))

(assert (=> b!2707317 (= lt!957432 (lexRec!639 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2707318 () Bool)

(declare-fun res!1136985 () Bool)

(declare-fun e!1707032 () Bool)

(assert (=> b!2707318 (=> (not res!1136985) (not e!1707032))))

(declare-fun isEmpty!17820 (List!31392) Bool)

(assert (=> b!2707318 (= res!1136985 (not (isEmpty!17820 rules!1182)))))

(declare-fun b!2707320 () Bool)

(declare-fun e!1707042 () Bool)

(declare-fun tp!856330 () Bool)

(assert (=> b!2707320 (= e!1707042 (and (inv!42432 (c!436801 input!603)) tp!856330))))

(declare-fun lt!957437 () Option!6169)

(declare-fun e!1707040 () Bool)

(declare-fun lt!957430 () tuple2!30922)

(declare-fun b!2707321 () Bool)

(assert (=> b!2707321 (= e!1707040 (= lt!957427 (tuple2!30923 (prepend!1103 (_1!18093 lt!957430) (_1!18094 (v!32980 lt!957437))) (_2!18093 lt!957430))))))

(declare-fun b!2707322 () Bool)

(declare-fun res!1136984 () Bool)

(assert (=> b!2707322 (=> (not res!1136984) (not e!1707032))))

(declare-fun rulesInvariant!3864 (LexerInterface!4379 List!31392) Bool)

(assert (=> b!2707322 (= res!1136984 (rulesInvariant!3864 thiss!11556 rules!1182))))

(declare-fun b!2707323 () Bool)

(declare-fun e!1707033 () Bool)

(assert (=> b!2707323 (= e!1707033 (not true))))

(assert (=> b!2707323 e!1707037))

(declare-fun c!436799 () Bool)

(get-info :version)

(assert (=> b!2707323 (= c!436799 ((_ is Some!6168) lt!957441))))

(declare-fun lt!957438 () BalanceConc!19200)

(assert (=> b!2707323 (= lt!957422 (lexRec!639 thiss!11556 rules!1182 lt!957438))))

(declare-fun maxPrefixZipperSequence!1027 (LexerInterface!4379 List!31392 BalanceConc!19200) Option!6169)

(assert (=> b!2707323 (= lt!957441 (maxPrefixZipperSequence!1027 thiss!11556 rules!1182 lt!957438))))

(declare-fun lt!957431 () BalanceConc!19200)

(declare-fun ++!7727 (BalanceConc!19200 BalanceConc!19200) BalanceConc!19200)

(assert (=> b!2707323 (= lt!957438 (++!7727 treated!9 lt!957431))))

(declare-fun lt!957428 () List!31391)

(declare-fun lt!957435 () List!31390)

(declare-datatypes ((tuple2!30926 0))(
  ( (tuple2!30927 (_1!18095 List!31391) (_2!18095 List!31390)) )
))
(declare-fun lexList!1210 (LexerInterface!4379 List!31392 List!31390) tuple2!30926)

(assert (=> b!2707323 (= (lexList!1210 thiss!11556 rules!1182 lt!957435) (tuple2!30927 lt!957428 Nil!31290))))

(declare-fun lt!957426 () List!31390)

(declare-fun lt!957420 () List!31391)

(declare-datatypes ((Unit!45325 0))(
  ( (Unit!45326) )
))
(declare-fun lt!957434 () Unit!45325)

(declare-fun lemmaLexThenLexPrefix!418 (LexerInterface!4379 List!31392 List!31390 List!31390 List!31391 List!31391 List!31390) Unit!45325)

(assert (=> b!2707323 (= lt!957434 (lemmaLexThenLexPrefix!418 thiss!11556 rules!1182 lt!957435 lt!957426 lt!957428 lt!957420 (list!11824 (_2!18093 lt!957430))))))

(declare-fun append!792 (BalanceConc!19202 Token!9028) BalanceConc!19202)

(assert (=> b!2707323 (= lt!957428 (list!11825 (append!792 acc!331 (_1!18094 (v!32980 lt!957437)))))))

(declare-fun lt!957429 () List!31391)

(declare-fun lt!957436 () List!31391)

(declare-fun ++!7728 (List!31391 List!31391) List!31391)

(assert (=> b!2707323 (= (++!7728 (++!7728 lt!957429 lt!957436) lt!957420) (++!7728 lt!957429 (++!7728 lt!957436 lt!957420)))))

(declare-fun lt!957423 () Unit!45325)

(declare-fun lemmaConcatAssociativity!1583 (List!31391 List!31391 List!31391) Unit!45325)

(assert (=> b!2707323 (= lt!957423 (lemmaConcatAssociativity!1583 lt!957429 lt!957436 lt!957420))))

(assert (=> b!2707323 (= lt!957420 (list!11825 (_1!18093 lt!957430)))))

(assert (=> b!2707323 (= lt!957436 (Cons!31291 (_1!18094 (v!32980 lt!957437)) Nil!31291))))

(assert (=> b!2707323 e!1707040))

(declare-fun res!1136989 () Bool)

(assert (=> b!2707323 (=> (not res!1136989) (not e!1707040))))

(declare-fun lt!957424 () List!31390)

(declare-fun lt!957439 () List!31390)

(declare-fun ++!7729 (List!31390 List!31390) List!31390)

(assert (=> b!2707323 (= res!1136989 (= (++!7729 lt!957435 lt!957426) (++!7729 lt!957439 (++!7729 lt!957424 lt!957426))))))

(assert (=> b!2707323 (= lt!957435 (++!7729 lt!957439 lt!957424))))

(declare-fun lt!957440 () Unit!45325)

(declare-fun lemmaConcatAssociativity!1584 (List!31390 List!31390 List!31390) Unit!45325)

(assert (=> b!2707323 (= lt!957440 (lemmaConcatAssociativity!1584 lt!957439 lt!957424 lt!957426))))

(assert (=> b!2707323 (= lt!957426 (list!11824 (_2!18094 (v!32980 lt!957437))))))

(assert (=> b!2707323 (= lt!957424 (list!11824 lt!957431))))

(declare-fun charsOf!3006 (Token!9028) BalanceConc!19200)

(assert (=> b!2707323 (= lt!957431 (charsOf!3006 (_1!18094 (v!32980 lt!957437))))))

(assert (=> b!2707323 (= lt!957430 (lexRec!639 thiss!11556 rules!1182 (_2!18094 (v!32980 lt!957437))))))

(declare-fun b!2707324 () Bool)

(assert (=> b!2707324 (= e!1707037 (= lt!957422 (tuple2!30923 (BalanceConc!19203 Empty!9794) lt!957438)))))

(declare-fun b!2707325 () Bool)

(declare-fun e!1707031 () Bool)

(declare-fun tp!856333 () Bool)

(assert (=> b!2707325 (= e!1707031 (and e!1707034 tp!856333))))

(declare-fun b!2707326 () Bool)

(assert (=> b!2707326 (= e!1707036 e!1707033)))

(declare-fun res!1136987 () Bool)

(assert (=> b!2707326 (=> (not res!1136987) (not e!1707033))))

(assert (=> b!2707326 (= res!1136987 ((_ is Some!6168) lt!957437))))

(assert (=> b!2707326 (= lt!957437 (maxPrefixZipperSequence!1027 thiss!11556 rules!1182 input!603))))

(declare-fun res!1136992 () Bool)

(assert (=> start!262824 (=> (not res!1136992) (not e!1707032))))

(assert (=> start!262824 (= res!1136992 ((_ is Lexer!4377) thiss!11556))))

(assert (=> start!262824 e!1707032))

(declare-fun inv!42433 (BalanceConc!19200) Bool)

(assert (=> start!262824 (and (inv!42433 treated!9) e!1707039)))

(assert (=> start!262824 (and (inv!42433 input!603) e!1707042)))

(assert (=> start!262824 true))

(assert (=> start!262824 e!1707031))

(assert (=> start!262824 (and (inv!42433 totalInput!328) e!1707041)))

(declare-fun inv!42434 (BalanceConc!19202) Bool)

(assert (=> start!262824 (and (inv!42434 acc!331) e!1707043)))

(assert (=> b!2707319 (= e!1707035 (and tp!856331 tp!856336))))

(declare-fun b!2707327 () Bool)

(declare-fun e!1707038 () Bool)

(assert (=> b!2707327 (= e!1707038 e!1707029)))

(declare-fun res!1136990 () Bool)

(assert (=> b!2707327 (=> (not res!1136990) (not e!1707029))))

(declare-fun lt!957425 () List!31391)

(assert (=> b!2707327 (= res!1136990 (= lt!957425 lt!957429))))

(assert (=> b!2707327 (= lt!957429 (list!11825 acc!331))))

(assert (=> b!2707327 (= lt!957425 (list!11825 (_1!18093 lt!957421)))))

(assert (=> b!2707327 (= lt!957421 (lexRec!639 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2707328 () Bool)

(assert (=> b!2707328 (= e!1707032 e!1707038)))

(declare-fun res!1136993 () Bool)

(assert (=> b!2707328 (=> (not res!1136993) (not e!1707038))))

(assert (=> b!2707328 (= res!1136993 (= (list!11824 totalInput!328) (++!7729 lt!957439 (list!11824 input!603))))))

(assert (=> b!2707328 (= lt!957439 (list!11824 treated!9))))

(assert (= (and start!262824 res!1136992) b!2707318))

(assert (= (and b!2707318 res!1136985) b!2707322))

(assert (= (and b!2707322 res!1136984) b!2707328))

(assert (= (and b!2707328 res!1136993) b!2707327))

(assert (= (and b!2707327 res!1136990) b!2707311))

(assert (= (and b!2707311 res!1136991) b!2707317))

(assert (= (and b!2707317 res!1136986) b!2707314))

(assert (= (and b!2707314 res!1136988) b!2707326))

(assert (= (and b!2707326 res!1136987) b!2707323))

(assert (= (and b!2707323 res!1136989) b!2707321))

(assert (= (and b!2707323 c!436799) b!2707315))

(assert (= (and b!2707323 (not c!436799)) b!2707324))

(assert (= start!262824 b!2707316))

(assert (= start!262824 b!2707320))

(assert (= b!2707312 b!2707319))

(assert (= b!2707325 b!2707312))

(assert (= (and start!262824 ((_ is Cons!31292) rules!1182)) b!2707325))

(assert (= start!262824 b!2707313))

(assert (= start!262824 b!2707310))

(declare-fun m!3097853 () Bool)

(assert (=> b!2707322 m!3097853))

(declare-fun m!3097855 () Bool)

(assert (=> b!2707321 m!3097855))

(declare-fun m!3097857 () Bool)

(assert (=> b!2707314 m!3097857))

(declare-fun m!3097859 () Bool)

(assert (=> b!2707314 m!3097859))

(declare-fun m!3097861 () Bool)

(assert (=> b!2707315 m!3097861))

(declare-fun m!3097863 () Bool)

(assert (=> b!2707315 m!3097863))

(declare-fun m!3097865 () Bool)

(assert (=> b!2707312 m!3097865))

(declare-fun m!3097867 () Bool)

(assert (=> b!2707312 m!3097867))

(declare-fun m!3097869 () Bool)

(assert (=> b!2707327 m!3097869))

(declare-fun m!3097871 () Bool)

(assert (=> b!2707327 m!3097871))

(declare-fun m!3097873 () Bool)

(assert (=> b!2707327 m!3097873))

(declare-fun m!3097875 () Bool)

(assert (=> b!2707328 m!3097875))

(declare-fun m!3097877 () Bool)

(assert (=> b!2707328 m!3097877))

(assert (=> b!2707328 m!3097877))

(declare-fun m!3097879 () Bool)

(assert (=> b!2707328 m!3097879))

(declare-fun m!3097881 () Bool)

(assert (=> b!2707328 m!3097881))

(declare-fun m!3097883 () Bool)

(assert (=> b!2707316 m!3097883))

(declare-fun m!3097885 () Bool)

(assert (=> b!2707323 m!3097885))

(declare-fun m!3097887 () Bool)

(assert (=> b!2707323 m!3097887))

(declare-fun m!3097889 () Bool)

(assert (=> b!2707323 m!3097889))

(declare-fun m!3097891 () Bool)

(assert (=> b!2707323 m!3097891))

(declare-fun m!3097893 () Bool)

(assert (=> b!2707323 m!3097893))

(declare-fun m!3097895 () Bool)

(assert (=> b!2707323 m!3097895))

(declare-fun m!3097897 () Bool)

(assert (=> b!2707323 m!3097897))

(declare-fun m!3097899 () Bool)

(assert (=> b!2707323 m!3097899))

(declare-fun m!3097901 () Bool)

(assert (=> b!2707323 m!3097901))

(declare-fun m!3097903 () Bool)

(assert (=> b!2707323 m!3097903))

(declare-fun m!3097905 () Bool)

(assert (=> b!2707323 m!3097905))

(assert (=> b!2707323 m!3097885))

(declare-fun m!3097907 () Bool)

(assert (=> b!2707323 m!3097907))

(declare-fun m!3097909 () Bool)

(assert (=> b!2707323 m!3097909))

(declare-fun m!3097911 () Bool)

(assert (=> b!2707323 m!3097911))

(declare-fun m!3097913 () Bool)

(assert (=> b!2707323 m!3097913))

(declare-fun m!3097915 () Bool)

(assert (=> b!2707323 m!3097915))

(declare-fun m!3097917 () Bool)

(assert (=> b!2707323 m!3097917))

(declare-fun m!3097919 () Bool)

(assert (=> b!2707323 m!3097919))

(assert (=> b!2707323 m!3097899))

(assert (=> b!2707323 m!3097889))

(declare-fun m!3097921 () Bool)

(assert (=> b!2707323 m!3097921))

(assert (=> b!2707323 m!3097909))

(declare-fun m!3097923 () Bool)

(assert (=> b!2707323 m!3097923))

(declare-fun m!3097925 () Bool)

(assert (=> b!2707323 m!3097925))

(assert (=> b!2707323 m!3097893))

(declare-fun m!3097927 () Bool)

(assert (=> b!2707323 m!3097927))

(declare-fun m!3097929 () Bool)

(assert (=> b!2707323 m!3097929))

(declare-fun m!3097931 () Bool)

(assert (=> b!2707310 m!3097931))

(declare-fun m!3097933 () Bool)

(assert (=> b!2707326 m!3097933))

(declare-fun m!3097935 () Bool)

(assert (=> b!2707311 m!3097935))

(assert (=> b!2707311 m!3097935))

(declare-fun m!3097937 () Bool)

(assert (=> b!2707311 m!3097937))

(declare-fun m!3097939 () Bool)

(assert (=> b!2707313 m!3097939))

(declare-fun m!3097941 () Bool)

(assert (=> start!262824 m!3097941))

(declare-fun m!3097943 () Bool)

(assert (=> start!262824 m!3097943))

(declare-fun m!3097945 () Bool)

(assert (=> start!262824 m!3097945))

(declare-fun m!3097947 () Bool)

(assert (=> start!262824 m!3097947))

(declare-fun m!3097949 () Bool)

(assert (=> b!2707318 m!3097949))

(declare-fun m!3097951 () Bool)

(assert (=> b!2707320 m!3097951))

(declare-fun m!3097953 () Bool)

(assert (=> b!2707317 m!3097953))

(declare-fun m!3097955 () Bool)

(assert (=> b!2707317 m!3097955))

(declare-fun m!3097957 () Bool)

(assert (=> b!2707317 m!3097957))

(declare-fun m!3097959 () Bool)

(assert (=> b!2707317 m!3097959))

(assert (=> b!2707317 m!3097957))

(declare-fun m!3097961 () Bool)

(assert (=> b!2707317 m!3097961))

(check-sat (not b!2707326) (not b!2707327) (not b!2707321) b_and!199881 (not b!2707314) (not b!2707323) (not b!2707316) (not b!2707311) (not b!2707313) (not start!262824) (not b_next!77153) (not b!2707325) (not b!2707312) (not b!2707310) b_and!199883 (not b!2707317) (not b!2707318) (not b!2707320) (not b!2707322) (not b!2707315) (not b!2707328) (not b_next!77155))
(check-sat b_and!199883 b_and!199881 (not b_next!77155) (not b_next!77153))
