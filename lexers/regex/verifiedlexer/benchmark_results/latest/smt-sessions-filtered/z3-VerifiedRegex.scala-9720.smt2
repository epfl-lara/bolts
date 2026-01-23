; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!508228 () Bool)

(assert start!508228)

(declare-fun b!4862341 () Bool)

(declare-fun b_free!130547 () Bool)

(declare-fun b_next!131337 () Bool)

(assert (=> b!4862341 (= b_free!130547 (not b_next!131337))))

(declare-fun tp!1368193 () Bool)

(declare-fun b_and!342399 () Bool)

(assert (=> b!4862341 (= tp!1368193 b_and!342399)))

(declare-fun b_free!130549 () Bool)

(declare-fun b_next!131339 () Bool)

(assert (=> b!4862341 (= b_free!130549 (not b_next!131339))))

(declare-fun tp!1368190 () Bool)

(declare-fun b_and!342401 () Bool)

(assert (=> b!4862341 (= tp!1368190 b_and!342401)))

(declare-fun b!4862337 () Bool)

(declare-fun e!3040112 () Bool)

(declare-fun e!3040118 () Bool)

(assert (=> b!4862337 (= e!3040112 e!3040118)))

(declare-fun res!2075724 () Bool)

(assert (=> b!4862337 (=> (not res!2075724) (not e!3040118))))

(declare-datatypes ((List!56012 0))(
  ( (Nil!55888) (Cons!55888 (h!62336 (_ BitVec 16)) (t!363636 List!56012)) )
))
(declare-datatypes ((TokenValue!8330 0))(
  ( (FloatLiteralValue!16660 (text!58755 List!56012)) (TokenValueExt!8329 (__x!33953 Int)) (Broken!41650 (value!257688 List!56012)) (Object!8453) (End!8330) (Def!8330) (Underscore!8330) (Match!8330) (Else!8330) (Error!8330) (Case!8330) (If!8330) (Extends!8330) (Abstract!8330) (Class!8330) (Val!8330) (DelimiterValue!16660 (del!8390 List!56012)) (KeywordValue!8336 (value!257689 List!56012)) (CommentValue!16660 (value!257690 List!56012)) (WhitespaceValue!16660 (value!257691 List!56012)) (IndentationValue!8330 (value!257692 List!56012)) (String!63067) (Int32!8330) (Broken!41651 (value!257693 List!56012)) (Boolean!8331) (Unit!145913) (OperatorValue!8333 (op!8390 List!56012)) (IdentifierValue!16660 (value!257694 List!56012)) (IdentifierValue!16661 (value!257695 List!56012)) (WhitespaceValue!16661 (value!257696 List!56012)) (True!16660) (False!16660) (Broken!41652 (value!257697 List!56012)) (Broken!41653 (value!257698 List!56012)) (True!16661) (RightBrace!8330) (RightBracket!8330) (Colon!8330) (Null!8330) (Comma!8330) (LeftBracket!8330) (False!16661) (LeftBrace!8330) (ImaginaryLiteralValue!8330 (text!58756 List!56012)) (StringLiteralValue!24990 (value!257699 List!56012)) (EOFValue!8330 (value!257700 List!56012)) (IdentValue!8330 (value!257701 List!56012)) (DelimiterValue!16661 (value!257702 List!56012)) (DedentValue!8330 (value!257703 List!56012)) (NewLineValue!8330 (value!257704 List!56012)) (IntegerValue!24990 (value!257705 (_ BitVec 32)) (text!58757 List!56012)) (IntegerValue!24991 (value!257706 Int) (text!58758 List!56012)) (Times!8330) (Or!8330) (Equal!8330) (Minus!8330) (Broken!41654 (value!257707 List!56012)) (And!8330) (Div!8330) (LessEqual!8330) (Mod!8330) (Concat!21425) (Not!8330) (Plus!8330) (SpaceValue!8330 (value!257708 List!56012)) (IntegerValue!24992 (value!257709 Int) (text!58759 List!56012)) (StringLiteralValue!24991 (text!58760 List!56012)) (FloatLiteralValue!16661 (text!58761 List!56012)) (BytesLiteralValue!8330 (value!257710 List!56012)) (CommentValue!16661 (value!257711 List!56012)) (StringLiteralValue!24992 (value!257712 List!56012)) (ErrorTokenValue!8330 (msg!8391 List!56012)) )
))
(declare-datatypes ((C!26388 0))(
  ( (C!26389 (val!22516 Int)) )
))
(declare-datatypes ((List!56013 0))(
  ( (Nil!55889) (Cons!55889 (h!62337 C!26388) (t!363637 List!56013)) )
))
(declare-datatypes ((IArray!29163 0))(
  ( (IArray!29164 (innerList!14639 List!56013)) )
))
(declare-datatypes ((Conc!14551 0))(
  ( (Node!14551 (left!40593 Conc!14551) (right!40923 Conc!14551) (csize!29332 Int) (cheight!14762 Int)) (Leaf!24272 (xs!17857 IArray!29163) (csize!29333 Int)) (Empty!14551) )
))
(declare-datatypes ((BalanceConc!28544 0))(
  ( (BalanceConc!28545 (c!826954 Conc!14551)) )
))
(declare-datatypes ((TokenValueInjection!15968 0))(
  ( (TokenValueInjection!15969 (toValue!10875 Int) (toChars!10734 Int)) )
))
(declare-datatypes ((Regex!13095 0))(
  ( (ElementMatch!13095 (c!826955 C!26388)) (Concat!21426 (regOne!26702 Regex!13095) (regTwo!26702 Regex!13095)) (EmptyExpr!13095) (Star!13095 (reg!13424 Regex!13095)) (EmptyLang!13095) (Union!13095 (regOne!26703 Regex!13095) (regTwo!26703 Regex!13095)) )
))
(declare-datatypes ((String!63068 0))(
  ( (String!63069 (value!257713 String)) )
))
(declare-datatypes ((Rule!15840 0))(
  ( (Rule!15841 (regex!8020 Regex!13095) (tag!8884 String!63068) (isSeparator!8020 Bool) (transformation!8020 TokenValueInjection!15968)) )
))
(declare-datatypes ((Token!14628 0))(
  ( (Token!14629 (value!257714 TokenValue!8330) (rule!11138 Rule!15840) (size!36816 Int) (originalCharacters!8345 List!56013)) )
))
(declare-datatypes ((tuple2!59716 0))(
  ( (tuple2!59717 (_1!33161 Token!14628) (_2!33161 BalanceConc!28544)) )
))
(declare-datatypes ((Option!13765 0))(
  ( (None!13764) (Some!13764 (v!49666 tuple2!59716)) )
))
(declare-fun lt!1992642 () Option!13765)

(declare-fun lt!1992641 () List!56013)

(declare-fun ++!12169 (List!56013 List!56013) List!56013)

(declare-fun list!17451 (BalanceConc!28544) List!56013)

(declare-fun charsOf!5331 (Token!14628) BalanceConc!28544)

(assert (=> b!4862337 (= res!2075724 (= (++!12169 (list!17451 (charsOf!5331 (_1!33161 (v!49666 lt!1992642)))) (list!17451 (_2!33161 (v!49666 lt!1992642)))) lt!1992641))))

(declare-datatypes ((List!56014 0))(
  ( (Nil!55890) (Cons!55890 (h!62338 Rule!15840) (t!363638 List!56014)) )
))
(declare-fun rules!1248 () List!56014)

(declare-datatypes ((LexerInterface!7612 0))(
  ( (LexerInterfaceExt!7609 (__x!33954 Int)) (Lexer!7610) )
))
(declare-fun thiss!11777 () LexerInterface!7612)

(declare-datatypes ((List!56015 0))(
  ( (Nil!55891) (Cons!55891 (h!62339 Token!14628) (t!363639 List!56015)) )
))
(declare-datatypes ((IArray!29165 0))(
  ( (IArray!29166 (innerList!14640 List!56015)) )
))
(declare-datatypes ((Conc!14552 0))(
  ( (Node!14552 (left!40594 Conc!14552) (right!40924 Conc!14552) (csize!29334 Int) (cheight!14763 Int)) (Leaf!24273 (xs!17858 IArray!29165) (csize!29335 Int)) (Empty!14552) )
))
(declare-datatypes ((BalanceConc!28546 0))(
  ( (BalanceConc!28547 (c!826956 Conc!14552)) )
))
(declare-datatypes ((tuple2!59718 0))(
  ( (tuple2!59719 (_1!33162 BalanceConc!28546) (_2!33162 BalanceConc!28544)) )
))
(declare-fun lt!1992643 () tuple2!59718)

(declare-fun lexRec!841 (LexerInterface!7612 List!56014 BalanceConc!28544) tuple2!59718)

(assert (=> b!4862337 (= lt!1992643 (lexRec!841 thiss!11777 rules!1248 (_2!33161 (v!49666 lt!1992642))))))

(declare-fun b!4862338 () Bool)

(declare-fun e!3040119 () Bool)

(declare-fun input!661 () BalanceConc!28544)

(declare-fun tp!1368191 () Bool)

(declare-fun inv!71780 (Conc!14551) Bool)

(assert (=> b!4862338 (= e!3040119 (and (inv!71780 (c!826954 input!661)) tp!1368191))))

(declare-fun b!4862339 () Bool)

(declare-fun e!3040115 () Bool)

(declare-fun lt!1992644 () BalanceConc!28546)

(declare-fun isEmpty!29884 (BalanceConc!28546) Bool)

(assert (=> b!4862339 (= e!3040115 (not (isEmpty!29884 lt!1992644)))))

(declare-fun b!4862340 () Bool)

(declare-fun e!3040114 () Bool)

(declare-fun totalInput!332 () BalanceConc!28544)

(declare-fun tp!1368195 () Bool)

(assert (=> b!4862340 (= e!3040114 (and (inv!71780 (c!826954 totalInput!332)) tp!1368195))))

(declare-fun e!3040117 () Bool)

(assert (=> b!4862341 (= e!3040117 (and tp!1368193 tp!1368190))))

(declare-fun b!4862343 () Bool)

(declare-fun res!2075729 () Bool)

(declare-fun e!3040108 () Bool)

(assert (=> b!4862343 (=> (not res!2075729) (not e!3040108))))

(declare-fun isEmpty!29885 (List!56014) Bool)

(assert (=> b!4862343 (= res!2075729 (not (isEmpty!29885 rules!1248)))))

(declare-fun b!4862344 () Bool)

(declare-fun e!3040109 () Bool)

(assert (=> b!4862344 (= e!3040109 e!3040112)))

(declare-fun res!2075726 () Bool)

(assert (=> b!4862344 (=> (not res!2075726) (not e!3040112))))

(get-info :version)

(assert (=> b!4862344 (= res!2075726 ((_ is Some!13764) lt!1992642))))

(declare-fun maxPrefixZipperSequenceV2!619 (LexerInterface!7612 List!56014 BalanceConc!28544 BalanceConc!28544) Option!13765)

(assert (=> b!4862344 (= lt!1992642 (maxPrefixZipperSequenceV2!619 thiss!11777 rules!1248 input!661 totalInput!332))))

(declare-fun e!3040111 () Bool)

(declare-fun b!4862345 () Bool)

(declare-fun tp!1368192 () Bool)

(declare-fun inv!71776 (String!63068) Bool)

(declare-fun inv!71781 (TokenValueInjection!15968) Bool)

(assert (=> b!4862345 (= e!3040111 (and tp!1368192 (inv!71776 (tag!8884 (h!62338 rules!1248))) (inv!71781 (transformation!8020 (h!62338 rules!1248))) e!3040117))))

(declare-fun b!4862346 () Bool)

(declare-fun e!3040107 () Bool)

(assert (=> b!4862346 (= e!3040107 false)))

(declare-fun lt!1992640 () List!56015)

(declare-fun list!17452 (BalanceConc!28546) List!56015)

(assert (=> b!4862346 (= lt!1992640 (list!17452 lt!1992644))))

(declare-datatypes ((tuple2!59720 0))(
  ( (tuple2!59721 (_1!33163 List!56015) (_2!33163 List!56013)) )
))
(declare-fun lt!1992639 () tuple2!59720)

(declare-fun lexList!2095 (LexerInterface!7612 List!56014 List!56013) tuple2!59720)

(assert (=> b!4862346 (= lt!1992639 (lexList!2095 thiss!11777 rules!1248 lt!1992641))))

(declare-fun b!4862347 () Bool)

(assert (=> b!4862347 (= e!3040118 e!3040107)))

(declare-fun res!2075725 () Bool)

(assert (=> b!4862347 (=> (not res!2075725) (not e!3040107))))

(declare-fun e!3040116 () Bool)

(assert (=> b!4862347 (= res!2075725 e!3040116)))

(declare-fun c!826953 () Bool)

(declare-fun size!36817 (BalanceConc!28546) Int)

(assert (=> b!4862347 (= c!826953 (> (size!36817 lt!1992644) 0))))

(declare-fun prepend!1386 (BalanceConc!28546 Token!14628) BalanceConc!28546)

(assert (=> b!4862347 (= lt!1992644 (prepend!1386 (_1!33162 lt!1992643) (_1!33161 (v!49666 lt!1992642))))))

(declare-fun b!4862348 () Bool)

(declare-fun e!3040110 () Bool)

(declare-fun tp!1368194 () Bool)

(assert (=> b!4862348 (= e!3040110 (and e!3040111 tp!1368194))))

(declare-fun b!4862349 () Bool)

(assert (=> b!4862349 (= e!3040108 e!3040109)))

(declare-fun res!2075727 () Bool)

(assert (=> b!4862349 (=> (not res!2075727) (not e!3040109))))

(declare-fun isSuffix!1049 (List!56013 List!56013) Bool)

(assert (=> b!4862349 (= res!2075727 (isSuffix!1049 lt!1992641 (list!17451 totalInput!332)))))

(assert (=> b!4862349 (= lt!1992641 (list!17451 input!661))))

(declare-fun b!4862350 () Bool)

(assert (=> b!4862350 (= e!3040116 e!3040115)))

(declare-fun res!2075722 () Bool)

(declare-fun size!36818 (BalanceConc!28544) Int)

(assert (=> b!4862350 (= res!2075722 (< (size!36818 (_2!33162 lt!1992643)) (size!36818 input!661)))))

(assert (=> b!4862350 (=> (not res!2075722) (not e!3040115))))

(declare-fun b!4862351 () Bool)

(declare-fun res!2075728 () Bool)

(assert (=> b!4862351 (=> (not res!2075728) (not e!3040108))))

(declare-fun rulesInvariant!6710 (LexerInterface!7612 List!56014) Bool)

(assert (=> b!4862351 (= res!2075728 (rulesInvariant!6710 thiss!11777 rules!1248))))

(declare-fun b!4862342 () Bool)

(assert (=> b!4862342 (= e!3040116 (= (list!17451 (_2!33162 lt!1992643)) lt!1992641))))

(declare-fun res!2075723 () Bool)

(assert (=> start!508228 (=> (not res!2075723) (not e!3040108))))

(assert (=> start!508228 (= res!2075723 ((_ is Lexer!7610) thiss!11777))))

(assert (=> start!508228 e!3040108))

(assert (=> start!508228 true))

(assert (=> start!508228 e!3040110))

(declare-fun inv!71782 (BalanceConc!28544) Bool)

(assert (=> start!508228 (and (inv!71782 totalInput!332) e!3040114)))

(assert (=> start!508228 (and (inv!71782 input!661) e!3040119)))

(assert (= (and start!508228 res!2075723) b!4862343))

(assert (= (and b!4862343 res!2075729) b!4862351))

(assert (= (and b!4862351 res!2075728) b!4862349))

(assert (= (and b!4862349 res!2075727) b!4862344))

(assert (= (and b!4862344 res!2075726) b!4862337))

(assert (= (and b!4862337 res!2075724) b!4862347))

(assert (= (and b!4862347 c!826953) b!4862350))

(assert (= (and b!4862347 (not c!826953)) b!4862342))

(assert (= (and b!4862350 res!2075722) b!4862339))

(assert (= (and b!4862347 res!2075725) b!4862346))

(assert (= b!4862345 b!4862341))

(assert (= b!4862348 b!4862345))

(assert (= (and start!508228 ((_ is Cons!55890) rules!1248)) b!4862348))

(assert (= start!508228 b!4862340))

(assert (= start!508228 b!4862338))

(declare-fun m!5859894 () Bool)

(assert (=> b!4862345 m!5859894))

(declare-fun m!5859896 () Bool)

(assert (=> b!4862345 m!5859896))

(declare-fun m!5859898 () Bool)

(assert (=> b!4862347 m!5859898))

(declare-fun m!5859900 () Bool)

(assert (=> b!4862347 m!5859900))

(declare-fun m!5859902 () Bool)

(assert (=> b!4862339 m!5859902))

(declare-fun m!5859904 () Bool)

(assert (=> b!4862344 m!5859904))

(declare-fun m!5859906 () Bool)

(assert (=> b!4862340 m!5859906))

(declare-fun m!5859908 () Bool)

(assert (=> b!4862346 m!5859908))

(declare-fun m!5859910 () Bool)

(assert (=> b!4862346 m!5859910))

(declare-fun m!5859912 () Bool)

(assert (=> b!4862337 m!5859912))

(declare-fun m!5859914 () Bool)

(assert (=> b!4862337 m!5859914))

(declare-fun m!5859916 () Bool)

(assert (=> b!4862337 m!5859916))

(assert (=> b!4862337 m!5859914))

(declare-fun m!5859918 () Bool)

(assert (=> b!4862337 m!5859918))

(declare-fun m!5859920 () Bool)

(assert (=> b!4862337 m!5859920))

(assert (=> b!4862337 m!5859920))

(assert (=> b!4862337 m!5859912))

(declare-fun m!5859922 () Bool)

(assert (=> b!4862343 m!5859922))

(declare-fun m!5859924 () Bool)

(assert (=> start!508228 m!5859924))

(declare-fun m!5859926 () Bool)

(assert (=> start!508228 m!5859926))

(declare-fun m!5859928 () Bool)

(assert (=> b!4862342 m!5859928))

(declare-fun m!5859930 () Bool)

(assert (=> b!4862349 m!5859930))

(assert (=> b!4862349 m!5859930))

(declare-fun m!5859932 () Bool)

(assert (=> b!4862349 m!5859932))

(declare-fun m!5859934 () Bool)

(assert (=> b!4862349 m!5859934))

(declare-fun m!5859936 () Bool)

(assert (=> b!4862338 m!5859936))

(declare-fun m!5859938 () Bool)

(assert (=> b!4862351 m!5859938))

(declare-fun m!5859940 () Bool)

(assert (=> b!4862350 m!5859940))

(declare-fun m!5859942 () Bool)

(assert (=> b!4862350 m!5859942))

(check-sat (not b!4862337) (not b!4862347) (not b!4862351) (not b!4862340) (not b!4862342) (not start!508228) (not b!4862346) (not b!4862339) (not b!4862345) (not b_next!131339) (not b!4862350) (not b!4862349) (not b!4862343) (not b_next!131337) b_and!342399 b_and!342401 (not b!4862338) (not b!4862348) (not b!4862344))
(check-sat b_and!342401 b_and!342399 (not b_next!131337) (not b_next!131339))
