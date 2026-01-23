; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536852 () Bool)

(assert start!536852)

(declare-fun b!5093480 () Bool)

(declare-fun b_free!133275 () Bool)

(declare-fun b_next!134065 () Bool)

(assert (=> b!5093480 (= b_free!133275 (not b_next!134065))))

(declare-fun tp!1419932 () Bool)

(declare-fun b_and!350159 () Bool)

(assert (=> b!5093480 (= tp!1419932 b_and!350159)))

(declare-fun b_free!133277 () Bool)

(declare-fun b_next!134067 () Bool)

(assert (=> b!5093480 (= b_free!133277 (not b_next!134067))))

(declare-fun tp!1419930 () Bool)

(declare-fun b_and!350161 () Bool)

(assert (=> b!5093480 (= tp!1419930 b_and!350161)))

(declare-fun b!5093479 () Bool)

(declare-fun e!3176487 () Bool)

(declare-fun e!3176486 () Bool)

(assert (=> b!5093479 (= e!3176487 (not e!3176486))))

(declare-fun res!2167591 () Bool)

(assert (=> b!5093479 (=> res!2167591 e!3176486)))

(declare-datatypes ((List!58683 0))(
  ( (Nil!58559) (Cons!58559 (h!65007 (_ BitVec 16)) (t!371638 List!58683)) )
))
(declare-datatypes ((TokenValue!8802 0))(
  ( (FloatLiteralValue!17604 (text!62059 List!58683)) (TokenValueExt!8801 (__x!34893 Int)) (Broken!44010 (value!272194 List!58683)) (Object!8925) (End!8802) (Def!8802) (Underscore!8802) (Match!8802) (Else!8802) (Error!8802) (Case!8802) (If!8802) (Extends!8802) (Abstract!8802) (Class!8802) (Val!8802) (DelimiterValue!17604 (del!8862 List!58683)) (KeywordValue!8808 (value!272195 List!58683)) (CommentValue!17604 (value!272196 List!58683)) (WhitespaceValue!17604 (value!272197 List!58683)) (IndentationValue!8802 (value!272198 List!58683)) (String!66931) (Int32!8802) (Broken!44011 (value!272199 List!58683)) (Boolean!8803) (Unit!149600) (OperatorValue!8805 (op!8862 List!58683)) (IdentifierValue!17604 (value!272200 List!58683)) (IdentifierValue!17605 (value!272201 List!58683)) (WhitespaceValue!17605 (value!272202 List!58683)) (True!17604) (False!17604) (Broken!44012 (value!272203 List!58683)) (Broken!44013 (value!272204 List!58683)) (True!17605) (RightBrace!8802) (RightBracket!8802) (Colon!8802) (Null!8802) (Comma!8802) (LeftBracket!8802) (False!17605) (LeftBrace!8802) (ImaginaryLiteralValue!8802 (text!62060 List!58683)) (StringLiteralValue!26406 (value!272205 List!58683)) (EOFValue!8802 (value!272206 List!58683)) (IdentValue!8802 (value!272207 List!58683)) (DelimiterValue!17605 (value!272208 List!58683)) (DedentValue!8802 (value!272209 List!58683)) (NewLineValue!8802 (value!272210 List!58683)) (IntegerValue!26406 (value!272211 (_ BitVec 32)) (text!62061 List!58683)) (IntegerValue!26407 (value!272212 Int) (text!62062 List!58683)) (Times!8802) (Or!8802) (Equal!8802) (Minus!8802) (Broken!44014 (value!272213 List!58683)) (And!8802) (Div!8802) (LessEqual!8802) (Mod!8802) (Concat!22765) (Not!8802) (Plus!8802) (SpaceValue!8802 (value!272214 List!58683)) (IntegerValue!26408 (value!272215 Int) (text!62063 List!58683)) (StringLiteralValue!26407 (text!62064 List!58683)) (FloatLiteralValue!17605 (text!62065 List!58683)) (BytesLiteralValue!8802 (value!272216 List!58683)) (CommentValue!17605 (value!272217 List!58683)) (StringLiteralValue!26408 (value!272218 List!58683)) (ErrorTokenValue!8802 (msg!8863 List!58683)) )
))
(declare-datatypes ((C!28184 0))(
  ( (C!28185 (val!23744 Int)) )
))
(declare-datatypes ((List!58684 0))(
  ( (Nil!58560) (Cons!58560 (h!65008 C!28184) (t!371639 List!58684)) )
))
(declare-datatypes ((IArray!31381 0))(
  ( (IArray!31382 (innerList!15748 List!58684)) )
))
(declare-datatypes ((Conc!15660 0))(
  ( (Node!15660 (left!42974 Conc!15660) (right!43304 Conc!15660) (csize!31550 Int) (cheight!15871 Int)) (Leaf!25995 (xs!19042 IArray!31381) (csize!31551 Int)) (Empty!15660) )
))
(declare-datatypes ((BalanceConc!30438 0))(
  ( (BalanceConc!30439 (c!875406 Conc!15660)) )
))
(declare-datatypes ((TokenValueInjection!16912 0))(
  ( (TokenValueInjection!16913 (toValue!11511 Int) (toChars!11370 Int)) )
))
(declare-datatypes ((Regex!13963 0))(
  ( (ElementMatch!13963 (c!875407 C!28184)) (Concat!22766 (regOne!28438 Regex!13963) (regTwo!28438 Regex!13963)) (EmptyExpr!13963) (Star!13963 (reg!14292 Regex!13963)) (EmptyLang!13963) (Union!13963 (regOne!28439 Regex!13963) (regTwo!28439 Regex!13963)) )
))
(declare-datatypes ((String!66932 0))(
  ( (String!66933 (value!272219 String)) )
))
(declare-datatypes ((Rule!16776 0))(
  ( (Rule!16777 (regex!8488 Regex!13963) (tag!9352 String!66932) (isSeparator!8488 Bool) (transformation!8488 TokenValueInjection!16912)) )
))
(declare-datatypes ((List!58685 0))(
  ( (Nil!58561) (Cons!58561 (h!65009 Rule!16776) (t!371640 List!58685)) )
))
(declare-fun rulesArg!145 () List!58685)

(get-info :version)

(assert (=> b!5093479 (= res!2167591 (or (not ((_ is Cons!58561) rulesArg!145)) (not ((_ is Nil!58561) (t!371640 rulesArg!145)))))))

(declare-fun input!1210 () List!58684)

(declare-fun isPrefix!5384 (List!58684 List!58684) Bool)

(assert (=> b!5093479 (isPrefix!5384 input!1210 input!1210)))

(declare-datatypes ((Unit!149601 0))(
  ( (Unit!149602) )
))
(declare-fun lt!2092752 () Unit!149601)

(declare-fun lemmaIsPrefixRefl!3643 (List!58684 List!58684) Unit!149601)

(assert (=> b!5093479 (= lt!2092752 (lemmaIsPrefixRefl!3643 input!1210 input!1210))))

(declare-fun e!3176484 () Bool)

(assert (=> b!5093480 (= e!3176484 (and tp!1419932 tp!1419930))))

(declare-fun b!5093481 () Bool)

(assert (=> b!5093481 (= e!3176486 true)))

(declare-datatypes ((Token!15420 0))(
  ( (Token!15421 (value!272220 TokenValue!8802) (rule!11756 Rule!16776) (size!39250 Int) (originalCharacters!8741 List!58684)) )
))
(declare-datatypes ((tuple2!63294 0))(
  ( (tuple2!63295 (_1!34950 Token!15420) (_2!34950 List!58684)) )
))
(declare-datatypes ((Option!14619 0))(
  ( (None!14618) (Some!14618 (v!50631 tuple2!63294)) )
))
(declare-fun lt!2092751 () Option!14619)

(declare-datatypes ((LexerInterface!8080 0))(
  ( (LexerInterfaceExt!8077 (__x!34894 Int)) (Lexer!8078) )
))
(declare-fun thiss!14775 () LexerInterface!8080)

(declare-fun maxPrefixOneRuleZipper!306 (LexerInterface!8080 Rule!16776 List!58684) Option!14619)

(assert (=> b!5093481 (= lt!2092751 (maxPrefixOneRuleZipper!306 thiss!14775 (h!65009 rulesArg!145) input!1210))))

(declare-fun tp!1419933 () Bool)

(declare-fun e!3176482 () Bool)

(declare-fun b!5093482 () Bool)

(declare-fun inv!78062 (String!66932) Bool)

(declare-fun inv!78064 (TokenValueInjection!16912) Bool)

(assert (=> b!5093482 (= e!3176482 (and tp!1419933 (inv!78062 (tag!9352 (h!65009 rulesArg!145))) (inv!78064 (transformation!8488 (h!65009 rulesArg!145))) e!3176484))))

(declare-fun res!2167592 () Bool)

(assert (=> start!536852 (=> (not res!2167592) (not e!3176487))))

(assert (=> start!536852 (= res!2167592 ((_ is Lexer!8078) thiss!14775))))

(assert (=> start!536852 e!3176487))

(assert (=> start!536852 true))

(declare-fun e!3176485 () Bool)

(assert (=> start!536852 e!3176485))

(declare-fun e!3176483 () Bool)

(assert (=> start!536852 e!3176483))

(declare-fun b!5093483 () Bool)

(declare-fun tp_is_empty!37191 () Bool)

(declare-fun tp!1419929 () Bool)

(assert (=> b!5093483 (= e!3176483 (and tp_is_empty!37191 tp!1419929))))

(declare-fun b!5093484 () Bool)

(declare-fun res!2167589 () Bool)

(assert (=> b!5093484 (=> (not res!2167589) (not e!3176487))))

(declare-fun isEmpty!31698 (List!58685) Bool)

(assert (=> b!5093484 (= res!2167589 (not (isEmpty!31698 rulesArg!145)))))

(declare-fun b!5093485 () Bool)

(declare-fun tp!1419931 () Bool)

(assert (=> b!5093485 (= e!3176485 (and e!3176482 tp!1419931))))

(declare-fun b!5093486 () Bool)

(declare-fun res!2167590 () Bool)

(assert (=> b!5093486 (=> (not res!2167590) (not e!3176487))))

(declare-fun rulesValidInductive!3313 (LexerInterface!8080 List!58685) Bool)

(assert (=> b!5093486 (= res!2167590 (rulesValidInductive!3313 thiss!14775 rulesArg!145))))

(assert (= (and start!536852 res!2167592) b!5093486))

(assert (= (and b!5093486 res!2167590) b!5093484))

(assert (= (and b!5093484 res!2167589) b!5093479))

(assert (= (and b!5093479 (not res!2167591)) b!5093481))

(assert (= b!5093482 b!5093480))

(assert (= b!5093485 b!5093482))

(assert (= (and start!536852 ((_ is Cons!58561) rulesArg!145)) b!5093485))

(assert (= (and start!536852 ((_ is Cons!58560) input!1210)) b!5093483))

(declare-fun m!6151612 () Bool)

(assert (=> b!5093484 m!6151612))

(declare-fun m!6151614 () Bool)

(assert (=> b!5093482 m!6151614))

(declare-fun m!6151616 () Bool)

(assert (=> b!5093482 m!6151616))

(declare-fun m!6151618 () Bool)

(assert (=> b!5093481 m!6151618))

(declare-fun m!6151620 () Bool)

(assert (=> b!5093486 m!6151620))

(declare-fun m!6151622 () Bool)

(assert (=> b!5093479 m!6151622))

(declare-fun m!6151624 () Bool)

(assert (=> b!5093479 m!6151624))

(check-sat (not b!5093481) (not b!5093483) (not b!5093485) (not b_next!134065) b_and!350159 (not b!5093482) (not b!5093486) b_and!350161 tp_is_empty!37191 (not b!5093479) (not b_next!134067) (not b!5093484))
(check-sat b_and!350161 b_and!350159 (not b_next!134065) (not b_next!134067))
