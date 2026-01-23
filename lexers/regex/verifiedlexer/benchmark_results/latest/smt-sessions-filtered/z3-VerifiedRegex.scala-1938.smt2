; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95502 () Bool)

(assert start!95502)

(declare-fun b!1106295 () Bool)

(declare-fun b_free!26753 () Bool)

(declare-fun b_next!26817 () Bool)

(assert (=> b!1106295 (= b_free!26753 (not b_next!26817))))

(declare-fun tp!327550 () Bool)

(declare-fun b_and!79073 () Bool)

(assert (=> b!1106295 (= tp!327550 b_and!79073)))

(declare-fun b_free!26755 () Bool)

(declare-fun b_next!26819 () Bool)

(assert (=> b!1106295 (= b_free!26755 (not b_next!26819))))

(declare-fun tp!327549 () Bool)

(declare-fun b_and!79075 () Bool)

(assert (=> b!1106295 (= tp!327549 b_and!79075)))

(declare-fun res!490227 () Bool)

(declare-fun e!701165 () Bool)

(assert (=> start!95502 (=> (not res!490227) (not e!701165))))

(declare-datatypes ((List!10798 0))(
  ( (Nil!10774) (Cons!10774 (h!16175 (_ BitVec 16)) (t!105354 List!10798)) )
))
(declare-datatypes ((TokenValue!1924 0))(
  ( (FloatLiteralValue!3848 (text!13913 List!10798)) (TokenValueExt!1923 (__x!7507 Int)) (Broken!9620 (value!60923 List!10798)) (Object!1947) (End!1924) (Def!1924) (Underscore!1924) (Match!1924) (Else!1924) (Error!1924) (Case!1924) (If!1924) (Extends!1924) (Abstract!1924) (Class!1924) (Val!1924) (DelimiterValue!3848 (del!1984 List!10798)) (KeywordValue!1930 (value!60924 List!10798)) (CommentValue!3848 (value!60925 List!10798)) (WhitespaceValue!3848 (value!60926 List!10798)) (IndentationValue!1924 (value!60927 List!10798)) (String!13205) (Int32!1924) (Broken!9621 (value!60928 List!10798)) (Boolean!1925) (Unit!16456) (OperatorValue!1927 (op!1984 List!10798)) (IdentifierValue!3848 (value!60929 List!10798)) (IdentifierValue!3849 (value!60930 List!10798)) (WhitespaceValue!3849 (value!60931 List!10798)) (True!3848) (False!3848) (Broken!9622 (value!60932 List!10798)) (Broken!9623 (value!60933 List!10798)) (True!3849) (RightBrace!1924) (RightBracket!1924) (Colon!1924) (Null!1924) (Comma!1924) (LeftBracket!1924) (False!3849) (LeftBrace!1924) (ImaginaryLiteralValue!1924 (text!13914 List!10798)) (StringLiteralValue!5772 (value!60934 List!10798)) (EOFValue!1924 (value!60935 List!10798)) (IdentValue!1924 (value!60936 List!10798)) (DelimiterValue!3849 (value!60937 List!10798)) (DedentValue!1924 (value!60938 List!10798)) (NewLineValue!1924 (value!60939 List!10798)) (IntegerValue!5772 (value!60940 (_ BitVec 32)) (text!13915 List!10798)) (IntegerValue!5773 (value!60941 Int) (text!13916 List!10798)) (Times!1924) (Or!1924) (Equal!1924) (Minus!1924) (Broken!9624 (value!60942 List!10798)) (And!1924) (Div!1924) (LessEqual!1924) (Mod!1924) (Concat!5051) (Not!1924) (Plus!1924) (SpaceValue!1924 (value!60943 List!10798)) (IntegerValue!5774 (value!60944 Int) (text!13917 List!10798)) (StringLiteralValue!5773 (text!13918 List!10798)) (FloatLiteralValue!3849 (text!13919 List!10798)) (BytesLiteralValue!1924 (value!60945 List!10798)) (CommentValue!3849 (value!60946 List!10798)) (StringLiteralValue!5774 (value!60947 List!10798)) (ErrorTokenValue!1924 (msg!1985 List!10798)) )
))
(declare-datatypes ((C!6644 0))(
  ( (C!6645 (val!3578 Int)) )
))
(declare-datatypes ((List!10799 0))(
  ( (Nil!10775) (Cons!10775 (h!16176 C!6644) (t!105355 List!10799)) )
))
(declare-datatypes ((IArray!6819 0))(
  ( (IArray!6820 (innerList!3467 List!10799)) )
))
(declare-datatypes ((Regex!3127 0))(
  ( (ElementMatch!3127 (c!187912 C!6644)) (Concat!5052 (regOne!6766 Regex!3127) (regTwo!6766 Regex!3127)) (EmptyExpr!3127) (Star!3127 (reg!3456 Regex!3127)) (EmptyLang!3127) (Union!3127 (regOne!6767 Regex!3127) (regTwo!6767 Regex!3127)) )
))
(declare-datatypes ((String!13206 0))(
  ( (String!13207 (value!60948 String)) )
))
(declare-datatypes ((Conc!3407 0))(
  ( (Node!3407 (left!9371 Conc!3407) (right!9701 Conc!3407) (csize!7044 Int) (cheight!3618 Int)) (Leaf!5346 (xs!6100 IArray!6819) (csize!7045 Int)) (Empty!3407) )
))
(declare-datatypes ((BalanceConc!6836 0))(
  ( (BalanceConc!6837 (c!187913 Conc!3407)) )
))
(declare-datatypes ((TokenValueInjection!3548 0))(
  ( (TokenValueInjection!3549 (toValue!2935 Int) (toChars!2794 Int)) )
))
(declare-datatypes ((Rule!3516 0))(
  ( (Rule!3517 (regex!1858 Regex!3127) (tag!2120 String!13206) (isSeparator!1858 Bool) (transformation!1858 TokenValueInjection!3548)) )
))
(declare-datatypes ((List!10800 0))(
  ( (Nil!10776) (Cons!10776 (h!16177 Rule!3516) (t!105356 List!10800)) )
))
(declare-fun rules!859 () List!10800)

(declare-fun isEmpty!6723 (List!10800) Bool)

(assert (=> start!95502 (= res!490227 (not (isEmpty!6723 rules!859)))))

(assert (=> start!95502 e!701165))

(declare-fun e!701164 () Bool)

(assert (=> start!95502 e!701164))

(declare-fun b!1106292 () Bool)

(assert (=> b!1106292 (= e!701165 false)))

(declare-fun lt!375963 () Bool)

(declare-datatypes ((LexerInterface!1570 0))(
  ( (LexerInterfaceExt!1567 (__x!7508 Int)) (Lexer!1568) )
))
(declare-fun rulesInvariant!1446 (LexerInterface!1570 List!10800) Bool)

(assert (=> b!1106292 (= lt!375963 (rulesInvariant!1446 Lexer!1568 rules!859))))

(declare-fun e!701166 () Bool)

(assert (=> b!1106295 (= e!701166 (and tp!327550 tp!327549))))

(declare-fun b!1106294 () Bool)

(declare-fun tp!327552 () Bool)

(declare-fun e!701168 () Bool)

(declare-fun inv!13850 (String!13206) Bool)

(declare-fun inv!13852 (TokenValueInjection!3548) Bool)

(assert (=> b!1106294 (= e!701168 (and tp!327552 (inv!13850 (tag!2120 (h!16177 rules!859))) (inv!13852 (transformation!1858 (h!16177 rules!859))) e!701166))))

(declare-fun b!1106293 () Bool)

(declare-fun tp!327551 () Bool)

(assert (=> b!1106293 (= e!701164 (and e!701168 tp!327551))))

(assert (= (and start!95502 res!490227) b!1106292))

(assert (= b!1106294 b!1106295))

(assert (= b!1106293 b!1106294))

(get-info :version)

(assert (= (and start!95502 ((_ is Cons!10776) rules!859)) b!1106293))

(declare-fun m!1263999 () Bool)

(assert (=> start!95502 m!1263999))

(declare-fun m!1264001 () Bool)

(assert (=> b!1106292 m!1264001))

(declare-fun m!1264003 () Bool)

(assert (=> b!1106294 m!1264003))

(declare-fun m!1264005 () Bool)

(assert (=> b!1106294 m!1264005))

(check-sat (not start!95502) (not b_next!26819) b_and!79073 (not b!1106294) (not b!1106293) (not b!1106292) (not b_next!26817) b_and!79075)
(check-sat b_and!79073 b_and!79075 (not b_next!26817) (not b_next!26819))
