; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537286 () Bool)

(assert start!537286)

(declare-fun b!5096282 () Bool)

(declare-fun b_free!133479 () Bool)

(declare-fun b_next!134269 () Bool)

(assert (=> b!5096282 (= b_free!133479 (not b_next!134269))))

(declare-fun tp!1421195 () Bool)

(declare-fun b_and!350371 () Bool)

(assert (=> b!5096282 (= tp!1421195 b_and!350371)))

(declare-fun b_free!133481 () Bool)

(declare-fun b_next!134271 () Bool)

(assert (=> b!5096282 (= b_free!133481 (not b_next!134271))))

(declare-fun tp!1421192 () Bool)

(declare-fun b_and!350373 () Bool)

(assert (=> b!5096282 (= tp!1421192 b_and!350373)))

(declare-fun tp!1421193 () Bool)

(declare-datatypes ((C!28252 0))(
  ( (C!28253 (val!23778 Int)) )
))
(declare-datatypes ((List!58780 0))(
  ( (Nil!58656) (Cons!58656 (h!65104 C!28252) (t!371745 List!58780)) )
))
(declare-datatypes ((IArray!31449 0))(
  ( (IArray!31450 (innerList!15782 List!58780)) )
))
(declare-datatypes ((Conc!15694 0))(
  ( (Node!15694 (left!43073 Conc!15694) (right!43403 Conc!15694) (csize!31618 Int) (cheight!15905 Int)) (Leaf!26046 (xs!19076 IArray!31449) (csize!31619 Int)) (Empty!15694) )
))
(declare-datatypes ((Regex!13997 0))(
  ( (ElementMatch!13997 (c!875644 C!28252)) (Concat!22833 (regOne!28506 Regex!13997) (regTwo!28506 Regex!13997)) (EmptyExpr!13997) (Star!13997 (reg!14326 Regex!13997)) (EmptyLang!13997) (Union!13997 (regOne!28507 Regex!13997) (regTwo!28507 Regex!13997)) )
))
(declare-datatypes ((String!67101 0))(
  ( (String!67102 (value!273154 String)) )
))
(declare-datatypes ((List!58781 0))(
  ( (Nil!58657) (Cons!58657 (h!65105 (_ BitVec 16)) (t!371746 List!58781)) )
))
(declare-datatypes ((TokenValue!8836 0))(
  ( (FloatLiteralValue!17672 (text!62297 List!58781)) (TokenValueExt!8835 (__x!34961 Int)) (Broken!44180 (value!273155 List!58781)) (Object!8959) (End!8836) (Def!8836) (Underscore!8836) (Match!8836) (Else!8836) (Error!8836) (Case!8836) (If!8836) (Extends!8836) (Abstract!8836) (Class!8836) (Val!8836) (DelimiterValue!17672 (del!8896 List!58781)) (KeywordValue!8842 (value!273156 List!58781)) (CommentValue!17672 (value!273157 List!58781)) (WhitespaceValue!17672 (value!273158 List!58781)) (IndentationValue!8836 (value!273159 List!58781)) (String!67103) (Int32!8836) (Broken!44181 (value!273160 List!58781)) (Boolean!8837) (Unit!149694) (OperatorValue!8839 (op!8896 List!58781)) (IdentifierValue!17672 (value!273161 List!58781)) (IdentifierValue!17673 (value!273162 List!58781)) (WhitespaceValue!17673 (value!273163 List!58781)) (True!17672) (False!17672) (Broken!44182 (value!273164 List!58781)) (Broken!44183 (value!273165 List!58781)) (True!17673) (RightBrace!8836) (RightBracket!8836) (Colon!8836) (Null!8836) (Comma!8836) (LeftBracket!8836) (False!17673) (LeftBrace!8836) (ImaginaryLiteralValue!8836 (text!62298 List!58781)) (StringLiteralValue!26508 (value!273166 List!58781)) (EOFValue!8836 (value!273167 List!58781)) (IdentValue!8836 (value!273168 List!58781)) (DelimiterValue!17673 (value!273169 List!58781)) (DedentValue!8836 (value!273170 List!58781)) (NewLineValue!8836 (value!273171 List!58781)) (IntegerValue!26508 (value!273172 (_ BitVec 32)) (text!62299 List!58781)) (IntegerValue!26509 (value!273173 Int) (text!62300 List!58781)) (Times!8836) (Or!8836) (Equal!8836) (Minus!8836) (Broken!44184 (value!273174 List!58781)) (And!8836) (Div!8836) (LessEqual!8836) (Mod!8836) (Concat!22834) (Not!8836) (Plus!8836) (SpaceValue!8836 (value!273175 List!58781)) (IntegerValue!26510 (value!273176 Int) (text!62301 List!58781)) (StringLiteralValue!26509 (text!62302 List!58781)) (FloatLiteralValue!17673 (text!62303 List!58781)) (BytesLiteralValue!8836 (value!273177 List!58781)) (CommentValue!17673 (value!273178 List!58781)) (StringLiteralValue!26510 (value!273179 List!58781)) (ErrorTokenValue!8836 (msg!8897 List!58781)) )
))
(declare-datatypes ((BalanceConc!30506 0))(
  ( (BalanceConc!30507 (c!875645 Conc!15694)) )
))
(declare-datatypes ((TokenValueInjection!16980 0))(
  ( (TokenValueInjection!16981 (toValue!11545 Int) (toChars!11404 Int)) )
))
(declare-datatypes ((Rule!16844 0))(
  ( (Rule!16845 (regex!8522 Regex!13997) (tag!9386 String!67101) (isSeparator!8522 Bool) (transformation!8522 TokenValueInjection!16980)) )
))
(declare-fun rule!158 () Rule!16844)

(declare-fun e!3178414 () Bool)

(declare-fun e!3178418 () Bool)

(declare-fun b!5096276 () Bool)

(declare-fun inv!78151 (String!67101) Bool)

(declare-fun inv!78153 (TokenValueInjection!16980) Bool)

(assert (=> b!5096276 (= e!3178418 (and tp!1421193 (inv!78151 (tag!9386 rule!158)) (inv!78153 (transformation!8522 rule!158)) e!3178414))))

(declare-fun b!5096277 () Bool)

(declare-fun e!3178416 () Bool)

(declare-datatypes ((tuple2!63376 0))(
  ( (tuple2!63377 (_1!34991 List!58780) (_2!34991 List!58780)) )
))
(declare-fun lt!2093896 () tuple2!63376)

(declare-fun matchR!6797 (Regex!13997 List!58780) Bool)

(assert (=> b!5096277 (= e!3178416 (matchR!6797 (regex!8522 rule!158) (_1!34991 lt!2093896)))))

(declare-fun b!5096278 () Bool)

(declare-fun e!3178419 () Bool)

(declare-fun tp_is_empty!37259 () Bool)

(declare-fun tp!1421194 () Bool)

(assert (=> b!5096278 (= e!3178419 (and tp_is_empty!37259 tp!1421194))))

(declare-fun res!2168967 () Bool)

(declare-fun e!3178415 () Bool)

(assert (=> start!537286 (=> (not res!2168967) (not e!3178415))))

(declare-datatypes ((LexerInterface!8114 0))(
  ( (LexerInterfaceExt!8111 (__x!34962 Int)) (Lexer!8112) )
))
(declare-fun thiss!15916 () LexerInterface!8114)

(get-info :version)

(assert (=> start!537286 (= res!2168967 ((_ is Lexer!8112) thiss!15916))))

(assert (=> start!537286 e!3178415))

(assert (=> start!537286 true))

(assert (=> start!537286 e!3178418))

(assert (=> start!537286 e!3178419))

(declare-fun b!5096279 () Bool)

(declare-fun res!2168965 () Bool)

(assert (=> b!5096279 (=> (not res!2168965) (not e!3178415))))

(declare-fun ruleValid!3914 (LexerInterface!8114 Rule!16844) Bool)

(assert (=> b!5096279 (= res!2168965 (ruleValid!3914 thiss!15916 rule!158))))

(declare-fun b!5096280 () Bool)

(declare-fun e!3178417 () Bool)

(assert (=> b!5096280 (= e!3178417 (not true))))

(declare-fun lt!2093897 () Int)

(declare-fun lt!2093893 () tuple2!63376)

(declare-fun size!39293 (List!58780) Int)

(assert (=> b!5096280 (= lt!2093897 (size!39293 (_1!34991 lt!2093893)))))

(declare-fun lt!2093892 () TokenValue!8836)

(declare-fun lt!2093895 () BalanceConc!30506)

(declare-fun apply!14297 (TokenValueInjection!16980 BalanceConc!30506) TokenValue!8836)

(assert (=> b!5096280 (= lt!2093892 (apply!14297 (transformation!8522 rule!158) lt!2093895))))

(declare-datatypes ((Unit!149695 0))(
  ( (Unit!149696) )
))
(declare-fun lt!2093891 () Unit!149695)

(declare-fun lemmaSemiInverse!2647 (TokenValueInjection!16980 BalanceConc!30506) Unit!149695)

(assert (=> b!5096280 (= lt!2093891 (lemmaSemiInverse!2647 (transformation!8522 rule!158) lt!2093895))))

(declare-fun seqFromList!6115 (List!58780) BalanceConc!30506)

(assert (=> b!5096280 (= lt!2093895 (seqFromList!6115 (_1!34991 lt!2093893)))))

(declare-fun lt!2093894 () Unit!149695)

(declare-fun lemmaInv!1414 (TokenValueInjection!16980) Unit!149695)

(assert (=> b!5096280 (= lt!2093894 (lemmaInv!1414 (transformation!8522 rule!158)))))

(assert (=> b!5096280 e!3178416))

(declare-fun res!2168966 () Bool)

(assert (=> b!5096280 (=> res!2168966 e!3178416)))

(declare-fun isEmpty!31749 (List!58780) Bool)

(assert (=> b!5096280 (= res!2168966 (isEmpty!31749 (_1!34991 lt!2093896)))))

(declare-fun input!1493 () List!58780)

(declare-fun findLongestMatchInner!2021 (Regex!13997 List!58780 Int List!58780 List!58780 Int) tuple2!63376)

(assert (=> b!5096280 (= lt!2093896 (findLongestMatchInner!2021 (regex!8522 rule!158) Nil!58656 (size!39293 Nil!58656) input!1493 input!1493 (size!39293 input!1493)))))

(declare-fun lt!2093898 () Unit!149695)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1974 (Regex!13997 List!58780) Unit!149695)

(assert (=> b!5096280 (= lt!2093898 (longestMatchIsAcceptedByMatchOrIsEmpty!1974 (regex!8522 rule!158) input!1493))))

(declare-fun b!5096281 () Bool)

(assert (=> b!5096281 (= e!3178415 e!3178417)))

(declare-fun res!2168964 () Bool)

(assert (=> b!5096281 (=> (not res!2168964) (not e!3178417))))

(assert (=> b!5096281 (= res!2168964 (not (isEmpty!31749 (_1!34991 lt!2093893))))))

(declare-fun findLongestMatchWithZipper!117 (Regex!13997 List!58780) tuple2!63376)

(assert (=> b!5096281 (= lt!2093893 (findLongestMatchWithZipper!117 (regex!8522 rule!158) input!1493))))

(assert (=> b!5096282 (= e!3178414 (and tp!1421195 tp!1421192))))

(assert (= (and start!537286 res!2168967) b!5096279))

(assert (= (and b!5096279 res!2168965) b!5096281))

(assert (= (and b!5096281 res!2168964) b!5096280))

(assert (= (and b!5096280 (not res!2168966)) b!5096277))

(assert (= b!5096276 b!5096282))

(assert (= start!537286 b!5096276))

(assert (= (and start!537286 ((_ is Cons!58656) input!1493)) b!5096278))

(declare-fun m!6153496 () Bool)

(assert (=> b!5096277 m!6153496))

(declare-fun m!6153498 () Bool)

(assert (=> b!5096280 m!6153498))

(declare-fun m!6153500 () Bool)

(assert (=> b!5096280 m!6153500))

(declare-fun m!6153502 () Bool)

(assert (=> b!5096280 m!6153502))

(declare-fun m!6153504 () Bool)

(assert (=> b!5096280 m!6153504))

(declare-fun m!6153506 () Bool)

(assert (=> b!5096280 m!6153506))

(declare-fun m!6153508 () Bool)

(assert (=> b!5096280 m!6153508))

(declare-fun m!6153510 () Bool)

(assert (=> b!5096280 m!6153510))

(declare-fun m!6153512 () Bool)

(assert (=> b!5096280 m!6153512))

(declare-fun m!6153514 () Bool)

(assert (=> b!5096280 m!6153514))

(declare-fun m!6153516 () Bool)

(assert (=> b!5096280 m!6153516))

(assert (=> b!5096280 m!6153502))

(assert (=> b!5096280 m!6153500))

(declare-fun m!6153518 () Bool)

(assert (=> b!5096276 m!6153518))

(declare-fun m!6153520 () Bool)

(assert (=> b!5096276 m!6153520))

(declare-fun m!6153522 () Bool)

(assert (=> b!5096279 m!6153522))

(declare-fun m!6153524 () Bool)

(assert (=> b!5096281 m!6153524))

(declare-fun m!6153526 () Bool)

(assert (=> b!5096281 m!6153526))

(check-sat (not b_next!134269) (not b_next!134271) b_and!350373 (not b!5096277) (not b!5096278) b_and!350371 (not b!5096279) (not b!5096276) (not b!5096281) tp_is_empty!37259 (not b!5096280))
(check-sat b_and!350373 b_and!350371 (not b_next!134269) (not b_next!134271))
