; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745120 () Bool)

(assert start!745120)

(declare-fun b!7899335 () Bool)

(declare-fun b_free!134607 () Bool)

(declare-fun b_next!135397 () Bool)

(assert (=> b!7899335 (= b_free!134607 (not b_next!135397))))

(declare-fun tp!2353476 () Bool)

(declare-fun b_and!352507 () Bool)

(assert (=> b!7899335 (= tp!2353476 b_and!352507)))

(declare-fun b_free!134609 () Bool)

(declare-fun b_next!135399 () Bool)

(assert (=> b!7899335 (= b_free!134609 (not b_next!135399))))

(declare-fun tp!2353480 () Bool)

(declare-fun b_and!352509 () Bool)

(assert (=> b!7899335 (= tp!2353480 b_and!352509)))

(declare-fun tp!2353478 () Bool)

(declare-fun b!7899324 () Bool)

(declare-fun e!4662672 () Bool)

(declare-fun e!4662674 () Bool)

(declare-datatypes ((List!74206 0))(
  ( (Nil!74082) (Cons!74082 (h!80530 (_ BitVec 16)) (t!389015 List!74206)) )
))
(declare-datatypes ((TokenValue!8878 0))(
  ( (FloatLiteralValue!17756 (text!62591 List!74206)) (TokenValueExt!8877 (__x!35043 Int)) (Broken!44390 (value!285972 List!74206)) (Object!9001) (End!8878) (Def!8878) (Underscore!8878) (Match!8878) (Else!8878) (Error!8878) (Case!8878) (If!8878) (Extends!8878) (Abstract!8878) (Class!8878) (Val!8878) (DelimiterValue!17756 (del!8938 List!74206)) (KeywordValue!8884 (value!285973 List!74206)) (CommentValue!17756 (value!285974 List!74206)) (WhitespaceValue!17756 (value!285975 List!74206)) (IndentationValue!8878 (value!285976 List!74206)) (String!82811) (Int32!8878) (Broken!44391 (value!285977 List!74206)) (Boolean!8879) (Unit!169100) (OperatorValue!8881 (op!8938 List!74206)) (IdentifierValue!17756 (value!285978 List!74206)) (IdentifierValue!17757 (value!285979 List!74206)) (WhitespaceValue!17757 (value!285980 List!74206)) (True!17756) (False!17756) (Broken!44392 (value!285981 List!74206)) (Broken!44393 (value!285982 List!74206)) (True!17757) (RightBrace!8878) (RightBracket!8878) (Colon!8878) (Null!8878) (Comma!8878) (LeftBracket!8878) (False!17757) (LeftBrace!8878) (ImaginaryLiteralValue!8878 (text!62592 List!74206)) (StringLiteralValue!26634 (value!285983 List!74206)) (EOFValue!8878 (value!285984 List!74206)) (IdentValue!8878 (value!285985 List!74206)) (DelimiterValue!17757 (value!285986 List!74206)) (DedentValue!8878 (value!285987 List!74206)) (NewLineValue!8878 (value!285988 List!74206)) (IntegerValue!26634 (value!285989 (_ BitVec 32)) (text!62593 List!74206)) (IntegerValue!26635 (value!285990 Int) (text!62594 List!74206)) (Times!8878) (Or!8878) (Equal!8878) (Minus!8878) (Broken!44394 (value!285991 List!74206)) (And!8878) (Div!8878) (LessEqual!8878) (Mod!8878) (Concat!30143) (Not!8878) (Plus!8878) (SpaceValue!8878 (value!285992 List!74206)) (IntegerValue!26636 (value!285993 Int) (text!62595 List!74206)) (StringLiteralValue!26635 (text!62596 List!74206)) (FloatLiteralValue!17757 (text!62597 List!74206)) (BytesLiteralValue!8878 (value!285994 List!74206)) (CommentValue!17757 (value!285995 List!74206)) (StringLiteralValue!26636 (value!285996 List!74206)) (ErrorTokenValue!8878 (msg!8939 List!74206)) )
))
(declare-datatypes ((C!42860 0))(
  ( (C!42861 (val!31894 Int)) )
))
(declare-datatypes ((List!74207 0))(
  ( (Nil!74083) (Cons!74083 (h!80531 C!42860) (t!389016 List!74207)) )
))
(declare-datatypes ((IArray!31533 0))(
  ( (IArray!31534 (innerList!15824 List!74207)) )
))
(declare-datatypes ((Conc!15736 0))(
  ( (Node!15736 (left!56532 Conc!15736) (right!56862 Conc!15736) (csize!31702 Int) (cheight!15947 Int)) (Leaf!29985 (xs!19118 IArray!31533) (csize!31703 Int)) (Empty!15736) )
))
(declare-datatypes ((BalanceConc!30590 0))(
  ( (BalanceConc!30591 (c!1449763 Conc!15736)) )
))
(declare-datatypes ((Regex!21265 0))(
  ( (ElementMatch!21265 (c!1449764 C!42860)) (Concat!30144 (regOne!43042 Regex!21265) (regTwo!43042 Regex!21265)) (EmptyExpr!21265) (Star!21265 (reg!21594 Regex!21265)) (EmptyLang!21265) (Union!21265 (regOne!43043 Regex!21265) (regTwo!43043 Regex!21265)) )
))
(declare-datatypes ((String!82812 0))(
  ( (String!82813 (value!285997 String)) )
))
(declare-datatypes ((TokenValueInjection!17064 0))(
  ( (TokenValueInjection!17065 (toValue!11603 Int) (toChars!11462 Int)) )
))
(declare-datatypes ((Rule!16924 0))(
  ( (Rule!16925 (regex!8562 Regex!21265) (tag!9426 String!82812) (isSeparator!8562 Bool) (transformation!8562 TokenValueInjection!17064)) )
))
(declare-datatypes ((List!74208 0))(
  ( (Nil!74084) (Cons!74084 (h!80532 Rule!16924) (t!389017 List!74208)) )
))
(declare-fun rulesArg!141 () List!74208)

(declare-fun inv!95067 (String!82812) Bool)

(declare-fun inv!95069 (TokenValueInjection!17064) Bool)

(assert (=> b!7899324 (= e!4662674 (and tp!2353478 (inv!95067 (tag!9426 (h!80532 rulesArg!141))) (inv!95069 (transformation!8562 (h!80532 rulesArg!141))) e!4662672))))

(declare-fun res!3133732 () Bool)

(declare-fun e!4662676 () Bool)

(assert (=> start!745120 (=> (not res!3133732) (not e!4662676))))

(declare-datatypes ((LexerInterface!8154 0))(
  ( (LexerInterfaceExt!8151 (__x!35044 Int)) (Lexer!8152) )
))
(declare-fun thiss!14377 () LexerInterface!8154)

(get-info :version)

(assert (=> start!745120 (= res!3133732 ((_ is Lexer!8152) thiss!14377))))

(assert (=> start!745120 e!4662676))

(assert (=> start!745120 true))

(declare-fun e!4662673 () Bool)

(assert (=> start!745120 e!4662673))

(declare-fun e!4662678 () Bool)

(assert (=> start!745120 e!4662678))

(declare-fun b!7899325 () Bool)

(declare-fun res!3133736 () Bool)

(declare-fun e!4662675 () Bool)

(assert (=> b!7899325 (=> res!3133736 e!4662675)))

(declare-datatypes ((Token!15544 0))(
  ( (Token!15545 (value!285998 TokenValue!8878) (rule!11846 Rule!16924) (size!42916 Int) (originalCharacters!8803 List!74207)) )
))
(declare-datatypes ((tuple2!70142 0))(
  ( (tuple2!70143 (_1!38374 Token!15544) (_2!38374 List!74207)) )
))
(declare-fun lt!2682564 () tuple2!70142)

(declare-fun apply!14315 (TokenValueInjection!17064 BalanceConc!30590) TokenValue!8878)

(declare-fun seqFromList!6133 (List!74207) BalanceConc!30590)

(assert (=> b!7899325 (= res!3133736 (not (= (value!285998 (_1!38374 lt!2682564)) (apply!14315 (transformation!8562 (rule!11846 (_1!38374 lt!2682564))) (seqFromList!6133 (originalCharacters!8803 (_1!38374 lt!2682564)))))))))

(declare-fun b!7899326 () Bool)

(declare-fun e!4662677 () Bool)

(assert (=> b!7899326 (= e!4662676 (not e!4662677))))

(declare-fun res!3133735 () Bool)

(assert (=> b!7899326 (=> res!3133735 e!4662677)))

(assert (=> b!7899326 (= res!3133735 (or (and ((_ is Cons!74084) rulesArg!141) ((_ is Nil!74084) (t!389017 rulesArg!141))) (not ((_ is Cons!74084) rulesArg!141))))))

(declare-fun input!1184 () List!74207)

(declare-fun isPrefix!6395 (List!74207 List!74207) Bool)

(assert (=> b!7899326 (isPrefix!6395 input!1184 input!1184)))

(declare-datatypes ((Unit!169101 0))(
  ( (Unit!169102) )
))
(declare-fun lt!2682562 () Unit!169101)

(declare-fun lemmaIsPrefixRefl!3906 (List!74207 List!74207) Unit!169101)

(assert (=> b!7899326 (= lt!2682562 (lemmaIsPrefixRefl!3906 input!1184 input!1184))))

(declare-fun b!7899327 () Bool)

(declare-fun res!3133733 () Bool)

(assert (=> b!7899327 (=> res!3133733 e!4662675)))

(declare-fun lt!2682565 () List!74207)

(declare-fun ++!18136 (List!74207 List!74207) List!74207)

(assert (=> b!7899327 (= res!3133733 (not (= (++!18136 lt!2682565 (_2!38374 lt!2682564)) input!1184)))))

(declare-fun b!7899328 () Bool)

(declare-fun res!3133734 () Bool)

(assert (=> b!7899328 (=> (not res!3133734) (not e!4662676))))

(declare-fun rulesValidInductive!3373 (LexerInterface!8154 List!74208) Bool)

(assert (=> b!7899328 (= res!3133734 (rulesValidInductive!3373 thiss!14377 rulesArg!141))))

(declare-fun b!7899329 () Bool)

(declare-fun e!4662679 () Bool)

(assert (=> b!7899329 (= e!4662679 e!4662675)))

(declare-fun res!3133729 () Bool)

(assert (=> b!7899329 (=> res!3133729 e!4662675)))

(assert (=> b!7899329 (= res!3133729 (not (= lt!2682565 (originalCharacters!8803 (_1!38374 lt!2682564)))))))

(declare-fun list!19181 (BalanceConc!30590) List!74207)

(declare-fun charsOf!5506 (Token!15544) BalanceConc!30590)

(assert (=> b!7899329 (= lt!2682565 (list!19181 (charsOf!5506 (_1!38374 lt!2682564))))))

(declare-datatypes ((Option!17844 0))(
  ( (None!17843) (Some!17843 (v!54980 tuple2!70142)) )
))
(declare-fun get!26597 (Option!17844) tuple2!70142)

(assert (=> b!7899329 (= lt!2682564 (get!26597 None!17843))))

(declare-fun b!7899330 () Bool)

(declare-fun res!3133730 () Bool)

(assert (=> b!7899330 (=> res!3133730 e!4662675)))

(declare-fun size!42917 (List!74207) Int)

(assert (=> b!7899330 (= res!3133730 (>= (size!42917 (_2!38374 lt!2682564)) (size!42917 input!1184)))))

(declare-fun b!7899331 () Bool)

(declare-fun tp_is_empty!52905 () Bool)

(declare-fun tp!2353477 () Bool)

(assert (=> b!7899331 (= e!4662678 (and tp_is_empty!52905 tp!2353477))))

(declare-fun b!7899332 () Bool)

(declare-fun validRegex!11641 (Regex!21265) Bool)

(assert (=> b!7899332 (= e!4662675 (validRegex!11641 (regex!8562 (rule!11846 (_1!38374 lt!2682564)))))))

(declare-fun b!7899333 () Bool)

(declare-fun res!3133737 () Bool)

(assert (=> b!7899333 (=> (not res!3133737) (not e!4662676))))

(declare-fun isEmpty!42491 (List!74208) Bool)

(assert (=> b!7899333 (= res!3133737 (not (isEmpty!42491 rulesArg!141)))))

(declare-fun b!7899334 () Bool)

(declare-fun tp!2353479 () Bool)

(assert (=> b!7899334 (= e!4662673 (and e!4662674 tp!2353479))))

(assert (=> b!7899335 (= e!4662672 (and tp!2353476 tp!2353480))))

(declare-fun b!7899336 () Bool)

(assert (=> b!7899336 (= e!4662677 e!4662679)))

(declare-fun res!3133731 () Bool)

(assert (=> b!7899336 (=> res!3133731 e!4662679)))

(declare-fun lt!2682566 () Option!17844)

(declare-fun lt!2682563 () Option!17844)

(assert (=> b!7899336 (= res!3133731 true)))

(declare-fun maxPrefix!4695 (LexerInterface!8154 List!74208 List!74207) Option!17844)

(assert (=> b!7899336 (= lt!2682563 (maxPrefix!4695 thiss!14377 (t!389017 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3742 (LexerInterface!8154 Rule!16924 List!74207) Option!17844)

(assert (=> b!7899336 (= lt!2682566 (maxPrefixOneRule!3742 thiss!14377 (h!80532 rulesArg!141) input!1184))))

(assert (= (and start!745120 res!3133732) b!7899328))

(assert (= (and b!7899328 res!3133734) b!7899333))

(assert (= (and b!7899333 res!3133737) b!7899326))

(assert (= (and b!7899326 (not res!3133735)) b!7899336))

(assert (= (and b!7899336 (not res!3133731)) b!7899329))

(assert (= (and b!7899329 (not res!3133729)) b!7899330))

(assert (= (and b!7899330 (not res!3133730)) b!7899327))

(assert (= (and b!7899327 (not res!3133733)) b!7899325))

(assert (= (and b!7899325 (not res!3133736)) b!7899332))

(assert (= b!7899324 b!7899335))

(assert (= b!7899334 b!7899324))

(assert (= (and start!745120 ((_ is Cons!74084) rulesArg!141)) b!7899334))

(assert (= (and start!745120 ((_ is Cons!74083) input!1184)) b!7899331))

(declare-fun m!8274158 () Bool)

(assert (=> b!7899336 m!8274158))

(declare-fun m!8274160 () Bool)

(assert (=> b!7899336 m!8274160))

(declare-fun m!8274162 () Bool)

(assert (=> b!7899324 m!8274162))

(declare-fun m!8274164 () Bool)

(assert (=> b!7899324 m!8274164))

(declare-fun m!8274166 () Bool)

(assert (=> b!7899326 m!8274166))

(declare-fun m!8274168 () Bool)

(assert (=> b!7899326 m!8274168))

(declare-fun m!8274170 () Bool)

(assert (=> b!7899325 m!8274170))

(assert (=> b!7899325 m!8274170))

(declare-fun m!8274172 () Bool)

(assert (=> b!7899325 m!8274172))

(declare-fun m!8274174 () Bool)

(assert (=> b!7899332 m!8274174))

(declare-fun m!8274176 () Bool)

(assert (=> b!7899328 m!8274176))

(declare-fun m!8274178 () Bool)

(assert (=> b!7899327 m!8274178))

(declare-fun m!8274180 () Bool)

(assert (=> b!7899329 m!8274180))

(assert (=> b!7899329 m!8274180))

(declare-fun m!8274182 () Bool)

(assert (=> b!7899329 m!8274182))

(declare-fun m!8274184 () Bool)

(assert (=> b!7899329 m!8274184))

(declare-fun m!8274186 () Bool)

(assert (=> b!7899333 m!8274186))

(declare-fun m!8274188 () Bool)

(assert (=> b!7899330 m!8274188))

(declare-fun m!8274190 () Bool)

(assert (=> b!7899330 m!8274190))

(check-sat tp_is_empty!52905 (not b!7899331) (not b!7899326) b_and!352509 (not b!7899330) b_and!352507 (not b!7899336) (not b!7899334) (not b!7899328) (not b!7899329) (not b!7899327) (not b!7899332) (not b!7899325) (not b!7899324) (not b!7899333) (not b_next!135399) (not b_next!135397))
(check-sat b_and!352509 b_and!352507 (not b_next!135399) (not b_next!135397))
