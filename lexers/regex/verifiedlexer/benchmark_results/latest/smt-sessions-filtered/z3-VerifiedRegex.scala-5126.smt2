; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262612 () Bool)

(assert start!262612)

(declare-fun b!2705175 () Bool)

(declare-fun b_free!76353 () Bool)

(declare-fun b_next!77057 () Bool)

(assert (=> b!2705175 (= b_free!76353 (not b_next!77057))))

(declare-fun tp!855644 () Bool)

(declare-fun b_and!199785 () Bool)

(assert (=> b!2705175 (= tp!855644 b_and!199785)))

(declare-fun b_free!76355 () Bool)

(declare-fun b_next!77059 () Bool)

(assert (=> b!2705175 (= b_free!76355 (not b_next!77059))))

(declare-fun tp!855640 () Bool)

(declare-fun b_and!199787 () Bool)

(assert (=> b!2705175 (= tp!855640 b_and!199787)))

(declare-fun b!2705169 () Bool)

(declare-fun e!1705633 () Bool)

(declare-datatypes ((List!31315 0))(
  ( (Nil!31215) (Cons!31215 (h!36635 (_ BitVec 16)) (t!225753 List!31315)) )
))
(declare-datatypes ((TokenValue!4987 0))(
  ( (FloatLiteralValue!9974 (text!35354 List!31315)) (TokenValueExt!4986 (__x!20109 Int)) (Broken!24935 (value!153389 List!31315)) (Object!5086) (End!4987) (Def!4987) (Underscore!4987) (Match!4987) (Else!4987) (Error!4987) (Case!4987) (If!4987) (Extends!4987) (Abstract!4987) (Class!4987) (Val!4987) (DelimiterValue!9974 (del!5047 List!31315)) (KeywordValue!4993 (value!153390 List!31315)) (CommentValue!9974 (value!153391 List!31315)) (WhitespaceValue!9974 (value!153392 List!31315)) (IndentationValue!4987 (value!153393 List!31315)) (String!34834) (Int32!4987) (Broken!24936 (value!153394 List!31315)) (Boolean!4988) (Unit!45288) (OperatorValue!4990 (op!5047 List!31315)) (IdentifierValue!9974 (value!153395 List!31315)) (IdentifierValue!9975 (value!153396 List!31315)) (WhitespaceValue!9975 (value!153397 List!31315)) (True!9974) (False!9974) (Broken!24937 (value!153398 List!31315)) (Broken!24938 (value!153399 List!31315)) (True!9975) (RightBrace!4987) (RightBracket!4987) (Colon!4987) (Null!4987) (Comma!4987) (LeftBracket!4987) (False!9975) (LeftBrace!4987) (ImaginaryLiteralValue!4987 (text!35355 List!31315)) (StringLiteralValue!14961 (value!153400 List!31315)) (EOFValue!4987 (value!153401 List!31315)) (IdentValue!4987 (value!153402 List!31315)) (DelimiterValue!9975 (value!153403 List!31315)) (DedentValue!4987 (value!153404 List!31315)) (NewLineValue!4987 (value!153405 List!31315)) (IntegerValue!14961 (value!153406 (_ BitVec 32)) (text!35356 List!31315)) (IntegerValue!14962 (value!153407 Int) (text!35357 List!31315)) (Times!4987) (Or!4987) (Equal!4987) (Minus!4987) (Broken!24939 (value!153408 List!31315)) (And!4987) (Div!4987) (LessEqual!4987) (Mod!4987) (Concat!12904) (Not!4987) (Plus!4987) (SpaceValue!4987 (value!153409 List!31315)) (IntegerValue!14963 (value!153410 Int) (text!35358 List!31315)) (StringLiteralValue!14962 (text!35359 List!31315)) (FloatLiteralValue!9975 (text!35360 List!31315)) (BytesLiteralValue!4987 (value!153411 List!31315)) (CommentValue!9975 (value!153412 List!31315)) (StringLiteralValue!14963 (value!153413 List!31315)) (ErrorTokenValue!4987 (msg!5048 List!31315)) )
))
(declare-datatypes ((C!15992 0))(
  ( (C!15993 (val!9930 Int)) )
))
(declare-datatypes ((Regex!7917 0))(
  ( (ElementMatch!7917 (c!436492 C!15992)) (Concat!12905 (regOne!16346 Regex!7917) (regTwo!16346 Regex!7917)) (EmptyExpr!7917) (Star!7917 (reg!8246 Regex!7917)) (EmptyLang!7917) (Union!7917 (regOne!16347 Regex!7917) (regTwo!16347 Regex!7917)) )
))
(declare-datatypes ((String!34835 0))(
  ( (String!34836 (value!153414 String)) )
))
(declare-datatypes ((List!31316 0))(
  ( (Nil!31216) (Cons!31216 (h!36636 C!15992) (t!225754 List!31316)) )
))
(declare-datatypes ((IArray!19519 0))(
  ( (IArray!19520 (innerList!9817 List!31316)) )
))
(declare-datatypes ((Conc!9757 0))(
  ( (Node!9757 (left!24013 Conc!9757) (right!24343 Conc!9757) (csize!19744 Int) (cheight!9968 Int)) (Leaf!14884 (xs!12805 IArray!19519) (csize!19745 Int)) (Empty!9757) )
))
(declare-datatypes ((BalanceConc!19128 0))(
  ( (BalanceConc!19129 (c!436493 Conc!9757)) )
))
(declare-datatypes ((TokenValueInjection!9414 0))(
  ( (TokenValueInjection!9415 (toValue!6727 Int) (toChars!6586 Int)) )
))
(declare-datatypes ((Rule!9330 0))(
  ( (Rule!9331 (regex!4765 Regex!7917) (tag!5269 String!34835) (isSeparator!4765 Bool) (transformation!4765 TokenValueInjection!9414)) )
))
(declare-datatypes ((Token!8992 0))(
  ( (Token!8993 (value!153415 TokenValue!4987) (rule!7185 Rule!9330) (size!24099 Int) (originalCharacters!5527 List!31316)) )
))
(declare-datatypes ((List!31317 0))(
  ( (Nil!31217) (Cons!31217 (h!36637 Token!8992) (t!225755 List!31317)) )
))
(declare-datatypes ((IArray!19521 0))(
  ( (IArray!19522 (innerList!9818 List!31317)) )
))
(declare-datatypes ((Conc!9758 0))(
  ( (Node!9758 (left!24014 Conc!9758) (right!24344 Conc!9758) (csize!19746 Int) (cheight!9969 Int)) (Leaf!14885 (xs!12806 IArray!19521) (csize!19747 Int)) (Empty!9758) )
))
(declare-datatypes ((BalanceConc!19130 0))(
  ( (BalanceConc!19131 (c!436494 Conc!9758)) )
))
(declare-fun acc!331 () BalanceConc!19130)

(declare-fun tp!855646 () Bool)

(declare-fun inv!42299 (Conc!9758) Bool)

(assert (=> b!2705169 (= e!1705633 (and (inv!42299 (c!436494 acc!331)) tp!855646))))

(declare-fun res!1135958 () Bool)

(declare-fun e!1705629 () Bool)

(assert (=> start!262612 (=> (not res!1135958) (not e!1705629))))

(declare-datatypes ((LexerInterface!4361 0))(
  ( (LexerInterfaceExt!4358 (__x!20110 Int)) (Lexer!4359) )
))
(declare-fun thiss!11556 () LexerInterface!4361)

(get-info :version)

(assert (=> start!262612 (= res!1135958 ((_ is Lexer!4359) thiss!11556))))

(assert (=> start!262612 e!1705629))

(declare-fun treated!9 () BalanceConc!19128)

(declare-fun e!1705628 () Bool)

(declare-fun inv!42300 (BalanceConc!19128) Bool)

(assert (=> start!262612 (and (inv!42300 treated!9) e!1705628)))

(declare-fun input!603 () BalanceConc!19128)

(declare-fun e!1705627 () Bool)

(assert (=> start!262612 (and (inv!42300 input!603) e!1705627)))

(assert (=> start!262612 true))

(declare-fun e!1705631 () Bool)

(assert (=> start!262612 e!1705631))

(declare-fun totalInput!328 () BalanceConc!19128)

(declare-fun e!1705632 () Bool)

(assert (=> start!262612 (and (inv!42300 totalInput!328) e!1705632)))

(declare-fun inv!42301 (BalanceConc!19130) Bool)

(assert (=> start!262612 (and (inv!42301 acc!331) e!1705633)))

(declare-fun b!2705170 () Bool)

(declare-fun e!1705626 () Bool)

(declare-fun tp!855642 () Bool)

(assert (=> b!2705170 (= e!1705631 (and e!1705626 tp!855642))))

(declare-fun b!2705171 () Bool)

(declare-fun e!1705624 () Bool)

(assert (=> b!2705171 (= e!1705624 false)))

(declare-fun lt!956633 () List!31316)

(declare-datatypes ((tuple2!30846 0))(
  ( (tuple2!30847 (_1!18055 BalanceConc!19130) (_2!18055 BalanceConc!19128)) )
))
(declare-fun lt!956632 () tuple2!30846)

(declare-fun list!11780 (BalanceConc!19128) List!31316)

(assert (=> b!2705171 (= lt!956633 (list!11780 (_2!18055 lt!956632)))))

(declare-fun b!2705172 () Bool)

(declare-fun res!1135957 () Bool)

(assert (=> b!2705172 (=> (not res!1135957) (not e!1705629))))

(declare-datatypes ((List!31318 0))(
  ( (Nil!31218) (Cons!31218 (h!36638 Rule!9330) (t!225756 List!31318)) )
))
(declare-fun rules!1182 () List!31318)

(declare-fun rulesInvariant!3846 (LexerInterface!4361 List!31318) Bool)

(assert (=> b!2705172 (= res!1135957 (rulesInvariant!3846 thiss!11556 rules!1182))))

(declare-fun b!2705173 () Bool)

(declare-fun tp!855647 () Bool)

(declare-fun inv!42302 (Conc!9757) Bool)

(assert (=> b!2705173 (= e!1705632 (and (inv!42302 (c!436493 totalInput!328)) tp!855647))))

(declare-fun b!2705174 () Bool)

(declare-fun res!1135959 () Bool)

(assert (=> b!2705174 (=> (not res!1135959) (not e!1705629))))

(declare-fun ++!7679 (List!31316 List!31316) List!31316)

(assert (=> b!2705174 (= res!1135959 (= (list!11780 totalInput!328) (++!7679 (list!11780 treated!9) (list!11780 input!603))))))

(declare-fun e!1705625 () Bool)

(assert (=> b!2705175 (= e!1705625 (and tp!855644 tp!855640))))

(declare-fun b!2705176 () Bool)

(declare-fun tp!855643 () Bool)

(declare-fun inv!42293 (String!34835) Bool)

(declare-fun inv!42303 (TokenValueInjection!9414) Bool)

(assert (=> b!2705176 (= e!1705626 (and tp!855643 (inv!42293 (tag!5269 (h!36638 rules!1182))) (inv!42303 (transformation!4765 (h!36638 rules!1182))) e!1705625))))

(declare-fun b!2705177 () Bool)

(assert (=> b!2705177 (= e!1705629 e!1705624)))

(declare-fun res!1135960 () Bool)

(assert (=> b!2705177 (=> (not res!1135960) (not e!1705624))))

(declare-fun list!11781 (BalanceConc!19130) List!31317)

(assert (=> b!2705177 (= res!1135960 (= (list!11781 (_1!18055 lt!956632)) (list!11781 acc!331)))))

(declare-fun lexRec!621 (LexerInterface!4361 List!31318 BalanceConc!19128) tuple2!30846)

(assert (=> b!2705177 (= lt!956632 (lexRec!621 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2705178 () Bool)

(declare-fun tp!855641 () Bool)

(assert (=> b!2705178 (= e!1705628 (and (inv!42302 (c!436493 treated!9)) tp!855641))))

(declare-fun b!2705179 () Bool)

(declare-fun res!1135961 () Bool)

(assert (=> b!2705179 (=> (not res!1135961) (not e!1705629))))

(declare-fun isEmpty!17774 (List!31318) Bool)

(assert (=> b!2705179 (= res!1135961 (not (isEmpty!17774 rules!1182)))))

(declare-fun b!2705180 () Bool)

(declare-fun tp!855645 () Bool)

(assert (=> b!2705180 (= e!1705627 (and (inv!42302 (c!436493 input!603)) tp!855645))))

(assert (= (and start!262612 res!1135958) b!2705179))

(assert (= (and b!2705179 res!1135961) b!2705172))

(assert (= (and b!2705172 res!1135957) b!2705174))

(assert (= (and b!2705174 res!1135959) b!2705177))

(assert (= (and b!2705177 res!1135960) b!2705171))

(assert (= start!262612 b!2705178))

(assert (= start!262612 b!2705180))

(assert (= b!2705176 b!2705175))

(assert (= b!2705170 b!2705176))

(assert (= (and start!262612 ((_ is Cons!31218) rules!1182)) b!2705170))

(assert (= start!262612 b!2705173))

(assert (= start!262612 b!2705169))

(declare-fun m!3094939 () Bool)

(assert (=> b!2705177 m!3094939))

(declare-fun m!3094941 () Bool)

(assert (=> b!2705177 m!3094941))

(declare-fun m!3094943 () Bool)

(assert (=> b!2705177 m!3094943))

(declare-fun m!3094945 () Bool)

(assert (=> b!2705180 m!3094945))

(declare-fun m!3094947 () Bool)

(assert (=> b!2705176 m!3094947))

(declare-fun m!3094949 () Bool)

(assert (=> b!2705176 m!3094949))

(declare-fun m!3094951 () Bool)

(assert (=> b!2705174 m!3094951))

(declare-fun m!3094953 () Bool)

(assert (=> b!2705174 m!3094953))

(declare-fun m!3094955 () Bool)

(assert (=> b!2705174 m!3094955))

(assert (=> b!2705174 m!3094953))

(assert (=> b!2705174 m!3094955))

(declare-fun m!3094957 () Bool)

(assert (=> b!2705174 m!3094957))

(declare-fun m!3094959 () Bool)

(assert (=> b!2705169 m!3094959))

(declare-fun m!3094961 () Bool)

(assert (=> b!2705178 m!3094961))

(declare-fun m!3094963 () Bool)

(assert (=> b!2705171 m!3094963))

(declare-fun m!3094965 () Bool)

(assert (=> b!2705172 m!3094965))

(declare-fun m!3094967 () Bool)

(assert (=> b!2705173 m!3094967))

(declare-fun m!3094969 () Bool)

(assert (=> start!262612 m!3094969))

(declare-fun m!3094971 () Bool)

(assert (=> start!262612 m!3094971))

(declare-fun m!3094973 () Bool)

(assert (=> start!262612 m!3094973))

(declare-fun m!3094975 () Bool)

(assert (=> start!262612 m!3094975))

(declare-fun m!3094977 () Bool)

(assert (=> b!2705179 m!3094977))

(check-sat (not b!2705171) (not b!2705176) (not b_next!77059) (not start!262612) (not b!2705173) (not b!2705179) (not b!2705180) (not b_next!77057) (not b!2705178) b_and!199787 (not b!2705172) (not b!2705174) b_and!199785 (not b!2705169) (not b!2705177) (not b!2705170))
(check-sat b_and!199787 b_and!199785 (not b_next!77059) (not b_next!77057))
