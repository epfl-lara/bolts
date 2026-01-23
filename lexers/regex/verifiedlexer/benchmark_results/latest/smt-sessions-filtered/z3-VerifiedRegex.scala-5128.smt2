; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262620 () Bool)

(assert start!262620)

(declare-fun b!2705334 () Bool)

(declare-fun b_free!76369 () Bool)

(declare-fun b_next!77073 () Bool)

(assert (=> b!2705334 (= b_free!76369 (not b_next!77073))))

(declare-fun tp!855739 () Bool)

(declare-fun b_and!199801 () Bool)

(assert (=> b!2705334 (= tp!855739 b_and!199801)))

(declare-fun b_free!76371 () Bool)

(declare-fun b_next!77075 () Bool)

(assert (=> b!2705334 (= b_free!76371 (not b_next!77075))))

(declare-fun tp!855741 () Bool)

(declare-fun b_and!199803 () Bool)

(assert (=> b!2705334 (= tp!855741 b_and!199803)))

(declare-fun b!2705329 () Bool)

(declare-fun e!1705755 () Bool)

(declare-datatypes ((List!31331 0))(
  ( (Nil!31231) (Cons!31231 (h!36651 (_ BitVec 16)) (t!225769 List!31331)) )
))
(declare-datatypes ((TokenValue!4991 0))(
  ( (FloatLiteralValue!9982 (text!35382 List!31331)) (TokenValueExt!4990 (__x!20117 Int)) (Broken!24955 (value!153503 List!31331)) (Object!5090) (End!4991) (Def!4991) (Underscore!4991) (Match!4991) (Else!4991) (Error!4991) (Case!4991) (If!4991) (Extends!4991) (Abstract!4991) (Class!4991) (Val!4991) (DelimiterValue!9982 (del!5051 List!31331)) (KeywordValue!4997 (value!153504 List!31331)) (CommentValue!9982 (value!153505 List!31331)) (WhitespaceValue!9982 (value!153506 List!31331)) (IndentationValue!4991 (value!153507 List!31331)) (String!34854) (Int32!4991) (Broken!24956 (value!153508 List!31331)) (Boolean!4992) (Unit!45292) (OperatorValue!4994 (op!5051 List!31331)) (IdentifierValue!9982 (value!153509 List!31331)) (IdentifierValue!9983 (value!153510 List!31331)) (WhitespaceValue!9983 (value!153511 List!31331)) (True!9982) (False!9982) (Broken!24957 (value!153512 List!31331)) (Broken!24958 (value!153513 List!31331)) (True!9983) (RightBrace!4991) (RightBracket!4991) (Colon!4991) (Null!4991) (Comma!4991) (LeftBracket!4991) (False!9983) (LeftBrace!4991) (ImaginaryLiteralValue!4991 (text!35383 List!31331)) (StringLiteralValue!14973 (value!153514 List!31331)) (EOFValue!4991 (value!153515 List!31331)) (IdentValue!4991 (value!153516 List!31331)) (DelimiterValue!9983 (value!153517 List!31331)) (DedentValue!4991 (value!153518 List!31331)) (NewLineValue!4991 (value!153519 List!31331)) (IntegerValue!14973 (value!153520 (_ BitVec 32)) (text!35384 List!31331)) (IntegerValue!14974 (value!153521 Int) (text!35385 List!31331)) (Times!4991) (Or!4991) (Equal!4991) (Minus!4991) (Broken!24959 (value!153522 List!31331)) (And!4991) (Div!4991) (LessEqual!4991) (Mod!4991) (Concat!12912) (Not!4991) (Plus!4991) (SpaceValue!4991 (value!153523 List!31331)) (IntegerValue!14975 (value!153524 Int) (text!35386 List!31331)) (StringLiteralValue!14974 (text!35387 List!31331)) (FloatLiteralValue!9983 (text!35388 List!31331)) (BytesLiteralValue!4991 (value!153525 List!31331)) (CommentValue!9983 (value!153526 List!31331)) (StringLiteralValue!14975 (value!153527 List!31331)) (ErrorTokenValue!4991 (msg!5052 List!31331)) )
))
(declare-datatypes ((C!16000 0))(
  ( (C!16001 (val!9934 Int)) )
))
(declare-datatypes ((Regex!7921 0))(
  ( (ElementMatch!7921 (c!436504 C!16000)) (Concat!12913 (regOne!16354 Regex!7921) (regTwo!16354 Regex!7921)) (EmptyExpr!7921) (Star!7921 (reg!8250 Regex!7921)) (EmptyLang!7921) (Union!7921 (regOne!16355 Regex!7921) (regTwo!16355 Regex!7921)) )
))
(declare-datatypes ((String!34855 0))(
  ( (String!34856 (value!153528 String)) )
))
(declare-datatypes ((List!31332 0))(
  ( (Nil!31232) (Cons!31232 (h!36652 C!16000) (t!225770 List!31332)) )
))
(declare-datatypes ((IArray!19535 0))(
  ( (IArray!19536 (innerList!9825 List!31332)) )
))
(declare-datatypes ((Conc!9765 0))(
  ( (Node!9765 (left!24023 Conc!9765) (right!24353 Conc!9765) (csize!19760 Int) (cheight!9976 Int)) (Leaf!14894 (xs!12813 IArray!19535) (csize!19761 Int)) (Empty!9765) )
))
(declare-datatypes ((BalanceConc!19144 0))(
  ( (BalanceConc!19145 (c!436505 Conc!9765)) )
))
(declare-datatypes ((TokenValueInjection!9422 0))(
  ( (TokenValueInjection!9423 (toValue!6731 Int) (toChars!6590 Int)) )
))
(declare-datatypes ((Rule!9338 0))(
  ( (Rule!9339 (regex!4769 Regex!7921) (tag!5273 String!34855) (isSeparator!4769 Bool) (transformation!4769 TokenValueInjection!9422)) )
))
(declare-datatypes ((Token!9000 0))(
  ( (Token!9001 (value!153529 TokenValue!4991) (rule!7189 Rule!9338) (size!24103 Int) (originalCharacters!5531 List!31332)) )
))
(declare-datatypes ((List!31333 0))(
  ( (Nil!31233) (Cons!31233 (h!36653 Token!9000) (t!225771 List!31333)) )
))
(declare-datatypes ((IArray!19537 0))(
  ( (IArray!19538 (innerList!9826 List!31333)) )
))
(declare-datatypes ((Conc!9766 0))(
  ( (Node!9766 (left!24024 Conc!9766) (right!24354 Conc!9766) (csize!19762 Int) (cheight!9977 Int)) (Leaf!14895 (xs!12814 IArray!19537) (csize!19763 Int)) (Empty!9766) )
))
(declare-datatypes ((BalanceConc!19146 0))(
  ( (BalanceConc!19147 (c!436506 Conc!9766)) )
))
(declare-fun acc!331 () BalanceConc!19146)

(declare-fun tp!855743 () Bool)

(declare-fun inv!42325 (Conc!9766) Bool)

(assert (=> b!2705329 (= e!1705755 (and (inv!42325 (c!436506 acc!331)) tp!855743))))

(declare-fun b!2705330 () Bool)

(declare-fun res!1136036 () Bool)

(declare-fun e!1705749 () Bool)

(assert (=> b!2705330 (=> (not res!1136036) (not e!1705749))))

(declare-fun treated!9 () BalanceConc!19144)

(declare-fun input!603 () BalanceConc!19144)

(declare-fun totalInput!328 () BalanceConc!19144)

(declare-fun list!11788 (BalanceConc!19144) List!31332)

(declare-fun ++!7686 (List!31332 List!31332) List!31332)

(assert (=> b!2705330 (= res!1136036 (= (list!11788 totalInput!328) (++!7686 (list!11788 treated!9) (list!11788 input!603))))))

(declare-fun b!2705331 () Bool)

(declare-fun e!1705752 () Bool)

(assert (=> b!2705331 (= e!1705752 false)))

(declare-fun lt!956693 () List!31332)

(declare-datatypes ((tuple2!30854 0))(
  ( (tuple2!30855 (_1!18059 BalanceConc!19146) (_2!18059 BalanceConc!19144)) )
))
(declare-fun lt!956691 () tuple2!30854)

(assert (=> b!2705331 (= lt!956693 (list!11788 (_2!18059 lt!956691)))))

(declare-fun lt!956689 () List!31332)

(declare-fun lt!956690 () tuple2!30854)

(assert (=> b!2705331 (= lt!956689 (list!11788 (_2!18059 lt!956690)))))

(declare-fun res!1136039 () Bool)

(assert (=> start!262620 (=> (not res!1136039) (not e!1705749))))

(declare-datatypes ((LexerInterface!4365 0))(
  ( (LexerInterfaceExt!4362 (__x!20118 Int)) (Lexer!4363) )
))
(declare-fun thiss!11556 () LexerInterface!4365)

(get-info :version)

(assert (=> start!262620 (= res!1136039 ((_ is Lexer!4363) thiss!11556))))

(assert (=> start!262620 e!1705749))

(declare-fun e!1705758 () Bool)

(declare-fun inv!42326 (BalanceConc!19144) Bool)

(assert (=> start!262620 (and (inv!42326 treated!9) e!1705758)))

(declare-fun e!1705756 () Bool)

(assert (=> start!262620 (and (inv!42326 input!603) e!1705756)))

(assert (=> start!262620 true))

(declare-fun e!1705759 () Bool)

(assert (=> start!262620 e!1705759))

(declare-fun e!1705754 () Bool)

(assert (=> start!262620 (and (inv!42326 totalInput!328) e!1705754)))

(declare-fun inv!42327 (BalanceConc!19146) Bool)

(assert (=> start!262620 (and (inv!42327 acc!331) e!1705755)))

(declare-fun b!2705332 () Bool)

(declare-fun res!1136033 () Bool)

(assert (=> b!2705332 (=> (not res!1136033) (not e!1705749))))

(declare-datatypes ((List!31334 0))(
  ( (Nil!31234) (Cons!31234 (h!36654 Rule!9338) (t!225772 List!31334)) )
))
(declare-fun rules!1182 () List!31334)

(declare-fun rulesInvariant!3850 (LexerInterface!4365 List!31334) Bool)

(assert (=> b!2705332 (= res!1136033 (rulesInvariant!3850 thiss!11556 rules!1182))))

(declare-fun b!2705333 () Bool)

(declare-fun e!1705751 () Bool)

(assert (=> b!2705333 (= e!1705749 e!1705751)))

(declare-fun res!1136035 () Bool)

(assert (=> b!2705333 (=> (not res!1136035) (not e!1705751))))

(declare-fun lt!956692 () tuple2!30854)

(declare-fun list!11789 (BalanceConc!19146) List!31333)

(assert (=> b!2705333 (= res!1136035 (= (list!11789 (_1!18059 lt!956692)) (list!11789 acc!331)))))

(declare-fun lexRec!625 (LexerInterface!4365 List!31334 BalanceConc!19144) tuple2!30854)

(assert (=> b!2705333 (= lt!956692 (lexRec!625 thiss!11556 rules!1182 treated!9))))

(declare-fun e!1705753 () Bool)

(assert (=> b!2705334 (= e!1705753 (and tp!855739 tp!855741))))

(declare-fun b!2705335 () Bool)

(declare-fun e!1705757 () Bool)

(declare-fun tp!855742 () Bool)

(assert (=> b!2705335 (= e!1705759 (and e!1705757 tp!855742))))

(declare-fun b!2705336 () Bool)

(declare-fun tp!855738 () Bool)

(declare-fun inv!42328 (Conc!9765) Bool)

(assert (=> b!2705336 (= e!1705758 (and (inv!42328 (c!436505 treated!9)) tp!855738))))

(declare-fun tp!855737 () Bool)

(declare-fun b!2705337 () Bool)

(declare-fun inv!42319 (String!34855) Bool)

(declare-fun inv!42329 (TokenValueInjection!9422) Bool)

(assert (=> b!2705337 (= e!1705757 (and tp!855737 (inv!42319 (tag!5273 (h!36654 rules!1182))) (inv!42329 (transformation!4769 (h!36654 rules!1182))) e!1705753))))

(declare-fun b!2705338 () Bool)

(declare-fun tp!855740 () Bool)

(assert (=> b!2705338 (= e!1705756 (and (inv!42328 (c!436505 input!603)) tp!855740))))

(declare-fun b!2705339 () Bool)

(declare-fun res!1136034 () Bool)

(assert (=> b!2705339 (=> (not res!1136034) (not e!1705749))))

(declare-fun isEmpty!17781 (List!31334) Bool)

(assert (=> b!2705339 (= res!1136034 (not (isEmpty!17781 rules!1182)))))

(declare-fun b!2705340 () Bool)

(assert (=> b!2705340 (= e!1705751 e!1705752)))

(declare-fun res!1136037 () Bool)

(assert (=> b!2705340 (=> (not res!1136037) (not e!1705752))))

(declare-fun ++!7687 (BalanceConc!19146 BalanceConc!19146) BalanceConc!19146)

(assert (=> b!2705340 (= res!1136037 (= (list!11789 (_1!18059 lt!956690)) (list!11789 (++!7687 acc!331 (_1!18059 lt!956691)))))))

(assert (=> b!2705340 (= lt!956691 (lexRec!625 thiss!11556 rules!1182 input!603))))

(assert (=> b!2705340 (= lt!956690 (lexRec!625 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2705341 () Bool)

(declare-fun tp!855736 () Bool)

(assert (=> b!2705341 (= e!1705754 (and (inv!42328 (c!436505 totalInput!328)) tp!855736))))

(declare-fun b!2705342 () Bool)

(declare-fun res!1136038 () Bool)

(assert (=> b!2705342 (=> (not res!1136038) (not e!1705751))))

(declare-fun isEmpty!17782 (List!31332) Bool)

(assert (=> b!2705342 (= res!1136038 (isEmpty!17782 (list!11788 (_2!18059 lt!956692))))))

(assert (= (and start!262620 res!1136039) b!2705339))

(assert (= (and b!2705339 res!1136034) b!2705332))

(assert (= (and b!2705332 res!1136033) b!2705330))

(assert (= (and b!2705330 res!1136036) b!2705333))

(assert (= (and b!2705333 res!1136035) b!2705342))

(assert (= (and b!2705342 res!1136038) b!2705340))

(assert (= (and b!2705340 res!1136037) b!2705331))

(assert (= start!262620 b!2705336))

(assert (= start!262620 b!2705338))

(assert (= b!2705337 b!2705334))

(assert (= b!2705335 b!2705337))

(assert (= (and start!262620 ((_ is Cons!31234) rules!1182)) b!2705335))

(assert (= start!262620 b!2705341))

(assert (= start!262620 b!2705329))

(declare-fun m!3095139 () Bool)

(assert (=> b!2705331 m!3095139))

(declare-fun m!3095141 () Bool)

(assert (=> b!2705331 m!3095141))

(declare-fun m!3095143 () Bool)

(assert (=> b!2705338 m!3095143))

(declare-fun m!3095145 () Bool)

(assert (=> b!2705330 m!3095145))

(declare-fun m!3095147 () Bool)

(assert (=> b!2705330 m!3095147))

(declare-fun m!3095149 () Bool)

(assert (=> b!2705330 m!3095149))

(assert (=> b!2705330 m!3095147))

(assert (=> b!2705330 m!3095149))

(declare-fun m!3095151 () Bool)

(assert (=> b!2705330 m!3095151))

(declare-fun m!3095153 () Bool)

(assert (=> start!262620 m!3095153))

(declare-fun m!3095155 () Bool)

(assert (=> start!262620 m!3095155))

(declare-fun m!3095157 () Bool)

(assert (=> start!262620 m!3095157))

(declare-fun m!3095159 () Bool)

(assert (=> start!262620 m!3095159))

(declare-fun m!3095161 () Bool)

(assert (=> b!2705340 m!3095161))

(declare-fun m!3095163 () Bool)

(assert (=> b!2705340 m!3095163))

(declare-fun m!3095165 () Bool)

(assert (=> b!2705340 m!3095165))

(declare-fun m!3095167 () Bool)

(assert (=> b!2705340 m!3095167))

(declare-fun m!3095169 () Bool)

(assert (=> b!2705340 m!3095169))

(assert (=> b!2705340 m!3095165))

(declare-fun m!3095171 () Bool)

(assert (=> b!2705339 m!3095171))

(declare-fun m!3095173 () Bool)

(assert (=> b!2705329 m!3095173))

(declare-fun m!3095175 () Bool)

(assert (=> b!2705337 m!3095175))

(declare-fun m!3095177 () Bool)

(assert (=> b!2705337 m!3095177))

(declare-fun m!3095179 () Bool)

(assert (=> b!2705342 m!3095179))

(assert (=> b!2705342 m!3095179))

(declare-fun m!3095181 () Bool)

(assert (=> b!2705342 m!3095181))

(declare-fun m!3095183 () Bool)

(assert (=> b!2705333 m!3095183))

(declare-fun m!3095185 () Bool)

(assert (=> b!2705333 m!3095185))

(declare-fun m!3095187 () Bool)

(assert (=> b!2705333 m!3095187))

(declare-fun m!3095189 () Bool)

(assert (=> b!2705336 m!3095189))

(declare-fun m!3095191 () Bool)

(assert (=> b!2705341 m!3095191))

(declare-fun m!3095193 () Bool)

(assert (=> b!2705332 m!3095193))

(check-sat (not b!2705336) (not b!2705337) (not b!2705342) (not start!262620) (not b!2705329) (not b!2705330) (not b!2705331) (not b!2705338) (not b_next!77073) (not b!2705335) (not b!2705339) (not b!2705332) (not b_next!77075) b_and!199801 (not b!2705340) b_and!199803 (not b!2705341) (not b!2705333))
(check-sat b_and!199803 b_and!199801 (not b_next!77075) (not b_next!77073))
