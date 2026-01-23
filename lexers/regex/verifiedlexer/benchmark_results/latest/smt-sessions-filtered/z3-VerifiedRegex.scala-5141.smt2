; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!263740 () Bool)

(assert start!263740)

(declare-fun b!2717888 () Bool)

(declare-fun b_free!76577 () Bool)

(declare-fun b_next!77281 () Bool)

(assert (=> b!2717888 (= b_free!76577 (not b_next!77281))))

(declare-fun tp!857874 () Bool)

(declare-fun b_and!200329 () Bool)

(assert (=> b!2717888 (= tp!857874 b_and!200329)))

(declare-fun b_free!76579 () Bool)

(declare-fun b_next!77283 () Bool)

(assert (=> b!2717888 (= b_free!76579 (not b_next!77283))))

(declare-fun tp!857881 () Bool)

(declare-fun b_and!200331 () Bool)

(assert (=> b!2717888 (= tp!857881 b_and!200331)))

(declare-fun b!2717875 () Bool)

(declare-fun e!1713012 () Bool)

(declare-datatypes ((C!16052 0))(
  ( (C!16053 (val!9960 Int)) )
))
(declare-datatypes ((List!31445 0))(
  ( (Nil!31345) (Cons!31345 (h!36765 C!16052) (t!226297 List!31445)) )
))
(declare-datatypes ((IArray!19639 0))(
  ( (IArray!19640 (innerList!9877 List!31445)) )
))
(declare-datatypes ((Conc!9817 0))(
  ( (Node!9817 (left!24100 Conc!9817) (right!24430 Conc!9817) (csize!19864 Int) (cheight!10028 Int)) (Leaf!14959 (xs!12888 IArray!19639) (csize!19865 Int)) (Empty!9817) )
))
(declare-datatypes ((BalanceConc!19248 0))(
  ( (BalanceConc!19249 (c!439195 Conc!9817)) )
))
(declare-fun totalInput!328 () BalanceConc!19248)

(declare-fun tp!857880 () Bool)

(declare-fun inv!42554 (Conc!9817) Bool)

(assert (=> b!2717875 (= e!1713012 (and (inv!42554 (c!439195 totalInput!328)) tp!857880))))

(declare-fun b!2717876 () Bool)

(declare-fun e!1713006 () Bool)

(declare-fun e!1713003 () Bool)

(assert (=> b!2717876 (= e!1713006 e!1713003)))

(declare-fun res!1141511 () Bool)

(assert (=> b!2717876 (=> (not res!1141511) (not e!1713003))))

(declare-datatypes ((List!31446 0))(
  ( (Nil!31346) (Cons!31346 (h!36766 (_ BitVec 16)) (t!226298 List!31446)) )
))
(declare-datatypes ((TokenValue!5017 0))(
  ( (FloatLiteralValue!10034 (text!35564 List!31446)) (TokenValueExt!5016 (__x!20169 Int)) (Broken!25085 (value!154244 List!31446)) (Object!5116) (End!5017) (Def!5017) (Underscore!5017) (Match!5017) (Else!5017) (Error!5017) (Case!5017) (If!5017) (Extends!5017) (Abstract!5017) (Class!5017) (Val!5017) (DelimiterValue!10034 (del!5077 List!31446)) (KeywordValue!5023 (value!154245 List!31446)) (CommentValue!10034 (value!154246 List!31446)) (WhitespaceValue!10034 (value!154247 List!31446)) (IndentationValue!5017 (value!154248 List!31446)) (String!34984) (Int32!5017) (Broken!25086 (value!154249 List!31446)) (Boolean!5018) (Unit!45367) (OperatorValue!5020 (op!5077 List!31446)) (IdentifierValue!10034 (value!154250 List!31446)) (IdentifierValue!10035 (value!154251 List!31446)) (WhitespaceValue!10035 (value!154252 List!31446)) (True!10034) (False!10034) (Broken!25087 (value!154253 List!31446)) (Broken!25088 (value!154254 List!31446)) (True!10035) (RightBrace!5017) (RightBracket!5017) (Colon!5017) (Null!5017) (Comma!5017) (LeftBracket!5017) (False!10035) (LeftBrace!5017) (ImaginaryLiteralValue!5017 (text!35565 List!31446)) (StringLiteralValue!15051 (value!154255 List!31446)) (EOFValue!5017 (value!154256 List!31446)) (IdentValue!5017 (value!154257 List!31446)) (DelimiterValue!10035 (value!154258 List!31446)) (DedentValue!5017 (value!154259 List!31446)) (NewLineValue!5017 (value!154260 List!31446)) (IntegerValue!15051 (value!154261 (_ BitVec 32)) (text!35566 List!31446)) (IntegerValue!15052 (value!154262 Int) (text!35567 List!31446)) (Times!5017) (Or!5017) (Equal!5017) (Minus!5017) (Broken!25089 (value!154263 List!31446)) (And!5017) (Div!5017) (LessEqual!5017) (Mod!5017) (Concat!12964) (Not!5017) (Plus!5017) (SpaceValue!5017 (value!154264 List!31446)) (IntegerValue!15053 (value!154265 Int) (text!35568 List!31446)) (StringLiteralValue!15052 (text!35569 List!31446)) (FloatLiteralValue!10035 (text!35570 List!31446)) (BytesLiteralValue!5017 (value!154266 List!31446)) (CommentValue!10035 (value!154267 List!31446)) (StringLiteralValue!15053 (value!154268 List!31446)) (ErrorTokenValue!5017 (msg!5078 List!31446)) )
))
(declare-datatypes ((Regex!7947 0))(
  ( (ElementMatch!7947 (c!439196 C!16052)) (Concat!12965 (regOne!16406 Regex!7947) (regTwo!16406 Regex!7947)) (EmptyExpr!7947) (Star!7947 (reg!8276 Regex!7947)) (EmptyLang!7947) (Union!7947 (regOne!16407 Regex!7947) (regTwo!16407 Regex!7947)) )
))
(declare-datatypes ((String!34985 0))(
  ( (String!34986 (value!154269 String)) )
))
(declare-datatypes ((TokenValueInjection!9474 0))(
  ( (TokenValueInjection!9475 (toValue!6769 Int) (toChars!6628 Int)) )
))
(declare-datatypes ((Rule!9390 0))(
  ( (Rule!9391 (regex!4795 Regex!7947) (tag!5299 String!34985) (isSeparator!4795 Bool) (transformation!4795 TokenValueInjection!9474)) )
))
(declare-datatypes ((Token!9052 0))(
  ( (Token!9053 (value!154270 TokenValue!5017) (rule!7223 Rule!9390) (size!24182 Int) (originalCharacters!5557 List!31445)) )
))
(declare-datatypes ((List!31447 0))(
  ( (Nil!31347) (Cons!31347 (h!36767 Token!9052) (t!226299 List!31447)) )
))
(declare-datatypes ((IArray!19641 0))(
  ( (IArray!19642 (innerList!9878 List!31447)) )
))
(declare-datatypes ((Conc!9818 0))(
  ( (Node!9818 (left!24101 Conc!9818) (right!24431 Conc!9818) (csize!19866 Int) (cheight!10029 Int)) (Leaf!14960 (xs!12889 IArray!19641) (csize!19867 Int)) (Empty!9818) )
))
(declare-datatypes ((BalanceConc!19250 0))(
  ( (BalanceConc!19251 (c!439197 Conc!9818)) )
))
(declare-datatypes ((tuple2!31026 0))(
  ( (tuple2!31027 (_1!18145 BalanceConc!19250) (_2!18145 BalanceConc!19248)) )
))
(declare-fun lt!961902 () tuple2!31026)

(declare-fun lt!961892 () tuple2!31026)

(declare-fun acc!331 () BalanceConc!19250)

(declare-fun list!11872 (BalanceConc!19250) List!31447)

(declare-fun ++!7788 (BalanceConc!19250 BalanceConc!19250) BalanceConc!19250)

(assert (=> b!2717876 (= res!1141511 (= (list!11872 (_1!18145 lt!961902)) (list!11872 (++!7788 acc!331 (_1!18145 lt!961892)))))))

(declare-fun input!603 () BalanceConc!19248)

(declare-datatypes ((LexerInterface!4391 0))(
  ( (LexerInterfaceExt!4388 (__x!20170 Int)) (Lexer!4389) )
))
(declare-fun thiss!11556 () LexerInterface!4391)

(declare-datatypes ((List!31448 0))(
  ( (Nil!31348) (Cons!31348 (h!36768 Rule!9390) (t!226300 List!31448)) )
))
(declare-fun rules!1182 () List!31448)

(declare-fun lexRec!651 (LexerInterface!4391 List!31448 BalanceConc!19248) tuple2!31026)

(assert (=> b!2717876 (= lt!961892 (lexRec!651 thiss!11556 rules!1182 input!603))))

(assert (=> b!2717876 (= lt!961902 (lexRec!651 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2717878 () Bool)

(declare-fun res!1141507 () Bool)

(assert (=> b!2717878 (=> (not res!1141507) (not e!1713006))))

(declare-fun lt!961894 () tuple2!31026)

(declare-fun isEmpty!17879 (List!31445) Bool)

(declare-fun list!11873 (BalanceConc!19248) List!31445)

(assert (=> b!2717878 (= res!1141507 (isEmpty!17879 (list!11873 (_2!18145 lt!961894))))))

(declare-fun b!2717879 () Bool)

(declare-fun e!1713015 () Bool)

(assert (=> b!2717879 (= e!1713015 e!1713006)))

(declare-fun res!1141506 () Bool)

(assert (=> b!2717879 (=> (not res!1141506) (not e!1713006))))

(declare-fun lt!961889 () List!31447)

(declare-fun lt!961904 () List!31447)

(assert (=> b!2717879 (= res!1141506 (= lt!961889 lt!961904))))

(assert (=> b!2717879 (= lt!961904 (list!11872 acc!331))))

(assert (=> b!2717879 (= lt!961889 (list!11872 (_1!18145 lt!961894)))))

(declare-fun treated!9 () BalanceConc!19248)

(assert (=> b!2717879 (= lt!961894 (lexRec!651 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2717880 () Bool)

(declare-fun res!1141510 () Bool)

(declare-fun e!1713007 () Bool)

(assert (=> b!2717880 (=> (not res!1141510) (not e!1713007))))

(declare-fun isEmpty!17880 (List!31448) Bool)

(assert (=> b!2717880 (= res!1141510 (not (isEmpty!17880 rules!1182)))))

(declare-fun lt!961900 () tuple2!31026)

(declare-fun lt!961881 () tuple2!31026)

(declare-fun e!1713016 () Bool)

(declare-fun b!2717881 () Bool)

(declare-datatypes ((tuple2!31028 0))(
  ( (tuple2!31029 (_1!18146 Token!9052) (_2!18146 BalanceConc!19248)) )
))
(declare-datatypes ((Option!6189 0))(
  ( (None!6188) (Some!6188 (v!33028 tuple2!31028)) )
))
(declare-fun lt!961886 () Option!6189)

(declare-fun prepend!1123 (BalanceConc!19250 Token!9052) BalanceConc!19250)

(assert (=> b!2717881 (= e!1713016 (= lt!961900 (tuple2!31027 (prepend!1123 (_1!18145 lt!961881) (_1!18146 (v!33028 lt!961886))) (_2!18145 lt!961881))))))

(assert (=> b!2717881 (= lt!961881 (lexRec!651 thiss!11556 rules!1182 (_2!18146 (v!33028 lt!961886))))))

(declare-fun lt!961883 () Option!6189)

(declare-fun e!1713014 () Bool)

(declare-fun lt!961882 () tuple2!31026)

(declare-fun b!2717882 () Bool)

(assert (=> b!2717882 (= e!1713014 (= lt!961892 (tuple2!31027 (prepend!1123 (_1!18145 lt!961882) (_1!18146 (v!33028 lt!961883))) (_2!18145 lt!961882))))))

(declare-fun b!2717883 () Bool)

(declare-fun lt!961896 () BalanceConc!19248)

(assert (=> b!2717883 (= e!1713016 (= lt!961900 (tuple2!31027 (BalanceConc!19251 Empty!9818) lt!961896)))))

(declare-fun e!1713009 () Bool)

(declare-fun b!2717884 () Bool)

(declare-fun tp!857878 () Bool)

(declare-fun e!1713004 () Bool)

(declare-fun inv!42548 (String!34985) Bool)

(declare-fun inv!42555 (TokenValueInjection!9474) Bool)

(assert (=> b!2717884 (= e!1713009 (and tp!857878 (inv!42548 (tag!5299 (h!36768 rules!1182))) (inv!42555 (transformation!4795 (h!36768 rules!1182))) e!1713004))))

(declare-fun b!2717885 () Bool)

(declare-fun res!1141509 () Bool)

(assert (=> b!2717885 (=> (not res!1141509) (not e!1713003))))

(assert (=> b!2717885 (= res!1141509 (= (list!11873 (_2!18145 lt!961902)) (list!11873 (_2!18145 lt!961892))))))

(declare-fun res!1141508 () Bool)

(assert (=> start!263740 (=> (not res!1141508) (not e!1713007))))

(get-info :version)

(assert (=> start!263740 (= res!1141508 ((_ is Lexer!4389) thiss!11556))))

(assert (=> start!263740 e!1713007))

(declare-fun e!1713005 () Bool)

(declare-fun inv!42556 (BalanceConc!19248) Bool)

(assert (=> start!263740 (and (inv!42556 treated!9) e!1713005)))

(declare-fun e!1713010 () Bool)

(assert (=> start!263740 (and (inv!42556 input!603) e!1713010)))

(assert (=> start!263740 true))

(declare-fun e!1713017 () Bool)

(assert (=> start!263740 e!1713017))

(assert (=> start!263740 (and (inv!42556 totalInput!328) e!1713012)))

(declare-fun e!1713011 () Bool)

(declare-fun inv!42557 (BalanceConc!19250) Bool)

(assert (=> start!263740 (and (inv!42557 acc!331) e!1713011)))

(declare-fun b!2717877 () Bool)

(declare-fun e!1713008 () Bool)

(assert (=> b!2717877 (= e!1713008 (not true))))

(declare-fun lt!961899 () BalanceConc!19250)

(declare-fun lt!961898 () tuple2!31026)

(declare-fun lexTailRec!40 (LexerInterface!4391 List!31448 BalanceConc!19248 BalanceConc!19248 BalanceConc!19248 BalanceConc!19250) tuple2!31026)

(assert (=> b!2717877 (= lt!961898 (lexTailRec!40 thiss!11556 rules!1182 totalInput!328 lt!961896 (_2!18146 (v!33028 lt!961883)) lt!961899))))

(assert (=> b!2717877 e!1713016))

(declare-fun c!439194 () Bool)

(assert (=> b!2717877 (= c!439194 ((_ is Some!6188) lt!961886))))

(assert (=> b!2717877 (= lt!961900 (lexRec!651 thiss!11556 rules!1182 lt!961896))))

(declare-fun maxPrefixZipperSequence!1039 (LexerInterface!4391 List!31448 BalanceConc!19248) Option!6189)

(assert (=> b!2717877 (= lt!961886 (maxPrefixZipperSequence!1039 thiss!11556 rules!1182 lt!961896))))

(declare-fun lt!961895 () BalanceConc!19248)

(declare-fun ++!7789 (BalanceConc!19248 BalanceConc!19248) BalanceConc!19248)

(assert (=> b!2717877 (= lt!961896 (++!7789 treated!9 lt!961895))))

(declare-fun lt!961887 () List!31447)

(declare-fun lt!961893 () List!31445)

(declare-datatypes ((tuple2!31030 0))(
  ( (tuple2!31031 (_1!18147 List!31447) (_2!18147 List!31445)) )
))
(declare-fun lexList!1222 (LexerInterface!4391 List!31448 List!31445) tuple2!31030)

(assert (=> b!2717877 (= (lexList!1222 thiss!11556 rules!1182 lt!961893) (tuple2!31031 lt!961887 Nil!31345))))

(declare-datatypes ((Unit!45368 0))(
  ( (Unit!45369) )
))
(declare-fun lt!961890 () Unit!45368)

(declare-fun lt!961891 () List!31447)

(declare-fun lt!961903 () List!31445)

(declare-fun lemmaLexThenLexPrefix!430 (LexerInterface!4391 List!31448 List!31445 List!31445 List!31447 List!31447 List!31445) Unit!45368)

(assert (=> b!2717877 (= lt!961890 (lemmaLexThenLexPrefix!430 thiss!11556 rules!1182 lt!961893 lt!961903 lt!961887 lt!961891 (list!11873 (_2!18145 lt!961882))))))

(assert (=> b!2717877 (= lt!961887 (list!11872 lt!961899))))

(declare-fun append!815 (BalanceConc!19250 Token!9052) BalanceConc!19250)

(assert (=> b!2717877 (= lt!961899 (append!815 acc!331 (_1!18146 (v!33028 lt!961883))))))

(declare-fun lt!961897 () List!31447)

(declare-fun ++!7790 (List!31447 List!31447) List!31447)

(assert (=> b!2717877 (= (++!7790 (++!7790 lt!961904 lt!961897) lt!961891) (++!7790 lt!961904 (++!7790 lt!961897 lt!961891)))))

(declare-fun lt!961885 () Unit!45368)

(declare-fun lemmaConcatAssociativity!1611 (List!31447 List!31447 List!31447) Unit!45368)

(assert (=> b!2717877 (= lt!961885 (lemmaConcatAssociativity!1611 lt!961904 lt!961897 lt!961891))))

(assert (=> b!2717877 (= lt!961891 (list!11872 (_1!18145 lt!961882)))))

(assert (=> b!2717877 (= lt!961897 (Cons!31347 (_1!18146 (v!33028 lt!961883)) Nil!31347))))

(assert (=> b!2717877 e!1713014))

(declare-fun res!1141513 () Bool)

(assert (=> b!2717877 (=> (not res!1141513) (not e!1713014))))

(declare-fun lt!961888 () List!31445)

(declare-fun lt!961901 () List!31445)

(declare-fun ++!7791 (List!31445 List!31445) List!31445)

(assert (=> b!2717877 (= res!1141513 (= (++!7791 lt!961893 lt!961903) (++!7791 lt!961888 (++!7791 lt!961901 lt!961903))))))

(assert (=> b!2717877 (= lt!961893 (++!7791 lt!961888 lt!961901))))

(declare-fun lt!961884 () Unit!45368)

(declare-fun lemmaConcatAssociativity!1612 (List!31445 List!31445 List!31445) Unit!45368)

(assert (=> b!2717877 (= lt!961884 (lemmaConcatAssociativity!1612 lt!961888 lt!961901 lt!961903))))

(assert (=> b!2717877 (= lt!961903 (list!11873 (_2!18146 (v!33028 lt!961883))))))

(assert (=> b!2717877 (= lt!961901 (list!11873 lt!961895))))

(declare-fun charsOf!3018 (Token!9052) BalanceConc!19248)

(assert (=> b!2717877 (= lt!961895 (charsOf!3018 (_1!18146 (v!33028 lt!961883))))))

(assert (=> b!2717877 (= lt!961882 (lexRec!651 thiss!11556 rules!1182 (_2!18146 (v!33028 lt!961883))))))

(declare-fun b!2717886 () Bool)

(declare-fun tp!857877 () Bool)

(assert (=> b!2717886 (= e!1713017 (and e!1713009 tp!857877))))

(declare-fun b!2717887 () Bool)

(declare-fun res!1141514 () Bool)

(assert (=> b!2717887 (=> (not res!1141514) (not e!1713007))))

(declare-fun rulesInvariant!3876 (LexerInterface!4391 List!31448) Bool)

(assert (=> b!2717887 (= res!1141514 (rulesInvariant!3876 thiss!11556 rules!1182))))

(assert (=> b!2717888 (= e!1713004 (and tp!857874 tp!857881))))

(declare-fun b!2717889 () Bool)

(declare-fun tp!857879 () Bool)

(assert (=> b!2717889 (= e!1713010 (and (inv!42554 (c!439195 input!603)) tp!857879))))

(declare-fun b!2717890 () Bool)

(declare-fun tp!857875 () Bool)

(assert (=> b!2717890 (= e!1713005 (and (inv!42554 (c!439195 treated!9)) tp!857875))))

(declare-fun b!2717891 () Bool)

(declare-fun tp!857876 () Bool)

(declare-fun inv!42558 (Conc!9818) Bool)

(assert (=> b!2717891 (= e!1713011 (and (inv!42558 (c!439197 acc!331)) tp!857876))))

(declare-fun b!2717892 () Bool)

(assert (=> b!2717892 (= e!1713007 e!1713015)))

(declare-fun res!1141512 () Bool)

(assert (=> b!2717892 (=> (not res!1141512) (not e!1713015))))

(assert (=> b!2717892 (= res!1141512 (= (list!11873 totalInput!328) (++!7791 lt!961888 (list!11873 input!603))))))

(assert (=> b!2717892 (= lt!961888 (list!11873 treated!9))))

(declare-fun b!2717893 () Bool)

(assert (=> b!2717893 (= e!1713003 e!1713008)))

(declare-fun res!1141505 () Bool)

(assert (=> b!2717893 (=> (not res!1141505) (not e!1713008))))

(assert (=> b!2717893 (= res!1141505 ((_ is Some!6188) lt!961883))))

(assert (=> b!2717893 (= lt!961883 (maxPrefixZipperSequence!1039 thiss!11556 rules!1182 input!603))))

(assert (= (and start!263740 res!1141508) b!2717880))

(assert (= (and b!2717880 res!1141510) b!2717887))

(assert (= (and b!2717887 res!1141514) b!2717892))

(assert (= (and b!2717892 res!1141512) b!2717879))

(assert (= (and b!2717879 res!1141506) b!2717878))

(assert (= (and b!2717878 res!1141507) b!2717876))

(assert (= (and b!2717876 res!1141511) b!2717885))

(assert (= (and b!2717885 res!1141509) b!2717893))

(assert (= (and b!2717893 res!1141505) b!2717877))

(assert (= (and b!2717877 res!1141513) b!2717882))

(assert (= (and b!2717877 c!439194) b!2717881))

(assert (= (and b!2717877 (not c!439194)) b!2717883))

(assert (= start!263740 b!2717890))

(assert (= start!263740 b!2717889))

(assert (= b!2717884 b!2717888))

(assert (= b!2717886 b!2717884))

(assert (= (and start!263740 ((_ is Cons!31348) rules!1182)) b!2717886))

(assert (= start!263740 b!2717875))

(assert (= start!263740 b!2717891))

(declare-fun m!3116989 () Bool)

(assert (=> b!2717876 m!3116989))

(declare-fun m!3116991 () Bool)

(assert (=> b!2717876 m!3116991))

(declare-fun m!3116993 () Bool)

(assert (=> b!2717876 m!3116993))

(declare-fun m!3116995 () Bool)

(assert (=> b!2717876 m!3116995))

(assert (=> b!2717876 m!3116995))

(declare-fun m!3116997 () Bool)

(assert (=> b!2717876 m!3116997))

(declare-fun m!3116999 () Bool)

(assert (=> b!2717884 m!3116999))

(declare-fun m!3117001 () Bool)

(assert (=> b!2717884 m!3117001))

(declare-fun m!3117003 () Bool)

(assert (=> start!263740 m!3117003))

(declare-fun m!3117005 () Bool)

(assert (=> start!263740 m!3117005))

(declare-fun m!3117007 () Bool)

(assert (=> start!263740 m!3117007))

(declare-fun m!3117009 () Bool)

(assert (=> start!263740 m!3117009))

(declare-fun m!3117011 () Bool)

(assert (=> b!2717890 m!3117011))

(declare-fun m!3117013 () Bool)

(assert (=> b!2717875 m!3117013))

(declare-fun m!3117015 () Bool)

(assert (=> b!2717881 m!3117015))

(declare-fun m!3117017 () Bool)

(assert (=> b!2717881 m!3117017))

(declare-fun m!3117019 () Bool)

(assert (=> b!2717877 m!3117019))

(declare-fun m!3117021 () Bool)

(assert (=> b!2717877 m!3117021))

(declare-fun m!3117023 () Bool)

(assert (=> b!2717877 m!3117023))

(declare-fun m!3117025 () Bool)

(assert (=> b!2717877 m!3117025))

(declare-fun m!3117027 () Bool)

(assert (=> b!2717877 m!3117027))

(declare-fun m!3117029 () Bool)

(assert (=> b!2717877 m!3117029))

(declare-fun m!3117031 () Bool)

(assert (=> b!2717877 m!3117031))

(assert (=> b!2717877 m!3117031))

(declare-fun m!3117033 () Bool)

(assert (=> b!2717877 m!3117033))

(declare-fun m!3117035 () Bool)

(assert (=> b!2717877 m!3117035))

(declare-fun m!3117037 () Bool)

(assert (=> b!2717877 m!3117037))

(declare-fun m!3117039 () Bool)

(assert (=> b!2717877 m!3117039))

(declare-fun m!3117041 () Bool)

(assert (=> b!2717877 m!3117041))

(declare-fun m!3117043 () Bool)

(assert (=> b!2717877 m!3117043))

(declare-fun m!3117045 () Bool)

(assert (=> b!2717877 m!3117045))

(declare-fun m!3117047 () Bool)

(assert (=> b!2717877 m!3117047))

(declare-fun m!3117049 () Bool)

(assert (=> b!2717877 m!3117049))

(declare-fun m!3117051 () Bool)

(assert (=> b!2717877 m!3117051))

(assert (=> b!2717877 m!3117027))

(declare-fun m!3117053 () Bool)

(assert (=> b!2717877 m!3117053))

(declare-fun m!3117055 () Bool)

(assert (=> b!2717877 m!3117055))

(declare-fun m!3117057 () Bool)

(assert (=> b!2717877 m!3117057))

(assert (=> b!2717877 m!3117055))

(declare-fun m!3117059 () Bool)

(assert (=> b!2717877 m!3117059))

(declare-fun m!3117061 () Bool)

(assert (=> b!2717877 m!3117061))

(declare-fun m!3117063 () Bool)

(assert (=> b!2717877 m!3117063))

(assert (=> b!2717877 m!3117061))

(declare-fun m!3117065 () Bool)

(assert (=> b!2717877 m!3117065))

(declare-fun m!3117067 () Bool)

(assert (=> b!2717878 m!3117067))

(assert (=> b!2717878 m!3117067))

(declare-fun m!3117069 () Bool)

(assert (=> b!2717878 m!3117069))

(declare-fun m!3117071 () Bool)

(assert (=> b!2717889 m!3117071))

(declare-fun m!3117073 () Bool)

(assert (=> b!2717893 m!3117073))

(declare-fun m!3117075 () Bool)

(assert (=> b!2717879 m!3117075))

(declare-fun m!3117077 () Bool)

(assert (=> b!2717879 m!3117077))

(declare-fun m!3117079 () Bool)

(assert (=> b!2717879 m!3117079))

(declare-fun m!3117081 () Bool)

(assert (=> b!2717887 m!3117081))

(declare-fun m!3117083 () Bool)

(assert (=> b!2717882 m!3117083))

(declare-fun m!3117085 () Bool)

(assert (=> b!2717892 m!3117085))

(declare-fun m!3117087 () Bool)

(assert (=> b!2717892 m!3117087))

(assert (=> b!2717892 m!3117087))

(declare-fun m!3117089 () Bool)

(assert (=> b!2717892 m!3117089))

(declare-fun m!3117091 () Bool)

(assert (=> b!2717892 m!3117091))

(declare-fun m!3117093 () Bool)

(assert (=> b!2717885 m!3117093))

(declare-fun m!3117095 () Bool)

(assert (=> b!2717885 m!3117095))

(declare-fun m!3117097 () Bool)

(assert (=> b!2717880 m!3117097))

(declare-fun m!3117099 () Bool)

(assert (=> b!2717891 m!3117099))

(check-sat (not b!2717887) b_and!200329 (not b!2717875) (not b!2717891) (not b!2717893) (not b!2717877) (not b!2717890) (not b!2717876) (not b!2717879) (not b!2717882) (not start!263740) (not b!2717889) (not b!2717885) (not b!2717880) b_and!200331 (not b_next!77281) (not b!2717881) (not b!2717884) (not b!2717878) (not b!2717892) (not b_next!77283) (not b!2717886))
(check-sat b_and!200331 b_and!200329 (not b_next!77283) (not b_next!77281))
