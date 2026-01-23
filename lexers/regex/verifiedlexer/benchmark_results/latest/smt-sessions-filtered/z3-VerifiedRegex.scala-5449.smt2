; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276424 () Bool)

(assert start!276424)

(declare-fun b!2841950 () Bool)

(declare-fun b_free!82441 () Bool)

(declare-fun b_next!83145 () Bool)

(assert (=> b!2841950 (= b_free!82441 (not b_next!83145))))

(declare-fun tp!910411 () Bool)

(declare-fun b_and!208527 () Bool)

(assert (=> b!2841950 (= tp!910411 b_and!208527)))

(declare-fun b_free!82443 () Bool)

(declare-fun b_next!83147 () Bool)

(assert (=> b!2841950 (= b_free!82443 (not b_next!83147))))

(declare-fun tp!910417 () Bool)

(declare-fun b_and!208529 () Bool)

(assert (=> b!2841950 (= tp!910417 b_and!208529)))

(declare-fun b!2841953 () Bool)

(declare-fun b_free!82445 () Bool)

(declare-fun b_next!83149 () Bool)

(assert (=> b!2841953 (= b_free!82445 (not b_next!83149))))

(declare-fun tp!910414 () Bool)

(declare-fun b_and!208531 () Bool)

(assert (=> b!2841953 (= tp!910414 b_and!208531)))

(declare-fun b_free!82447 () Bool)

(declare-fun b_next!83151 () Bool)

(assert (=> b!2841953 (= b_free!82447 (not b_next!83151))))

(declare-fun tp!910413 () Bool)

(declare-fun b_and!208533 () Bool)

(assert (=> b!2841953 (= tp!910413 b_and!208533)))

(declare-fun b!2841956 () Bool)

(declare-fun b_free!82449 () Bool)

(declare-fun b_next!83153 () Bool)

(assert (=> b!2841956 (= b_free!82449 (not b_next!83153))))

(declare-fun tp!910412 () Bool)

(declare-fun b_and!208535 () Bool)

(assert (=> b!2841956 (= tp!910412 b_and!208535)))

(declare-fun b_free!82451 () Bool)

(declare-fun b_next!83155 () Bool)

(assert (=> b!2841956 (= b_free!82451 (not b_next!83155))))

(declare-fun tp!910418 () Bool)

(declare-fun b_and!208537 () Bool)

(assert (=> b!2841956 (= tp!910418 b_and!208537)))

(declare-fun b!2841943 () Bool)

(declare-fun res!1182329 () Bool)

(declare-fun e!1800499 () Bool)

(assert (=> b!2841943 (=> (not res!1182329) (not e!1800499))))

(declare-datatypes ((LexerInterface!4652 0))(
  ( (LexerInterfaceExt!4649 (__x!22322 Int)) (Lexer!4650) )
))
(declare-fun thiss!11361 () LexerInterface!4652)

(declare-datatypes ((List!33792 0))(
  ( (Nil!33668) (Cons!33668 (h!39088 (_ BitVec 16)) (t!232637 List!33792)) )
))
(declare-datatypes ((TokenValue!5292 0))(
  ( (FloatLiteralValue!10584 (text!37489 List!33792)) (TokenValueExt!5291 (__x!22323 Int)) (Broken!26460 (value!162643 List!33792)) (Object!5415) (End!5292) (Def!5292) (Underscore!5292) (Match!5292) (Else!5292) (Error!5292) (Case!5292) (If!5292) (Extends!5292) (Abstract!5292) (Class!5292) (Val!5292) (DelimiterValue!10584 (del!5352 List!33792)) (KeywordValue!5298 (value!162644 List!33792)) (CommentValue!10584 (value!162645 List!33792)) (WhitespaceValue!10584 (value!162646 List!33792)) (IndentationValue!5292 (value!162647 List!33792)) (String!37025) (Int32!5292) (Broken!26461 (value!162648 List!33792)) (Boolean!5293) (Unit!47492) (OperatorValue!5295 (op!5352 List!33792)) (IdentifierValue!10584 (value!162649 List!33792)) (IdentifierValue!10585 (value!162650 List!33792)) (WhitespaceValue!10585 (value!162651 List!33792)) (True!10584) (False!10584) (Broken!26462 (value!162652 List!33792)) (Broken!26463 (value!162653 List!33792)) (True!10585) (RightBrace!5292) (RightBracket!5292) (Colon!5292) (Null!5292) (Comma!5292) (LeftBracket!5292) (False!10585) (LeftBrace!5292) (ImaginaryLiteralValue!5292 (text!37490 List!33792)) (StringLiteralValue!15876 (value!162654 List!33792)) (EOFValue!5292 (value!162655 List!33792)) (IdentValue!5292 (value!162656 List!33792)) (DelimiterValue!10585 (value!162657 List!33792)) (DedentValue!5292 (value!162658 List!33792)) (NewLineValue!5292 (value!162659 List!33792)) (IntegerValue!15876 (value!162660 (_ BitVec 32)) (text!37491 List!33792)) (IntegerValue!15877 (value!162661 Int) (text!37492 List!33792)) (Times!5292) (Or!5292) (Equal!5292) (Minus!5292) (Broken!26464 (value!162662 List!33792)) (And!5292) (Div!5292) (LessEqual!5292) (Mod!5292) (Concat!13745) (Not!5292) (Plus!5292) (SpaceValue!5292 (value!162663 List!33792)) (IntegerValue!15878 (value!162664 Int) (text!37493 List!33792)) (StringLiteralValue!15877 (text!37494 List!33792)) (FloatLiteralValue!10585 (text!37495 List!33792)) (BytesLiteralValue!5292 (value!162665 List!33792)) (CommentValue!10585 (value!162666 List!33792)) (StringLiteralValue!15878 (value!162667 List!33792)) (ErrorTokenValue!5292 (msg!5353 List!33792)) )
))
(declare-datatypes ((C!17088 0))(
  ( (C!17089 (val!10578 Int)) )
))
(declare-datatypes ((List!33793 0))(
  ( (Nil!33669) (Cons!33669 (h!39089 C!17088) (t!232638 List!33793)) )
))
(declare-datatypes ((IArray!20889 0))(
  ( (IArray!20890 (innerList!10502 List!33793)) )
))
(declare-datatypes ((Conc!10442 0))(
  ( (Node!10442 (left!25371 Conc!10442) (right!25701 Conc!10442) (csize!21114 Int) (cheight!10653 Int)) (Leaf!15892 (xs!13554 IArray!20889) (csize!21115 Int)) (Empty!10442) )
))
(declare-datatypes ((BalanceConc!20522 0))(
  ( (BalanceConc!20523 (c!458762 Conc!10442)) )
))
(declare-datatypes ((String!37026 0))(
  ( (String!37027 (value!162668 String)) )
))
(declare-datatypes ((Regex!8453 0))(
  ( (ElementMatch!8453 (c!458763 C!17088)) (Concat!13746 (regOne!17418 Regex!8453) (regTwo!17418 Regex!8453)) (EmptyExpr!8453) (Star!8453 (reg!8782 Regex!8453)) (EmptyLang!8453) (Union!8453 (regOne!17419 Regex!8453) (regTwo!17419 Regex!8453)) )
))
(declare-datatypes ((TokenValueInjection!10012 0))(
  ( (TokenValueInjection!10013 (toValue!7104 Int) (toChars!6963 Int)) )
))
(declare-datatypes ((Rule!9924 0))(
  ( (Rule!9925 (regex!5062 Regex!8453) (tag!5566 String!37026) (isSeparator!5062 Bool) (transformation!5062 TokenValueInjection!10012)) )
))
(declare-datatypes ((List!33794 0))(
  ( (Nil!33670) (Cons!33670 (h!39090 Rule!9924) (t!232639 List!33794)) )
))
(declare-fun rules!1139 () List!33794)

(declare-fun rulesInvariant!4068 (LexerInterface!4652 List!33794) Bool)

(assert (=> b!2841943 (= res!1182329 (rulesInvariant!4068 thiss!11361 rules!1139))))

(declare-fun b!2841944 () Bool)

(assert (=> b!2841944 (= e!1800499 false)))

(declare-fun lt!1011715 () Bool)

(declare-datatypes ((Token!9526 0))(
  ( (Token!9527 (value!162669 TokenValue!5292) (rule!7490 Rule!9924) (size!26135 Int) (originalCharacters!5794 List!33793)) )
))
(declare-fun t2!27 () Token!9526)

(declare-fun isEmpty!18526 (BalanceConc!20522) Bool)

(declare-fun charsOf!3112 (Token!9526) BalanceConc!20522)

(assert (=> b!2841944 (= lt!1011715 (isEmpty!18526 (charsOf!3112 t2!27)))))

(declare-fun e!1800511 () Bool)

(declare-fun tp!910416 () Bool)

(declare-fun e!1800507 () Bool)

(declare-fun b!2841945 () Bool)

(declare-fun inv!45653 (String!37026) Bool)

(declare-fun inv!45656 (TokenValueInjection!10012) Bool)

(assert (=> b!2841945 (= e!1800507 (and tp!910416 (inv!45653 (tag!5566 (h!39090 rules!1139))) (inv!45656 (transformation!5062 (h!39090 rules!1139))) e!1800511))))

(declare-fun e!1800506 () Bool)

(declare-fun b!2841946 () Bool)

(declare-fun e!1800512 () Bool)

(declare-fun tp!910421 () Bool)

(assert (=> b!2841946 (= e!1800506 (and tp!910421 (inv!45653 (tag!5566 (rule!7490 t2!27))) (inv!45656 (transformation!5062 (rule!7490 t2!27))) e!1800512))))

(declare-fun t1!27 () Token!9526)

(declare-fun b!2841947 () Bool)

(declare-fun e!1800503 () Bool)

(declare-fun e!1800505 () Bool)

(declare-fun tp!910420 () Bool)

(declare-fun inv!21 (TokenValue!5292) Bool)

(assert (=> b!2841947 (= e!1800505 (and (inv!21 (value!162669 t1!27)) e!1800503 tp!910420))))

(declare-fun b!2841948 () Bool)

(declare-fun res!1182328 () Bool)

(assert (=> b!2841948 (=> (not res!1182328) (not e!1800499))))

(declare-fun rulesProduceIndividualToken!2163 (LexerInterface!4652 List!33794 Token!9526) Bool)

(assert (=> b!2841948 (= res!1182328 (rulesProduceIndividualToken!2163 thiss!11361 rules!1139 t2!27))))

(declare-fun e!1800502 () Bool)

(assert (=> b!2841950 (= e!1800502 (and tp!910411 tp!910417))))

(declare-fun b!2841951 () Bool)

(declare-fun res!1182330 () Bool)

(assert (=> b!2841951 (=> (not res!1182330) (not e!1800499))))

(declare-fun isEmpty!18527 (List!33794) Bool)

(assert (=> b!2841951 (= res!1182330 (not (isEmpty!18527 rules!1139)))))

(declare-fun b!2841952 () Bool)

(declare-fun res!1182327 () Bool)

(assert (=> b!2841952 (=> (not res!1182327) (not e!1800499))))

(assert (=> b!2841952 (= res!1182327 (rulesProduceIndividualToken!2163 thiss!11361 rules!1139 t1!27))))

(assert (=> b!2841953 (= e!1800512 (and tp!910414 tp!910413))))

(declare-fun b!2841954 () Bool)

(declare-fun e!1800509 () Bool)

(declare-fun tp!910415 () Bool)

(assert (=> b!2841954 (= e!1800509 (and (inv!21 (value!162669 t2!27)) e!1800506 tp!910415))))

(declare-fun res!1182326 () Bool)

(assert (=> start!276424 (=> (not res!1182326) (not e!1800499))))

(get-info :version)

(assert (=> start!276424 (= res!1182326 ((_ is Lexer!4650) thiss!11361))))

(assert (=> start!276424 e!1800499))

(assert (=> start!276424 true))

(declare-fun e!1800513 () Bool)

(assert (=> start!276424 e!1800513))

(declare-fun inv!45657 (Token!9526) Bool)

(assert (=> start!276424 (and (inv!45657 t1!27) e!1800505)))

(assert (=> start!276424 (and (inv!45657 t2!27) e!1800509)))

(declare-fun b!2841949 () Bool)

(declare-fun tp!910422 () Bool)

(assert (=> b!2841949 (= e!1800503 (and tp!910422 (inv!45653 (tag!5566 (rule!7490 t1!27))) (inv!45656 (transformation!5062 (rule!7490 t1!27))) e!1800502))))

(declare-fun b!2841955 () Bool)

(declare-fun tp!910419 () Bool)

(assert (=> b!2841955 (= e!1800513 (and e!1800507 tp!910419))))

(assert (=> b!2841956 (= e!1800511 (and tp!910412 tp!910418))))

(assert (= (and start!276424 res!1182326) b!2841951))

(assert (= (and b!2841951 res!1182330) b!2841943))

(assert (= (and b!2841943 res!1182329) b!2841952))

(assert (= (and b!2841952 res!1182327) b!2841948))

(assert (= (and b!2841948 res!1182328) b!2841944))

(assert (= b!2841945 b!2841956))

(assert (= b!2841955 b!2841945))

(assert (= (and start!276424 ((_ is Cons!33670) rules!1139)) b!2841955))

(assert (= b!2841949 b!2841950))

(assert (= b!2841947 b!2841949))

(assert (= start!276424 b!2841947))

(assert (= b!2841946 b!2841953))

(assert (= b!2841954 b!2841946))

(assert (= start!276424 b!2841954))

(declare-fun m!3269627 () Bool)

(assert (=> b!2841954 m!3269627))

(declare-fun m!3269629 () Bool)

(assert (=> b!2841951 m!3269629))

(declare-fun m!3269631 () Bool)

(assert (=> start!276424 m!3269631))

(declare-fun m!3269633 () Bool)

(assert (=> start!276424 m!3269633))

(declare-fun m!3269635 () Bool)

(assert (=> b!2841945 m!3269635))

(declare-fun m!3269637 () Bool)

(assert (=> b!2841945 m!3269637))

(declare-fun m!3269639 () Bool)

(assert (=> b!2841947 m!3269639))

(declare-fun m!3269641 () Bool)

(assert (=> b!2841948 m!3269641))

(declare-fun m!3269643 () Bool)

(assert (=> b!2841952 m!3269643))

(declare-fun m!3269645 () Bool)

(assert (=> b!2841949 m!3269645))

(declare-fun m!3269647 () Bool)

(assert (=> b!2841949 m!3269647))

(declare-fun m!3269649 () Bool)

(assert (=> b!2841943 m!3269649))

(declare-fun m!3269651 () Bool)

(assert (=> b!2841944 m!3269651))

(assert (=> b!2841944 m!3269651))

(declare-fun m!3269653 () Bool)

(assert (=> b!2841944 m!3269653))

(declare-fun m!3269655 () Bool)

(assert (=> b!2841946 m!3269655))

(declare-fun m!3269657 () Bool)

(assert (=> b!2841946 m!3269657))

(check-sat (not b_next!83155) (not b!2841943) b_and!208535 (not b!2841945) (not b_next!83145) b_and!208531 (not b!2841955) (not b!2841952) (not b!2841954) b_and!208533 (not b!2841949) (not b!2841951) (not b_next!83147) (not b!2841947) (not b!2841946) (not b_next!83153) (not b_next!83151) (not b!2841944) b_and!208529 b_and!208537 (not b!2841948) b_and!208527 (not b_next!83149) (not start!276424))
(check-sat (not b_next!83155) b_and!208533 b_and!208535 (not b_next!83147) (not b_next!83145) b_and!208531 b_and!208529 b_and!208537 (not b_next!83153) (not b_next!83151) b_and!208527 (not b_next!83149))
