; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!511514 () Bool)

(assert start!511514)

(declare-fun b!4887037 () Bool)

(declare-fun b_free!131303 () Bool)

(declare-fun b_next!132093 () Bool)

(assert (=> b!4887037 (= b_free!131303 (not b_next!132093))))

(declare-fun tp!1375336 () Bool)

(declare-fun b_and!344135 () Bool)

(assert (=> b!4887037 (= tp!1375336 b_and!344135)))

(declare-fun b_free!131305 () Bool)

(declare-fun b_next!132095 () Bool)

(assert (=> b!4887037 (= b_free!131305 (not b_next!132095))))

(declare-fun tp!1375337 () Bool)

(declare-fun b_and!344137 () Bool)

(assert (=> b!4887037 (= tp!1375337 b_and!344137)))

(declare-fun b!4887033 () Bool)

(declare-fun e!3054937 () Bool)

(declare-fun e!3054938 () Bool)

(declare-fun tp!1375335 () Bool)

(assert (=> b!4887033 (= e!3054937 (and e!3054938 tp!1375335))))

(declare-fun b!4887035 () Bool)

(declare-fun res!2086931 () Bool)

(declare-fun e!3054934 () Bool)

(assert (=> b!4887035 (=> (not res!2086931) (not e!3054934))))

(declare-datatypes ((LexerInterface!7733 0))(
  ( (LexerInterfaceExt!7730 (__x!34195 Int)) (Lexer!7731) )
))
(declare-fun thiss!14805 () LexerInterface!7733)

(declare-datatypes ((C!26630 0))(
  ( (C!26631 (val!22649 Int)) )
))
(declare-datatypes ((List!56428 0))(
  ( (Nil!56304) (Cons!56304 (h!62752 C!26630) (t!365074 List!56428)) )
))
(declare-datatypes ((IArray!29479 0))(
  ( (IArray!29480 (innerList!14797 List!56428)) )
))
(declare-datatypes ((Conc!14709 0))(
  ( (Node!14709 (left!40898 Conc!14709) (right!41228 Conc!14709) (csize!29648 Int) (cheight!14920 Int)) (Leaf!24497 (xs!18025 IArray!29479) (csize!29649 Int)) (Empty!14709) )
))
(declare-datatypes ((BalanceConc!28848 0))(
  ( (BalanceConc!28849 (c!830784 Conc!14709)) )
))
(declare-datatypes ((List!56429 0))(
  ( (Nil!56305) (Cons!56305 (h!62753 (_ BitVec 16)) (t!365075 List!56429)) )
))
(declare-datatypes ((TokenValue!8451 0))(
  ( (FloatLiteralValue!16902 (text!59602 List!56429)) (TokenValueExt!8450 (__x!34196 Int)) (Broken!42255 (value!261146 List!56429)) (Object!8574) (End!8451) (Def!8451) (Underscore!8451) (Match!8451) (Else!8451) (Error!8451) (Case!8451) (If!8451) (Extends!8451) (Abstract!8451) (Class!8451) (Val!8451) (DelimiterValue!16902 (del!8511 List!56429)) (KeywordValue!8457 (value!261147 List!56429)) (CommentValue!16902 (value!261148 List!56429)) (WhitespaceValue!16902 (value!261149 List!56429)) (IndentationValue!8451 (value!261150 List!56429)) (String!63698) (Int32!8451) (Broken!42256 (value!261151 List!56429)) (Boolean!8452) (Unit!146294) (OperatorValue!8454 (op!8511 List!56429)) (IdentifierValue!16902 (value!261152 List!56429)) (IdentifierValue!16903 (value!261153 List!56429)) (WhitespaceValue!16903 (value!261154 List!56429)) (True!16902) (False!16902) (Broken!42257 (value!261155 List!56429)) (Broken!42258 (value!261156 List!56429)) (True!16903) (RightBrace!8451) (RightBracket!8451) (Colon!8451) (Null!8451) (Comma!8451) (LeftBracket!8451) (False!16903) (LeftBrace!8451) (ImaginaryLiteralValue!8451 (text!59603 List!56429)) (StringLiteralValue!25353 (value!261157 List!56429)) (EOFValue!8451 (value!261158 List!56429)) (IdentValue!8451 (value!261159 List!56429)) (DelimiterValue!16903 (value!261160 List!56429)) (DedentValue!8451 (value!261161 List!56429)) (NewLineValue!8451 (value!261162 List!56429)) (IntegerValue!25353 (value!261163 (_ BitVec 32)) (text!59604 List!56429)) (IntegerValue!25354 (value!261164 Int) (text!59605 List!56429)) (Times!8451) (Or!8451) (Equal!8451) (Minus!8451) (Broken!42259 (value!261165 List!56429)) (And!8451) (Div!8451) (LessEqual!8451) (Mod!8451) (Concat!21667) (Not!8451) (Plus!8451) (SpaceValue!8451 (value!261166 List!56429)) (IntegerValue!25355 (value!261167 Int) (text!59606 List!56429)) (StringLiteralValue!25354 (text!59607 List!56429)) (FloatLiteralValue!16903 (text!59608 List!56429)) (BytesLiteralValue!8451 (value!261168 List!56429)) (CommentValue!16903 (value!261169 List!56429)) (StringLiteralValue!25355 (value!261170 List!56429)) (ErrorTokenValue!8451 (msg!8512 List!56429)) )
))
(declare-datatypes ((Regex!13216 0))(
  ( (ElementMatch!13216 (c!830785 C!26630)) (Concat!21668 (regOne!26944 Regex!13216) (regTwo!26944 Regex!13216)) (EmptyExpr!13216) (Star!13216 (reg!13545 Regex!13216)) (EmptyLang!13216) (Union!13216 (regOne!26945 Regex!13216) (regTwo!26945 Regex!13216)) )
))
(declare-datatypes ((String!63699 0))(
  ( (String!63700 (value!261171 String)) )
))
(declare-datatypes ((TokenValueInjection!16210 0))(
  ( (TokenValueInjection!16211 (toValue!11028 Int) (toChars!10887 Int)) )
))
(declare-datatypes ((Rule!16082 0))(
  ( (Rule!16083 (regex!8141 Regex!13216) (tag!9005 String!63699) (isSeparator!8141 Bool) (transformation!8141 TokenValueInjection!16210)) )
))
(declare-datatypes ((List!56430 0))(
  ( (Nil!56306) (Cons!56306 (h!62754 Rule!16082) (t!365076 List!56430)) )
))
(declare-fun rulesArg!165 () List!56430)

(declare-fun rulesValidInductive!3120 (LexerInterface!7733 List!56430) Bool)

(assert (=> b!4887035 (= res!2086931 (rulesValidInductive!3120 thiss!14805 rulesArg!165))))

(declare-fun b!4887036 () Bool)

(declare-fun e!3054936 () Bool)

(declare-fun lt!2002736 () Bool)

(declare-fun lt!2002737 () Bool)

(assert (=> b!4887036 (= e!3054936 (or (not (= lt!2002736 lt!2002737)) (not lt!2002736) lt!2002737))))

(declare-fun lt!2002735 () List!56428)

(declare-datatypes ((Token!14850 0))(
  ( (Token!14851 (value!261172 TokenValue!8451) (rule!11315 Rule!16082) (size!37081 Int) (originalCharacters!8456 List!56428)) )
))
(declare-datatypes ((tuple2!60296 0))(
  ( (tuple2!60297 (_1!33451 Token!14850) (_2!33451 List!56428)) )
))
(declare-datatypes ((Option!13965 0))(
  ( (None!13964) (Some!13964 (v!49914 tuple2!60296)) )
))
(declare-fun isDefined!10980 (Option!13965) Bool)

(declare-fun maxPrefixZipper!644 (LexerInterface!7733 List!56430 List!56428) Option!13965)

(assert (=> b!4887036 (= lt!2002737 (isDefined!10980 (maxPrefixZipper!644 thiss!14805 rulesArg!165 lt!2002735)))))

(declare-datatypes ((tuple2!60298 0))(
  ( (tuple2!60299 (_1!33452 Token!14850) (_2!33452 BalanceConc!28848)) )
))
(declare-datatypes ((Option!13966 0))(
  ( (None!13965) (Some!13965 (v!49915 tuple2!60298)) )
))
(declare-fun lt!2002733 () Option!13966)

(declare-fun isDefined!10981 (Option!13966) Bool)

(assert (=> b!4887036 (= lt!2002736 (isDefined!10981 lt!2002733))))

(declare-fun e!3054933 () Bool)

(assert (=> b!4887037 (= e!3054933 (and tp!1375336 tp!1375337))))

(declare-fun b!4887038 () Bool)

(declare-fun res!2086932 () Bool)

(assert (=> b!4887038 (=> (not res!2086932) (not e!3054934))))

(declare-fun isEmpty!30183 (List!56430) Bool)

(assert (=> b!4887038 (= res!2086932 (not (isEmpty!30183 rulesArg!165)))))

(declare-fun b!4887039 () Bool)

(declare-fun tp!1375338 () Bool)

(declare-fun inv!72487 (String!63699) Bool)

(declare-fun inv!72490 (TokenValueInjection!16210) Bool)

(assert (=> b!4887039 (= e!3054938 (and tp!1375338 (inv!72487 (tag!9005 (h!62754 rulesArg!165))) (inv!72490 (transformation!8141 (h!62754 rulesArg!165))) e!3054933))))

(declare-fun b!4887040 () Bool)

(declare-fun e!3054935 () Bool)

(assert (=> b!4887040 (= e!3054934 (not e!3054935))))

(declare-fun res!2086934 () Bool)

(assert (=> b!4887040 (=> res!2086934 e!3054935)))

(assert (=> b!4887040 (= res!2086934 (or (and (is-Cons!56306 rulesArg!165) (is-Nil!56306 (t!365076 rulesArg!165))) (not (is-Cons!56306 rulesArg!165))))))

(declare-fun isPrefix!4863 (List!56428 List!56428) Bool)

(assert (=> b!4887040 (isPrefix!4863 lt!2002735 lt!2002735)))

(declare-datatypes ((Unit!146295 0))(
  ( (Unit!146296) )
))
(declare-fun lt!2002738 () Unit!146295)

(declare-fun lemmaIsPrefixRefl!3260 (List!56428 List!56428) Unit!146295)

(assert (=> b!4887040 (= lt!2002738 (lemmaIsPrefixRefl!3260 lt!2002735 lt!2002735))))

(declare-fun input!1236 () BalanceConc!28848)

(declare-fun list!17678 (BalanceConc!28848) List!56428)

(assert (=> b!4887040 (= lt!2002735 (list!17678 input!1236))))

(declare-fun b!4887041 () Bool)

(declare-fun e!3054940 () Bool)

(declare-fun tp!1375334 () Bool)

(declare-fun inv!72491 (Conc!14709) Bool)

(assert (=> b!4887041 (= e!3054940 (and (inv!72491 (c!830784 input!1236)) tp!1375334))))

(declare-fun b!4887034 () Bool)

(assert (=> b!4887034 (= e!3054935 e!3054936)))

(declare-fun res!2086933 () Bool)

(assert (=> b!4887034 (=> res!2086933 e!3054936)))

(declare-fun lt!2002734 () Option!13966)

(assert (=> b!4887034 (= res!2086933 (or (and (is-None!13965 lt!2002734) (is-None!13965 lt!2002733)) (is-None!13965 lt!2002733) (is-None!13965 lt!2002734) (>= (size!37081 (_1!33452 (v!49915 lt!2002734))) (size!37081 (_1!33452 (v!49915 lt!2002733))))))))

(declare-fun maxPrefixZipperSequence!1302 (LexerInterface!7733 List!56430 BalanceConc!28848) Option!13966)

(assert (=> b!4887034 (= lt!2002733 (maxPrefixZipperSequence!1302 thiss!14805 (t!365076 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!667 (LexerInterface!7733 Rule!16082 BalanceConc!28848) Option!13966)

(assert (=> b!4887034 (= lt!2002734 (maxPrefixOneRuleZipperSequence!667 thiss!14805 (h!62754 rulesArg!165) input!1236))))

(declare-fun res!2086930 () Bool)

(assert (=> start!511514 (=> (not res!2086930) (not e!3054934))))

(assert (=> start!511514 (= res!2086930 (is-Lexer!7731 thiss!14805))))

(assert (=> start!511514 e!3054934))

(assert (=> start!511514 true))

(assert (=> start!511514 e!3054937))

(declare-fun inv!72492 (BalanceConc!28848) Bool)

(assert (=> start!511514 (and (inv!72492 input!1236) e!3054940)))

(assert (= (and start!511514 res!2086930) b!4887035))

(assert (= (and b!4887035 res!2086931) b!4887038))

(assert (= (and b!4887038 res!2086932) b!4887040))

(assert (= (and b!4887040 (not res!2086934)) b!4887034))

(assert (= (and b!4887034 (not res!2086933)) b!4887036))

(assert (= b!4887039 b!4887037))

(assert (= b!4887033 b!4887039))

(assert (= (and start!511514 (is-Cons!56306 rulesArg!165)) b!4887033))

(assert (= start!511514 b!4887041))

(declare-fun m!5890788 () Bool)

(assert (=> start!511514 m!5890788))

(declare-fun m!5890790 () Bool)

(assert (=> b!4887035 m!5890790))

(declare-fun m!5890792 () Bool)

(assert (=> b!4887038 m!5890792))

(declare-fun m!5890794 () Bool)

(assert (=> b!4887040 m!5890794))

(declare-fun m!5890796 () Bool)

(assert (=> b!4887040 m!5890796))

(declare-fun m!5890798 () Bool)

(assert (=> b!4887040 m!5890798))

(declare-fun m!5890800 () Bool)

(assert (=> b!4887041 m!5890800))

(declare-fun m!5890802 () Bool)

(assert (=> b!4887034 m!5890802))

(declare-fun m!5890804 () Bool)

(assert (=> b!4887034 m!5890804))

(declare-fun m!5890806 () Bool)

(assert (=> b!4887039 m!5890806))

(declare-fun m!5890808 () Bool)

(assert (=> b!4887039 m!5890808))

(declare-fun m!5890810 () Bool)

(assert (=> b!4887036 m!5890810))

(assert (=> b!4887036 m!5890810))

(declare-fun m!5890812 () Bool)

(assert (=> b!4887036 m!5890812))

(declare-fun m!5890814 () Bool)

(assert (=> b!4887036 m!5890814))

(push 1)

(assert (not b_next!132095))

(assert (not b!4887040))

(assert (not b!4887038))

(assert (not b_next!132093))

(assert (not b!4887039))

(assert (not b!4887036))

(assert (not b!4887033))

(assert (not b!4887034))

(assert b_and!344135)

(assert (not b!4887041))

(assert (not b!4887035))

(assert b_and!344137)

(assert (not start!511514))

(check-sat)

(pop 1)

(push 1)

(assert b_and!344137)

(assert b_and!344135)

(assert (not b_next!132093))

(assert (not b_next!132095))

(check-sat)

(pop 1)

