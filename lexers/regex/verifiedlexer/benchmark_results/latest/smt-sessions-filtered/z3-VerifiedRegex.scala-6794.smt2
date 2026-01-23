; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!354548 () Bool)

(assert start!354548)

(declare-fun b!3776795 () Bool)

(declare-fun b_free!101069 () Bool)

(declare-fun b_next!101773 () Bool)

(assert (=> b!3776795 (= b_free!101069 (not b_next!101773))))

(declare-fun tp!1152228 () Bool)

(declare-fun b_and!280531 () Bool)

(assert (=> b!3776795 (= tp!1152228 b_and!280531)))

(declare-fun b_free!101071 () Bool)

(declare-fun b_next!101775 () Bool)

(assert (=> b!3776795 (= b_free!101071 (not b_next!101775))))

(declare-fun tp!1152230 () Bool)

(declare-fun b_and!280533 () Bool)

(assert (=> b!3776795 (= tp!1152230 b_and!280533)))

(declare-fun b!3776791 () Bool)

(declare-datatypes ((List!40404 0))(
  ( (Nil!40280) (Cons!40280 (h!45700 (_ BitVec 16)) (t!305115 List!40404)) )
))
(declare-datatypes ((TokenValue!6424 0))(
  ( (FloatLiteralValue!12848 (text!45413 List!40404)) (TokenValueExt!6423 (__x!25065 Int)) (Broken!32120 (value!197110 List!40404)) (Object!6547) (End!6424) (Def!6424) (Underscore!6424) (Match!6424) (Else!6424) (Error!6424) (Case!6424) (If!6424) (Extends!6424) (Abstract!6424) (Class!6424) (Val!6424) (DelimiterValue!12848 (del!6484 List!40404)) (KeywordValue!6430 (value!197111 List!40404)) (CommentValue!12848 (value!197112 List!40404)) (WhitespaceValue!12848 (value!197113 List!40404)) (IndentationValue!6424 (value!197114 List!40404)) (String!45801) (Int32!6424) (Broken!32121 (value!197115 List!40404)) (Boolean!6425) (Unit!57989) (OperatorValue!6427 (op!6484 List!40404)) (IdentifierValue!12848 (value!197116 List!40404)) (IdentifierValue!12849 (value!197117 List!40404)) (WhitespaceValue!12849 (value!197118 List!40404)) (True!12848) (False!12848) (Broken!32122 (value!197119 List!40404)) (Broken!32123 (value!197120 List!40404)) (True!12849) (RightBrace!6424) (RightBracket!6424) (Colon!6424) (Null!6424) (Comma!6424) (LeftBracket!6424) (False!12849) (LeftBrace!6424) (ImaginaryLiteralValue!6424 (text!45414 List!40404)) (StringLiteralValue!19272 (value!197121 List!40404)) (EOFValue!6424 (value!197122 List!40404)) (IdentValue!6424 (value!197123 List!40404)) (DelimiterValue!12849 (value!197124 List!40404)) (DedentValue!6424 (value!197125 List!40404)) (NewLineValue!6424 (value!197126 List!40404)) (IntegerValue!19272 (value!197127 (_ BitVec 32)) (text!45415 List!40404)) (IntegerValue!19273 (value!197128 Int) (text!45416 List!40404)) (Times!6424) (Or!6424) (Equal!6424) (Minus!6424) (Broken!32124 (value!197129 List!40404)) (And!6424) (Div!6424) (LessEqual!6424) (Mod!6424) (Concat!17523) (Not!6424) (Plus!6424) (SpaceValue!6424 (value!197130 List!40404)) (IntegerValue!19274 (value!197131 Int) (text!45417 List!40404)) (StringLiteralValue!19273 (text!45418 List!40404)) (FloatLiteralValue!12849 (text!45419 List!40404)) (BytesLiteralValue!6424 (value!197132 List!40404)) (CommentValue!12849 (value!197133 List!40404)) (StringLiteralValue!19274 (value!197134 List!40404)) (ErrorTokenValue!6424 (msg!6485 List!40404)) )
))
(declare-datatypes ((C!22384 0))(
  ( (C!22385 (val!13268 Int)) )
))
(declare-datatypes ((Regex!11099 0))(
  ( (ElementMatch!11099 (c!654859 C!22384)) (Concat!17524 (regOne!22710 Regex!11099) (regTwo!22710 Regex!11099)) (EmptyExpr!11099) (Star!11099 (reg!11428 Regex!11099)) (EmptyLang!11099) (Union!11099 (regOne!22711 Regex!11099) (regTwo!22711 Regex!11099)) )
))
(declare-datatypes ((String!45802 0))(
  ( (String!45803 (value!197135 String)) )
))
(declare-datatypes ((List!40405 0))(
  ( (Nil!40281) (Cons!40281 (h!45701 C!22384) (t!305116 List!40405)) )
))
(declare-datatypes ((IArray!24729 0))(
  ( (IArray!24730 (innerList!12422 List!40405)) )
))
(declare-datatypes ((Conc!12362 0))(
  ( (Node!12362 (left!31168 Conc!12362) (right!31498 Conc!12362) (csize!24954 Int) (cheight!12573 Int)) (Leaf!19157 (xs!15588 IArray!24729) (csize!24955 Int)) (Empty!12362) )
))
(declare-datatypes ((BalanceConc!24318 0))(
  ( (BalanceConc!24319 (c!654860 Conc!12362)) )
))
(declare-datatypes ((TokenValueInjection!12276 0))(
  ( (TokenValueInjection!12277 (toValue!8562 Int) (toChars!8421 Int)) )
))
(declare-datatypes ((Rule!12188 0))(
  ( (Rule!12189 (regex!6194 Regex!11099) (tag!7054 String!45802) (isSeparator!6194 Bool) (transformation!6194 TokenValueInjection!12276)) )
))
(declare-datatypes ((Token!11526 0))(
  ( (Token!11527 (value!197136 TokenValue!6424) (rule!8966 Rule!12188) (size!30305 Int) (originalCharacters!6794 List!40405)) )
))
(declare-datatypes ((List!40406 0))(
  ( (Nil!40282) (Cons!40282 (h!45702 Token!11526) (t!305117 List!40406)) )
))
(declare-datatypes ((IArray!24731 0))(
  ( (IArray!24732 (innerList!12423 List!40406)) )
))
(declare-datatypes ((Conc!12363 0))(
  ( (Node!12363 (left!31169 Conc!12363) (right!31499 Conc!12363) (csize!24956 Int) (cheight!12574 Int)) (Leaf!19158 (xs!15589 IArray!24731) (csize!24957 Int)) (Empty!12363) )
))
(declare-datatypes ((BalanceConc!24320 0))(
  ( (BalanceConc!24321 (c!654861 Conc!12363)) )
))
(declare-datatypes ((tuple2!39356 0))(
  ( (tuple2!39357 (_1!22812 BalanceConc!24320) (_2!22812 BalanceConc!24318)) )
))
(declare-fun e!2335504 () tuple2!39356)

(declare-fun input!678 () BalanceConc!24318)

(assert (=> b!3776791 (= e!2335504 (tuple2!39357 (BalanceConc!24321 Empty!12363) input!678))))

(declare-fun b!3776792 () Bool)

(declare-fun e!2335511 () Bool)

(declare-fun e!2335517 () Bool)

(assert (=> b!3776792 (= e!2335511 e!2335517)))

(declare-fun res!1529102 () Bool)

(assert (=> b!3776792 (=> (not res!1529102) (not e!2335517))))

(declare-fun lt!1307873 () List!40406)

(declare-fun lt!1307885 () List!40406)

(assert (=> b!3776792 (= res!1529102 (= lt!1307873 lt!1307885))))

(declare-fun acc!335 () BalanceConc!24320)

(declare-fun list!14919 (BalanceConc!24320) List!40406)

(assert (=> b!3776792 (= lt!1307885 (list!14919 acc!335))))

(declare-fun lt!1307876 () tuple2!39356)

(assert (=> b!3776792 (= lt!1307873 (list!14919 (_1!22812 lt!1307876)))))

(declare-fun treated!13 () BalanceConc!24318)

(declare-datatypes ((List!40407 0))(
  ( (Nil!40283) (Cons!40283 (h!45703 Rule!12188) (t!305118 List!40407)) )
))
(declare-fun rules!1265 () List!40407)

(declare-datatypes ((LexerInterface!5783 0))(
  ( (LexerInterfaceExt!5780 (__x!25066 Int)) (Lexer!5781) )
))
(declare-fun thiss!11876 () LexerInterface!5783)

(declare-fun lexRec!807 (LexerInterface!5783 List!40407 BalanceConc!24318) tuple2!39356)

(assert (=> b!3776792 (= lt!1307876 (lexRec!807 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3776793 () Bool)

(declare-fun res!1529109 () Bool)

(declare-fun e!2335515 () Bool)

(assert (=> b!3776793 (=> (not res!1529109) (not e!2335515))))

(declare-fun lt!1307888 () tuple2!39356)

(declare-fun lt!1307884 () tuple2!39356)

(declare-fun list!14920 (BalanceConc!24318) List!40405)

(assert (=> b!3776793 (= res!1529109 (= (list!14920 (_2!22812 lt!1307888)) (list!14920 (_2!22812 lt!1307884))))))

(declare-fun b!3776794 () Bool)

(declare-fun res!1529108 () Bool)

(assert (=> b!3776794 (=> (not res!1529108) (not e!2335517))))

(declare-fun isEmpty!23671 (List!40405) Bool)

(assert (=> b!3776794 (= res!1529108 (isEmpty!23671 (list!14920 (_2!22812 lt!1307876))))))

(declare-fun e!2335513 () Bool)

(assert (=> b!3776795 (= e!2335513 (and tp!1152228 tp!1152230))))

(declare-fun b!3776796 () Bool)

(declare-fun e!2335505 () Bool)

(declare-fun tp!1152225 () Bool)

(declare-fun inv!54141 (Conc!12362) Bool)

(assert (=> b!3776796 (= e!2335505 (and (inv!54141 (c!654860 input!678)) tp!1152225))))

(declare-fun b!3776797 () Bool)

(declare-fun lt!1307895 () tuple2!39356)

(declare-datatypes ((tuple2!39358 0))(
  ( (tuple2!39359 (_1!22813 Token!11526) (_2!22813 BalanceConc!24318)) )
))
(declare-datatypes ((Option!8598 0))(
  ( (None!8597) (Some!8597 (v!38779 tuple2!39358)) )
))
(declare-fun lt!1307891 () Option!8598)

(declare-fun prepend!1330 (BalanceConc!24320 Token!11526) BalanceConc!24320)

(assert (=> b!3776797 (= e!2335504 (tuple2!39357 (prepend!1330 (_1!22812 lt!1307895) (_1!22813 (v!38779 lt!1307891))) (_2!22812 lt!1307895)))))

(assert (=> b!3776797 (= lt!1307895 (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307891))))))

(declare-fun b!3776798 () Bool)

(declare-fun e!2335508 () Bool)

(assert (=> b!3776798 (= e!2335515 (not e!2335508))))

(declare-fun res!1529099 () Bool)

(assert (=> b!3776798 (=> res!1529099 e!2335508)))

(declare-fun lt!1307886 () List!40405)

(declare-fun lt!1307869 () List!40405)

(declare-fun isSuffix!968 (List!40405 List!40405) Bool)

(assert (=> b!3776798 (= res!1529099 (not (isSuffix!968 lt!1307886 lt!1307869)))))

(declare-fun lt!1307883 () List!40405)

(assert (=> b!3776798 (isSuffix!968 lt!1307886 lt!1307883)))

(declare-datatypes ((Unit!57990 0))(
  ( (Unit!57991) )
))
(declare-fun lt!1307867 () Unit!57990)

(declare-fun lt!1307897 () List!40405)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!653 (List!40405 List!40405) Unit!57990)

(assert (=> b!3776798 (= lt!1307867 (lemmaConcatTwoListThenFSndIsSuffix!653 lt!1307897 lt!1307886))))

(declare-fun res!1529101 () Bool)

(declare-fun e!2335514 () Bool)

(assert (=> start!354548 (=> (not res!1529101) (not e!2335514))))

(get-info :version)

(assert (=> start!354548 (= res!1529101 ((_ is Lexer!5781) thiss!11876))))

(assert (=> start!354548 e!2335514))

(declare-fun inv!54142 (BalanceConc!24318) Bool)

(assert (=> start!354548 (and (inv!54142 input!678) e!2335505)))

(declare-fun e!2335510 () Bool)

(declare-fun inv!54143 (BalanceConc!24320) Bool)

(assert (=> start!354548 (and (inv!54143 acc!335) e!2335510)))

(declare-fun e!2335512 () Bool)

(assert (=> start!354548 (and (inv!54142 treated!13) e!2335512)))

(declare-fun e!2335516 () Bool)

(assert (=> start!354548 e!2335516))

(assert (=> start!354548 true))

(declare-fun totalInput!335 () BalanceConc!24318)

(declare-fun e!2335503 () Bool)

(assert (=> start!354548 (and (inv!54142 totalInput!335) e!2335503)))

(declare-fun b!3776799 () Bool)

(declare-fun res!1529105 () Bool)

(assert (=> b!3776799 (=> (not res!1529105) (not e!2335514))))

(declare-fun isEmpty!23672 (List!40407) Bool)

(assert (=> b!3776799 (= res!1529105 (not (isEmpty!23672 rules!1265)))))

(declare-fun tp!1152226 () Bool)

(declare-fun e!2335506 () Bool)

(declare-fun b!3776800 () Bool)

(declare-fun inv!54135 (String!45802) Bool)

(declare-fun inv!54144 (TokenValueInjection!12276) Bool)

(assert (=> b!3776800 (= e!2335506 (and tp!1152226 (inv!54135 (tag!7054 (h!45703 rules!1265))) (inv!54144 (transformation!6194 (h!45703 rules!1265))) e!2335513))))

(declare-fun b!3776801 () Bool)

(declare-fun tp!1152229 () Bool)

(declare-fun inv!54145 (Conc!12363) Bool)

(assert (=> b!3776801 (= e!2335510 (and (inv!54145 (c!654861 acc!335)) tp!1152229))))

(declare-fun b!3776802 () Bool)

(assert (=> b!3776802 (= e!2335517 e!2335515)))

(declare-fun res!1529103 () Bool)

(assert (=> b!3776802 (=> (not res!1529103) (not e!2335515))))

(declare-fun ++!10051 (BalanceConc!24320 BalanceConc!24320) BalanceConc!24320)

(assert (=> b!3776802 (= res!1529103 (= (list!14919 (_1!22812 lt!1307888)) (list!14919 (++!10051 acc!335 (_1!22812 lt!1307884)))))))

(assert (=> b!3776802 (= lt!1307884 (lexRec!807 thiss!11876 rules!1265 input!678))))

(assert (=> b!3776802 (= lt!1307888 (lexRec!807 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3776803 () Bool)

(declare-fun res!1529107 () Bool)

(declare-fun e!2335509 () Bool)

(assert (=> b!3776803 (=> res!1529107 e!2335509)))

(declare-fun lt!1307875 () tuple2!39356)

(declare-fun lt!1307871 () List!40406)

(assert (=> b!3776803 (= res!1529107 (not (= (list!14919 (_1!22812 lt!1307875)) lt!1307871)))))

(declare-fun b!3776804 () Bool)

(declare-fun tp!1152232 () Bool)

(assert (=> b!3776804 (= e!2335503 (and (inv!54141 (c!654860 totalInput!335)) tp!1152232))))

(declare-fun b!3776805 () Bool)

(declare-fun e!2335518 () Bool)

(assert (=> b!3776805 (= e!2335508 e!2335518)))

(declare-fun res!1529100 () Bool)

(assert (=> b!3776805 (=> res!1529100 e!2335518)))

(declare-fun lt!1307894 () Option!8598)

(assert (=> b!3776805 (= res!1529100 (not ((_ is Some!8597) lt!1307894)))))

(declare-fun maxPrefixZipperSequenceV2!587 (LexerInterface!5783 List!40407 BalanceConc!24318 BalanceConc!24318) Option!8598)

(assert (=> b!3776805 (= lt!1307894 (maxPrefixZipperSequenceV2!587 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun b!3776806 () Bool)

(declare-fun tp!1152227 () Bool)

(assert (=> b!3776806 (= e!2335516 (and e!2335506 tp!1152227))))

(declare-fun b!3776807 () Bool)

(declare-fun res!1529110 () Bool)

(assert (=> b!3776807 (=> (not res!1529110) (not e!2335514))))

(declare-fun rulesInvariant!5126 (LexerInterface!5783 List!40407) Bool)

(assert (=> b!3776807 (= res!1529110 (rulesInvariant!5126 thiss!11876 rules!1265))))

(declare-fun b!3776808 () Bool)

(declare-fun res!1529106 () Bool)

(assert (=> b!3776808 (=> res!1529106 e!2335509)))

(declare-fun lt!1307881 () List!40405)

(assert (=> b!3776808 (= res!1529106 (not (= lt!1307869 lt!1307881)))))

(declare-fun b!3776809 () Bool)

(declare-fun e!2335502 () Bool)

(declare-fun lt!1307874 () BalanceConc!24318)

(assert (=> b!3776809 (= e!2335502 (= lt!1307875 (tuple2!39357 (BalanceConc!24321 Empty!12363) lt!1307874)))))

(declare-fun b!3776810 () Bool)

(assert (=> b!3776810 (= e!2335509 (isEmpty!23671 (list!14920 (_2!22812 lt!1307875))))))

(declare-fun b!3776811 () Bool)

(declare-fun tp!1152231 () Bool)

(assert (=> b!3776811 (= e!2335512 (and (inv!54141 (c!654860 treated!13)) tp!1152231))))

(declare-fun b!3776812 () Bool)

(assert (=> b!3776812 (= e!2335518 e!2335509)))

(declare-fun res!1529104 () Bool)

(assert (=> b!3776812 (=> res!1529104 e!2335509)))

(declare-fun lt!1307870 () List!40405)

(assert (=> b!3776812 (= res!1529104 (not (isSuffix!968 lt!1307870 lt!1307869)))))

(assert (=> b!3776812 (isSuffix!968 lt!1307870 lt!1307881)))

(declare-fun lt!1307880 () List!40405)

(declare-fun ++!10052 (List!40405 List!40405) List!40405)

(assert (=> b!3776812 (= lt!1307881 (++!10052 lt!1307880 lt!1307870))))

(declare-fun lt!1307882 () Unit!57990)

(assert (=> b!3776812 (= lt!1307882 (lemmaConcatTwoListThenFSndIsSuffix!653 lt!1307880 lt!1307870))))

(assert (=> b!3776812 (= lt!1307880 (list!14920 lt!1307874))))

(assert (=> b!3776812 e!2335502))

(declare-fun c!654857 () Bool)

(declare-fun lt!1307877 () Option!8598)

(assert (=> b!3776812 (= c!654857 ((_ is Some!8597) lt!1307877))))

(assert (=> b!3776812 (= lt!1307875 (lexRec!807 thiss!11876 rules!1265 lt!1307874))))

(declare-fun maxPrefixZipperSequence!1191 (LexerInterface!5783 List!40407 BalanceConc!24318) Option!8598)

(assert (=> b!3776812 (= lt!1307877 (maxPrefixZipperSequence!1191 thiss!11876 rules!1265 lt!1307874))))

(declare-fun lt!1307879 () BalanceConc!24318)

(declare-fun ++!10053 (BalanceConc!24318 BalanceConc!24318) BalanceConc!24318)

(assert (=> b!3776812 (= lt!1307874 (++!10053 treated!13 lt!1307879))))

(declare-fun lt!1307896 () List!40405)

(declare-datatypes ((tuple2!39360 0))(
  ( (tuple2!39361 (_1!22814 List!40406) (_2!22814 List!40405)) )
))
(declare-fun lexList!1557 (LexerInterface!5783 List!40407 List!40405) tuple2!39360)

(assert (=> b!3776812 (= (lexList!1557 thiss!11876 rules!1265 lt!1307896) (tuple2!39361 lt!1307871 Nil!40281))))

(declare-fun lt!1307878 () List!40406)

(declare-fun lt!1307868 () tuple2!39356)

(declare-fun lt!1307887 () Unit!57990)

(declare-fun lemmaLexThenLexPrefix!559 (LexerInterface!5783 List!40407 List!40405 List!40405 List!40406 List!40406 List!40405) Unit!57990)

(assert (=> b!3776812 (= lt!1307887 (lemmaLexThenLexPrefix!559 thiss!11876 rules!1265 lt!1307896 lt!1307870 lt!1307871 lt!1307878 (list!14920 (_2!22812 lt!1307868))))))

(declare-fun append!1032 (BalanceConc!24320 Token!11526) BalanceConc!24320)

(assert (=> b!3776812 (= lt!1307871 (list!14919 (append!1032 acc!335 (_1!22813 (v!38779 lt!1307894)))))))

(declare-fun lt!1307890 () List!40406)

(declare-fun ++!10054 (List!40406 List!40406) List!40406)

(assert (=> b!3776812 (= (++!10054 (++!10054 lt!1307885 lt!1307890) lt!1307878) (++!10054 lt!1307885 (++!10054 lt!1307890 lt!1307878)))))

(declare-fun lt!1307872 () Unit!57990)

(declare-fun lemmaConcatAssociativity!2141 (List!40406 List!40406 List!40406) Unit!57990)

(assert (=> b!3776812 (= lt!1307872 (lemmaConcatAssociativity!2141 lt!1307885 lt!1307890 lt!1307878))))

(assert (=> b!3776812 (= lt!1307878 (list!14919 (_1!22812 lt!1307868)))))

(assert (=> b!3776812 (= lt!1307890 (Cons!40282 (_1!22813 (v!38779 lt!1307894)) Nil!40282))))

(assert (=> b!3776812 (= lt!1307884 e!2335504)))

(declare-fun c!654858 () Bool)

(assert (=> b!3776812 (= c!654858 ((_ is Some!8597) lt!1307891))))

(assert (=> b!3776812 (= lt!1307891 (maxPrefixZipperSequence!1191 thiss!11876 rules!1265 input!678))))

(declare-fun lt!1307889 () List!40405)

(assert (=> b!3776812 (= (++!10052 lt!1307896 lt!1307870) (++!10052 lt!1307897 (++!10052 lt!1307889 lt!1307870)))))

(assert (=> b!3776812 (= lt!1307896 (++!10052 lt!1307897 lt!1307889))))

(declare-fun lt!1307892 () Unit!57990)

(declare-fun lemmaConcatAssociativity!2142 (List!40405 List!40405 List!40405) Unit!57990)

(assert (=> b!3776812 (= lt!1307892 (lemmaConcatAssociativity!2142 lt!1307897 lt!1307889 lt!1307870))))

(assert (=> b!3776812 (= lt!1307870 (list!14920 (_2!22813 (v!38779 lt!1307894))))))

(assert (=> b!3776812 (= lt!1307889 (list!14920 lt!1307879))))

(declare-fun charsOf!4036 (Token!11526) BalanceConc!24318)

(assert (=> b!3776812 (= lt!1307879 (charsOf!4036 (_1!22813 (v!38779 lt!1307894))))))

(assert (=> b!3776812 (= lt!1307868 (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307894))))))

(declare-fun b!3776813 () Bool)

(assert (=> b!3776813 (= e!2335514 e!2335511)))

(declare-fun res!1529111 () Bool)

(assert (=> b!3776813 (=> (not res!1529111) (not e!2335511))))

(assert (=> b!3776813 (= res!1529111 (= lt!1307869 lt!1307883))))

(assert (=> b!3776813 (= lt!1307883 (++!10052 lt!1307897 lt!1307886))))

(assert (=> b!3776813 (= lt!1307869 (list!14920 totalInput!335))))

(assert (=> b!3776813 (= lt!1307886 (list!14920 input!678))))

(assert (=> b!3776813 (= lt!1307897 (list!14920 treated!13))))

(declare-fun lt!1307893 () tuple2!39356)

(declare-fun b!3776814 () Bool)

(assert (=> b!3776814 (= e!2335502 (= lt!1307875 (tuple2!39357 (prepend!1330 (_1!22812 lt!1307893) (_1!22813 (v!38779 lt!1307877))) (_2!22812 lt!1307893))))))

(assert (=> b!3776814 (= lt!1307893 (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307877))))))

(assert (= (and start!354548 res!1529101) b!3776799))

(assert (= (and b!3776799 res!1529105) b!3776807))

(assert (= (and b!3776807 res!1529110) b!3776813))

(assert (= (and b!3776813 res!1529111) b!3776792))

(assert (= (and b!3776792 res!1529102) b!3776794))

(assert (= (and b!3776794 res!1529108) b!3776802))

(assert (= (and b!3776802 res!1529103) b!3776793))

(assert (= (and b!3776793 res!1529109) b!3776798))

(assert (= (and b!3776798 (not res!1529099)) b!3776805))

(assert (= (and b!3776805 (not res!1529100)) b!3776812))

(assert (= (and b!3776812 c!654858) b!3776797))

(assert (= (and b!3776812 (not c!654858)) b!3776791))

(assert (= (and b!3776812 c!654857) b!3776814))

(assert (= (and b!3776812 (not c!654857)) b!3776809))

(assert (= (and b!3776812 (not res!1529104)) b!3776808))

(assert (= (and b!3776808 (not res!1529106)) b!3776803))

(assert (= (and b!3776803 (not res!1529107)) b!3776810))

(assert (= start!354548 b!3776796))

(assert (= start!354548 b!3776801))

(assert (= start!354548 b!3776811))

(assert (= b!3776800 b!3776795))

(assert (= b!3776806 b!3776800))

(assert (= (and start!354548 ((_ is Cons!40283) rules!1265)) b!3776806))

(assert (= start!354548 b!3776804))

(declare-fun m!4282047 () Bool)

(assert (=> b!3776805 m!4282047))

(declare-fun m!4282049 () Bool)

(assert (=> b!3776802 m!4282049))

(assert (=> b!3776802 m!4282049))

(declare-fun m!4282051 () Bool)

(assert (=> b!3776802 m!4282051))

(declare-fun m!4282053 () Bool)

(assert (=> b!3776802 m!4282053))

(declare-fun m!4282055 () Bool)

(assert (=> b!3776802 m!4282055))

(declare-fun m!4282057 () Bool)

(assert (=> b!3776802 m!4282057))

(declare-fun m!4282059 () Bool)

(assert (=> b!3776814 m!4282059))

(declare-fun m!4282061 () Bool)

(assert (=> b!3776814 m!4282061))

(declare-fun m!4282063 () Bool)

(assert (=> b!3776799 m!4282063))

(declare-fun m!4282065 () Bool)

(assert (=> b!3776807 m!4282065))

(declare-fun m!4282067 () Bool)

(assert (=> b!3776811 m!4282067))

(declare-fun m!4282069 () Bool)

(assert (=> b!3776812 m!4282069))

(declare-fun m!4282071 () Bool)

(assert (=> b!3776812 m!4282071))

(declare-fun m!4282073 () Bool)

(assert (=> b!3776812 m!4282073))

(declare-fun m!4282075 () Bool)

(assert (=> b!3776812 m!4282075))

(declare-fun m!4282077 () Bool)

(assert (=> b!3776812 m!4282077))

(declare-fun m!4282079 () Bool)

(assert (=> b!3776812 m!4282079))

(declare-fun m!4282081 () Bool)

(assert (=> b!3776812 m!4282081))

(declare-fun m!4282083 () Bool)

(assert (=> b!3776812 m!4282083))

(declare-fun m!4282085 () Bool)

(assert (=> b!3776812 m!4282085))

(declare-fun m!4282087 () Bool)

(assert (=> b!3776812 m!4282087))

(declare-fun m!4282089 () Bool)

(assert (=> b!3776812 m!4282089))

(declare-fun m!4282091 () Bool)

(assert (=> b!3776812 m!4282091))

(declare-fun m!4282093 () Bool)

(assert (=> b!3776812 m!4282093))

(declare-fun m!4282095 () Bool)

(assert (=> b!3776812 m!4282095))

(declare-fun m!4282097 () Bool)

(assert (=> b!3776812 m!4282097))

(declare-fun m!4282099 () Bool)

(assert (=> b!3776812 m!4282099))

(declare-fun m!4282101 () Bool)

(assert (=> b!3776812 m!4282101))

(declare-fun m!4282103 () Bool)

(assert (=> b!3776812 m!4282103))

(declare-fun m!4282105 () Bool)

(assert (=> b!3776812 m!4282105))

(assert (=> b!3776812 m!4282069))

(assert (=> b!3776812 m!4282087))

(declare-fun m!4282107 () Bool)

(assert (=> b!3776812 m!4282107))

(declare-fun m!4282109 () Bool)

(assert (=> b!3776812 m!4282109))

(declare-fun m!4282111 () Bool)

(assert (=> b!3776812 m!4282111))

(assert (=> b!3776812 m!4282101))

(declare-fun m!4282113 () Bool)

(assert (=> b!3776812 m!4282113))

(declare-fun m!4282115 () Bool)

(assert (=> b!3776812 m!4282115))

(assert (=> b!3776812 m!4282075))

(declare-fun m!4282117 () Bool)

(assert (=> b!3776812 m!4282117))

(declare-fun m!4282119 () Bool)

(assert (=> b!3776812 m!4282119))

(assert (=> b!3776812 m!4282103))

(declare-fun m!4282121 () Bool)

(assert (=> b!3776812 m!4282121))

(declare-fun m!4282123 () Bool)

(assert (=> b!3776812 m!4282123))

(declare-fun m!4282125 () Bool)

(assert (=> b!3776812 m!4282125))

(declare-fun m!4282127 () Bool)

(assert (=> b!3776796 m!4282127))

(declare-fun m!4282129 () Bool)

(assert (=> b!3776797 m!4282129))

(declare-fun m!4282131 () Bool)

(assert (=> b!3776797 m!4282131))

(declare-fun m!4282133 () Bool)

(assert (=> b!3776801 m!4282133))

(declare-fun m!4282135 () Bool)

(assert (=> start!354548 m!4282135))

(declare-fun m!4282137 () Bool)

(assert (=> start!354548 m!4282137))

(declare-fun m!4282139 () Bool)

(assert (=> start!354548 m!4282139))

(declare-fun m!4282141 () Bool)

(assert (=> start!354548 m!4282141))

(declare-fun m!4282143 () Bool)

(assert (=> b!3776792 m!4282143))

(declare-fun m!4282145 () Bool)

(assert (=> b!3776792 m!4282145))

(declare-fun m!4282147 () Bool)

(assert (=> b!3776792 m!4282147))

(declare-fun m!4282149 () Bool)

(assert (=> b!3776798 m!4282149))

(declare-fun m!4282151 () Bool)

(assert (=> b!3776798 m!4282151))

(declare-fun m!4282153 () Bool)

(assert (=> b!3776798 m!4282153))

(declare-fun m!4282155 () Bool)

(assert (=> b!3776804 m!4282155))

(declare-fun m!4282157 () Bool)

(assert (=> b!3776800 m!4282157))

(declare-fun m!4282159 () Bool)

(assert (=> b!3776800 m!4282159))

(declare-fun m!4282161 () Bool)

(assert (=> b!3776810 m!4282161))

(assert (=> b!3776810 m!4282161))

(declare-fun m!4282163 () Bool)

(assert (=> b!3776810 m!4282163))

(declare-fun m!4282165 () Bool)

(assert (=> b!3776813 m!4282165))

(declare-fun m!4282167 () Bool)

(assert (=> b!3776813 m!4282167))

(declare-fun m!4282169 () Bool)

(assert (=> b!3776813 m!4282169))

(declare-fun m!4282171 () Bool)

(assert (=> b!3776813 m!4282171))

(declare-fun m!4282173 () Bool)

(assert (=> b!3776803 m!4282173))

(declare-fun m!4282175 () Bool)

(assert (=> b!3776793 m!4282175))

(declare-fun m!4282177 () Bool)

(assert (=> b!3776793 m!4282177))

(declare-fun m!4282179 () Bool)

(assert (=> b!3776794 m!4282179))

(assert (=> b!3776794 m!4282179))

(declare-fun m!4282181 () Bool)

(assert (=> b!3776794 m!4282181))

(check-sat (not b!3776805) b_and!280533 (not b!3776797) (not b!3776810) (not b!3776807) (not b!3776804) (not b!3776802) (not b!3776801) (not b!3776812) (not b!3776811) (not b!3776813) (not b!3776796) (not b!3776799) (not b!3776793) (not b!3776806) (not b!3776814) (not b!3776792) (not b_next!101775) (not b!3776794) (not start!354548) b_and!280531 (not b_next!101773) (not b!3776803) (not b!3776800) (not b!3776798))
(check-sat b_and!280531 b_and!280533 (not b_next!101773) (not b_next!101775))
(get-model)

(declare-fun d!1106397 () Bool)

(declare-fun res!1529116 () Bool)

(declare-fun e!2335521 () Bool)

(assert (=> d!1106397 (=> (not res!1529116) (not e!2335521))))

(declare-fun rulesValid!2383 (LexerInterface!5783 List!40407) Bool)

(assert (=> d!1106397 (= res!1529116 (rulesValid!2383 thiss!11876 rules!1265))))

(assert (=> d!1106397 (= (rulesInvariant!5126 thiss!11876 rules!1265) e!2335521)))

(declare-fun b!3776817 () Bool)

(declare-datatypes ((List!40408 0))(
  ( (Nil!40284) (Cons!40284 (h!45704 String!45802) (t!305125 List!40408)) )
))
(declare-fun noDuplicateTag!2384 (LexerInterface!5783 List!40407 List!40408) Bool)

(assert (=> b!3776817 (= e!2335521 (noDuplicateTag!2384 thiss!11876 rules!1265 Nil!40284))))

(assert (= (and d!1106397 res!1529116) b!3776817))

(declare-fun m!4282183 () Bool)

(assert (=> d!1106397 m!4282183))

(declare-fun m!4282185 () Bool)

(assert (=> b!3776817 m!4282185))

(assert (=> b!3776807 d!1106397))

(declare-fun d!1106399 () Bool)

(declare-fun c!654864 () Bool)

(assert (=> d!1106399 (= c!654864 ((_ is Node!12362) (c!654860 input!678)))))

(declare-fun e!2335526 () Bool)

(assert (=> d!1106399 (= (inv!54141 (c!654860 input!678)) e!2335526)))

(declare-fun b!3776824 () Bool)

(declare-fun inv!54146 (Conc!12362) Bool)

(assert (=> b!3776824 (= e!2335526 (inv!54146 (c!654860 input!678)))))

(declare-fun b!3776825 () Bool)

(declare-fun e!2335527 () Bool)

(assert (=> b!3776825 (= e!2335526 e!2335527)))

(declare-fun res!1529119 () Bool)

(assert (=> b!3776825 (= res!1529119 (not ((_ is Leaf!19157) (c!654860 input!678))))))

(assert (=> b!3776825 (=> res!1529119 e!2335527)))

(declare-fun b!3776826 () Bool)

(declare-fun inv!54147 (Conc!12362) Bool)

(assert (=> b!3776826 (= e!2335527 (inv!54147 (c!654860 input!678)))))

(assert (= (and d!1106399 c!654864) b!3776824))

(assert (= (and d!1106399 (not c!654864)) b!3776825))

(assert (= (and b!3776825 (not res!1529119)) b!3776826))

(declare-fun m!4282187 () Bool)

(assert (=> b!3776824 m!4282187))

(declare-fun m!4282189 () Bool)

(assert (=> b!3776826 m!4282189))

(assert (=> b!3776796 d!1106399))

(declare-fun b!3776852 () Bool)

(declare-fun e!2335546 () Bool)

(declare-fun e!2335547 () Bool)

(assert (=> b!3776852 (= e!2335546 e!2335547)))

(declare-fun res!1529138 () Bool)

(assert (=> b!3776852 (=> res!1529138 e!2335547)))

(declare-fun lt!1307917 () Option!8598)

(declare-fun isDefined!6764 (Option!8598) Bool)

(assert (=> b!3776852 (= res!1529138 (not (isDefined!6764 lt!1307917)))))

(declare-fun bm!276462 () Bool)

(declare-fun call!276467 () Option!8598)

(declare-fun maxPrefixOneRuleZipperSequenceV2!230 (LexerInterface!5783 Rule!12188 BalanceConc!24318 BalanceConc!24318) Option!8598)

(assert (=> bm!276462 (= call!276467 (maxPrefixOneRuleZipperSequenceV2!230 thiss!11876 (h!45703 rules!1265) input!678 totalInput!335))))

(declare-fun d!1106401 () Bool)

(assert (=> d!1106401 e!2335546))

(declare-fun res!1529142 () Bool)

(assert (=> d!1106401 (=> (not res!1529142) (not e!2335546))))

(declare-datatypes ((tuple2!39362 0))(
  ( (tuple2!39363 (_1!22815 Token!11526) (_2!22815 List!40405)) )
))
(declare-datatypes ((Option!8599 0))(
  ( (None!8598) (Some!8598 (v!38784 tuple2!39362)) )
))
(declare-fun isDefined!6765 (Option!8599) Bool)

(declare-fun maxPrefixZipper!534 (LexerInterface!5783 List!40407 List!40405) Option!8599)

(assert (=> d!1106401 (= res!1529142 (= (isDefined!6764 lt!1307917) (isDefined!6765 (maxPrefixZipper!534 thiss!11876 rules!1265 (list!14920 input!678)))))))

(declare-fun e!2335550 () Option!8598)

(assert (=> d!1106401 (= lt!1307917 e!2335550)))

(declare-fun c!654870 () Bool)

(assert (=> d!1106401 (= c!654870 (and ((_ is Cons!40283) rules!1265) ((_ is Nil!40283) (t!305118 rules!1265))))))

(declare-fun lt!1307912 () Unit!57990)

(declare-fun lt!1307916 () Unit!57990)

(assert (=> d!1106401 (= lt!1307912 lt!1307916)))

(declare-fun lt!1307913 () List!40405)

(declare-fun lt!1307915 () List!40405)

(declare-fun isPrefix!3310 (List!40405 List!40405) Bool)

(assert (=> d!1106401 (isPrefix!3310 lt!1307913 lt!1307915)))

(declare-fun lemmaIsPrefixRefl!2095 (List!40405 List!40405) Unit!57990)

(assert (=> d!1106401 (= lt!1307916 (lemmaIsPrefixRefl!2095 lt!1307913 lt!1307915))))

(assert (=> d!1106401 (= lt!1307915 (list!14920 input!678))))

(assert (=> d!1106401 (= lt!1307913 (list!14920 input!678))))

(declare-fun rulesValidInductive!2169 (LexerInterface!5783 List!40407) Bool)

(assert (=> d!1106401 (rulesValidInductive!2169 thiss!11876 rules!1265)))

(assert (=> d!1106401 (= (maxPrefixZipperSequenceV2!587 thiss!11876 rules!1265 input!678 totalInput!335) lt!1307917)))

(declare-fun b!3776853 () Bool)

(declare-fun e!2335549 () Bool)

(declare-fun e!2335548 () Bool)

(assert (=> b!3776853 (= e!2335549 e!2335548)))

(declare-fun res!1529139 () Bool)

(assert (=> b!3776853 (=> (not res!1529139) (not e!2335548))))

(declare-fun get!13351 (Option!8598) tuple2!39358)

(declare-fun get!13352 (Option!8599) tuple2!39362)

(assert (=> b!3776853 (= res!1529139 (= (_1!22813 (get!13351 lt!1307917)) (_1!22815 (get!13352 (maxPrefixZipper!534 thiss!11876 rules!1265 (list!14920 input!678))))))))

(declare-fun b!3776854 () Bool)

(assert (=> b!3776854 (= e!2335550 call!276467)))

(declare-fun b!3776855 () Bool)

(declare-fun res!1529140 () Bool)

(assert (=> b!3776855 (=> (not res!1529140) (not e!2335546))))

(assert (=> b!3776855 (= res!1529140 e!2335549)))

(declare-fun res!1529137 () Bool)

(assert (=> b!3776855 (=> res!1529137 e!2335549)))

(assert (=> b!3776855 (= res!1529137 (not (isDefined!6764 lt!1307917)))))

(declare-fun b!3776856 () Bool)

(declare-fun lt!1307914 () Option!8598)

(declare-fun lt!1307918 () Option!8598)

(assert (=> b!3776856 (= e!2335550 (ite (and ((_ is None!8597) lt!1307914) ((_ is None!8597) lt!1307918)) None!8597 (ite ((_ is None!8597) lt!1307918) lt!1307914 (ite ((_ is None!8597) lt!1307914) lt!1307918 (ite (>= (size!30305 (_1!22813 (v!38779 lt!1307914))) (size!30305 (_1!22813 (v!38779 lt!1307918)))) lt!1307914 lt!1307918)))))))

(assert (=> b!3776856 (= lt!1307914 call!276467)))

(assert (=> b!3776856 (= lt!1307918 (maxPrefixZipperSequenceV2!587 thiss!11876 (t!305118 rules!1265) input!678 totalInput!335))))

(declare-fun b!3776857 () Bool)

(assert (=> b!3776857 (= e!2335548 (= (list!14920 (_2!22813 (get!13351 lt!1307917))) (_2!22815 (get!13352 (maxPrefixZipper!534 thiss!11876 rules!1265 (list!14920 input!678))))))))

(declare-fun e!2335551 () Bool)

(declare-fun b!3776858 () Bool)

(declare-fun maxPrefix!3102 (LexerInterface!5783 List!40407 List!40405) Option!8599)

(assert (=> b!3776858 (= e!2335551 (= (list!14920 (_2!22813 (get!13351 lt!1307917))) (_2!22815 (get!13352 (maxPrefix!3102 thiss!11876 rules!1265 (list!14920 input!678))))))))

(declare-fun b!3776859 () Bool)

(assert (=> b!3776859 (= e!2335547 e!2335551)))

(declare-fun res!1529141 () Bool)

(assert (=> b!3776859 (=> (not res!1529141) (not e!2335551))))

(assert (=> b!3776859 (= res!1529141 (= (_1!22813 (get!13351 lt!1307917)) (_1!22815 (get!13352 (maxPrefix!3102 thiss!11876 rules!1265 (list!14920 input!678))))))))

(assert (= (and d!1106401 c!654870) b!3776854))

(assert (= (and d!1106401 (not c!654870)) b!3776856))

(assert (= (or b!3776854 b!3776856) bm!276462))

(assert (= (and d!1106401 res!1529142) b!3776855))

(assert (= (and b!3776855 (not res!1529137)) b!3776853))

(assert (= (and b!3776853 res!1529139) b!3776857))

(assert (= (and b!3776855 res!1529140) b!3776852))

(assert (= (and b!3776852 (not res!1529138)) b!3776859))

(assert (= (and b!3776859 res!1529141) b!3776858))

(declare-fun m!4282197 () Bool)

(assert (=> b!3776853 m!4282197))

(assert (=> b!3776853 m!4282169))

(assert (=> b!3776853 m!4282169))

(declare-fun m!4282199 () Bool)

(assert (=> b!3776853 m!4282199))

(assert (=> b!3776853 m!4282199))

(declare-fun m!4282201 () Bool)

(assert (=> b!3776853 m!4282201))

(declare-fun m!4282203 () Bool)

(assert (=> b!3776855 m!4282203))

(assert (=> b!3776858 m!4282197))

(declare-fun m!4282205 () Bool)

(assert (=> b!3776858 m!4282205))

(assert (=> b!3776858 m!4282169))

(declare-fun m!4282207 () Bool)

(assert (=> b!3776858 m!4282207))

(assert (=> b!3776858 m!4282169))

(assert (=> b!3776858 m!4282207))

(declare-fun m!4282209 () Bool)

(assert (=> b!3776858 m!4282209))

(assert (=> b!3776859 m!4282197))

(assert (=> b!3776859 m!4282169))

(assert (=> b!3776859 m!4282169))

(assert (=> b!3776859 m!4282207))

(assert (=> b!3776859 m!4282207))

(assert (=> b!3776859 m!4282209))

(declare-fun m!4282211 () Bool)

(assert (=> b!3776856 m!4282211))

(assert (=> b!3776857 m!4282199))

(assert (=> b!3776857 m!4282201))

(assert (=> b!3776857 m!4282169))

(assert (=> b!3776857 m!4282197))

(assert (=> b!3776857 m!4282205))

(assert (=> b!3776857 m!4282169))

(assert (=> b!3776857 m!4282199))

(assert (=> b!3776852 m!4282203))

(declare-fun m!4282213 () Bool)

(assert (=> bm!276462 m!4282213))

(assert (=> d!1106401 m!4282169))

(declare-fun m!4282215 () Bool)

(assert (=> d!1106401 m!4282215))

(declare-fun m!4282217 () Bool)

(assert (=> d!1106401 m!4282217))

(assert (=> d!1106401 m!4282199))

(declare-fun m!4282219 () Bool)

(assert (=> d!1106401 m!4282219))

(assert (=> d!1106401 m!4282169))

(assert (=> d!1106401 m!4282199))

(assert (=> d!1106401 m!4282203))

(declare-fun m!4282221 () Bool)

(assert (=> d!1106401 m!4282221))

(assert (=> b!3776805 d!1106401))

(declare-fun d!1106409 () Bool)

(assert (=> d!1106409 (= (isEmpty!23671 (list!14920 (_2!22812 lt!1307876))) ((_ is Nil!40281) (list!14920 (_2!22812 lt!1307876))))))

(assert (=> b!3776794 d!1106409))

(declare-fun d!1106411 () Bool)

(declare-fun list!14921 (Conc!12362) List!40405)

(assert (=> d!1106411 (= (list!14920 (_2!22812 lt!1307876)) (list!14921 (c!654860 (_2!22812 lt!1307876))))))

(declare-fun bs!576996 () Bool)

(assert (= bs!576996 d!1106411))

(declare-fun m!4282223 () Bool)

(assert (=> bs!576996 m!4282223))

(assert (=> b!3776794 d!1106411))

(declare-fun d!1106413 () Bool)

(declare-fun c!654871 () Bool)

(assert (=> d!1106413 (= c!654871 ((_ is Node!12362) (c!654860 totalInput!335)))))

(declare-fun e!2335552 () Bool)

(assert (=> d!1106413 (= (inv!54141 (c!654860 totalInput!335)) e!2335552)))

(declare-fun b!3776860 () Bool)

(assert (=> b!3776860 (= e!2335552 (inv!54146 (c!654860 totalInput!335)))))

(declare-fun b!3776861 () Bool)

(declare-fun e!2335553 () Bool)

(assert (=> b!3776861 (= e!2335552 e!2335553)))

(declare-fun res!1529143 () Bool)

(assert (=> b!3776861 (= res!1529143 (not ((_ is Leaf!19157) (c!654860 totalInput!335))))))

(assert (=> b!3776861 (=> res!1529143 e!2335553)))

(declare-fun b!3776862 () Bool)

(assert (=> b!3776862 (= e!2335553 (inv!54147 (c!654860 totalInput!335)))))

(assert (= (and d!1106413 c!654871) b!3776860))

(assert (= (and d!1106413 (not c!654871)) b!3776861))

(assert (= (and b!3776861 (not res!1529143)) b!3776862))

(declare-fun m!4282225 () Bool)

(assert (=> b!3776860 m!4282225))

(declare-fun m!4282227 () Bool)

(assert (=> b!3776862 m!4282227))

(assert (=> b!3776804 d!1106413))

(declare-fun d!1106415 () Bool)

(assert (=> d!1106415 (= (list!14920 (_2!22812 lt!1307888)) (list!14921 (c!654860 (_2!22812 lt!1307888))))))

(declare-fun bs!576997 () Bool)

(assert (= bs!576997 d!1106415))

(declare-fun m!4282229 () Bool)

(assert (=> bs!576997 m!4282229))

(assert (=> b!3776793 d!1106415))

(declare-fun d!1106417 () Bool)

(assert (=> d!1106417 (= (list!14920 (_2!22812 lt!1307884)) (list!14921 (c!654860 (_2!22812 lt!1307884))))))

(declare-fun bs!576998 () Bool)

(assert (= bs!576998 d!1106417))

(declare-fun m!4282231 () Bool)

(assert (=> bs!576998 m!4282231))

(assert (=> b!3776793 d!1106417))

(declare-fun d!1106419 () Bool)

(declare-fun e!2335556 () Bool)

(assert (=> d!1106419 e!2335556))

(declare-fun res!1529146 () Bool)

(assert (=> d!1106419 (=> (not res!1529146) (not e!2335556))))

(declare-fun isBalanced!3555 (Conc!12363) Bool)

(declare-fun prepend!1331 (Conc!12363 Token!11526) Conc!12363)

(assert (=> d!1106419 (= res!1529146 (isBalanced!3555 (prepend!1331 (c!654861 (_1!22812 lt!1307893)) (_1!22813 (v!38779 lt!1307877)))))))

(declare-fun lt!1307921 () BalanceConc!24320)

(assert (=> d!1106419 (= lt!1307921 (BalanceConc!24321 (prepend!1331 (c!654861 (_1!22812 lt!1307893)) (_1!22813 (v!38779 lt!1307877)))))))

(assert (=> d!1106419 (= (prepend!1330 (_1!22812 lt!1307893) (_1!22813 (v!38779 lt!1307877))) lt!1307921)))

(declare-fun b!3776865 () Bool)

(assert (=> b!3776865 (= e!2335556 (= (list!14919 lt!1307921) (Cons!40282 (_1!22813 (v!38779 lt!1307877)) (list!14919 (_1!22812 lt!1307893)))))))

(assert (= (and d!1106419 res!1529146) b!3776865))

(declare-fun m!4282233 () Bool)

(assert (=> d!1106419 m!4282233))

(assert (=> d!1106419 m!4282233))

(declare-fun m!4282235 () Bool)

(assert (=> d!1106419 m!4282235))

(declare-fun m!4282237 () Bool)

(assert (=> b!3776865 m!4282237))

(declare-fun m!4282239 () Bool)

(assert (=> b!3776865 m!4282239))

(assert (=> b!3776814 d!1106419))

(declare-fun b!3776909 () Bool)

(declare-fun e!2335589 () tuple2!39356)

(declare-fun lt!1307954 () tuple2!39356)

(declare-fun lt!1307953 () Option!8598)

(assert (=> b!3776909 (= e!2335589 (tuple2!39357 (prepend!1330 (_1!22812 lt!1307954) (_1!22813 (v!38779 lt!1307953))) (_2!22812 lt!1307954)))))

(assert (=> b!3776909 (= lt!1307954 (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307953))))))

(declare-fun d!1106421 () Bool)

(declare-fun e!2335588 () Bool)

(assert (=> d!1106421 e!2335588))

(declare-fun res!1529171 () Bool)

(assert (=> d!1106421 (=> (not res!1529171) (not e!2335588))))

(declare-fun e!2335586 () Bool)

(assert (=> d!1106421 (= res!1529171 e!2335586)))

(declare-fun c!654880 () Bool)

(declare-fun lt!1307952 () tuple2!39356)

(declare-fun size!30306 (BalanceConc!24320) Int)

(assert (=> d!1106421 (= c!654880 (> (size!30306 (_1!22812 lt!1307952)) 0))))

(assert (=> d!1106421 (= lt!1307952 e!2335589)))

(declare-fun c!654881 () Bool)

(assert (=> d!1106421 (= c!654881 ((_ is Some!8597) lt!1307953))))

(assert (=> d!1106421 (= lt!1307953 (maxPrefixZipperSequence!1191 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307877))))))

(assert (=> d!1106421 (= (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307877))) lt!1307952)))

(declare-fun b!3776910 () Bool)

(assert (=> b!3776910 (= e!2335588 (= (list!14920 (_2!22812 lt!1307952)) (_2!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 (_2!22813 (v!38779 lt!1307877)))))))))

(declare-fun b!3776911 () Bool)

(assert (=> b!3776911 (= e!2335589 (tuple2!39357 (BalanceConc!24321 Empty!12363) (_2!22813 (v!38779 lt!1307877))))))

(declare-fun b!3776912 () Bool)

(declare-fun res!1529173 () Bool)

(assert (=> b!3776912 (=> (not res!1529173) (not e!2335588))))

(assert (=> b!3776912 (= res!1529173 (= (list!14919 (_1!22812 lt!1307952)) (_1!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 (_2!22813 (v!38779 lt!1307877)))))))))

(declare-fun b!3776913 () Bool)

(assert (=> b!3776913 (= e!2335586 (= (list!14920 (_2!22812 lt!1307952)) (list!14920 (_2!22813 (v!38779 lt!1307877)))))))

(declare-fun b!3776914 () Bool)

(declare-fun e!2335587 () Bool)

(assert (=> b!3776914 (= e!2335586 e!2335587)))

(declare-fun res!1529172 () Bool)

(declare-fun size!30307 (BalanceConc!24318) Int)

(assert (=> b!3776914 (= res!1529172 (< (size!30307 (_2!22812 lt!1307952)) (size!30307 (_2!22813 (v!38779 lt!1307877)))))))

(assert (=> b!3776914 (=> (not res!1529172) (not e!2335587))))

(declare-fun b!3776915 () Bool)

(declare-fun isEmpty!23673 (BalanceConc!24320) Bool)

(assert (=> b!3776915 (= e!2335587 (not (isEmpty!23673 (_1!22812 lt!1307952))))))

(assert (= (and d!1106421 c!654881) b!3776909))

(assert (= (and d!1106421 (not c!654881)) b!3776911))

(assert (= (and d!1106421 c!654880) b!3776914))

(assert (= (and d!1106421 (not c!654880)) b!3776913))

(assert (= (and b!3776914 res!1529172) b!3776915))

(assert (= (and d!1106421 res!1529171) b!3776912))

(assert (= (and b!3776912 res!1529173) b!3776910))

(declare-fun m!4282277 () Bool)

(assert (=> d!1106421 m!4282277))

(declare-fun m!4282279 () Bool)

(assert (=> d!1106421 m!4282279))

(declare-fun m!4282281 () Bool)

(assert (=> b!3776910 m!4282281))

(declare-fun m!4282283 () Bool)

(assert (=> b!3776910 m!4282283))

(assert (=> b!3776910 m!4282283))

(declare-fun m!4282285 () Bool)

(assert (=> b!3776910 m!4282285))

(declare-fun m!4282287 () Bool)

(assert (=> b!3776914 m!4282287))

(declare-fun m!4282289 () Bool)

(assert (=> b!3776914 m!4282289))

(declare-fun m!4282291 () Bool)

(assert (=> b!3776909 m!4282291))

(declare-fun m!4282293 () Bool)

(assert (=> b!3776909 m!4282293))

(declare-fun m!4282295 () Bool)

(assert (=> b!3776912 m!4282295))

(assert (=> b!3776912 m!4282283))

(assert (=> b!3776912 m!4282283))

(assert (=> b!3776912 m!4282285))

(declare-fun m!4282297 () Bool)

(assert (=> b!3776915 m!4282297))

(assert (=> b!3776913 m!4282281))

(assert (=> b!3776913 m!4282283))

(assert (=> b!3776814 d!1106421))

(declare-fun d!1106429 () Bool)

(declare-fun list!14923 (Conc!12363) List!40406)

(assert (=> d!1106429 (= (list!14919 (_1!22812 lt!1307875)) (list!14923 (c!654861 (_1!22812 lt!1307875))))))

(declare-fun bs!577000 () Bool)

(assert (= bs!577000 d!1106429))

(declare-fun m!4282299 () Bool)

(assert (=> bs!577000 m!4282299))

(assert (=> b!3776803 d!1106429))

(declare-fun d!1106431 () Bool)

(assert (=> d!1106431 (= (list!14919 acc!335) (list!14923 (c!654861 acc!335)))))

(declare-fun bs!577001 () Bool)

(assert (= bs!577001 d!1106431))

(declare-fun m!4282301 () Bool)

(assert (=> bs!577001 m!4282301))

(assert (=> b!3776792 d!1106431))

(declare-fun d!1106433 () Bool)

(assert (=> d!1106433 (= (list!14919 (_1!22812 lt!1307876)) (list!14923 (c!654861 (_1!22812 lt!1307876))))))

(declare-fun bs!577002 () Bool)

(assert (= bs!577002 d!1106433))

(declare-fun m!4282303 () Bool)

(assert (=> bs!577002 m!4282303))

(assert (=> b!3776792 d!1106433))

(declare-fun b!3776916 () Bool)

(declare-fun e!2335593 () tuple2!39356)

(declare-fun lt!1307957 () tuple2!39356)

(declare-fun lt!1307956 () Option!8598)

(assert (=> b!3776916 (= e!2335593 (tuple2!39357 (prepend!1330 (_1!22812 lt!1307957) (_1!22813 (v!38779 lt!1307956))) (_2!22812 lt!1307957)))))

(assert (=> b!3776916 (= lt!1307957 (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307956))))))

(declare-fun d!1106435 () Bool)

(declare-fun e!2335592 () Bool)

(assert (=> d!1106435 e!2335592))

(declare-fun res!1529174 () Bool)

(assert (=> d!1106435 (=> (not res!1529174) (not e!2335592))))

(declare-fun e!2335590 () Bool)

(assert (=> d!1106435 (= res!1529174 e!2335590)))

(declare-fun c!654882 () Bool)

(declare-fun lt!1307955 () tuple2!39356)

(assert (=> d!1106435 (= c!654882 (> (size!30306 (_1!22812 lt!1307955)) 0))))

(assert (=> d!1106435 (= lt!1307955 e!2335593)))

(declare-fun c!654883 () Bool)

(assert (=> d!1106435 (= c!654883 ((_ is Some!8597) lt!1307956))))

(assert (=> d!1106435 (= lt!1307956 (maxPrefixZipperSequence!1191 thiss!11876 rules!1265 treated!13))))

(assert (=> d!1106435 (= (lexRec!807 thiss!11876 rules!1265 treated!13) lt!1307955)))

(declare-fun b!3776917 () Bool)

(assert (=> b!3776917 (= e!2335592 (= (list!14920 (_2!22812 lt!1307955)) (_2!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 treated!13)))))))

(declare-fun b!3776918 () Bool)

(assert (=> b!3776918 (= e!2335593 (tuple2!39357 (BalanceConc!24321 Empty!12363) treated!13))))

(declare-fun b!3776919 () Bool)

(declare-fun res!1529176 () Bool)

(assert (=> b!3776919 (=> (not res!1529176) (not e!2335592))))

(assert (=> b!3776919 (= res!1529176 (= (list!14919 (_1!22812 lt!1307955)) (_1!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 treated!13)))))))

(declare-fun b!3776920 () Bool)

(assert (=> b!3776920 (= e!2335590 (= (list!14920 (_2!22812 lt!1307955)) (list!14920 treated!13)))))

(declare-fun b!3776921 () Bool)

(declare-fun e!2335591 () Bool)

(assert (=> b!3776921 (= e!2335590 e!2335591)))

(declare-fun res!1529175 () Bool)

(assert (=> b!3776921 (= res!1529175 (< (size!30307 (_2!22812 lt!1307955)) (size!30307 treated!13)))))

(assert (=> b!3776921 (=> (not res!1529175) (not e!2335591))))

(declare-fun b!3776922 () Bool)

(assert (=> b!3776922 (= e!2335591 (not (isEmpty!23673 (_1!22812 lt!1307955))))))

(assert (= (and d!1106435 c!654883) b!3776916))

(assert (= (and d!1106435 (not c!654883)) b!3776918))

(assert (= (and d!1106435 c!654882) b!3776921))

(assert (= (and d!1106435 (not c!654882)) b!3776920))

(assert (= (and b!3776921 res!1529175) b!3776922))

(assert (= (and d!1106435 res!1529174) b!3776919))

(assert (= (and b!3776919 res!1529176) b!3776917))

(declare-fun m!4282305 () Bool)

(assert (=> d!1106435 m!4282305))

(declare-fun m!4282307 () Bool)

(assert (=> d!1106435 m!4282307))

(declare-fun m!4282309 () Bool)

(assert (=> b!3776917 m!4282309))

(assert (=> b!3776917 m!4282171))

(assert (=> b!3776917 m!4282171))

(declare-fun m!4282311 () Bool)

(assert (=> b!3776917 m!4282311))

(declare-fun m!4282313 () Bool)

(assert (=> b!3776921 m!4282313))

(declare-fun m!4282315 () Bool)

(assert (=> b!3776921 m!4282315))

(declare-fun m!4282317 () Bool)

(assert (=> b!3776916 m!4282317))

(declare-fun m!4282319 () Bool)

(assert (=> b!3776916 m!4282319))

(declare-fun m!4282321 () Bool)

(assert (=> b!3776919 m!4282321))

(assert (=> b!3776919 m!4282171))

(assert (=> b!3776919 m!4282171))

(assert (=> b!3776919 m!4282311))

(declare-fun m!4282323 () Bool)

(assert (=> b!3776922 m!4282323))

(assert (=> b!3776920 m!4282309))

(assert (=> b!3776920 m!4282171))

(assert (=> b!3776792 d!1106435))

(declare-fun b!3776933 () Bool)

(declare-fun res!1529181 () Bool)

(declare-fun e!2335598 () Bool)

(assert (=> b!3776933 (=> (not res!1529181) (not e!2335598))))

(declare-fun lt!1307960 () List!40405)

(declare-fun size!30308 (List!40405) Int)

(assert (=> b!3776933 (= res!1529181 (= (size!30308 lt!1307960) (+ (size!30308 lt!1307897) (size!30308 lt!1307886))))))

(declare-fun b!3776934 () Bool)

(assert (=> b!3776934 (= e!2335598 (or (not (= lt!1307886 Nil!40281)) (= lt!1307960 lt!1307897)))))

(declare-fun d!1106437 () Bool)

(assert (=> d!1106437 e!2335598))

(declare-fun res!1529182 () Bool)

(assert (=> d!1106437 (=> (not res!1529182) (not e!2335598))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5921 (List!40405) (InoxSet C!22384))

(assert (=> d!1106437 (= res!1529182 (= (content!5921 lt!1307960) ((_ map or) (content!5921 lt!1307897) (content!5921 lt!1307886))))))

(declare-fun e!2335599 () List!40405)

(assert (=> d!1106437 (= lt!1307960 e!2335599)))

(declare-fun c!654886 () Bool)

(assert (=> d!1106437 (= c!654886 ((_ is Nil!40281) lt!1307897))))

(assert (=> d!1106437 (= (++!10052 lt!1307897 lt!1307886) lt!1307960)))

(declare-fun b!3776931 () Bool)

(assert (=> b!3776931 (= e!2335599 lt!1307886)))

(declare-fun b!3776932 () Bool)

(assert (=> b!3776932 (= e!2335599 (Cons!40281 (h!45701 lt!1307897) (++!10052 (t!305116 lt!1307897) lt!1307886)))))

(assert (= (and d!1106437 c!654886) b!3776931))

(assert (= (and d!1106437 (not c!654886)) b!3776932))

(assert (= (and d!1106437 res!1529182) b!3776933))

(assert (= (and b!3776933 res!1529181) b!3776934))

(declare-fun m!4282325 () Bool)

(assert (=> b!3776933 m!4282325))

(declare-fun m!4282327 () Bool)

(assert (=> b!3776933 m!4282327))

(declare-fun m!4282329 () Bool)

(assert (=> b!3776933 m!4282329))

(declare-fun m!4282331 () Bool)

(assert (=> d!1106437 m!4282331))

(declare-fun m!4282333 () Bool)

(assert (=> d!1106437 m!4282333))

(declare-fun m!4282335 () Bool)

(assert (=> d!1106437 m!4282335))

(declare-fun m!4282337 () Bool)

(assert (=> b!3776932 m!4282337))

(assert (=> b!3776813 d!1106437))

(declare-fun d!1106439 () Bool)

(assert (=> d!1106439 (= (list!14920 totalInput!335) (list!14921 (c!654860 totalInput!335)))))

(declare-fun bs!577003 () Bool)

(assert (= bs!577003 d!1106439))

(declare-fun m!4282339 () Bool)

(assert (=> bs!577003 m!4282339))

(assert (=> b!3776813 d!1106439))

(declare-fun d!1106441 () Bool)

(assert (=> d!1106441 (= (list!14920 input!678) (list!14921 (c!654860 input!678)))))

(declare-fun bs!577004 () Bool)

(assert (= bs!577004 d!1106441))

(declare-fun m!4282341 () Bool)

(assert (=> bs!577004 m!4282341))

(assert (=> b!3776813 d!1106441))

(declare-fun d!1106443 () Bool)

(assert (=> d!1106443 (= (list!14920 treated!13) (list!14921 (c!654860 treated!13)))))

(declare-fun bs!577005 () Bool)

(assert (= bs!577005 d!1106443))

(declare-fun m!4282343 () Bool)

(assert (=> bs!577005 m!4282343))

(assert (=> b!3776813 d!1106443))

(declare-fun b!3776935 () Bool)

(declare-fun e!2335603 () tuple2!39356)

(declare-fun lt!1307963 () tuple2!39356)

(declare-fun lt!1307962 () Option!8598)

(assert (=> b!3776935 (= e!2335603 (tuple2!39357 (prepend!1330 (_1!22812 lt!1307963) (_1!22813 (v!38779 lt!1307962))) (_2!22812 lt!1307963)))))

(assert (=> b!3776935 (= lt!1307963 (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307962))))))

(declare-fun d!1106445 () Bool)

(declare-fun e!2335602 () Bool)

(assert (=> d!1106445 e!2335602))

(declare-fun res!1529183 () Bool)

(assert (=> d!1106445 (=> (not res!1529183) (not e!2335602))))

(declare-fun e!2335600 () Bool)

(assert (=> d!1106445 (= res!1529183 e!2335600)))

(declare-fun c!654887 () Bool)

(declare-fun lt!1307961 () tuple2!39356)

(assert (=> d!1106445 (= c!654887 (> (size!30306 (_1!22812 lt!1307961)) 0))))

(assert (=> d!1106445 (= lt!1307961 e!2335603)))

(declare-fun c!654888 () Bool)

(assert (=> d!1106445 (= c!654888 ((_ is Some!8597) lt!1307962))))

(assert (=> d!1106445 (= lt!1307962 (maxPrefixZipperSequence!1191 thiss!11876 rules!1265 totalInput!335))))

(assert (=> d!1106445 (= (lexRec!807 thiss!11876 rules!1265 totalInput!335) lt!1307961)))

(declare-fun b!3776936 () Bool)

(assert (=> b!3776936 (= e!2335602 (= (list!14920 (_2!22812 lt!1307961)) (_2!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 totalInput!335)))))))

(declare-fun b!3776937 () Bool)

(assert (=> b!3776937 (= e!2335603 (tuple2!39357 (BalanceConc!24321 Empty!12363) totalInput!335))))

(declare-fun b!3776938 () Bool)

(declare-fun res!1529185 () Bool)

(assert (=> b!3776938 (=> (not res!1529185) (not e!2335602))))

(assert (=> b!3776938 (= res!1529185 (= (list!14919 (_1!22812 lt!1307961)) (_1!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 totalInput!335)))))))

(declare-fun b!3776939 () Bool)

(assert (=> b!3776939 (= e!2335600 (= (list!14920 (_2!22812 lt!1307961)) (list!14920 totalInput!335)))))

(declare-fun b!3776940 () Bool)

(declare-fun e!2335601 () Bool)

(assert (=> b!3776940 (= e!2335600 e!2335601)))

(declare-fun res!1529184 () Bool)

(assert (=> b!3776940 (= res!1529184 (< (size!30307 (_2!22812 lt!1307961)) (size!30307 totalInput!335)))))

(assert (=> b!3776940 (=> (not res!1529184) (not e!2335601))))

(declare-fun b!3776941 () Bool)

(assert (=> b!3776941 (= e!2335601 (not (isEmpty!23673 (_1!22812 lt!1307961))))))

(assert (= (and d!1106445 c!654888) b!3776935))

(assert (= (and d!1106445 (not c!654888)) b!3776937))

(assert (= (and d!1106445 c!654887) b!3776940))

(assert (= (and d!1106445 (not c!654887)) b!3776939))

(assert (= (and b!3776940 res!1529184) b!3776941))

(assert (= (and d!1106445 res!1529183) b!3776938))

(assert (= (and b!3776938 res!1529185) b!3776936))

(declare-fun m!4282345 () Bool)

(assert (=> d!1106445 m!4282345))

(declare-fun m!4282347 () Bool)

(assert (=> d!1106445 m!4282347))

(declare-fun m!4282349 () Bool)

(assert (=> b!3776936 m!4282349))

(assert (=> b!3776936 m!4282167))

(assert (=> b!3776936 m!4282167))

(declare-fun m!4282351 () Bool)

(assert (=> b!3776936 m!4282351))

(declare-fun m!4282353 () Bool)

(assert (=> b!3776940 m!4282353))

(declare-fun m!4282355 () Bool)

(assert (=> b!3776940 m!4282355))

(declare-fun m!4282357 () Bool)

(assert (=> b!3776935 m!4282357))

(declare-fun m!4282359 () Bool)

(assert (=> b!3776935 m!4282359))

(declare-fun m!4282361 () Bool)

(assert (=> b!3776938 m!4282361))

(assert (=> b!3776938 m!4282167))

(assert (=> b!3776938 m!4282167))

(assert (=> b!3776938 m!4282351))

(declare-fun m!4282363 () Bool)

(assert (=> b!3776941 m!4282363))

(assert (=> b!3776939 m!4282349))

(assert (=> b!3776939 m!4282167))

(assert (=> b!3776802 d!1106445))

(declare-fun d!1106447 () Bool)

(assert (=> d!1106447 (= (list!14919 (++!10051 acc!335 (_1!22812 lt!1307884))) (list!14923 (c!654861 (++!10051 acc!335 (_1!22812 lt!1307884)))))))

(declare-fun bs!577006 () Bool)

(assert (= bs!577006 d!1106447))

(declare-fun m!4282365 () Bool)

(assert (=> bs!577006 m!4282365))

(assert (=> b!3776802 d!1106447))

(declare-fun d!1106449 () Bool)

(declare-fun e!2335614 () Bool)

(assert (=> d!1106449 e!2335614))

(declare-fun res!1529202 () Bool)

(assert (=> d!1106449 (=> (not res!1529202) (not e!2335614))))

(declare-fun appendAssocInst!840 (Conc!12363 Conc!12363) Bool)

(assert (=> d!1106449 (= res!1529202 (appendAssocInst!840 (c!654861 acc!335) (c!654861 (_1!22812 lt!1307884))))))

(declare-fun lt!1307972 () BalanceConc!24320)

(declare-fun ++!10055 (Conc!12363 Conc!12363) Conc!12363)

(assert (=> d!1106449 (= lt!1307972 (BalanceConc!24321 (++!10055 (c!654861 acc!335) (c!654861 (_1!22812 lt!1307884)))))))

(assert (=> d!1106449 (= (++!10051 acc!335 (_1!22812 lt!1307884)) lt!1307972)))

(declare-fun b!3776966 () Bool)

(declare-fun res!1529203 () Bool)

(assert (=> b!3776966 (=> (not res!1529203) (not e!2335614))))

(declare-fun height!1773 (Conc!12363) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3776966 (= res!1529203 (>= (height!1773 (++!10055 (c!654861 acc!335) (c!654861 (_1!22812 lt!1307884)))) (max!0 (height!1773 (c!654861 acc!335)) (height!1773 (c!654861 (_1!22812 lt!1307884))))))))

(declare-fun b!3776965 () Bool)

(declare-fun res!1529201 () Bool)

(assert (=> b!3776965 (=> (not res!1529201) (not e!2335614))))

(assert (=> b!3776965 (= res!1529201 (<= (height!1773 (++!10055 (c!654861 acc!335) (c!654861 (_1!22812 lt!1307884)))) (+ (max!0 (height!1773 (c!654861 acc!335)) (height!1773 (c!654861 (_1!22812 lt!1307884)))) 1)))))

(declare-fun b!3776967 () Bool)

(assert (=> b!3776967 (= e!2335614 (= (list!14919 lt!1307972) (++!10054 (list!14919 acc!335) (list!14919 (_1!22812 lt!1307884)))))))

(declare-fun b!3776964 () Bool)

(declare-fun res!1529200 () Bool)

(assert (=> b!3776964 (=> (not res!1529200) (not e!2335614))))

(assert (=> b!3776964 (= res!1529200 (isBalanced!3555 (++!10055 (c!654861 acc!335) (c!654861 (_1!22812 lt!1307884)))))))

(assert (= (and d!1106449 res!1529202) b!3776964))

(assert (= (and b!3776964 res!1529200) b!3776965))

(assert (= (and b!3776965 res!1529201) b!3776966))

(assert (= (and b!3776966 res!1529203) b!3776967))

(declare-fun m!4282367 () Bool)

(assert (=> b!3776967 m!4282367))

(assert (=> b!3776967 m!4282143))

(declare-fun m!4282369 () Bool)

(assert (=> b!3776967 m!4282369))

(assert (=> b!3776967 m!4282143))

(assert (=> b!3776967 m!4282369))

(declare-fun m!4282371 () Bool)

(assert (=> b!3776967 m!4282371))

(declare-fun m!4282373 () Bool)

(assert (=> b!3776965 m!4282373))

(declare-fun m!4282375 () Bool)

(assert (=> b!3776965 m!4282375))

(declare-fun m!4282377 () Bool)

(assert (=> b!3776965 m!4282377))

(assert (=> b!3776965 m!4282375))

(declare-fun m!4282379 () Bool)

(assert (=> b!3776965 m!4282379))

(assert (=> b!3776965 m!4282373))

(declare-fun m!4282381 () Bool)

(assert (=> b!3776965 m!4282381))

(assert (=> b!3776965 m!4282377))

(declare-fun m!4282383 () Bool)

(assert (=> d!1106449 m!4282383))

(assert (=> d!1106449 m!4282373))

(assert (=> b!3776964 m!4282373))

(assert (=> b!3776964 m!4282373))

(declare-fun m!4282385 () Bool)

(assert (=> b!3776964 m!4282385))

(assert (=> b!3776966 m!4282373))

(assert (=> b!3776966 m!4282375))

(assert (=> b!3776966 m!4282377))

(assert (=> b!3776966 m!4282375))

(assert (=> b!3776966 m!4282379))

(assert (=> b!3776966 m!4282373))

(assert (=> b!3776966 m!4282381))

(assert (=> b!3776966 m!4282377))

(assert (=> b!3776802 d!1106449))

(declare-fun d!1106451 () Bool)

(assert (=> d!1106451 (= (list!14919 (_1!22812 lt!1307888)) (list!14923 (c!654861 (_1!22812 lt!1307888))))))

(declare-fun bs!577007 () Bool)

(assert (= bs!577007 d!1106451))

(declare-fun m!4282387 () Bool)

(assert (=> bs!577007 m!4282387))

(assert (=> b!3776802 d!1106451))

(declare-fun b!3776968 () Bool)

(declare-fun e!2335618 () tuple2!39356)

(declare-fun lt!1307975 () tuple2!39356)

(declare-fun lt!1307974 () Option!8598)

(assert (=> b!3776968 (= e!2335618 (tuple2!39357 (prepend!1330 (_1!22812 lt!1307975) (_1!22813 (v!38779 lt!1307974))) (_2!22812 lt!1307975)))))

(assert (=> b!3776968 (= lt!1307975 (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307974))))))

(declare-fun d!1106453 () Bool)

(declare-fun e!2335617 () Bool)

(assert (=> d!1106453 e!2335617))

(declare-fun res!1529204 () Bool)

(assert (=> d!1106453 (=> (not res!1529204) (not e!2335617))))

(declare-fun e!2335615 () Bool)

(assert (=> d!1106453 (= res!1529204 e!2335615)))

(declare-fun c!654896 () Bool)

(declare-fun lt!1307973 () tuple2!39356)

(assert (=> d!1106453 (= c!654896 (> (size!30306 (_1!22812 lt!1307973)) 0))))

(assert (=> d!1106453 (= lt!1307973 e!2335618)))

(declare-fun c!654897 () Bool)

(assert (=> d!1106453 (= c!654897 ((_ is Some!8597) lt!1307974))))

(assert (=> d!1106453 (= lt!1307974 (maxPrefixZipperSequence!1191 thiss!11876 rules!1265 input!678))))

(assert (=> d!1106453 (= (lexRec!807 thiss!11876 rules!1265 input!678) lt!1307973)))

(declare-fun b!3776969 () Bool)

(assert (=> b!3776969 (= e!2335617 (= (list!14920 (_2!22812 lt!1307973)) (_2!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 input!678)))))))

(declare-fun b!3776970 () Bool)

(assert (=> b!3776970 (= e!2335618 (tuple2!39357 (BalanceConc!24321 Empty!12363) input!678))))

(declare-fun b!3776971 () Bool)

(declare-fun res!1529206 () Bool)

(assert (=> b!3776971 (=> (not res!1529206) (not e!2335617))))

(assert (=> b!3776971 (= res!1529206 (= (list!14919 (_1!22812 lt!1307973)) (_1!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 input!678)))))))

(declare-fun b!3776972 () Bool)

(assert (=> b!3776972 (= e!2335615 (= (list!14920 (_2!22812 lt!1307973)) (list!14920 input!678)))))

(declare-fun b!3776973 () Bool)

(declare-fun e!2335616 () Bool)

(assert (=> b!3776973 (= e!2335615 e!2335616)))

(declare-fun res!1529205 () Bool)

(assert (=> b!3776973 (= res!1529205 (< (size!30307 (_2!22812 lt!1307973)) (size!30307 input!678)))))

(assert (=> b!3776973 (=> (not res!1529205) (not e!2335616))))

(declare-fun b!3776974 () Bool)

(assert (=> b!3776974 (= e!2335616 (not (isEmpty!23673 (_1!22812 lt!1307973))))))

(assert (= (and d!1106453 c!654897) b!3776968))

(assert (= (and d!1106453 (not c!654897)) b!3776970))

(assert (= (and d!1106453 c!654896) b!3776973))

(assert (= (and d!1106453 (not c!654896)) b!3776972))

(assert (= (and b!3776973 res!1529205) b!3776974))

(assert (= (and d!1106453 res!1529204) b!3776971))

(assert (= (and b!3776971 res!1529206) b!3776969))

(declare-fun m!4282389 () Bool)

(assert (=> d!1106453 m!4282389))

(assert (=> d!1106453 m!4282115))

(declare-fun m!4282391 () Bool)

(assert (=> b!3776969 m!4282391))

(assert (=> b!3776969 m!4282169))

(assert (=> b!3776969 m!4282169))

(declare-fun m!4282393 () Bool)

(assert (=> b!3776969 m!4282393))

(declare-fun m!4282395 () Bool)

(assert (=> b!3776973 m!4282395))

(declare-fun m!4282397 () Bool)

(assert (=> b!3776973 m!4282397))

(declare-fun m!4282399 () Bool)

(assert (=> b!3776968 m!4282399))

(declare-fun m!4282401 () Bool)

(assert (=> b!3776968 m!4282401))

(declare-fun m!4282403 () Bool)

(assert (=> b!3776971 m!4282403))

(assert (=> b!3776971 m!4282169))

(assert (=> b!3776971 m!4282169))

(assert (=> b!3776971 m!4282393))

(declare-fun m!4282405 () Bool)

(assert (=> b!3776974 m!4282405))

(assert (=> b!3776972 m!4282391))

(assert (=> b!3776972 m!4282169))

(assert (=> b!3776802 d!1106453))

(declare-fun d!1106455 () Bool)

(declare-fun isBalanced!3556 (Conc!12362) Bool)

(assert (=> d!1106455 (= (inv!54142 input!678) (isBalanced!3556 (c!654860 input!678)))))

(declare-fun bs!577009 () Bool)

(assert (= bs!577009 d!1106455))

(declare-fun m!4282427 () Bool)

(assert (=> bs!577009 m!4282427))

(assert (=> start!354548 d!1106455))

(declare-fun d!1106461 () Bool)

(assert (=> d!1106461 (= (inv!54143 acc!335) (isBalanced!3555 (c!654861 acc!335)))))

(declare-fun bs!577010 () Bool)

(assert (= bs!577010 d!1106461))

(declare-fun m!4282429 () Bool)

(assert (=> bs!577010 m!4282429))

(assert (=> start!354548 d!1106461))

(declare-fun d!1106463 () Bool)

(assert (=> d!1106463 (= (inv!54142 treated!13) (isBalanced!3556 (c!654860 treated!13)))))

(declare-fun bs!577011 () Bool)

(assert (= bs!577011 d!1106463))

(declare-fun m!4282431 () Bool)

(assert (=> bs!577011 m!4282431))

(assert (=> start!354548 d!1106463))

(declare-fun d!1106465 () Bool)

(assert (=> d!1106465 (= (inv!54142 totalInput!335) (isBalanced!3556 (c!654860 totalInput!335)))))

(declare-fun bs!577012 () Bool)

(assert (= bs!577012 d!1106465))

(declare-fun m!4282433 () Bool)

(assert (=> bs!577012 m!4282433))

(assert (=> start!354548 d!1106465))

(declare-fun b!3776992 () Bool)

(declare-fun res!1529214 () Bool)

(declare-fun e!2335627 () Bool)

(assert (=> b!3776992 (=> (not res!1529214) (not e!2335627))))

(declare-fun lt!1307981 () List!40406)

(declare-fun size!30313 (List!40406) Int)

(assert (=> b!3776992 (= res!1529214 (= (size!30313 lt!1307981) (+ (size!30313 lt!1307885) (size!30313 lt!1307890))))))

(declare-fun d!1106467 () Bool)

(assert (=> d!1106467 e!2335627))

(declare-fun res!1529215 () Bool)

(assert (=> d!1106467 (=> (not res!1529215) (not e!2335627))))

(declare-fun content!5924 (List!40406) (InoxSet Token!11526))

(assert (=> d!1106467 (= res!1529215 (= (content!5924 lt!1307981) ((_ map or) (content!5924 lt!1307885) (content!5924 lt!1307890))))))

(declare-fun e!2335628 () List!40406)

(assert (=> d!1106467 (= lt!1307981 e!2335628)))

(declare-fun c!654902 () Bool)

(assert (=> d!1106467 (= c!654902 ((_ is Nil!40282) lt!1307885))))

(assert (=> d!1106467 (= (++!10054 lt!1307885 lt!1307890) lt!1307981)))

(declare-fun b!3776993 () Bool)

(assert (=> b!3776993 (= e!2335627 (or (not (= lt!1307890 Nil!40282)) (= lt!1307981 lt!1307885)))))

(declare-fun b!3776990 () Bool)

(assert (=> b!3776990 (= e!2335628 lt!1307890)))

(declare-fun b!3776991 () Bool)

(assert (=> b!3776991 (= e!2335628 (Cons!40282 (h!45702 lt!1307885) (++!10054 (t!305117 lt!1307885) lt!1307890)))))

(assert (= (and d!1106467 c!654902) b!3776990))

(assert (= (and d!1106467 (not c!654902)) b!3776991))

(assert (= (and d!1106467 res!1529215) b!3776992))

(assert (= (and b!3776992 res!1529214) b!3776993))

(declare-fun m!4282435 () Bool)

(assert (=> b!3776992 m!4282435))

(declare-fun m!4282437 () Bool)

(assert (=> b!3776992 m!4282437))

(declare-fun m!4282439 () Bool)

(assert (=> b!3776992 m!4282439))

(declare-fun m!4282441 () Bool)

(assert (=> d!1106467 m!4282441))

(declare-fun m!4282443 () Bool)

(assert (=> d!1106467 m!4282443))

(declare-fun m!4282445 () Bool)

(assert (=> d!1106467 m!4282445))

(declare-fun m!4282447 () Bool)

(assert (=> b!3776991 m!4282447))

(assert (=> b!3776812 d!1106467))

(declare-fun b!3776996 () Bool)

(declare-fun res!1529216 () Bool)

(declare-fun e!2335629 () Bool)

(assert (=> b!3776996 (=> (not res!1529216) (not e!2335629))))

(declare-fun lt!1307982 () List!40405)

(assert (=> b!3776996 (= res!1529216 (= (size!30308 lt!1307982) (+ (size!30308 lt!1307897) (size!30308 (++!10052 lt!1307889 lt!1307870)))))))

(declare-fun b!3776997 () Bool)

(assert (=> b!3776997 (= e!2335629 (or (not (= (++!10052 lt!1307889 lt!1307870) Nil!40281)) (= lt!1307982 lt!1307897)))))

(declare-fun d!1106469 () Bool)

(assert (=> d!1106469 e!2335629))

(declare-fun res!1529217 () Bool)

(assert (=> d!1106469 (=> (not res!1529217) (not e!2335629))))

(assert (=> d!1106469 (= res!1529217 (= (content!5921 lt!1307982) ((_ map or) (content!5921 lt!1307897) (content!5921 (++!10052 lt!1307889 lt!1307870)))))))

(declare-fun e!2335630 () List!40405)

(assert (=> d!1106469 (= lt!1307982 e!2335630)))

(declare-fun c!654903 () Bool)

(assert (=> d!1106469 (= c!654903 ((_ is Nil!40281) lt!1307897))))

(assert (=> d!1106469 (= (++!10052 lt!1307897 (++!10052 lt!1307889 lt!1307870)) lt!1307982)))

(declare-fun b!3776994 () Bool)

(assert (=> b!3776994 (= e!2335630 (++!10052 lt!1307889 lt!1307870))))

(declare-fun b!3776995 () Bool)

(assert (=> b!3776995 (= e!2335630 (Cons!40281 (h!45701 lt!1307897) (++!10052 (t!305116 lt!1307897) (++!10052 lt!1307889 lt!1307870))))))

(assert (= (and d!1106469 c!654903) b!3776994))

(assert (= (and d!1106469 (not c!654903)) b!3776995))

(assert (= (and d!1106469 res!1529217) b!3776996))

(assert (= (and b!3776996 res!1529216) b!3776997))

(declare-fun m!4282449 () Bool)

(assert (=> b!3776996 m!4282449))

(assert (=> b!3776996 m!4282327))

(assert (=> b!3776996 m!4282103))

(declare-fun m!4282451 () Bool)

(assert (=> b!3776996 m!4282451))

(declare-fun m!4282453 () Bool)

(assert (=> d!1106469 m!4282453))

(assert (=> d!1106469 m!4282333))

(assert (=> d!1106469 m!4282103))

(declare-fun m!4282455 () Bool)

(assert (=> d!1106469 m!4282455))

(assert (=> b!3776995 m!4282103))

(declare-fun m!4282457 () Bool)

(assert (=> b!3776995 m!4282457))

(assert (=> b!3776812 d!1106469))

(declare-fun b!3777000 () Bool)

(declare-fun res!1529218 () Bool)

(declare-fun e!2335631 () Bool)

(assert (=> b!3777000 (=> (not res!1529218) (not e!2335631))))

(declare-fun lt!1307983 () List!40405)

(assert (=> b!3777000 (= res!1529218 (= (size!30308 lt!1307983) (+ (size!30308 lt!1307897) (size!30308 lt!1307889))))))

(declare-fun b!3777001 () Bool)

(assert (=> b!3777001 (= e!2335631 (or (not (= lt!1307889 Nil!40281)) (= lt!1307983 lt!1307897)))))

(declare-fun d!1106471 () Bool)

(assert (=> d!1106471 e!2335631))

(declare-fun res!1529219 () Bool)

(assert (=> d!1106471 (=> (not res!1529219) (not e!2335631))))

(assert (=> d!1106471 (= res!1529219 (= (content!5921 lt!1307983) ((_ map or) (content!5921 lt!1307897) (content!5921 lt!1307889))))))

(declare-fun e!2335632 () List!40405)

(assert (=> d!1106471 (= lt!1307983 e!2335632)))

(declare-fun c!654904 () Bool)

(assert (=> d!1106471 (= c!654904 ((_ is Nil!40281) lt!1307897))))

(assert (=> d!1106471 (= (++!10052 lt!1307897 lt!1307889) lt!1307983)))

(declare-fun b!3776998 () Bool)

(assert (=> b!3776998 (= e!2335632 lt!1307889)))

(declare-fun b!3776999 () Bool)

(assert (=> b!3776999 (= e!2335632 (Cons!40281 (h!45701 lt!1307897) (++!10052 (t!305116 lt!1307897) lt!1307889)))))

(assert (= (and d!1106471 c!654904) b!3776998))

(assert (= (and d!1106471 (not c!654904)) b!3776999))

(assert (= (and d!1106471 res!1529219) b!3777000))

(assert (= (and b!3777000 res!1529218) b!3777001))

(declare-fun m!4282459 () Bool)

(assert (=> b!3777000 m!4282459))

(assert (=> b!3777000 m!4282327))

(declare-fun m!4282461 () Bool)

(assert (=> b!3777000 m!4282461))

(declare-fun m!4282463 () Bool)

(assert (=> d!1106471 m!4282463))

(assert (=> d!1106471 m!4282333))

(declare-fun m!4282465 () Bool)

(assert (=> d!1106471 m!4282465))

(declare-fun m!4282467 () Bool)

(assert (=> b!3776999 m!4282467))

(assert (=> b!3776812 d!1106471))

(declare-fun d!1106473 () Bool)

(assert (=> d!1106473 (= (lexList!1557 thiss!11876 rules!1265 lt!1307896) (tuple2!39361 lt!1307871 Nil!40281))))

(declare-fun lt!1307998 () Unit!57990)

(declare-fun choose!22338 (LexerInterface!5783 List!40407 List!40405 List!40405 List!40406 List!40406 List!40405) Unit!57990)

(assert (=> d!1106473 (= lt!1307998 (choose!22338 thiss!11876 rules!1265 lt!1307896 lt!1307870 lt!1307871 lt!1307878 (list!14920 (_2!22812 lt!1307868))))))

(assert (=> d!1106473 (not (isEmpty!23672 rules!1265))))

(assert (=> d!1106473 (= (lemmaLexThenLexPrefix!559 thiss!11876 rules!1265 lt!1307896 lt!1307870 lt!1307871 lt!1307878 (list!14920 (_2!22812 lt!1307868))) lt!1307998)))

(declare-fun bs!577013 () Bool)

(assert (= bs!577013 d!1106473))

(assert (=> bs!577013 m!4282077))

(assert (=> bs!577013 m!4282069))

(declare-fun m!4282495 () Bool)

(assert (=> bs!577013 m!4282495))

(assert (=> bs!577013 m!4282063))

(assert (=> b!3776812 d!1106473))

(declare-fun d!1106479 () Bool)

(assert (=> d!1106479 (= (list!14919 (_1!22812 lt!1307868)) (list!14923 (c!654861 (_1!22812 lt!1307868))))))

(declare-fun bs!577014 () Bool)

(assert (= bs!577014 d!1106479))

(declare-fun m!4282499 () Bool)

(assert (=> bs!577014 m!4282499))

(assert (=> b!3776812 d!1106479))

(declare-fun d!1106481 () Bool)

(assert (=> d!1106481 (= (++!10054 (++!10054 lt!1307885 lt!1307890) lt!1307878) (++!10054 lt!1307885 (++!10054 lt!1307890 lt!1307878)))))

(declare-fun lt!1308002 () Unit!57990)

(declare-fun choose!22339 (List!40406 List!40406 List!40406) Unit!57990)

(assert (=> d!1106481 (= lt!1308002 (choose!22339 lt!1307885 lt!1307890 lt!1307878))))

(assert (=> d!1106481 (= (lemmaConcatAssociativity!2141 lt!1307885 lt!1307890 lt!1307878) lt!1308002)))

(declare-fun bs!577015 () Bool)

(assert (= bs!577015 d!1106481))

(assert (=> bs!577015 m!4282075))

(assert (=> bs!577015 m!4282117))

(declare-fun m!4282513 () Bool)

(assert (=> bs!577015 m!4282513))

(assert (=> bs!577015 m!4282101))

(assert (=> bs!577015 m!4282075))

(assert (=> bs!577015 m!4282101))

(assert (=> bs!577015 m!4282113))

(assert (=> b!3776812 d!1106481))

(declare-fun d!1106485 () Bool)

(declare-fun lt!1308007 () BalanceConc!24318)

(assert (=> d!1106485 (= (list!14920 lt!1308007) (originalCharacters!6794 (_1!22813 (v!38779 lt!1307894))))))

(declare-fun dynLambda!17384 (Int TokenValue!6424) BalanceConc!24318)

(assert (=> d!1106485 (= lt!1308007 (dynLambda!17384 (toChars!8421 (transformation!6194 (rule!8966 (_1!22813 (v!38779 lt!1307894))))) (value!197136 (_1!22813 (v!38779 lt!1307894)))))))

(assert (=> d!1106485 (= (charsOf!4036 (_1!22813 (v!38779 lt!1307894))) lt!1308007)))

(declare-fun b_lambda!110737 () Bool)

(assert (=> (not b_lambda!110737) (not d!1106485)))

(declare-fun tb!216247 () Bool)

(declare-fun t!305122 () Bool)

(assert (=> (and b!3776795 (= (toChars!8421 (transformation!6194 (h!45703 rules!1265))) (toChars!8421 (transformation!6194 (rule!8966 (_1!22813 (v!38779 lt!1307894)))))) t!305122) tb!216247))

(declare-fun b!3777049 () Bool)

(declare-fun e!2335658 () Bool)

(declare-fun tp!1152238 () Bool)

(assert (=> b!3777049 (= e!2335658 (and (inv!54141 (c!654860 (dynLambda!17384 (toChars!8421 (transformation!6194 (rule!8966 (_1!22813 (v!38779 lt!1307894))))) (value!197136 (_1!22813 (v!38779 lt!1307894)))))) tp!1152238))))

(declare-fun result!264046 () Bool)

(assert (=> tb!216247 (= result!264046 (and (inv!54142 (dynLambda!17384 (toChars!8421 (transformation!6194 (rule!8966 (_1!22813 (v!38779 lt!1307894))))) (value!197136 (_1!22813 (v!38779 lt!1307894))))) e!2335658))))

(assert (= tb!216247 b!3777049))

(declare-fun m!4282529 () Bool)

(assert (=> b!3777049 m!4282529))

(declare-fun m!4282531 () Bool)

(assert (=> tb!216247 m!4282531))

(assert (=> d!1106485 t!305122))

(declare-fun b_and!280537 () Bool)

(assert (= b_and!280533 (and (=> t!305122 result!264046) b_and!280537)))

(declare-fun m!4282533 () Bool)

(assert (=> d!1106485 m!4282533))

(declare-fun m!4282535 () Bool)

(assert (=> d!1106485 m!4282535))

(assert (=> b!3776812 d!1106485))

(declare-fun b!3777050 () Bool)

(declare-fun e!2335662 () tuple2!39356)

(declare-fun lt!1308011 () tuple2!39356)

(declare-fun lt!1308010 () Option!8598)

(assert (=> b!3777050 (= e!2335662 (tuple2!39357 (prepend!1330 (_1!22812 lt!1308011) (_1!22813 (v!38779 lt!1308010))) (_2!22812 lt!1308011)))))

(assert (=> b!3777050 (= lt!1308011 (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1308010))))))

(declare-fun d!1106489 () Bool)

(declare-fun e!2335661 () Bool)

(assert (=> d!1106489 e!2335661))

(declare-fun res!1529237 () Bool)

(assert (=> d!1106489 (=> (not res!1529237) (not e!2335661))))

(declare-fun e!2335659 () Bool)

(assert (=> d!1106489 (= res!1529237 e!2335659)))

(declare-fun c!654918 () Bool)

(declare-fun lt!1308009 () tuple2!39356)

(assert (=> d!1106489 (= c!654918 (> (size!30306 (_1!22812 lt!1308009)) 0))))

(assert (=> d!1106489 (= lt!1308009 e!2335662)))

(declare-fun c!654919 () Bool)

(assert (=> d!1106489 (= c!654919 ((_ is Some!8597) lt!1308010))))

(assert (=> d!1106489 (= lt!1308010 (maxPrefixZipperSequence!1191 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307894))))))

(assert (=> d!1106489 (= (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307894))) lt!1308009)))

(declare-fun b!3777051 () Bool)

(assert (=> b!3777051 (= e!2335661 (= (list!14920 (_2!22812 lt!1308009)) (_2!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 (_2!22813 (v!38779 lt!1307894)))))))))

(declare-fun b!3777052 () Bool)

(assert (=> b!3777052 (= e!2335662 (tuple2!39357 (BalanceConc!24321 Empty!12363) (_2!22813 (v!38779 lt!1307894))))))

(declare-fun b!3777053 () Bool)

(declare-fun res!1529239 () Bool)

(assert (=> b!3777053 (=> (not res!1529239) (not e!2335661))))

(assert (=> b!3777053 (= res!1529239 (= (list!14919 (_1!22812 lt!1308009)) (_1!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 (_2!22813 (v!38779 lt!1307894)))))))))

(declare-fun b!3777054 () Bool)

(assert (=> b!3777054 (= e!2335659 (= (list!14920 (_2!22812 lt!1308009)) (list!14920 (_2!22813 (v!38779 lt!1307894)))))))

(declare-fun b!3777055 () Bool)

(declare-fun e!2335660 () Bool)

(assert (=> b!3777055 (= e!2335659 e!2335660)))

(declare-fun res!1529238 () Bool)

(assert (=> b!3777055 (= res!1529238 (< (size!30307 (_2!22812 lt!1308009)) (size!30307 (_2!22813 (v!38779 lt!1307894)))))))

(assert (=> b!3777055 (=> (not res!1529238) (not e!2335660))))

(declare-fun b!3777056 () Bool)

(assert (=> b!3777056 (= e!2335660 (not (isEmpty!23673 (_1!22812 lt!1308009))))))

(assert (= (and d!1106489 c!654919) b!3777050))

(assert (= (and d!1106489 (not c!654919)) b!3777052))

(assert (= (and d!1106489 c!654918) b!3777055))

(assert (= (and d!1106489 (not c!654918)) b!3777054))

(assert (= (and b!3777055 res!1529238) b!3777056))

(assert (= (and d!1106489 res!1529237) b!3777053))

(assert (= (and b!3777053 res!1529239) b!3777051))

(declare-fun m!4282537 () Bool)

(assert (=> d!1106489 m!4282537))

(declare-fun m!4282539 () Bool)

(assert (=> d!1106489 m!4282539))

(declare-fun m!4282541 () Bool)

(assert (=> b!3777051 m!4282541))

(assert (=> b!3777051 m!4282091))

(assert (=> b!3777051 m!4282091))

(declare-fun m!4282543 () Bool)

(assert (=> b!3777051 m!4282543))

(declare-fun m!4282545 () Bool)

(assert (=> b!3777055 m!4282545))

(declare-fun m!4282547 () Bool)

(assert (=> b!3777055 m!4282547))

(declare-fun m!4282549 () Bool)

(assert (=> b!3777050 m!4282549))

(declare-fun m!4282551 () Bool)

(assert (=> b!3777050 m!4282551))

(declare-fun m!4282553 () Bool)

(assert (=> b!3777053 m!4282553))

(assert (=> b!3777053 m!4282091))

(assert (=> b!3777053 m!4282091))

(assert (=> b!3777053 m!4282543))

(declare-fun m!4282555 () Bool)

(assert (=> b!3777056 m!4282555))

(assert (=> b!3777054 m!4282541))

(assert (=> b!3777054 m!4282091))

(assert (=> b!3776812 d!1106489))

(declare-fun d!1106491 () Bool)

(assert (=> d!1106491 (isSuffix!968 lt!1307870 (++!10052 lt!1307880 lt!1307870))))

(declare-fun lt!1308019 () Unit!57990)

(declare-fun choose!22342 (List!40405 List!40405) Unit!57990)

(assert (=> d!1106491 (= lt!1308019 (choose!22342 lt!1307880 lt!1307870))))

(assert (=> d!1106491 (= (lemmaConcatTwoListThenFSndIsSuffix!653 lt!1307880 lt!1307870) lt!1308019)))

(declare-fun bs!577017 () Bool)

(assert (= bs!577017 d!1106491))

(assert (=> bs!577017 m!4282097))

(assert (=> bs!577017 m!4282097))

(declare-fun m!4282561 () Bool)

(assert (=> bs!577017 m!4282561))

(declare-fun m!4282563 () Bool)

(assert (=> bs!577017 m!4282563))

(assert (=> b!3776812 d!1106491))

(declare-fun b!3777057 () Bool)

(declare-fun e!2335666 () tuple2!39356)

(declare-fun lt!1308023 () tuple2!39356)

(declare-fun lt!1308022 () Option!8598)

(assert (=> b!3777057 (= e!2335666 (tuple2!39357 (prepend!1330 (_1!22812 lt!1308023) (_1!22813 (v!38779 lt!1308022))) (_2!22812 lt!1308023)))))

(assert (=> b!3777057 (= lt!1308023 (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1308022))))))

(declare-fun d!1106495 () Bool)

(declare-fun e!2335665 () Bool)

(assert (=> d!1106495 e!2335665))

(declare-fun res!1529240 () Bool)

(assert (=> d!1106495 (=> (not res!1529240) (not e!2335665))))

(declare-fun e!2335663 () Bool)

(assert (=> d!1106495 (= res!1529240 e!2335663)))

(declare-fun c!654920 () Bool)

(declare-fun lt!1308021 () tuple2!39356)

(assert (=> d!1106495 (= c!654920 (> (size!30306 (_1!22812 lt!1308021)) 0))))

(assert (=> d!1106495 (= lt!1308021 e!2335666)))

(declare-fun c!654921 () Bool)

(assert (=> d!1106495 (= c!654921 ((_ is Some!8597) lt!1308022))))

(assert (=> d!1106495 (= lt!1308022 (maxPrefixZipperSequence!1191 thiss!11876 rules!1265 lt!1307874))))

(assert (=> d!1106495 (= (lexRec!807 thiss!11876 rules!1265 lt!1307874) lt!1308021)))

(declare-fun b!3777058 () Bool)

(assert (=> b!3777058 (= e!2335665 (= (list!14920 (_2!22812 lt!1308021)) (_2!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 lt!1307874)))))))

(declare-fun b!3777059 () Bool)

(assert (=> b!3777059 (= e!2335666 (tuple2!39357 (BalanceConc!24321 Empty!12363) lt!1307874))))

(declare-fun b!3777060 () Bool)

(declare-fun res!1529242 () Bool)

(assert (=> b!3777060 (=> (not res!1529242) (not e!2335665))))

(assert (=> b!3777060 (= res!1529242 (= (list!14919 (_1!22812 lt!1308021)) (_1!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 lt!1307874)))))))

(declare-fun b!3777061 () Bool)

(assert (=> b!3777061 (= e!2335663 (= (list!14920 (_2!22812 lt!1308021)) (list!14920 lt!1307874)))))

(declare-fun b!3777062 () Bool)

(declare-fun e!2335664 () Bool)

(assert (=> b!3777062 (= e!2335663 e!2335664)))

(declare-fun res!1529241 () Bool)

(assert (=> b!3777062 (= res!1529241 (< (size!30307 (_2!22812 lt!1308021)) (size!30307 lt!1307874)))))

(assert (=> b!3777062 (=> (not res!1529241) (not e!2335664))))

(declare-fun b!3777063 () Bool)

(assert (=> b!3777063 (= e!2335664 (not (isEmpty!23673 (_1!22812 lt!1308021))))))

(assert (= (and d!1106495 c!654921) b!3777057))

(assert (= (and d!1106495 (not c!654921)) b!3777059))

(assert (= (and d!1106495 c!654920) b!3777062))

(assert (= (and d!1106495 (not c!654920)) b!3777061))

(assert (= (and b!3777062 res!1529241) b!3777063))

(assert (= (and d!1106495 res!1529240) b!3777060))

(assert (= (and b!3777060 res!1529242) b!3777058))

(declare-fun m!4282569 () Bool)

(assert (=> d!1106495 m!4282569))

(assert (=> d!1106495 m!4282095))

(declare-fun m!4282571 () Bool)

(assert (=> b!3777058 m!4282571))

(assert (=> b!3777058 m!4282123))

(assert (=> b!3777058 m!4282123))

(declare-fun m!4282573 () Bool)

(assert (=> b!3777058 m!4282573))

(declare-fun m!4282575 () Bool)

(assert (=> b!3777062 m!4282575))

(declare-fun m!4282577 () Bool)

(assert (=> b!3777062 m!4282577))

(declare-fun m!4282579 () Bool)

(assert (=> b!3777057 m!4282579))

(declare-fun m!4282581 () Bool)

(assert (=> b!3777057 m!4282581))

(declare-fun m!4282583 () Bool)

(assert (=> b!3777060 m!4282583))

(assert (=> b!3777060 m!4282123))

(assert (=> b!3777060 m!4282123))

(assert (=> b!3777060 m!4282573))

(declare-fun m!4282585 () Bool)

(assert (=> b!3777063 m!4282585))

(assert (=> b!3777061 m!4282571))

(assert (=> b!3777061 m!4282123))

(assert (=> b!3776812 d!1106495))

(declare-fun b!3777073 () Bool)

(declare-fun res!1529246 () Bool)

(declare-fun e!2335671 () Bool)

(assert (=> b!3777073 (=> (not res!1529246) (not e!2335671))))

(declare-fun lt!1308027 () List!40405)

(assert (=> b!3777073 (= res!1529246 (= (size!30308 lt!1308027) (+ (size!30308 lt!1307896) (size!30308 lt!1307870))))))

(declare-fun b!3777074 () Bool)

(assert (=> b!3777074 (= e!2335671 (or (not (= lt!1307870 Nil!40281)) (= lt!1308027 lt!1307896)))))

(declare-fun d!1106499 () Bool)

(assert (=> d!1106499 e!2335671))

(declare-fun res!1529247 () Bool)

(assert (=> d!1106499 (=> (not res!1529247) (not e!2335671))))

(assert (=> d!1106499 (= res!1529247 (= (content!5921 lt!1308027) ((_ map or) (content!5921 lt!1307896) (content!5921 lt!1307870))))))

(declare-fun e!2335672 () List!40405)

(assert (=> d!1106499 (= lt!1308027 e!2335672)))

(declare-fun c!654924 () Bool)

(assert (=> d!1106499 (= c!654924 ((_ is Nil!40281) lt!1307896))))

(assert (=> d!1106499 (= (++!10052 lt!1307896 lt!1307870) lt!1308027)))

(declare-fun b!3777071 () Bool)

(assert (=> b!3777071 (= e!2335672 lt!1307870)))

(declare-fun b!3777072 () Bool)

(assert (=> b!3777072 (= e!2335672 (Cons!40281 (h!45701 lt!1307896) (++!10052 (t!305116 lt!1307896) lt!1307870)))))

(assert (= (and d!1106499 c!654924) b!3777071))

(assert (= (and d!1106499 (not c!654924)) b!3777072))

(assert (= (and d!1106499 res!1529247) b!3777073))

(assert (= (and b!3777073 res!1529246) b!3777074))

(declare-fun m!4282607 () Bool)

(assert (=> b!3777073 m!4282607))

(declare-fun m!4282609 () Bool)

(assert (=> b!3777073 m!4282609))

(declare-fun m!4282611 () Bool)

(assert (=> b!3777073 m!4282611))

(declare-fun m!4282613 () Bool)

(assert (=> d!1106499 m!4282613))

(declare-fun m!4282615 () Bool)

(assert (=> d!1106499 m!4282615))

(declare-fun m!4282617 () Bool)

(assert (=> d!1106499 m!4282617))

(declare-fun m!4282621 () Bool)

(assert (=> b!3777072 m!4282621))

(assert (=> b!3776812 d!1106499))

(declare-fun b!3777145 () Bool)

(declare-fun e!2335720 () Option!8598)

(declare-fun call!276474 () Option!8598)

(assert (=> b!3777145 (= e!2335720 call!276474)))

(declare-fun bm!276469 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!550 (LexerInterface!5783 Rule!12188 BalanceConc!24318) Option!8598)

(assert (=> bm!276469 (= call!276474 (maxPrefixOneRuleZipperSequence!550 thiss!11876 (h!45703 rules!1265) input!678))))

(declare-fun b!3777146 () Bool)

(declare-fun res!1529302 () Bool)

(declare-fun e!2335719 () Bool)

(assert (=> b!3777146 (=> (not res!1529302) (not e!2335719))))

(declare-fun e!2335717 () Bool)

(assert (=> b!3777146 (= res!1529302 e!2335717)))

(declare-fun res!1529300 () Bool)

(assert (=> b!3777146 (=> res!1529300 e!2335717)))

(declare-fun lt!1308073 () Option!8598)

(assert (=> b!3777146 (= res!1529300 (not (isDefined!6764 lt!1308073)))))

(declare-fun d!1106503 () Bool)

(assert (=> d!1106503 e!2335719))

(declare-fun res!1529305 () Bool)

(assert (=> d!1106503 (=> (not res!1529305) (not e!2335719))))

(assert (=> d!1106503 (= res!1529305 (= (isDefined!6764 lt!1308073) (isDefined!6765 (maxPrefixZipper!534 thiss!11876 rules!1265 (list!14920 input!678)))))))

(assert (=> d!1106503 (= lt!1308073 e!2335720)))

(declare-fun c!654938 () Bool)

(assert (=> d!1106503 (= c!654938 (and ((_ is Cons!40283) rules!1265) ((_ is Nil!40283) (t!305118 rules!1265))))))

(declare-fun lt!1308077 () Unit!57990)

(declare-fun lt!1308071 () Unit!57990)

(assert (=> d!1106503 (= lt!1308077 lt!1308071)))

(declare-fun lt!1308074 () List!40405)

(declare-fun lt!1308072 () List!40405)

(assert (=> d!1106503 (isPrefix!3310 lt!1308074 lt!1308072)))

(assert (=> d!1106503 (= lt!1308071 (lemmaIsPrefixRefl!2095 lt!1308074 lt!1308072))))

(assert (=> d!1106503 (= lt!1308072 (list!14920 input!678))))

(assert (=> d!1106503 (= lt!1308074 (list!14920 input!678))))

(assert (=> d!1106503 (rulesValidInductive!2169 thiss!11876 rules!1265)))

(assert (=> d!1106503 (= (maxPrefixZipperSequence!1191 thiss!11876 rules!1265 input!678) lt!1308073)))

(declare-fun b!3777147 () Bool)

(declare-fun e!2335721 () Bool)

(assert (=> b!3777147 (= e!2335717 e!2335721)))

(declare-fun res!1529301 () Bool)

(assert (=> b!3777147 (=> (not res!1529301) (not e!2335721))))

(assert (=> b!3777147 (= res!1529301 (= (_1!22813 (get!13351 lt!1308073)) (_1!22815 (get!13352 (maxPrefixZipper!534 thiss!11876 rules!1265 (list!14920 input!678))))))))

(declare-fun b!3777148 () Bool)

(declare-fun e!2335718 () Bool)

(assert (=> b!3777148 (= e!2335718 (= (list!14920 (_2!22813 (get!13351 lt!1308073))) (_2!22815 (get!13352 (maxPrefix!3102 thiss!11876 rules!1265 (list!14920 input!678))))))))

(declare-fun b!3777149 () Bool)

(declare-fun e!2335716 () Bool)

(assert (=> b!3777149 (= e!2335716 e!2335718)))

(declare-fun res!1529303 () Bool)

(assert (=> b!3777149 (=> (not res!1529303) (not e!2335718))))

(assert (=> b!3777149 (= res!1529303 (= (_1!22813 (get!13351 lt!1308073)) (_1!22815 (get!13352 (maxPrefix!3102 thiss!11876 rules!1265 (list!14920 input!678))))))))

(declare-fun b!3777150 () Bool)

(assert (=> b!3777150 (= e!2335721 (= (list!14920 (_2!22813 (get!13351 lt!1308073))) (_2!22815 (get!13352 (maxPrefixZipper!534 thiss!11876 rules!1265 (list!14920 input!678))))))))

(declare-fun b!3777151 () Bool)

(assert (=> b!3777151 (= e!2335719 e!2335716)))

(declare-fun res!1529304 () Bool)

(assert (=> b!3777151 (=> res!1529304 e!2335716)))

(assert (=> b!3777151 (= res!1529304 (not (isDefined!6764 lt!1308073)))))

(declare-fun b!3777152 () Bool)

(declare-fun lt!1308075 () Option!8598)

(declare-fun lt!1308076 () Option!8598)

(assert (=> b!3777152 (= e!2335720 (ite (and ((_ is None!8597) lt!1308075) ((_ is None!8597) lt!1308076)) None!8597 (ite ((_ is None!8597) lt!1308076) lt!1308075 (ite ((_ is None!8597) lt!1308075) lt!1308076 (ite (>= (size!30305 (_1!22813 (v!38779 lt!1308075))) (size!30305 (_1!22813 (v!38779 lt!1308076)))) lt!1308075 lt!1308076)))))))

(assert (=> b!3777152 (= lt!1308075 call!276474)))

(assert (=> b!3777152 (= lt!1308076 (maxPrefixZipperSequence!1191 thiss!11876 (t!305118 rules!1265) input!678))))

(assert (= (and d!1106503 c!654938) b!3777145))

(assert (= (and d!1106503 (not c!654938)) b!3777152))

(assert (= (or b!3777145 b!3777152) bm!276469))

(assert (= (and d!1106503 res!1529305) b!3777146))

(assert (= (and b!3777146 (not res!1529300)) b!3777147))

(assert (= (and b!3777147 res!1529301) b!3777150))

(assert (= (and b!3777146 res!1529302) b!3777151))

(assert (= (and b!3777151 (not res!1529304)) b!3777149))

(assert (= (and b!3777149 res!1529303) b!3777148))

(declare-fun m!4282751 () Bool)

(assert (=> b!3777150 m!4282751))

(declare-fun m!4282753 () Bool)

(assert (=> b!3777150 m!4282753))

(assert (=> b!3777150 m!4282199))

(assert (=> b!3777150 m!4282201))

(assert (=> b!3777150 m!4282169))

(assert (=> b!3777150 m!4282199))

(assert (=> b!3777150 m!4282169))

(assert (=> b!3777149 m!4282753))

(assert (=> b!3777149 m!4282169))

(assert (=> b!3777149 m!4282169))

(assert (=> b!3777149 m!4282207))

(assert (=> b!3777149 m!4282207))

(assert (=> b!3777149 m!4282209))

(assert (=> b!3777148 m!4282753))

(assert (=> b!3777148 m!4282207))

(assert (=> b!3777148 m!4282209))

(assert (=> b!3777148 m!4282169))

(assert (=> b!3777148 m!4282169))

(assert (=> b!3777148 m!4282207))

(assert (=> b!3777148 m!4282751))

(declare-fun m!4282755 () Bool)

(assert (=> b!3777146 m!4282755))

(assert (=> b!3777151 m!4282755))

(assert (=> b!3777147 m!4282753))

(assert (=> b!3777147 m!4282169))

(assert (=> b!3777147 m!4282169))

(assert (=> b!3777147 m!4282199))

(assert (=> b!3777147 m!4282199))

(assert (=> b!3777147 m!4282201))

(declare-fun m!4282757 () Bool)

(assert (=> bm!276469 m!4282757))

(assert (=> d!1106503 m!4282217))

(declare-fun m!4282759 () Bool)

(assert (=> d!1106503 m!4282759))

(assert (=> d!1106503 m!4282169))

(assert (=> d!1106503 m!4282199))

(declare-fun m!4282763 () Bool)

(assert (=> d!1106503 m!4282763))

(assert (=> d!1106503 m!4282169))

(assert (=> d!1106503 m!4282755))

(assert (=> d!1106503 m!4282199))

(assert (=> d!1106503 m!4282219))

(declare-fun m!4282771 () Bool)

(assert (=> b!3777152 m!4282771))

(assert (=> b!3776812 d!1106503))

(declare-fun d!1106547 () Bool)

(declare-fun e!2335731 () Bool)

(assert (=> d!1106547 e!2335731))

(declare-fun res!1529314 () Bool)

(assert (=> d!1106547 (=> (not res!1529314) (not e!2335731))))

(declare-fun append!1034 (Conc!12363 Token!11526) Conc!12363)

(assert (=> d!1106547 (= res!1529314 (isBalanced!3555 (append!1034 (c!654861 acc!335) (_1!22813 (v!38779 lt!1307894)))))))

(declare-fun lt!1308086 () BalanceConc!24320)

(assert (=> d!1106547 (= lt!1308086 (BalanceConc!24321 (append!1034 (c!654861 acc!335) (_1!22813 (v!38779 lt!1307894)))))))

(assert (=> d!1106547 (= (append!1032 acc!335 (_1!22813 (v!38779 lt!1307894))) lt!1308086)))

(declare-fun b!3777165 () Bool)

(declare-fun $colon+!265 (List!40406 Token!11526) List!40406)

(assert (=> b!3777165 (= e!2335731 (= (list!14919 lt!1308086) ($colon+!265 (list!14919 acc!335) (_1!22813 (v!38779 lt!1307894)))))))

(assert (= (and d!1106547 res!1529314) b!3777165))

(declare-fun m!4282805 () Bool)

(assert (=> d!1106547 m!4282805))

(assert (=> d!1106547 m!4282805))

(declare-fun m!4282807 () Bool)

(assert (=> d!1106547 m!4282807))

(declare-fun m!4282809 () Bool)

(assert (=> b!3777165 m!4282809))

(assert (=> b!3777165 m!4282143))

(assert (=> b!3777165 m!4282143))

(declare-fun m!4282811 () Bool)

(assert (=> b!3777165 m!4282811))

(assert (=> b!3776812 d!1106547))

(declare-fun b!3777168 () Bool)

(declare-fun res!1529315 () Bool)

(declare-fun e!2335732 () Bool)

(assert (=> b!3777168 (=> (not res!1529315) (not e!2335732))))

(declare-fun lt!1308087 () List!40406)

(assert (=> b!3777168 (= res!1529315 (= (size!30313 lt!1308087) (+ (size!30313 lt!1307885) (size!30313 (++!10054 lt!1307890 lt!1307878)))))))

(declare-fun d!1106563 () Bool)

(assert (=> d!1106563 e!2335732))

(declare-fun res!1529316 () Bool)

(assert (=> d!1106563 (=> (not res!1529316) (not e!2335732))))

(assert (=> d!1106563 (= res!1529316 (= (content!5924 lt!1308087) ((_ map or) (content!5924 lt!1307885) (content!5924 (++!10054 lt!1307890 lt!1307878)))))))

(declare-fun e!2335733 () List!40406)

(assert (=> d!1106563 (= lt!1308087 e!2335733)))

(declare-fun c!654943 () Bool)

(assert (=> d!1106563 (= c!654943 ((_ is Nil!40282) lt!1307885))))

(assert (=> d!1106563 (= (++!10054 lt!1307885 (++!10054 lt!1307890 lt!1307878)) lt!1308087)))

(declare-fun b!3777169 () Bool)

(assert (=> b!3777169 (= e!2335732 (or (not (= (++!10054 lt!1307890 lt!1307878) Nil!40282)) (= lt!1308087 lt!1307885)))))

(declare-fun b!3777166 () Bool)

(assert (=> b!3777166 (= e!2335733 (++!10054 lt!1307890 lt!1307878))))

(declare-fun b!3777167 () Bool)

(assert (=> b!3777167 (= e!2335733 (Cons!40282 (h!45702 lt!1307885) (++!10054 (t!305117 lt!1307885) (++!10054 lt!1307890 lt!1307878))))))

(assert (= (and d!1106563 c!654943) b!3777166))

(assert (= (and d!1106563 (not c!654943)) b!3777167))

(assert (= (and d!1106563 res!1529316) b!3777168))

(assert (= (and b!3777168 res!1529315) b!3777169))

(declare-fun m!4282813 () Bool)

(assert (=> b!3777168 m!4282813))

(assert (=> b!3777168 m!4282437))

(assert (=> b!3777168 m!4282075))

(declare-fun m!4282815 () Bool)

(assert (=> b!3777168 m!4282815))

(declare-fun m!4282817 () Bool)

(assert (=> d!1106563 m!4282817))

(assert (=> d!1106563 m!4282443))

(assert (=> d!1106563 m!4282075))

(declare-fun m!4282819 () Bool)

(assert (=> d!1106563 m!4282819))

(assert (=> b!3777167 m!4282075))

(declare-fun m!4282821 () Bool)

(assert (=> b!3777167 m!4282821))

(assert (=> b!3776812 d!1106563))

(declare-fun d!1106565 () Bool)

(assert (=> d!1106565 (= (++!10052 (++!10052 lt!1307897 lt!1307889) lt!1307870) (++!10052 lt!1307897 (++!10052 lt!1307889 lt!1307870)))))

(declare-fun lt!1308090 () Unit!57990)

(declare-fun choose!22343 (List!40405 List!40405 List!40405) Unit!57990)

(assert (=> d!1106565 (= lt!1308090 (choose!22343 lt!1307897 lt!1307889 lt!1307870))))

(assert (=> d!1106565 (= (lemmaConcatAssociativity!2142 lt!1307897 lt!1307889 lt!1307870) lt!1308090)))

(declare-fun bs!577031 () Bool)

(assert (= bs!577031 d!1106565))

(assert (=> bs!577031 m!4282103))

(assert (=> bs!577031 m!4282105))

(declare-fun m!4282823 () Bool)

(assert (=> bs!577031 m!4282823))

(assert (=> bs!577031 m!4282085))

(assert (=> bs!577031 m!4282103))

(assert (=> bs!577031 m!4282085))

(declare-fun m!4282825 () Bool)

(assert (=> bs!577031 m!4282825))

(assert (=> b!3776812 d!1106565))

(declare-fun b!3777172 () Bool)

(declare-fun res!1529317 () Bool)

(declare-fun e!2335734 () Bool)

(assert (=> b!3777172 (=> (not res!1529317) (not e!2335734))))

(declare-fun lt!1308091 () List!40405)

(assert (=> b!3777172 (= res!1529317 (= (size!30308 lt!1308091) (+ (size!30308 lt!1307880) (size!30308 lt!1307870))))))

(declare-fun b!3777173 () Bool)

(assert (=> b!3777173 (= e!2335734 (or (not (= lt!1307870 Nil!40281)) (= lt!1308091 lt!1307880)))))

(declare-fun d!1106567 () Bool)

(assert (=> d!1106567 e!2335734))

(declare-fun res!1529318 () Bool)

(assert (=> d!1106567 (=> (not res!1529318) (not e!2335734))))

(assert (=> d!1106567 (= res!1529318 (= (content!5921 lt!1308091) ((_ map or) (content!5921 lt!1307880) (content!5921 lt!1307870))))))

(declare-fun e!2335735 () List!40405)

(assert (=> d!1106567 (= lt!1308091 e!2335735)))

(declare-fun c!654944 () Bool)

(assert (=> d!1106567 (= c!654944 ((_ is Nil!40281) lt!1307880))))

(assert (=> d!1106567 (= (++!10052 lt!1307880 lt!1307870) lt!1308091)))

(declare-fun b!3777170 () Bool)

(assert (=> b!3777170 (= e!2335735 lt!1307870)))

(declare-fun b!3777171 () Bool)

(assert (=> b!3777171 (= e!2335735 (Cons!40281 (h!45701 lt!1307880) (++!10052 (t!305116 lt!1307880) lt!1307870)))))

(assert (= (and d!1106567 c!654944) b!3777170))

(assert (= (and d!1106567 (not c!654944)) b!3777171))

(assert (= (and d!1106567 res!1529318) b!3777172))

(assert (= (and b!3777172 res!1529317) b!3777173))

(declare-fun m!4282827 () Bool)

(assert (=> b!3777172 m!4282827))

(declare-fun m!4282829 () Bool)

(assert (=> b!3777172 m!4282829))

(assert (=> b!3777172 m!4282611))

(declare-fun m!4282831 () Bool)

(assert (=> d!1106567 m!4282831))

(declare-fun m!4282833 () Bool)

(assert (=> d!1106567 m!4282833))

(assert (=> d!1106567 m!4282617))

(declare-fun m!4282835 () Bool)

(assert (=> b!3777171 m!4282835))

(assert (=> b!3776812 d!1106567))

(declare-fun d!1106569 () Bool)

(assert (=> d!1106569 (= (list!14920 lt!1307874) (list!14921 (c!654860 lt!1307874)))))

(declare-fun bs!577032 () Bool)

(assert (= bs!577032 d!1106569))

(declare-fun m!4282837 () Bool)

(assert (=> bs!577032 m!4282837))

(assert (=> b!3776812 d!1106569))

(declare-fun b!3777184 () Bool)

(declare-fun res!1529329 () Bool)

(declare-fun e!2335738 () Bool)

(assert (=> b!3777184 (=> (not res!1529329) (not e!2335738))))

(declare-fun height!1775 (Conc!12362) Int)

(declare-fun ++!10057 (Conc!12362 Conc!12362) Conc!12362)

(assert (=> b!3777184 (= res!1529329 (>= (height!1775 (++!10057 (c!654860 treated!13) (c!654860 lt!1307879))) (max!0 (height!1775 (c!654860 treated!13)) (height!1775 (c!654860 lt!1307879)))))))

(declare-fun b!3777183 () Bool)

(declare-fun res!1529330 () Bool)

(assert (=> b!3777183 (=> (not res!1529330) (not e!2335738))))

(assert (=> b!3777183 (= res!1529330 (<= (height!1775 (++!10057 (c!654860 treated!13) (c!654860 lt!1307879))) (+ (max!0 (height!1775 (c!654860 treated!13)) (height!1775 (c!654860 lt!1307879))) 1)))))

(declare-fun b!3777182 () Bool)

(declare-fun res!1529328 () Bool)

(assert (=> b!3777182 (=> (not res!1529328) (not e!2335738))))

(assert (=> b!3777182 (= res!1529328 (isBalanced!3556 (++!10057 (c!654860 treated!13) (c!654860 lt!1307879))))))

(declare-fun d!1106571 () Bool)

(assert (=> d!1106571 e!2335738))

(declare-fun res!1529327 () Bool)

(assert (=> d!1106571 (=> (not res!1529327) (not e!2335738))))

(declare-fun appendAssocInst!842 (Conc!12362 Conc!12362) Bool)

(assert (=> d!1106571 (= res!1529327 (appendAssocInst!842 (c!654860 treated!13) (c!654860 lt!1307879)))))

(declare-fun lt!1308094 () BalanceConc!24318)

(assert (=> d!1106571 (= lt!1308094 (BalanceConc!24319 (++!10057 (c!654860 treated!13) (c!654860 lt!1307879))))))

(assert (=> d!1106571 (= (++!10053 treated!13 lt!1307879) lt!1308094)))

(declare-fun b!3777185 () Bool)

(assert (=> b!3777185 (= e!2335738 (= (list!14920 lt!1308094) (++!10052 (list!14920 treated!13) (list!14920 lt!1307879))))))

(assert (= (and d!1106571 res!1529327) b!3777182))

(assert (= (and b!3777182 res!1529328) b!3777183))

(assert (= (and b!3777183 res!1529330) b!3777184))

(assert (= (and b!3777184 res!1529329) b!3777185))

(declare-fun m!4282839 () Bool)

(assert (=> d!1106571 m!4282839))

(declare-fun m!4282841 () Bool)

(assert (=> d!1106571 m!4282841))

(declare-fun m!4282843 () Bool)

(assert (=> b!3777185 m!4282843))

(assert (=> b!3777185 m!4282171))

(assert (=> b!3777185 m!4282093))

(assert (=> b!3777185 m!4282171))

(assert (=> b!3777185 m!4282093))

(declare-fun m!4282845 () Bool)

(assert (=> b!3777185 m!4282845))

(assert (=> b!3777183 m!4282841))

(declare-fun m!4282847 () Bool)

(assert (=> b!3777183 m!4282847))

(assert (=> b!3777183 m!4282847))

(declare-fun m!4282849 () Bool)

(assert (=> b!3777183 m!4282849))

(declare-fun m!4282851 () Bool)

(assert (=> b!3777183 m!4282851))

(assert (=> b!3777183 m!4282841))

(declare-fun m!4282853 () Bool)

(assert (=> b!3777183 m!4282853))

(assert (=> b!3777183 m!4282849))

(assert (=> b!3777182 m!4282841))

(assert (=> b!3777182 m!4282841))

(declare-fun m!4282855 () Bool)

(assert (=> b!3777182 m!4282855))

(assert (=> b!3777184 m!4282841))

(assert (=> b!3777184 m!4282847))

(assert (=> b!3777184 m!4282847))

(assert (=> b!3777184 m!4282849))

(assert (=> b!3777184 m!4282851))

(assert (=> b!3777184 m!4282841))

(assert (=> b!3777184 m!4282853))

(assert (=> b!3777184 m!4282849))

(assert (=> b!3776812 d!1106571))

(declare-fun b!3777188 () Bool)

(declare-fun res!1529331 () Bool)

(declare-fun e!2335739 () Bool)

(assert (=> b!3777188 (=> (not res!1529331) (not e!2335739))))

(declare-fun lt!1308095 () List!40406)

(assert (=> b!3777188 (= res!1529331 (= (size!30313 lt!1308095) (+ (size!30313 (++!10054 lt!1307885 lt!1307890)) (size!30313 lt!1307878))))))

(declare-fun d!1106573 () Bool)

(assert (=> d!1106573 e!2335739))

(declare-fun res!1529332 () Bool)

(assert (=> d!1106573 (=> (not res!1529332) (not e!2335739))))

(assert (=> d!1106573 (= res!1529332 (= (content!5924 lt!1308095) ((_ map or) (content!5924 (++!10054 lt!1307885 lt!1307890)) (content!5924 lt!1307878))))))

(declare-fun e!2335740 () List!40406)

(assert (=> d!1106573 (= lt!1308095 e!2335740)))

(declare-fun c!654948 () Bool)

(assert (=> d!1106573 (= c!654948 ((_ is Nil!40282) (++!10054 lt!1307885 lt!1307890)))))

(assert (=> d!1106573 (= (++!10054 (++!10054 lt!1307885 lt!1307890) lt!1307878) lt!1308095)))

(declare-fun b!3777189 () Bool)

(assert (=> b!3777189 (= e!2335739 (or (not (= lt!1307878 Nil!40282)) (= lt!1308095 (++!10054 lt!1307885 lt!1307890))))))

(declare-fun b!3777186 () Bool)

(assert (=> b!3777186 (= e!2335740 lt!1307878)))

(declare-fun b!3777187 () Bool)

(assert (=> b!3777187 (= e!2335740 (Cons!40282 (h!45702 (++!10054 lt!1307885 lt!1307890)) (++!10054 (t!305117 (++!10054 lt!1307885 lt!1307890)) lt!1307878)))))

(assert (= (and d!1106573 c!654948) b!3777186))

(assert (= (and d!1106573 (not c!654948)) b!3777187))

(assert (= (and d!1106573 res!1529332) b!3777188))

(assert (= (and b!3777188 res!1529331) b!3777189))

(declare-fun m!4282857 () Bool)

(assert (=> b!3777188 m!4282857))

(assert (=> b!3777188 m!4282101))

(declare-fun m!4282859 () Bool)

(assert (=> b!3777188 m!4282859))

(declare-fun m!4282861 () Bool)

(assert (=> b!3777188 m!4282861))

(declare-fun m!4282863 () Bool)

(assert (=> d!1106573 m!4282863))

(assert (=> d!1106573 m!4282101))

(declare-fun m!4282865 () Bool)

(assert (=> d!1106573 m!4282865))

(declare-fun m!4282867 () Bool)

(assert (=> d!1106573 m!4282867))

(declare-fun m!4282869 () Bool)

(assert (=> b!3777187 m!4282869))

(assert (=> b!3776812 d!1106573))

(declare-fun b!3777190 () Bool)

(declare-fun e!2335745 () Option!8598)

(declare-fun call!276475 () Option!8598)

(assert (=> b!3777190 (= e!2335745 call!276475)))

(declare-fun bm!276470 () Bool)

(assert (=> bm!276470 (= call!276475 (maxPrefixOneRuleZipperSequence!550 thiss!11876 (h!45703 rules!1265) lt!1307874))))

(declare-fun b!3777191 () Bool)

(declare-fun res!1529335 () Bool)

(declare-fun e!2335744 () Bool)

(assert (=> b!3777191 (=> (not res!1529335) (not e!2335744))))

(declare-fun e!2335742 () Bool)

(assert (=> b!3777191 (= res!1529335 e!2335742)))

(declare-fun res!1529333 () Bool)

(assert (=> b!3777191 (=> res!1529333 e!2335742)))

(declare-fun lt!1308098 () Option!8598)

(assert (=> b!3777191 (= res!1529333 (not (isDefined!6764 lt!1308098)))))

(declare-fun d!1106575 () Bool)

(assert (=> d!1106575 e!2335744))

(declare-fun res!1529338 () Bool)

(assert (=> d!1106575 (=> (not res!1529338) (not e!2335744))))

(assert (=> d!1106575 (= res!1529338 (= (isDefined!6764 lt!1308098) (isDefined!6765 (maxPrefixZipper!534 thiss!11876 rules!1265 (list!14920 lt!1307874)))))))

(assert (=> d!1106575 (= lt!1308098 e!2335745)))

(declare-fun c!654949 () Bool)

(assert (=> d!1106575 (= c!654949 (and ((_ is Cons!40283) rules!1265) ((_ is Nil!40283) (t!305118 rules!1265))))))

(declare-fun lt!1308102 () Unit!57990)

(declare-fun lt!1308096 () Unit!57990)

(assert (=> d!1106575 (= lt!1308102 lt!1308096)))

(declare-fun lt!1308099 () List!40405)

(declare-fun lt!1308097 () List!40405)

(assert (=> d!1106575 (isPrefix!3310 lt!1308099 lt!1308097)))

(assert (=> d!1106575 (= lt!1308096 (lemmaIsPrefixRefl!2095 lt!1308099 lt!1308097))))

(assert (=> d!1106575 (= lt!1308097 (list!14920 lt!1307874))))

(assert (=> d!1106575 (= lt!1308099 (list!14920 lt!1307874))))

(assert (=> d!1106575 (rulesValidInductive!2169 thiss!11876 rules!1265)))

(assert (=> d!1106575 (= (maxPrefixZipperSequence!1191 thiss!11876 rules!1265 lt!1307874) lt!1308098)))

(declare-fun b!3777192 () Bool)

(declare-fun e!2335746 () Bool)

(assert (=> b!3777192 (= e!2335742 e!2335746)))

(declare-fun res!1529334 () Bool)

(assert (=> b!3777192 (=> (not res!1529334) (not e!2335746))))

(assert (=> b!3777192 (= res!1529334 (= (_1!22813 (get!13351 lt!1308098)) (_1!22815 (get!13352 (maxPrefixZipper!534 thiss!11876 rules!1265 (list!14920 lt!1307874))))))))

(declare-fun e!2335743 () Bool)

(declare-fun b!3777193 () Bool)

(assert (=> b!3777193 (= e!2335743 (= (list!14920 (_2!22813 (get!13351 lt!1308098))) (_2!22815 (get!13352 (maxPrefix!3102 thiss!11876 rules!1265 (list!14920 lt!1307874))))))))

(declare-fun b!3777194 () Bool)

(declare-fun e!2335741 () Bool)

(assert (=> b!3777194 (= e!2335741 e!2335743)))

(declare-fun res!1529336 () Bool)

(assert (=> b!3777194 (=> (not res!1529336) (not e!2335743))))

(assert (=> b!3777194 (= res!1529336 (= (_1!22813 (get!13351 lt!1308098)) (_1!22815 (get!13352 (maxPrefix!3102 thiss!11876 rules!1265 (list!14920 lt!1307874))))))))

(declare-fun b!3777195 () Bool)

(assert (=> b!3777195 (= e!2335746 (= (list!14920 (_2!22813 (get!13351 lt!1308098))) (_2!22815 (get!13352 (maxPrefixZipper!534 thiss!11876 rules!1265 (list!14920 lt!1307874))))))))

(declare-fun b!3777196 () Bool)

(assert (=> b!3777196 (= e!2335744 e!2335741)))

(declare-fun res!1529337 () Bool)

(assert (=> b!3777196 (=> res!1529337 e!2335741)))

(assert (=> b!3777196 (= res!1529337 (not (isDefined!6764 lt!1308098)))))

(declare-fun b!3777197 () Bool)

(declare-fun lt!1308100 () Option!8598)

(declare-fun lt!1308101 () Option!8598)

(assert (=> b!3777197 (= e!2335745 (ite (and ((_ is None!8597) lt!1308100) ((_ is None!8597) lt!1308101)) None!8597 (ite ((_ is None!8597) lt!1308101) lt!1308100 (ite ((_ is None!8597) lt!1308100) lt!1308101 (ite (>= (size!30305 (_1!22813 (v!38779 lt!1308100))) (size!30305 (_1!22813 (v!38779 lt!1308101)))) lt!1308100 lt!1308101)))))))

(assert (=> b!3777197 (= lt!1308100 call!276475)))

(assert (=> b!3777197 (= lt!1308101 (maxPrefixZipperSequence!1191 thiss!11876 (t!305118 rules!1265) lt!1307874))))

(assert (= (and d!1106575 c!654949) b!3777190))

(assert (= (and d!1106575 (not c!654949)) b!3777197))

(assert (= (or b!3777190 b!3777197) bm!276470))

(assert (= (and d!1106575 res!1529338) b!3777191))

(assert (= (and b!3777191 (not res!1529333)) b!3777192))

(assert (= (and b!3777192 res!1529334) b!3777195))

(assert (= (and b!3777191 res!1529335) b!3777196))

(assert (= (and b!3777196 (not res!1529337)) b!3777194))

(assert (= (and b!3777194 res!1529336) b!3777193))

(declare-fun m!4282871 () Bool)

(assert (=> b!3777195 m!4282871))

(declare-fun m!4282873 () Bool)

(assert (=> b!3777195 m!4282873))

(declare-fun m!4282875 () Bool)

(assert (=> b!3777195 m!4282875))

(declare-fun m!4282877 () Bool)

(assert (=> b!3777195 m!4282877))

(assert (=> b!3777195 m!4282123))

(assert (=> b!3777195 m!4282875))

(assert (=> b!3777195 m!4282123))

(assert (=> b!3777194 m!4282873))

(assert (=> b!3777194 m!4282123))

(assert (=> b!3777194 m!4282123))

(declare-fun m!4282879 () Bool)

(assert (=> b!3777194 m!4282879))

(assert (=> b!3777194 m!4282879))

(declare-fun m!4282881 () Bool)

(assert (=> b!3777194 m!4282881))

(assert (=> b!3777193 m!4282873))

(assert (=> b!3777193 m!4282879))

(assert (=> b!3777193 m!4282881))

(assert (=> b!3777193 m!4282123))

(assert (=> b!3777193 m!4282123))

(assert (=> b!3777193 m!4282879))

(assert (=> b!3777193 m!4282871))

(declare-fun m!4282883 () Bool)

(assert (=> b!3777191 m!4282883))

(assert (=> b!3777196 m!4282883))

(assert (=> b!3777192 m!4282873))

(assert (=> b!3777192 m!4282123))

(assert (=> b!3777192 m!4282123))

(assert (=> b!3777192 m!4282875))

(assert (=> b!3777192 m!4282875))

(assert (=> b!3777192 m!4282877))

(declare-fun m!4282885 () Bool)

(assert (=> bm!276470 m!4282885))

(assert (=> d!1106575 m!4282217))

(declare-fun m!4282887 () Bool)

(assert (=> d!1106575 m!4282887))

(assert (=> d!1106575 m!4282123))

(assert (=> d!1106575 m!4282875))

(declare-fun m!4282889 () Bool)

(assert (=> d!1106575 m!4282889))

(assert (=> d!1106575 m!4282123))

(assert (=> d!1106575 m!4282883))

(assert (=> d!1106575 m!4282875))

(declare-fun m!4282891 () Bool)

(assert (=> d!1106575 m!4282891))

(declare-fun m!4282893 () Bool)

(assert (=> b!3777197 m!4282893))

(assert (=> b!3776812 d!1106575))

(declare-fun d!1106577 () Bool)

(declare-fun e!2335749 () Bool)

(assert (=> d!1106577 e!2335749))

(declare-fun res!1529341 () Bool)

(assert (=> d!1106577 (=> res!1529341 e!2335749)))

(declare-fun lt!1308105 () Bool)

(assert (=> d!1106577 (= res!1529341 (not lt!1308105))))

(declare-fun drop!2113 (List!40405 Int) List!40405)

(assert (=> d!1106577 (= lt!1308105 (= lt!1307870 (drop!2113 lt!1307881 (- (size!30308 lt!1307881) (size!30308 lt!1307870)))))))

(assert (=> d!1106577 (= (isSuffix!968 lt!1307870 lt!1307881) lt!1308105)))

(declare-fun b!3777200 () Bool)

(assert (=> b!3777200 (= e!2335749 (>= (size!30308 lt!1307881) (size!30308 lt!1307870)))))

(assert (= (and d!1106577 (not res!1529341)) b!3777200))

(declare-fun m!4282895 () Bool)

(assert (=> d!1106577 m!4282895))

(assert (=> d!1106577 m!4282611))

(declare-fun m!4282897 () Bool)

(assert (=> d!1106577 m!4282897))

(assert (=> b!3777200 m!4282895))

(assert (=> b!3777200 m!4282611))

(assert (=> b!3776812 d!1106577))

(declare-fun d!1106579 () Bool)

(assert (=> d!1106579 (= (list!14920 (_2!22812 lt!1307868)) (list!14921 (c!654860 (_2!22812 lt!1307868))))))

(declare-fun bs!577033 () Bool)

(assert (= bs!577033 d!1106579))

(declare-fun m!4282899 () Bool)

(assert (=> bs!577033 m!4282899))

(assert (=> b!3776812 d!1106579))

(declare-fun b!3777203 () Bool)

(declare-fun res!1529342 () Bool)

(declare-fun e!2335750 () Bool)

(assert (=> b!3777203 (=> (not res!1529342) (not e!2335750))))

(declare-fun lt!1308106 () List!40405)

(assert (=> b!3777203 (= res!1529342 (= (size!30308 lt!1308106) (+ (size!30308 lt!1307889) (size!30308 lt!1307870))))))

(declare-fun b!3777204 () Bool)

(assert (=> b!3777204 (= e!2335750 (or (not (= lt!1307870 Nil!40281)) (= lt!1308106 lt!1307889)))))

(declare-fun d!1106581 () Bool)

(assert (=> d!1106581 e!2335750))

(declare-fun res!1529343 () Bool)

(assert (=> d!1106581 (=> (not res!1529343) (not e!2335750))))

(assert (=> d!1106581 (= res!1529343 (= (content!5921 lt!1308106) ((_ map or) (content!5921 lt!1307889) (content!5921 lt!1307870))))))

(declare-fun e!2335751 () List!40405)

(assert (=> d!1106581 (= lt!1308106 e!2335751)))

(declare-fun c!654950 () Bool)

(assert (=> d!1106581 (= c!654950 ((_ is Nil!40281) lt!1307889))))

(assert (=> d!1106581 (= (++!10052 lt!1307889 lt!1307870) lt!1308106)))

(declare-fun b!3777201 () Bool)

(assert (=> b!3777201 (= e!2335751 lt!1307870)))

(declare-fun b!3777202 () Bool)

(assert (=> b!3777202 (= e!2335751 (Cons!40281 (h!45701 lt!1307889) (++!10052 (t!305116 lt!1307889) lt!1307870)))))

(assert (= (and d!1106581 c!654950) b!3777201))

(assert (= (and d!1106581 (not c!654950)) b!3777202))

(assert (= (and d!1106581 res!1529343) b!3777203))

(assert (= (and b!3777203 res!1529342) b!3777204))

(declare-fun m!4282901 () Bool)

(assert (=> b!3777203 m!4282901))

(assert (=> b!3777203 m!4282461))

(assert (=> b!3777203 m!4282611))

(declare-fun m!4282903 () Bool)

(assert (=> d!1106581 m!4282903))

(assert (=> d!1106581 m!4282465))

(assert (=> d!1106581 m!4282617))

(declare-fun m!4282905 () Bool)

(assert (=> b!3777202 m!4282905))

(assert (=> b!3776812 d!1106581))

(declare-fun d!1106583 () Bool)

(assert (=> d!1106583 (= (list!14920 (_2!22813 (v!38779 lt!1307894))) (list!14921 (c!654860 (_2!22813 (v!38779 lt!1307894)))))))

(declare-fun bs!577034 () Bool)

(assert (= bs!577034 d!1106583))

(declare-fun m!4282907 () Bool)

(assert (=> bs!577034 m!4282907))

(assert (=> b!3776812 d!1106583))

(declare-fun d!1106585 () Bool)

(declare-fun e!2335752 () Bool)

(assert (=> d!1106585 e!2335752))

(declare-fun res!1529344 () Bool)

(assert (=> d!1106585 (=> res!1529344 e!2335752)))

(declare-fun lt!1308107 () Bool)

(assert (=> d!1106585 (= res!1529344 (not lt!1308107))))

(assert (=> d!1106585 (= lt!1308107 (= lt!1307870 (drop!2113 lt!1307869 (- (size!30308 lt!1307869) (size!30308 lt!1307870)))))))

(assert (=> d!1106585 (= (isSuffix!968 lt!1307870 lt!1307869) lt!1308107)))

(declare-fun b!3777205 () Bool)

(assert (=> b!3777205 (= e!2335752 (>= (size!30308 lt!1307869) (size!30308 lt!1307870)))))

(assert (= (and d!1106585 (not res!1529344)) b!3777205))

(declare-fun m!4282909 () Bool)

(assert (=> d!1106585 m!4282909))

(assert (=> d!1106585 m!4282611))

(declare-fun m!4282911 () Bool)

(assert (=> d!1106585 m!4282911))

(assert (=> b!3777205 m!4282909))

(assert (=> b!3777205 m!4282611))

(assert (=> b!3776812 d!1106585))

(declare-fun d!1106587 () Bool)

(assert (=> d!1106587 (= (list!14920 lt!1307879) (list!14921 (c!654860 lt!1307879)))))

(declare-fun bs!577035 () Bool)

(assert (= bs!577035 d!1106587))

(declare-fun m!4282913 () Bool)

(assert (=> bs!577035 m!4282913))

(assert (=> b!3776812 d!1106587))

(declare-fun d!1106589 () Bool)

(assert (=> d!1106589 (= (list!14919 (append!1032 acc!335 (_1!22813 (v!38779 lt!1307894)))) (list!14923 (c!654861 (append!1032 acc!335 (_1!22813 (v!38779 lt!1307894))))))))

(declare-fun bs!577036 () Bool)

(assert (= bs!577036 d!1106589))

(declare-fun m!4282915 () Bool)

(assert (=> bs!577036 m!4282915))

(assert (=> b!3776812 d!1106589))

(declare-fun b!3777208 () Bool)

(declare-fun res!1529345 () Bool)

(declare-fun e!2335753 () Bool)

(assert (=> b!3777208 (=> (not res!1529345) (not e!2335753))))

(declare-fun lt!1308108 () List!40406)

(assert (=> b!3777208 (= res!1529345 (= (size!30313 lt!1308108) (+ (size!30313 lt!1307890) (size!30313 lt!1307878))))))

(declare-fun d!1106591 () Bool)

(assert (=> d!1106591 e!2335753))

(declare-fun res!1529346 () Bool)

(assert (=> d!1106591 (=> (not res!1529346) (not e!2335753))))

(assert (=> d!1106591 (= res!1529346 (= (content!5924 lt!1308108) ((_ map or) (content!5924 lt!1307890) (content!5924 lt!1307878))))))

(declare-fun e!2335754 () List!40406)

(assert (=> d!1106591 (= lt!1308108 e!2335754)))

(declare-fun c!654951 () Bool)

(assert (=> d!1106591 (= c!654951 ((_ is Nil!40282) lt!1307890))))

(assert (=> d!1106591 (= (++!10054 lt!1307890 lt!1307878) lt!1308108)))

(declare-fun b!3777209 () Bool)

(assert (=> b!3777209 (= e!2335753 (or (not (= lt!1307878 Nil!40282)) (= lt!1308108 lt!1307890)))))

(declare-fun b!3777206 () Bool)

(assert (=> b!3777206 (= e!2335754 lt!1307878)))

(declare-fun b!3777207 () Bool)

(assert (=> b!3777207 (= e!2335754 (Cons!40282 (h!45702 lt!1307890) (++!10054 (t!305117 lt!1307890) lt!1307878)))))

(assert (= (and d!1106591 c!654951) b!3777206))

(assert (= (and d!1106591 (not c!654951)) b!3777207))

(assert (= (and d!1106591 res!1529346) b!3777208))

(assert (= (and b!3777208 res!1529345) b!3777209))

(declare-fun m!4282917 () Bool)

(assert (=> b!3777208 m!4282917))

(assert (=> b!3777208 m!4282439))

(assert (=> b!3777208 m!4282861))

(declare-fun m!4282919 () Bool)

(assert (=> d!1106591 m!4282919))

(assert (=> d!1106591 m!4282445))

(assert (=> d!1106591 m!4282867))

(declare-fun m!4282921 () Bool)

(assert (=> b!3777207 m!4282921))

(assert (=> b!3776812 d!1106591))

(declare-fun d!1106593 () Bool)

(declare-fun e!2335763 () Bool)

(assert (=> d!1106593 e!2335763))

(declare-fun c!654957 () Bool)

(declare-fun lt!1308117 () tuple2!39360)

(assert (=> d!1106593 (= c!654957 (> (size!30313 (_1!22814 lt!1308117)) 0))))

(declare-fun e!2335762 () tuple2!39360)

(assert (=> d!1106593 (= lt!1308117 e!2335762)))

(declare-fun c!654956 () Bool)

(declare-fun lt!1308116 () Option!8599)

(assert (=> d!1106593 (= c!654956 ((_ is Some!8598) lt!1308116))))

(assert (=> d!1106593 (= lt!1308116 (maxPrefix!3102 thiss!11876 rules!1265 lt!1307896))))

(assert (=> d!1106593 (= (lexList!1557 thiss!11876 rules!1265 lt!1307896) lt!1308117)))

(declare-fun b!3777220 () Bool)

(assert (=> b!3777220 (= e!2335762 (tuple2!39361 Nil!40282 lt!1307896))))

(declare-fun b!3777221 () Bool)

(declare-fun lt!1308115 () tuple2!39360)

(assert (=> b!3777221 (= e!2335762 (tuple2!39361 (Cons!40282 (_1!22815 (v!38784 lt!1308116)) (_1!22814 lt!1308115)) (_2!22814 lt!1308115)))))

(assert (=> b!3777221 (= lt!1308115 (lexList!1557 thiss!11876 rules!1265 (_2!22815 (v!38784 lt!1308116))))))

(declare-fun b!3777222 () Bool)

(assert (=> b!3777222 (= e!2335763 (= (_2!22814 lt!1308117) lt!1307896))))

(declare-fun b!3777223 () Bool)

(declare-fun e!2335761 () Bool)

(assert (=> b!3777223 (= e!2335763 e!2335761)))

(declare-fun res!1529349 () Bool)

(assert (=> b!3777223 (= res!1529349 (< (size!30308 (_2!22814 lt!1308117)) (size!30308 lt!1307896)))))

(assert (=> b!3777223 (=> (not res!1529349) (not e!2335761))))

(declare-fun b!3777224 () Bool)

(declare-fun isEmpty!23676 (List!40406) Bool)

(assert (=> b!3777224 (= e!2335761 (not (isEmpty!23676 (_1!22814 lt!1308117))))))

(assert (= (and d!1106593 c!654956) b!3777221))

(assert (= (and d!1106593 (not c!654956)) b!3777220))

(assert (= (and d!1106593 c!654957) b!3777223))

(assert (= (and d!1106593 (not c!654957)) b!3777222))

(assert (= (and b!3777223 res!1529349) b!3777224))

(declare-fun m!4282923 () Bool)

(assert (=> d!1106593 m!4282923))

(declare-fun m!4282925 () Bool)

(assert (=> d!1106593 m!4282925))

(declare-fun m!4282927 () Bool)

(assert (=> b!3777221 m!4282927))

(declare-fun m!4282929 () Bool)

(assert (=> b!3777223 m!4282929))

(assert (=> b!3777223 m!4282609))

(declare-fun m!4282931 () Bool)

(assert (=> b!3777224 m!4282931))

(assert (=> b!3776812 d!1106593))

(declare-fun d!1106595 () Bool)

(declare-fun c!654960 () Bool)

(assert (=> d!1106595 (= c!654960 ((_ is Node!12363) (c!654861 acc!335)))))

(declare-fun e!2335768 () Bool)

(assert (=> d!1106595 (= (inv!54145 (c!654861 acc!335)) e!2335768)))

(declare-fun b!3777231 () Bool)

(declare-fun inv!54150 (Conc!12363) Bool)

(assert (=> b!3777231 (= e!2335768 (inv!54150 (c!654861 acc!335)))))

(declare-fun b!3777232 () Bool)

(declare-fun e!2335769 () Bool)

(assert (=> b!3777232 (= e!2335768 e!2335769)))

(declare-fun res!1529352 () Bool)

(assert (=> b!3777232 (= res!1529352 (not ((_ is Leaf!19158) (c!654861 acc!335))))))

(assert (=> b!3777232 (=> res!1529352 e!2335769)))

(declare-fun b!3777233 () Bool)

(declare-fun inv!54152 (Conc!12363) Bool)

(assert (=> b!3777233 (= e!2335769 (inv!54152 (c!654861 acc!335)))))

(assert (= (and d!1106595 c!654960) b!3777231))

(assert (= (and d!1106595 (not c!654960)) b!3777232))

(assert (= (and b!3777232 (not res!1529352)) b!3777233))

(declare-fun m!4282933 () Bool)

(assert (=> b!3777231 m!4282933))

(declare-fun m!4282935 () Bool)

(assert (=> b!3777233 m!4282935))

(assert (=> b!3776801 d!1106595))

(declare-fun d!1106597 () Bool)

(declare-fun c!654961 () Bool)

(assert (=> d!1106597 (= c!654961 ((_ is Node!12362) (c!654860 treated!13)))))

(declare-fun e!2335770 () Bool)

(assert (=> d!1106597 (= (inv!54141 (c!654860 treated!13)) e!2335770)))

(declare-fun b!3777234 () Bool)

(assert (=> b!3777234 (= e!2335770 (inv!54146 (c!654860 treated!13)))))

(declare-fun b!3777235 () Bool)

(declare-fun e!2335771 () Bool)

(assert (=> b!3777235 (= e!2335770 e!2335771)))

(declare-fun res!1529353 () Bool)

(assert (=> b!3777235 (= res!1529353 (not ((_ is Leaf!19157) (c!654860 treated!13))))))

(assert (=> b!3777235 (=> res!1529353 e!2335771)))

(declare-fun b!3777236 () Bool)

(assert (=> b!3777236 (= e!2335771 (inv!54147 (c!654860 treated!13)))))

(assert (= (and d!1106597 c!654961) b!3777234))

(assert (= (and d!1106597 (not c!654961)) b!3777235))

(assert (= (and b!3777235 (not res!1529353)) b!3777236))

(declare-fun m!4282937 () Bool)

(assert (=> b!3777234 m!4282937))

(declare-fun m!4282939 () Bool)

(assert (=> b!3777236 m!4282939))

(assert (=> b!3776811 d!1106597))

(declare-fun d!1106599 () Bool)

(assert (=> d!1106599 (= (inv!54135 (tag!7054 (h!45703 rules!1265))) (= (mod (str.len (value!197135 (tag!7054 (h!45703 rules!1265)))) 2) 0))))

(assert (=> b!3776800 d!1106599))

(declare-fun d!1106601 () Bool)

(declare-fun res!1529368 () Bool)

(declare-fun e!2335786 () Bool)

(assert (=> d!1106601 (=> (not res!1529368) (not e!2335786))))

(declare-fun semiInverseModEq!2649 (Int Int) Bool)

(assert (=> d!1106601 (= res!1529368 (semiInverseModEq!2649 (toChars!8421 (transformation!6194 (h!45703 rules!1265))) (toValue!8562 (transformation!6194 (h!45703 rules!1265)))))))

(assert (=> d!1106601 (= (inv!54144 (transformation!6194 (h!45703 rules!1265))) e!2335786)))

(declare-fun b!3777255 () Bool)

(declare-fun equivClasses!2548 (Int Int) Bool)

(assert (=> b!3777255 (= e!2335786 (equivClasses!2548 (toChars!8421 (transformation!6194 (h!45703 rules!1265))) (toValue!8562 (transformation!6194 (h!45703 rules!1265)))))))

(assert (= (and d!1106601 res!1529368) b!3777255))

(declare-fun m!4282941 () Bool)

(assert (=> d!1106601 m!4282941))

(declare-fun m!4282943 () Bool)

(assert (=> b!3777255 m!4282943))

(assert (=> b!3776800 d!1106601))

(declare-fun d!1106603 () Bool)

(assert (=> d!1106603 (= (isEmpty!23671 (list!14920 (_2!22812 lt!1307875))) ((_ is Nil!40281) (list!14920 (_2!22812 lt!1307875))))))

(assert (=> b!3776810 d!1106603))

(declare-fun d!1106605 () Bool)

(assert (=> d!1106605 (= (list!14920 (_2!22812 lt!1307875)) (list!14921 (c!654860 (_2!22812 lt!1307875))))))

(declare-fun bs!577037 () Bool)

(assert (= bs!577037 d!1106605))

(declare-fun m!4282945 () Bool)

(assert (=> bs!577037 m!4282945))

(assert (=> b!3776810 d!1106605))

(declare-fun d!1106607 () Bool)

(assert (=> d!1106607 (= (isEmpty!23672 rules!1265) ((_ is Nil!40283) rules!1265))))

(assert (=> b!3776799 d!1106607))

(declare-fun d!1106609 () Bool)

(declare-fun e!2335787 () Bool)

(assert (=> d!1106609 e!2335787))

(declare-fun res!1529369 () Bool)

(assert (=> d!1106609 (=> res!1529369 e!2335787)))

(declare-fun lt!1308132 () Bool)

(assert (=> d!1106609 (= res!1529369 (not lt!1308132))))

(assert (=> d!1106609 (= lt!1308132 (= lt!1307886 (drop!2113 lt!1307869 (- (size!30308 lt!1307869) (size!30308 lt!1307886)))))))

(assert (=> d!1106609 (= (isSuffix!968 lt!1307886 lt!1307869) lt!1308132)))

(declare-fun b!3777256 () Bool)

(assert (=> b!3777256 (= e!2335787 (>= (size!30308 lt!1307869) (size!30308 lt!1307886)))))

(assert (= (and d!1106609 (not res!1529369)) b!3777256))

(assert (=> d!1106609 m!4282909))

(assert (=> d!1106609 m!4282329))

(declare-fun m!4282947 () Bool)

(assert (=> d!1106609 m!4282947))

(assert (=> b!3777256 m!4282909))

(assert (=> b!3777256 m!4282329))

(assert (=> b!3776798 d!1106609))

(declare-fun d!1106611 () Bool)

(declare-fun e!2335788 () Bool)

(assert (=> d!1106611 e!2335788))

(declare-fun res!1529370 () Bool)

(assert (=> d!1106611 (=> res!1529370 e!2335788)))

(declare-fun lt!1308133 () Bool)

(assert (=> d!1106611 (= res!1529370 (not lt!1308133))))

(assert (=> d!1106611 (= lt!1308133 (= lt!1307886 (drop!2113 lt!1307883 (- (size!30308 lt!1307883) (size!30308 lt!1307886)))))))

(assert (=> d!1106611 (= (isSuffix!968 lt!1307886 lt!1307883) lt!1308133)))

(declare-fun b!3777257 () Bool)

(assert (=> b!3777257 (= e!2335788 (>= (size!30308 lt!1307883) (size!30308 lt!1307886)))))

(assert (= (and d!1106611 (not res!1529370)) b!3777257))

(declare-fun m!4282949 () Bool)

(assert (=> d!1106611 m!4282949))

(assert (=> d!1106611 m!4282329))

(declare-fun m!4282951 () Bool)

(assert (=> d!1106611 m!4282951))

(assert (=> b!3777257 m!4282949))

(assert (=> b!3777257 m!4282329))

(assert (=> b!3776798 d!1106611))

(declare-fun d!1106613 () Bool)

(assert (=> d!1106613 (isSuffix!968 lt!1307886 (++!10052 lt!1307897 lt!1307886))))

(declare-fun lt!1308134 () Unit!57990)

(assert (=> d!1106613 (= lt!1308134 (choose!22342 lt!1307897 lt!1307886))))

(assert (=> d!1106613 (= (lemmaConcatTwoListThenFSndIsSuffix!653 lt!1307897 lt!1307886) lt!1308134)))

(declare-fun bs!577038 () Bool)

(assert (= bs!577038 d!1106613))

(assert (=> bs!577038 m!4282165))

(assert (=> bs!577038 m!4282165))

(declare-fun m!4282953 () Bool)

(assert (=> bs!577038 m!4282953))

(declare-fun m!4282955 () Bool)

(assert (=> bs!577038 m!4282955))

(assert (=> b!3776798 d!1106613))

(declare-fun d!1106615 () Bool)

(declare-fun e!2335789 () Bool)

(assert (=> d!1106615 e!2335789))

(declare-fun res!1529371 () Bool)

(assert (=> d!1106615 (=> (not res!1529371) (not e!2335789))))

(assert (=> d!1106615 (= res!1529371 (isBalanced!3555 (prepend!1331 (c!654861 (_1!22812 lt!1307895)) (_1!22813 (v!38779 lt!1307891)))))))

(declare-fun lt!1308135 () BalanceConc!24320)

(assert (=> d!1106615 (= lt!1308135 (BalanceConc!24321 (prepend!1331 (c!654861 (_1!22812 lt!1307895)) (_1!22813 (v!38779 lt!1307891)))))))

(assert (=> d!1106615 (= (prepend!1330 (_1!22812 lt!1307895) (_1!22813 (v!38779 lt!1307891))) lt!1308135)))

(declare-fun b!3777258 () Bool)

(assert (=> b!3777258 (= e!2335789 (= (list!14919 lt!1308135) (Cons!40282 (_1!22813 (v!38779 lt!1307891)) (list!14919 (_1!22812 lt!1307895)))))))

(assert (= (and d!1106615 res!1529371) b!3777258))

(declare-fun m!4282957 () Bool)

(assert (=> d!1106615 m!4282957))

(assert (=> d!1106615 m!4282957))

(declare-fun m!4282959 () Bool)

(assert (=> d!1106615 m!4282959))

(declare-fun m!4282961 () Bool)

(assert (=> b!3777258 m!4282961))

(declare-fun m!4282963 () Bool)

(assert (=> b!3777258 m!4282963))

(assert (=> b!3776797 d!1106615))

(declare-fun b!3777259 () Bool)

(declare-fun e!2335793 () tuple2!39356)

(declare-fun lt!1308138 () tuple2!39356)

(declare-fun lt!1308137 () Option!8598)

(assert (=> b!3777259 (= e!2335793 (tuple2!39357 (prepend!1330 (_1!22812 lt!1308138) (_1!22813 (v!38779 lt!1308137))) (_2!22812 lt!1308138)))))

(assert (=> b!3777259 (= lt!1308138 (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1308137))))))

(declare-fun d!1106617 () Bool)

(declare-fun e!2335792 () Bool)

(assert (=> d!1106617 e!2335792))

(declare-fun res!1529372 () Bool)

(assert (=> d!1106617 (=> (not res!1529372) (not e!2335792))))

(declare-fun e!2335790 () Bool)

(assert (=> d!1106617 (= res!1529372 e!2335790)))

(declare-fun c!654964 () Bool)

(declare-fun lt!1308136 () tuple2!39356)

(assert (=> d!1106617 (= c!654964 (> (size!30306 (_1!22812 lt!1308136)) 0))))

(assert (=> d!1106617 (= lt!1308136 e!2335793)))

(declare-fun c!654965 () Bool)

(assert (=> d!1106617 (= c!654965 ((_ is Some!8597) lt!1308137))))

(assert (=> d!1106617 (= lt!1308137 (maxPrefixZipperSequence!1191 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307891))))))

(assert (=> d!1106617 (= (lexRec!807 thiss!11876 rules!1265 (_2!22813 (v!38779 lt!1307891))) lt!1308136)))

(declare-fun b!3777260 () Bool)

(assert (=> b!3777260 (= e!2335792 (= (list!14920 (_2!22812 lt!1308136)) (_2!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 (_2!22813 (v!38779 lt!1307891)))))))))

(declare-fun b!3777261 () Bool)

(assert (=> b!3777261 (= e!2335793 (tuple2!39357 (BalanceConc!24321 Empty!12363) (_2!22813 (v!38779 lt!1307891))))))

(declare-fun b!3777262 () Bool)

(declare-fun res!1529374 () Bool)

(assert (=> b!3777262 (=> (not res!1529374) (not e!2335792))))

(assert (=> b!3777262 (= res!1529374 (= (list!14919 (_1!22812 lt!1308136)) (_1!22814 (lexList!1557 thiss!11876 rules!1265 (list!14920 (_2!22813 (v!38779 lt!1307891)))))))))

(declare-fun b!3777263 () Bool)

(assert (=> b!3777263 (= e!2335790 (= (list!14920 (_2!22812 lt!1308136)) (list!14920 (_2!22813 (v!38779 lt!1307891)))))))

(declare-fun b!3777264 () Bool)

(declare-fun e!2335791 () Bool)

(assert (=> b!3777264 (= e!2335790 e!2335791)))

(declare-fun res!1529373 () Bool)

(assert (=> b!3777264 (= res!1529373 (< (size!30307 (_2!22812 lt!1308136)) (size!30307 (_2!22813 (v!38779 lt!1307891)))))))

(assert (=> b!3777264 (=> (not res!1529373) (not e!2335791))))

(declare-fun b!3777265 () Bool)

(assert (=> b!3777265 (= e!2335791 (not (isEmpty!23673 (_1!22812 lt!1308136))))))

(assert (= (and d!1106617 c!654965) b!3777259))

(assert (= (and d!1106617 (not c!654965)) b!3777261))

(assert (= (and d!1106617 c!654964) b!3777264))

(assert (= (and d!1106617 (not c!654964)) b!3777263))

(assert (= (and b!3777264 res!1529373) b!3777265))

(assert (= (and d!1106617 res!1529372) b!3777262))

(assert (= (and b!3777262 res!1529374) b!3777260))

(declare-fun m!4282965 () Bool)

(assert (=> d!1106617 m!4282965))

(declare-fun m!4282967 () Bool)

(assert (=> d!1106617 m!4282967))

(declare-fun m!4282969 () Bool)

(assert (=> b!3777260 m!4282969))

(declare-fun m!4282971 () Bool)

(assert (=> b!3777260 m!4282971))

(assert (=> b!3777260 m!4282971))

(declare-fun m!4282973 () Bool)

(assert (=> b!3777260 m!4282973))

(declare-fun m!4282975 () Bool)

(assert (=> b!3777264 m!4282975))

(declare-fun m!4282977 () Bool)

(assert (=> b!3777264 m!4282977))

(declare-fun m!4282979 () Bool)

(assert (=> b!3777259 m!4282979))

(declare-fun m!4282981 () Bool)

(assert (=> b!3777259 m!4282981))

(declare-fun m!4282983 () Bool)

(assert (=> b!3777262 m!4282983))

(assert (=> b!3777262 m!4282971))

(assert (=> b!3777262 m!4282971))

(assert (=> b!3777262 m!4282973))

(declare-fun m!4282985 () Bool)

(assert (=> b!3777265 m!4282985))

(assert (=> b!3777263 m!4282969))

(assert (=> b!3777263 m!4282971))

(assert (=> b!3776797 d!1106617))

(declare-fun tp!1152247 () Bool)

(declare-fun tp!1152246 () Bool)

(declare-fun e!2335804 () Bool)

(declare-fun b!3777282 () Bool)

(assert (=> b!3777282 (= e!2335804 (and (inv!54141 (left!31168 (c!654860 input!678))) tp!1152247 (inv!54141 (right!31498 (c!654860 input!678))) tp!1152246))))

(declare-fun b!3777284 () Bool)

(declare-fun e!2335805 () Bool)

(declare-fun tp!1152245 () Bool)

(assert (=> b!3777284 (= e!2335805 tp!1152245)))

(declare-fun b!3777283 () Bool)

(declare-fun inv!54154 (IArray!24729) Bool)

(assert (=> b!3777283 (= e!2335804 (and (inv!54154 (xs!15588 (c!654860 input!678))) e!2335805))))

(assert (=> b!3776796 (= tp!1152225 (and (inv!54141 (c!654860 input!678)) e!2335804))))

(assert (= (and b!3776796 ((_ is Node!12362) (c!654860 input!678))) b!3777282))

(assert (= b!3777283 b!3777284))

(assert (= (and b!3776796 ((_ is Leaf!19157) (c!654860 input!678))) b!3777283))

(declare-fun m!4283001 () Bool)

(assert (=> b!3777282 m!4283001))

(declare-fun m!4283003 () Bool)

(assert (=> b!3777282 m!4283003))

(declare-fun m!4283005 () Bool)

(assert (=> b!3777283 m!4283005))

(assert (=> b!3776796 m!4282127))

(declare-fun tp!1152254 () Bool)

(declare-fun b!3777297 () Bool)

(declare-fun tp!1152256 () Bool)

(declare-fun e!2335812 () Bool)

(assert (=> b!3777297 (= e!2335812 (and (inv!54145 (left!31169 (c!654861 acc!335))) tp!1152256 (inv!54145 (right!31499 (c!654861 acc!335))) tp!1152254))))

(declare-fun b!3777299 () Bool)

(declare-fun e!2335813 () Bool)

(declare-fun tp!1152255 () Bool)

(assert (=> b!3777299 (= e!2335813 tp!1152255)))

(declare-fun b!3777298 () Bool)

(declare-fun inv!54155 (IArray!24731) Bool)

(assert (=> b!3777298 (= e!2335812 (and (inv!54155 (xs!15589 (c!654861 acc!335))) e!2335813))))

(assert (=> b!3776801 (= tp!1152229 (and (inv!54145 (c!654861 acc!335)) e!2335812))))

(assert (= (and b!3776801 ((_ is Node!12363) (c!654861 acc!335))) b!3777297))

(assert (= b!3777298 b!3777299))

(assert (= (and b!3776801 ((_ is Leaf!19158) (c!654861 acc!335))) b!3777298))

(declare-fun m!4283023 () Bool)

(assert (=> b!3777297 m!4283023))

(declare-fun m!4283025 () Bool)

(assert (=> b!3777297 m!4283025))

(declare-fun m!4283027 () Bool)

(assert (=> b!3777298 m!4283027))

(assert (=> b!3776801 m!4282133))

(declare-fun b!3777316 () Bool)

(declare-fun b_free!101073 () Bool)

(declare-fun b_next!101777 () Bool)

(assert (=> b!3777316 (= b_free!101073 (not b_next!101777))))

(declare-fun tp!1152266 () Bool)

(declare-fun b_and!280539 () Bool)

(assert (=> b!3777316 (= tp!1152266 b_and!280539)))

(declare-fun b_free!101075 () Bool)

(declare-fun b_next!101779 () Bool)

(assert (=> b!3777316 (= b_free!101075 (not b_next!101779))))

(declare-fun t!305124 () Bool)

(declare-fun tb!216249 () Bool)

(assert (=> (and b!3777316 (= (toChars!8421 (transformation!6194 (h!45703 (t!305118 rules!1265)))) (toChars!8421 (transformation!6194 (rule!8966 (_1!22813 (v!38779 lt!1307894)))))) t!305124) tb!216249))

(declare-fun result!264056 () Bool)

(assert (= result!264056 result!264046))

(assert (=> d!1106485 t!305124))

(declare-fun b_and!280541 () Bool)

(declare-fun tp!1152268 () Bool)

(assert (=> b!3777316 (= tp!1152268 (and (=> t!305124 result!264056) b_and!280541))))

(declare-fun e!2335829 () Bool)

(assert (=> b!3777316 (= e!2335829 (and tp!1152266 tp!1152268))))

(declare-fun b!3777315 () Bool)

(declare-fun tp!1152267 () Bool)

(declare-fun e!2335828 () Bool)

(assert (=> b!3777315 (= e!2335828 (and tp!1152267 (inv!54135 (tag!7054 (h!45703 (t!305118 rules!1265)))) (inv!54144 (transformation!6194 (h!45703 (t!305118 rules!1265)))) e!2335829))))

(declare-fun b!3777314 () Bool)

(declare-fun e!2335827 () Bool)

(declare-fun tp!1152265 () Bool)

(assert (=> b!3777314 (= e!2335827 (and e!2335828 tp!1152265))))

(assert (=> b!3776806 (= tp!1152227 e!2335827)))

(assert (= b!3777315 b!3777316))

(assert (= b!3777314 b!3777315))

(assert (= (and b!3776806 ((_ is Cons!40283) (t!305118 rules!1265))) b!3777314))

(declare-fun m!4283029 () Bool)

(assert (=> b!3777315 m!4283029))

(declare-fun m!4283031 () Bool)

(assert (=> b!3777315 m!4283031))

(declare-fun tp!1152270 () Bool)

(declare-fun b!3777320 () Bool)

(declare-fun tp!1152271 () Bool)

(declare-fun e!2335832 () Bool)

(assert (=> b!3777320 (= e!2335832 (and (inv!54141 (left!31168 (c!654860 treated!13))) tp!1152271 (inv!54141 (right!31498 (c!654860 treated!13))) tp!1152270))))

(declare-fun b!3777322 () Bool)

(declare-fun e!2335833 () Bool)

(declare-fun tp!1152269 () Bool)

(assert (=> b!3777322 (= e!2335833 tp!1152269)))

(declare-fun b!3777321 () Bool)

(assert (=> b!3777321 (= e!2335832 (and (inv!54154 (xs!15588 (c!654860 treated!13))) e!2335833))))

(assert (=> b!3776811 (= tp!1152231 (and (inv!54141 (c!654860 treated!13)) e!2335832))))

(assert (= (and b!3776811 ((_ is Node!12362) (c!654860 treated!13))) b!3777320))

(assert (= b!3777321 b!3777322))

(assert (= (and b!3776811 ((_ is Leaf!19157) (c!654860 treated!13))) b!3777321))

(declare-fun m!4283037 () Bool)

(assert (=> b!3777320 m!4283037))

(declare-fun m!4283039 () Bool)

(assert (=> b!3777320 m!4283039))

(declare-fun m!4283041 () Bool)

(assert (=> b!3777321 m!4283041))

(assert (=> b!3776811 m!4282067))

(declare-fun b!3777343 () Bool)

(declare-fun e!2335840 () Bool)

(declare-fun tp!1152284 () Bool)

(declare-fun tp!1152282 () Bool)

(assert (=> b!3777343 (= e!2335840 (and tp!1152284 tp!1152282))))

(declare-fun b!3777342 () Bool)

(declare-fun tp!1152286 () Bool)

(assert (=> b!3777342 (= e!2335840 tp!1152286)))

(assert (=> b!3776800 (= tp!1152226 e!2335840)))

(declare-fun b!3777340 () Bool)

(declare-fun tp_is_empty!19163 () Bool)

(assert (=> b!3777340 (= e!2335840 tp_is_empty!19163)))

(declare-fun b!3777341 () Bool)

(declare-fun tp!1152285 () Bool)

(declare-fun tp!1152283 () Bool)

(assert (=> b!3777341 (= e!2335840 (and tp!1152285 tp!1152283))))

(assert (= (and b!3776800 ((_ is ElementMatch!11099) (regex!6194 (h!45703 rules!1265)))) b!3777340))

(assert (= (and b!3776800 ((_ is Concat!17524) (regex!6194 (h!45703 rules!1265)))) b!3777341))

(assert (= (and b!3776800 ((_ is Star!11099) (regex!6194 (h!45703 rules!1265)))) b!3777342))

(assert (= (and b!3776800 ((_ is Union!11099) (regex!6194 (h!45703 rules!1265)))) b!3777343))

(declare-fun tp!1152289 () Bool)

(declare-fun e!2335841 () Bool)

(declare-fun tp!1152288 () Bool)

(declare-fun b!3777344 () Bool)

(assert (=> b!3777344 (= e!2335841 (and (inv!54141 (left!31168 (c!654860 totalInput!335))) tp!1152289 (inv!54141 (right!31498 (c!654860 totalInput!335))) tp!1152288))))

(declare-fun b!3777346 () Bool)

(declare-fun e!2335842 () Bool)

(declare-fun tp!1152287 () Bool)

(assert (=> b!3777346 (= e!2335842 tp!1152287)))

(declare-fun b!3777345 () Bool)

(assert (=> b!3777345 (= e!2335841 (and (inv!54154 (xs!15588 (c!654860 totalInput!335))) e!2335842))))

(assert (=> b!3776804 (= tp!1152232 (and (inv!54141 (c!654860 totalInput!335)) e!2335841))))

(assert (= (and b!3776804 ((_ is Node!12362) (c!654860 totalInput!335))) b!3777344))

(assert (= b!3777345 b!3777346))

(assert (= (and b!3776804 ((_ is Leaf!19157) (c!654860 totalInput!335))) b!3777345))

(declare-fun m!4283067 () Bool)

(assert (=> b!3777344 m!4283067))

(declare-fun m!4283069 () Bool)

(assert (=> b!3777344 m!4283069))

(declare-fun m!4283071 () Bool)

(assert (=> b!3777345 m!4283071))

(assert (=> b!3776804 m!4282155))

(check-sat (not d!1106449) (not d!1106579) (not d!1106571) (not b!3776859) (not b!3777188) (not b!3776964) (not b!3777148) (not b!3777060) (not b!3776853) (not b!3777050) (not b!3777058) (not d!1106453) (not b!3777146) (not b!3777345) (not d!1106473) (not d!1106411) (not b!3777262) (not d!1106491) (not b!3776916) b_and!280537 (not b!3777282) (not b_next!101777) (not b!3776966) (not b_lambda!110737) (not b!3776862) (not b!3777056) (not b!3777264) (not d!1106611) (not b!3777233) (not b!3777207) (not d!1106613) (not b!3776995) (not d!1106495) (not b!3777221) (not b!3777346) (not bm!276470) (not b!3777200) (not b!3777192) (not b!3777149) (not b!3776932) (not d!1106547) (not b!3776922) (not b!3777283) tp_is_empty!19163 (not d!1106575) (not b!3777055) (not b!3776967) (not b!3777263) (not b!3777062) (not d!1106489) (not b!3777255) (not b!3776920) (not b!3777147) (not d!1106617) (not b!3777320) (not b!3777299) (not d!1106451) (not d!1106481) (not b!3777183) (not b!3777165) (not bm!276462) (not b!3776933) (not d!1106587) (not d!1106589) (not d!1106565) (not b!3777072) (not b!3777258) (not b!3777314) (not d!1106469) (not b!3777191) (not b!3776796) (not b!3776938) (not b!3776914) (not b!3777341) (not b!3777167) (not b!3777054) (not d!1106485) (not b!3776804) (not d!1106417) (not d!1106401) (not b!3777205) (not d!1106435) (not b!3777260) (not b!3777342) (not b!3777053) (not b!3776974) (not b!3777265) (not b!3776855) (not b!3776912) (not d!1106601) (not b!3776865) (not b!3777197) (not b!3776919) (not d!1106463) (not b!3777151) (not b!3777196) (not b!3777315) (not b!3777297) (not b!3777236) (not d!1106479) (not d!1106577) (not b!3776856) (not b!3777208) (not b!3776969) (not b!3777202) b_and!280539 (not b!3776973) b_and!280541 (not d!1106499) (not b!3777168) (not b!3776972) (not d!1106439) (not d!1106455) (not b!3777203) (not b!3776921) (not d!1106471) (not b!3777343) (not b!3777344) (not d!1106467) (not d!1106591) (not d!1106465) (not b!3777322) (not b!3776996) (not b!3776817) (not b!3776939) (not b!3776965) (not b!3776915) (not tb!216247) (not b_next!101775) (not d!1106441) (not bm!276469) (not b!3777063) (not b!3777171) (not b!3777193) (not b!3776917) (not b!3776801) (not b!3776999) (not b!3776968) (not b!3776936) (not b!3777057) (not b!3777000) (not b!3776858) (not b!3777182) (not d!1106421) (not b!3776935) (not d!1106443) (not b!3777259) (not b!3777184) (not b!3776913) (not b!3777223) (not b!3776991) (not b!3776909) (not b!3776826) (not d!1106609) (not d!1106437) (not b!3777284) (not d!1106593) (not b!3776971) (not d!1106573) (not b!3777298) (not b!3777187) (not b!3776860) (not b!3777231) b_and!280531 (not b_next!101773) (not d!1106605) (not d!1106445) (not b!3776992) (not d!1106419) (not d!1106461) (not b!3777234) (not b!3777185) (not b!3776910) (not b_next!101779) (not d!1106585) (not b!3776940) (not b!3777150) (not b!3776824) (not b!3777049) (not b!3777195) (not d!1106431) (not d!1106503) (not b!3777051) (not b!3776857) (not b!3777257) (not b!3777256) (not b!3777061) (not d!1106615) (not b!3777152) (not d!1106433) (not d!1106415) (not b!3777224) (not d!1106567) (not b!3777172) (not d!1106447) (not b!3776852) (not b!3777321) (not b!3776811) (not d!1106569) (not b!3776941) (not b!3777194) (not d!1106563) (not d!1106397) (not d!1106583) (not d!1106429) (not b!3777073) (not d!1106581))
(check-sat b_and!280537 (not b_next!101777) b_and!280539 b_and!280541 (not b_next!101775) (not b_next!101779) b_and!280531 (not b_next!101773))
