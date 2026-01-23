; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51304 () Bool)

(assert start!51304)

(declare-fun b!553428 () Bool)

(declare-fun b_free!15505 () Bool)

(declare-fun b_next!15521 () Bool)

(assert (=> b!553428 (= b_free!15505 (not b_next!15521))))

(declare-fun tp!175038 () Bool)

(declare-fun b_and!54059 () Bool)

(assert (=> b!553428 (= tp!175038 b_and!54059)))

(declare-fun b_free!15507 () Bool)

(declare-fun b_next!15523 () Bool)

(assert (=> b!553428 (= b_free!15507 (not b_next!15523))))

(declare-fun tp!175045 () Bool)

(declare-fun b_and!54061 () Bool)

(assert (=> b!553428 (= tp!175045 b_and!54061)))

(declare-fun b!553435 () Bool)

(declare-fun b_free!15509 () Bool)

(declare-fun b_next!15525 () Bool)

(assert (=> b!553435 (= b_free!15509 (not b_next!15525))))

(declare-fun tp!175037 () Bool)

(declare-fun b_and!54063 () Bool)

(assert (=> b!553435 (= tp!175037 b_and!54063)))

(declare-fun b_free!15511 () Bool)

(declare-fun b_next!15527 () Bool)

(assert (=> b!553435 (= b_free!15511 (not b_next!15527))))

(declare-fun tp!175043 () Bool)

(declare-fun b_and!54065 () Bool)

(assert (=> b!553435 (= tp!175043 b_and!54065)))

(declare-fun b!553419 () Bool)

(declare-fun e!334822 () Bool)

(declare-fun tp_is_empty!3117 () Bool)

(declare-fun tp!175039 () Bool)

(assert (=> b!553419 (= e!334822 (and tp_is_empty!3117 tp!175039))))

(declare-fun b!553420 () Bool)

(declare-fun e!334811 () Bool)

(declare-fun e!334810 () Bool)

(declare-fun tp!175044 () Bool)

(assert (=> b!553420 (= e!334811 (and e!334810 tp!175044))))

(declare-fun b!553421 () Bool)

(declare-fun e!334814 () Bool)

(declare-fun e!334818 () Bool)

(assert (=> b!553421 (= e!334814 (not e!334818))))

(declare-fun res!237365 () Bool)

(assert (=> b!553421 (=> res!237365 e!334818)))

(declare-fun lt!233326 () Int)

(declare-datatypes ((C!3684 0))(
  ( (C!3685 (val!2068 Int)) )
))
(declare-datatypes ((List!5501 0))(
  ( (Nil!5491) (Cons!5491 (h!10892 C!3684) (t!75272 List!5501)) )
))
(declare-fun lt!233321 () List!5501)

(declare-fun size!4382 (List!5501) Int)

(assert (=> b!553421 (= res!237365 (<= lt!233326 (size!4382 lt!233321)))))

(declare-fun lt!233325 () List!5501)

(assert (=> b!553421 (= lt!233326 (size!4382 lt!233325))))

(declare-datatypes ((Regex!1381 0))(
  ( (ElementMatch!1381 (c!103944 C!3684)) (Concat!2452 (regOne!3274 Regex!1381) (regTwo!3274 Regex!1381)) (EmptyExpr!1381) (Star!1381 (reg!1710 Regex!1381)) (EmptyLang!1381) (Union!1381 (regOne!3275 Regex!1381) (regTwo!3275 Regex!1381)) )
))
(declare-datatypes ((List!5502 0))(
  ( (Nil!5492) (Cons!5492 (h!10893 (_ BitVec 16)) (t!75273 List!5502)) )
))
(declare-datatypes ((IArray!3529 0))(
  ( (IArray!3530 (innerList!1822 List!5501)) )
))
(declare-datatypes ((Conc!1764 0))(
  ( (Node!1764 (left!4528 Conc!1764) (right!4858 Conc!1764) (csize!3758 Int) (cheight!1975 Int)) (Leaf!2795 (xs!4401 IArray!3529) (csize!3759 Int)) (Empty!1764) )
))
(declare-datatypes ((BalanceConc!3536 0))(
  ( (BalanceConc!3537 (c!103945 Conc!1764)) )
))
(declare-datatypes ((TokenValue!1071 0))(
  ( (FloatLiteralValue!2142 (text!7942 List!5502)) (TokenValueExt!1070 (__x!4040 Int)) (Broken!5355 (value!34680 List!5502)) (Object!1080) (End!1071) (Def!1071) (Underscore!1071) (Match!1071) (Else!1071) (Error!1071) (Case!1071) (If!1071) (Extends!1071) (Abstract!1071) (Class!1071) (Val!1071) (DelimiterValue!2142 (del!1131 List!5502)) (KeywordValue!1077 (value!34681 List!5502)) (CommentValue!2142 (value!34682 List!5502)) (WhitespaceValue!2142 (value!34683 List!5502)) (IndentationValue!1071 (value!34684 List!5502)) (String!7098) (Int32!1071) (Broken!5356 (value!34685 List!5502)) (Boolean!1072) (Unit!9732) (OperatorValue!1074 (op!1131 List!5502)) (IdentifierValue!2142 (value!34686 List!5502)) (IdentifierValue!2143 (value!34687 List!5502)) (WhitespaceValue!2143 (value!34688 List!5502)) (True!2142) (False!2142) (Broken!5357 (value!34689 List!5502)) (Broken!5358 (value!34690 List!5502)) (True!2143) (RightBrace!1071) (RightBracket!1071) (Colon!1071) (Null!1071) (Comma!1071) (LeftBracket!1071) (False!2143) (LeftBrace!1071) (ImaginaryLiteralValue!1071 (text!7943 List!5502)) (StringLiteralValue!3213 (value!34691 List!5502)) (EOFValue!1071 (value!34692 List!5502)) (IdentValue!1071 (value!34693 List!5502)) (DelimiterValue!2143 (value!34694 List!5502)) (DedentValue!1071 (value!34695 List!5502)) (NewLineValue!1071 (value!34696 List!5502)) (IntegerValue!3213 (value!34697 (_ BitVec 32)) (text!7944 List!5502)) (IntegerValue!3214 (value!34698 Int) (text!7945 List!5502)) (Times!1071) (Or!1071) (Equal!1071) (Minus!1071) (Broken!5359 (value!34699 List!5502)) (And!1071) (Div!1071) (LessEqual!1071) (Mod!1071) (Concat!2453) (Not!1071) (Plus!1071) (SpaceValue!1071 (value!34700 List!5502)) (IntegerValue!3215 (value!34701 Int) (text!7946 List!5502)) (StringLiteralValue!3214 (text!7947 List!5502)) (FloatLiteralValue!2143 (text!7948 List!5502)) (BytesLiteralValue!1071 (value!34702 List!5502)) (CommentValue!2143 (value!34703 List!5502)) (StringLiteralValue!3215 (value!34704 List!5502)) (ErrorTokenValue!1071 (msg!1132 List!5502)) )
))
(declare-datatypes ((String!7099 0))(
  ( (String!7100 (value!34705 String)) )
))
(declare-datatypes ((TokenValueInjection!1910 0))(
  ( (TokenValueInjection!1911 (toValue!1898 Int) (toChars!1757 Int)) )
))
(declare-datatypes ((Rule!1894 0))(
  ( (Rule!1895 (regex!1047 Regex!1381) (tag!1309 String!7099) (isSeparator!1047 Bool) (transformation!1047 TokenValueInjection!1910)) )
))
(declare-datatypes ((Token!1830 0))(
  ( (Token!1831 (value!34706 TokenValue!1071) (rule!1775 Rule!1894) (size!4383 Int) (originalCharacters!1086 List!5501)) )
))
(declare-datatypes ((tuple2!6504 0))(
  ( (tuple2!6505 (_1!3516 Token!1830) (_2!3516 List!5501)) )
))
(declare-datatypes ((Option!1397 0))(
  ( (None!1396) (Some!1396 (v!16225 tuple2!6504)) )
))
(declare-fun lt!233324 () Option!1397)

(declare-fun list!2277 (BalanceConc!3536) List!5501)

(declare-fun charsOf!676 (Token!1830) BalanceConc!3536)

(assert (=> b!553421 (= lt!233325 (list!2277 (charsOf!676 (_1!3516 (v!16225 lt!233324)))))))

(assert (=> b!553421 (= lt!233324 (Some!1396 (v!16225 lt!233324)))))

(declare-fun suffix!1342 () List!5501)

(declare-datatypes ((Unit!9733 0))(
  ( (Unit!9734) )
))
(declare-fun lt!233320 () Unit!9733)

(declare-fun input!2705 () List!5501)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!124 (List!5501 List!5501 List!5501 List!5501) Unit!9733)

(assert (=> b!553421 (= lt!233320 (lemmaConcatSameAndSameSizesThenSameLists!124 lt!233321 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!553422 () Bool)

(declare-fun e!334819 () Bool)

(assert (=> b!553422 (= e!334819 e!334814)))

(declare-fun res!237361 () Bool)

(assert (=> b!553422 (=> (not res!237361) (not e!334814))))

(get-info :version)

(assert (=> b!553422 (= res!237361 ((_ is Some!1396) lt!233324))))

(declare-datatypes ((List!5503 0))(
  ( (Nil!5493) (Cons!5493 (h!10894 Rule!1894) (t!75274 List!5503)) )
))
(declare-fun rules!3103 () List!5503)

(declare-datatypes ((LexerInterface!933 0))(
  ( (LexerInterfaceExt!930 (__x!4041 Int)) (Lexer!931) )
))
(declare-fun thiss!22590 () LexerInterface!933)

(declare-fun maxPrefix!631 (LexerInterface!933 List!5503 List!5501) Option!1397)

(assert (=> b!553422 (= lt!233324 (maxPrefix!631 thiss!22590 rules!3103 input!2705))))

(declare-fun b!553423 () Bool)

(declare-fun res!237366 () Bool)

(declare-fun e!334808 () Bool)

(assert (=> b!553423 (=> (not res!237366) (not e!334808))))

(declare-fun isEmpty!3962 (List!5501) Bool)

(assert (=> b!553423 (= res!237366 (not (isEmpty!3962 input!2705)))))

(declare-fun b!553424 () Bool)

(declare-fun res!237367 () Bool)

(assert (=> b!553424 (=> (not res!237367) (not e!334814))))

(declare-fun lt!233322 () List!5501)

(declare-fun ++!1535 (List!5501 List!5501) List!5501)

(assert (=> b!553424 (= res!237367 (= (++!1535 lt!233321 suffix!1342) lt!233322))))

(declare-fun tp!175040 () Bool)

(declare-fun e!334816 () Bool)

(declare-fun token!491 () Token!1830)

(declare-fun e!334806 () Bool)

(declare-fun b!553425 () Bool)

(declare-fun inv!6891 (String!7099) Bool)

(declare-fun inv!6894 (TokenValueInjection!1910) Bool)

(assert (=> b!553425 (= e!334806 (and tp!175040 (inv!6891 (tag!1309 (rule!1775 token!491))) (inv!6894 (transformation!1047 (rule!1775 token!491))) e!334816))))

(declare-fun b!553426 () Bool)

(declare-fun e!334807 () Bool)

(declare-fun tp!175041 () Bool)

(assert (=> b!553426 (= e!334807 (and tp_is_empty!3117 tp!175041))))

(declare-fun b!553427 () Bool)

(declare-fun e!334813 () Bool)

(assert (=> b!553427 (= e!334808 e!334813)))

(declare-fun res!237360 () Bool)

(assert (=> b!553427 (=> (not res!237360) (not e!334813))))

(assert (=> b!553427 (= res!237360 (= lt!233321 input!2705))))

(assert (=> b!553427 (= lt!233321 (list!2277 (charsOf!676 token!491)))))

(declare-fun e!334817 () Bool)

(assert (=> b!553428 (= e!334817 (and tp!175038 tp!175045))))

(declare-fun b!553429 () Bool)

(declare-fun tp!175046 () Bool)

(assert (=> b!553429 (= e!334810 (and tp!175046 (inv!6891 (tag!1309 (h!10894 rules!3103))) (inv!6894 (transformation!1047 (h!10894 rules!3103))) e!334817))))

(declare-fun b!553430 () Bool)

(assert (=> b!553430 (= e!334818 (> lt!233326 (size!4382 input!2705)))))

(declare-fun b!553431 () Bool)

(declare-fun e!334812 () Bool)

(assert (=> b!553431 (= e!334812 e!334819)))

(declare-fun res!237362 () Bool)

(assert (=> b!553431 (=> (not res!237362) (not e!334819))))

(declare-fun lt!233327 () tuple2!6504)

(assert (=> b!553431 (= res!237362 (and (= (_1!3516 lt!233327) token!491) (= (_2!3516 lt!233327) suffix!1342)))))

(declare-fun lt!233323 () Option!1397)

(declare-fun get!2085 (Option!1397) tuple2!6504)

(assert (=> b!553431 (= lt!233327 (get!2085 lt!233323))))

(declare-fun b!553432 () Bool)

(declare-fun res!237358 () Bool)

(assert (=> b!553432 (=> (not res!237358) (not e!334808))))

(declare-fun rulesInvariant!896 (LexerInterface!933 List!5503) Bool)

(assert (=> b!553432 (= res!237358 (rulesInvariant!896 thiss!22590 rules!3103))))

(declare-fun b!553433 () Bool)

(declare-fun res!237364 () Bool)

(assert (=> b!553433 (=> (not res!237364) (not e!334808))))

(declare-fun isEmpty!3963 (List!5503) Bool)

(assert (=> b!553433 (= res!237364 (not (isEmpty!3963 rules!3103)))))

(declare-fun b!553434 () Bool)

(assert (=> b!553434 (= e!334813 e!334812)))

(declare-fun res!237368 () Bool)

(assert (=> b!553434 (=> (not res!237368) (not e!334812))))

(declare-fun isDefined!1209 (Option!1397) Bool)

(assert (=> b!553434 (= res!237368 (isDefined!1209 lt!233323))))

(assert (=> b!553434 (= lt!233323 (maxPrefix!631 thiss!22590 rules!3103 lt!233322))))

(assert (=> b!553434 (= lt!233322 (++!1535 input!2705 suffix!1342))))

(assert (=> b!553435 (= e!334816 (and tp!175037 tp!175043))))

(declare-fun b!553436 () Bool)

(declare-fun tp!175042 () Bool)

(declare-fun e!334820 () Bool)

(declare-fun inv!21 (TokenValue!1071) Bool)

(assert (=> b!553436 (= e!334820 (and (inv!21 (value!34706 token!491)) e!334806 tp!175042))))

(declare-fun b!553437 () Bool)

(declare-fun res!237363 () Bool)

(assert (=> b!553437 (=> res!237363 e!334818)))

(assert (=> b!553437 (= res!237363 (not (= (++!1535 lt!233325 (_2!3516 (v!16225 lt!233324))) input!2705)))))

(declare-fun res!237359 () Bool)

(assert (=> start!51304 (=> (not res!237359) (not e!334808))))

(assert (=> start!51304 (= res!237359 ((_ is Lexer!931) thiss!22590))))

(assert (=> start!51304 e!334808))

(assert (=> start!51304 e!334807))

(assert (=> start!51304 e!334811))

(declare-fun inv!6895 (Token!1830) Bool)

(assert (=> start!51304 (and (inv!6895 token!491) e!334820)))

(assert (=> start!51304 true))

(assert (=> start!51304 e!334822))

(assert (= (and start!51304 res!237359) b!553433))

(assert (= (and b!553433 res!237364) b!553432))

(assert (= (and b!553432 res!237358) b!553423))

(assert (= (and b!553423 res!237366) b!553427))

(assert (= (and b!553427 res!237360) b!553434))

(assert (= (and b!553434 res!237368) b!553431))

(assert (= (and b!553431 res!237362) b!553422))

(assert (= (and b!553422 res!237361) b!553424))

(assert (= (and b!553424 res!237367) b!553421))

(assert (= (and b!553421 (not res!237365)) b!553437))

(assert (= (and b!553437 (not res!237363)) b!553430))

(assert (= (and start!51304 ((_ is Cons!5491) suffix!1342)) b!553426))

(assert (= b!553429 b!553428))

(assert (= b!553420 b!553429))

(assert (= (and start!51304 ((_ is Cons!5493) rules!3103)) b!553420))

(assert (= b!553425 b!553435))

(assert (= b!553436 b!553425))

(assert (= start!51304 b!553436))

(assert (= (and start!51304 ((_ is Cons!5491) input!2705)) b!553419))

(declare-fun m!803119 () Bool)

(assert (=> b!553429 m!803119))

(declare-fun m!803121 () Bool)

(assert (=> b!553429 m!803121))

(declare-fun m!803123 () Bool)

(assert (=> b!553431 m!803123))

(declare-fun m!803125 () Bool)

(assert (=> b!553424 m!803125))

(declare-fun m!803127 () Bool)

(assert (=> b!553423 m!803127))

(declare-fun m!803129 () Bool)

(assert (=> b!553433 m!803129))

(declare-fun m!803131 () Bool)

(assert (=> b!553430 m!803131))

(declare-fun m!803133 () Bool)

(assert (=> b!553432 m!803133))

(declare-fun m!803135 () Bool)

(assert (=> b!553436 m!803135))

(declare-fun m!803137 () Bool)

(assert (=> b!553425 m!803137))

(declare-fun m!803139 () Bool)

(assert (=> b!553425 m!803139))

(declare-fun m!803141 () Bool)

(assert (=> b!553437 m!803141))

(declare-fun m!803143 () Bool)

(assert (=> start!51304 m!803143))

(declare-fun m!803145 () Bool)

(assert (=> b!553427 m!803145))

(assert (=> b!553427 m!803145))

(declare-fun m!803147 () Bool)

(assert (=> b!553427 m!803147))

(declare-fun m!803149 () Bool)

(assert (=> b!553422 m!803149))

(declare-fun m!803151 () Bool)

(assert (=> b!553434 m!803151))

(declare-fun m!803153 () Bool)

(assert (=> b!553434 m!803153))

(declare-fun m!803155 () Bool)

(assert (=> b!553434 m!803155))

(declare-fun m!803157 () Bool)

(assert (=> b!553421 m!803157))

(assert (=> b!553421 m!803157))

(declare-fun m!803159 () Bool)

(assert (=> b!553421 m!803159))

(declare-fun m!803161 () Bool)

(assert (=> b!553421 m!803161))

(declare-fun m!803163 () Bool)

(assert (=> b!553421 m!803163))

(declare-fun m!803165 () Bool)

(assert (=> b!553421 m!803165))

(check-sat (not b!553427) (not b!553429) (not b!553425) (not b_next!15527) tp_is_empty!3117 (not b!553432) (not b_next!15523) (not b!553422) (not b!553423) (not b!553437) (not b!553436) (not b!553420) b_and!54065 (not b!553424) (not b!553426) (not b!553434) (not b!553430) b_and!54059 (not b!553419) (not b!553421) b_and!54061 (not start!51304) (not b!553433) (not b_next!15525) (not b!553431) b_and!54063 (not b_next!15521))
(check-sat b_and!54065 (not b_next!15527) b_and!54059 (not b_next!15523) b_and!54061 (not b_next!15525) b_and!54063 (not b_next!15521))
