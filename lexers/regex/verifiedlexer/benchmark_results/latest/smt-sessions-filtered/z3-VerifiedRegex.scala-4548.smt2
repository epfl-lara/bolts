; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!240678 () Bool)

(assert start!240678)

(declare-fun b!2468228 () Bool)

(declare-fun b_free!71237 () Bool)

(declare-fun b_next!71941 () Bool)

(assert (=> b!2468228 (= b_free!71237 (not b_next!71941))))

(declare-fun tp!787705 () Bool)

(declare-fun b_and!186837 () Bool)

(assert (=> b!2468228 (= tp!787705 b_and!186837)))

(declare-fun b_free!71239 () Bool)

(declare-fun b_next!71943 () Bool)

(assert (=> b!2468228 (= b_free!71239 (not b_next!71943))))

(declare-fun tp!787691 () Bool)

(declare-fun b_and!186839 () Bool)

(assert (=> b!2468228 (= tp!787691 b_and!186839)))

(declare-fun b!2468223 () Bool)

(declare-fun b_free!71241 () Bool)

(declare-fun b_next!71945 () Bool)

(assert (=> b!2468223 (= b_free!71241 (not b_next!71945))))

(declare-fun tp!787696 () Bool)

(declare-fun b_and!186841 () Bool)

(assert (=> b!2468223 (= tp!787696 b_and!186841)))

(declare-fun b_free!71243 () Bool)

(declare-fun b_next!71947 () Bool)

(assert (=> b!2468223 (= b_free!71243 (not b_next!71947))))

(declare-fun tp!787695 () Bool)

(declare-fun b_and!186843 () Bool)

(assert (=> b!2468223 (= tp!787695 b_and!186843)))

(declare-fun b!2468239 () Bool)

(declare-fun b_free!71245 () Bool)

(declare-fun b_next!71949 () Bool)

(assert (=> b!2468239 (= b_free!71245 (not b_next!71949))))

(declare-fun tp!787703 () Bool)

(declare-fun b_and!186845 () Bool)

(assert (=> b!2468239 (= tp!787703 b_and!186845)))

(declare-fun b_free!71247 () Bool)

(declare-fun b_next!71951 () Bool)

(assert (=> b!2468239 (= b_free!71247 (not b_next!71951))))

(declare-fun tp!787707 () Bool)

(declare-fun b_and!186847 () Bool)

(assert (=> b!2468239 (= tp!787707 b_and!186847)))

(declare-fun b!2468235 () Bool)

(declare-fun b_free!71249 () Bool)

(declare-fun b_next!71953 () Bool)

(assert (=> b!2468235 (= b_free!71249 (not b_next!71953))))

(declare-fun tp!787693 () Bool)

(declare-fun b_and!186849 () Bool)

(assert (=> b!2468235 (= tp!787693 b_and!186849)))

(declare-fun b_free!71251 () Bool)

(declare-fun b_next!71955 () Bool)

(assert (=> b!2468235 (= b_free!71251 (not b_next!71955))))

(declare-fun tp!787706 () Bool)

(declare-fun b_and!186851 () Bool)

(assert (=> b!2468235 (= tp!787706 b_and!186851)))

(declare-fun b!2468218 () Bool)

(declare-fun res!1045496 () Bool)

(declare-fun e!1565631 () Bool)

(assert (=> b!2468218 (=> (not res!1045496) (not e!1565631))))

(declare-fun i!1803 () Int)

(declare-datatypes ((List!28880 0))(
  ( (Nil!28780) (Cons!28780 (h!34181 (_ BitVec 16)) (t!209625 List!28880)) )
))
(declare-datatypes ((TokenValue!4669 0))(
  ( (FloatLiteralValue!9338 (text!33128 List!28880)) (TokenValueExt!4668 (__x!18593 Int)) (Broken!23345 (value!143145 List!28880)) (Object!4768) (End!4669) (Def!4669) (Underscore!4669) (Match!4669) (Else!4669) (Error!4669) (Case!4669) (If!4669) (Extends!4669) (Abstract!4669) (Class!4669) (Val!4669) (DelimiterValue!9338 (del!4729 List!28880)) (KeywordValue!4675 (value!143146 List!28880)) (CommentValue!9338 (value!143147 List!28880)) (WhitespaceValue!9338 (value!143148 List!28880)) (IndentationValue!4669 (value!143149 List!28880)) (String!31640) (Int32!4669) (Broken!23346 (value!143150 List!28880)) (Boolean!4670) (Unit!42115) (OperatorValue!4672 (op!4729 List!28880)) (IdentifierValue!9338 (value!143151 List!28880)) (IdentifierValue!9339 (value!143152 List!28880)) (WhitespaceValue!9339 (value!143153 List!28880)) (True!9338) (False!9338) (Broken!23347 (value!143154 List!28880)) (Broken!23348 (value!143155 List!28880)) (True!9339) (RightBrace!4669) (RightBracket!4669) (Colon!4669) (Null!4669) (Comma!4669) (LeftBracket!4669) (False!9339) (LeftBrace!4669) (ImaginaryLiteralValue!4669 (text!33129 List!28880)) (StringLiteralValue!14007 (value!143156 List!28880)) (EOFValue!4669 (value!143157 List!28880)) (IdentValue!4669 (value!143158 List!28880)) (DelimiterValue!9339 (value!143159 List!28880)) (DedentValue!4669 (value!143160 List!28880)) (NewLineValue!4669 (value!143161 List!28880)) (IntegerValue!14007 (value!143162 (_ BitVec 32)) (text!33130 List!28880)) (IntegerValue!14008 (value!143163 Int) (text!33131 List!28880)) (Times!4669) (Or!4669) (Equal!4669) (Minus!4669) (Broken!23349 (value!143164 List!28880)) (And!4669) (Div!4669) (LessEqual!4669) (Mod!4669) (Concat!11940) (Not!4669) (Plus!4669) (SpaceValue!4669 (value!143165 List!28880)) (IntegerValue!14009 (value!143166 Int) (text!33132 List!28880)) (StringLiteralValue!14008 (text!33133 List!28880)) (FloatLiteralValue!9339 (text!33134 List!28880)) (BytesLiteralValue!4669 (value!143167 List!28880)) (CommentValue!9339 (value!143168 List!28880)) (StringLiteralValue!14009 (value!143169 List!28880)) (ErrorTokenValue!4669 (msg!4730 List!28880)) )
))
(declare-datatypes ((C!14700 0))(
  ( (C!14701 (val!8610 Int)) )
))
(declare-datatypes ((List!28881 0))(
  ( (Nil!28781) (Cons!28781 (h!34182 C!14700) (t!209626 List!28881)) )
))
(declare-datatypes ((IArray!18399 0))(
  ( (IArray!18400 (innerList!9257 List!28881)) )
))
(declare-datatypes ((Conc!9197 0))(
  ( (Node!9197 (left!22085 Conc!9197) (right!22415 Conc!9197) (csize!18624 Int) (cheight!9408 Int)) (Leaf!13746 (xs!12177 IArray!18399) (csize!18625 Int)) (Empty!9197) )
))
(declare-datatypes ((BalanceConc!18008 0))(
  ( (BalanceConc!18009 (c!393380 Conc!9197)) )
))
(declare-datatypes ((Regex!7271 0))(
  ( (ElementMatch!7271 (c!393381 C!14700)) (Concat!11941 (regOne!15054 Regex!7271) (regTwo!15054 Regex!7271)) (EmptyExpr!7271) (Star!7271 (reg!7600 Regex!7271)) (EmptyLang!7271) (Union!7271 (regOne!15055 Regex!7271) (regTwo!15055 Regex!7271)) )
))
(declare-datatypes ((String!31641 0))(
  ( (String!31642 (value!143170 String)) )
))
(declare-datatypes ((TokenValueInjection!8838 0))(
  ( (TokenValueInjection!8839 (toValue!6343 Int) (toChars!6202 Int)) )
))
(declare-datatypes ((Rule!8766 0))(
  ( (Rule!8767 (regex!4483 Regex!7271) (tag!4973 String!31641) (isSeparator!4483 Bool) (transformation!4483 TokenValueInjection!8838)) )
))
(declare-datatypes ((Token!8436 0))(
  ( (Token!8437 (value!143171 TokenValue!4669) (rule!6841 Rule!8766) (size!22393 Int) (originalCharacters!5249 List!28881)) )
))
(declare-datatypes ((List!28882 0))(
  ( (Nil!28782) (Cons!28782 (h!34183 Token!8436) (t!209627 List!28882)) )
))
(declare-fun l!6611 () List!28882)

(declare-fun size!22394 (List!28882) Int)

(assert (=> b!2468218 (= res!1045496 (< (+ 1 i!1803) (size!22394 l!6611)))))

(declare-fun b!2468219 () Bool)

(declare-fun e!1565620 () Bool)

(declare-datatypes ((List!28883 0))(
  ( (Nil!28783) (Cons!28783 (h!34184 Rule!8766) (t!209628 List!28883)) )
))
(declare-fun rules!4472 () List!28883)

(declare-fun e!1565639 () Bool)

(declare-fun tp!787697 () Bool)

(declare-fun inv!38865 (String!31641) Bool)

(declare-fun inv!38868 (TokenValueInjection!8838) Bool)

(assert (=> b!2468219 (= e!1565620 (and tp!787697 (inv!38865 (tag!4973 (h!34184 rules!4472))) (inv!38868 (transformation!4483 (h!34184 rules!4472))) e!1565639))))

(declare-fun b!2468220 () Bool)

(declare-fun res!1045489 () Bool)

(assert (=> b!2468220 (=> (not res!1045489) (not e!1565631))))

(declare-datatypes ((LexerInterface!4080 0))(
  ( (LexerInterfaceExt!4077 (__x!18594 Int)) (Lexer!4078) )
))
(declare-fun thiss!27932 () LexerInterface!4080)

(declare-fun tokensListTwoByTwoPredicateSeparableList!619 (LexerInterface!4080 List!28882 List!28883) Bool)

(assert (=> b!2468220 (= res!1045489 (tokensListTwoByTwoPredicateSeparableList!619 thiss!27932 l!6611 rules!4472))))

(declare-fun res!1045493 () Bool)

(assert (=> start!240678 (=> (not res!1045493) (not e!1565631))))

(get-info :version)

(assert (=> start!240678 (= res!1045493 ((_ is Lexer!4078) thiss!27932))))

(assert (=> start!240678 e!1565631))

(assert (=> start!240678 true))

(declare-fun e!1565633 () Bool)

(assert (=> start!240678 e!1565633))

(declare-fun t2!67 () Token!8436)

(declare-fun e!1565629 () Bool)

(declare-fun inv!38869 (Token!8436) Bool)

(assert (=> start!240678 (and (inv!38869 t2!67) e!1565629)))

(declare-fun e!1565627 () Bool)

(assert (=> start!240678 e!1565627))

(declare-fun t1!67 () Token!8436)

(declare-fun e!1565622 () Bool)

(assert (=> start!240678 (and (inv!38869 t1!67) e!1565622)))

(declare-fun b!2468221 () Bool)

(declare-fun res!1045495 () Bool)

(assert (=> b!2468221 (=> (not res!1045495) (not e!1565631))))

(declare-fun apply!6774 (List!28882 Int) Token!8436)

(assert (=> b!2468221 (= res!1045495 (= (apply!6774 l!6611 i!1803) t1!67))))

(declare-fun b!2468222 () Bool)

(declare-fun res!1045488 () Bool)

(assert (=> b!2468222 (=> (not res!1045488) (not e!1565631))))

(declare-fun rulesProduceEachTokenIndividuallyList!1396 (LexerInterface!4080 List!28883 List!28882) Bool)

(assert (=> b!2468222 (= res!1045488 (rulesProduceEachTokenIndividuallyList!1396 thiss!27932 rules!4472 l!6611))))

(declare-fun e!1565636 () Bool)

(assert (=> b!2468223 (= e!1565636 (and tp!787696 tp!787695))))

(declare-fun b!2468224 () Bool)

(declare-fun res!1045497 () Bool)

(assert (=> b!2468224 (=> (not res!1045497) (not e!1565631))))

(assert (=> b!2468224 (= res!1045497 (>= i!1803 0))))

(declare-fun b!2468225 () Bool)

(declare-fun res!1045490 () Bool)

(assert (=> b!2468225 (=> (not res!1045490) (not e!1565631))))

(assert (=> b!2468225 (= res!1045490 (= i!1803 0))))

(declare-fun b!2468226 () Bool)

(declare-fun tp!787698 () Bool)

(assert (=> b!2468226 (= e!1565633 (and e!1565620 tp!787698))))

(declare-fun b!2468227 () Bool)

(declare-fun res!1045494 () Bool)

(assert (=> b!2468227 (=> (not res!1045494) (not e!1565631))))

(declare-fun rulesInvariant!3580 (LexerInterface!4080 List!28883) Bool)

(assert (=> b!2468227 (= res!1045494 (rulesInvariant!3580 thiss!27932 rules!4472))))

(declare-fun e!1565621 () Bool)

(assert (=> b!2468228 (= e!1565621 (and tp!787705 tp!787691))))

(declare-fun b!2468229 () Bool)

(declare-fun tp!787700 () Bool)

(declare-fun e!1565635 () Bool)

(declare-fun inv!21 (TokenValue!4669) Bool)

(assert (=> b!2468229 (= e!1565629 (and (inv!21 (value!143171 t2!67)) e!1565635 tp!787700))))

(declare-fun tp!787694 () Bool)

(declare-fun e!1565623 () Bool)

(declare-fun e!1565640 () Bool)

(declare-fun b!2468230 () Bool)

(assert (=> b!2468230 (= e!1565640 (and (inv!21 (value!143171 (h!34183 l!6611))) e!1565623 tp!787694))))

(declare-fun tp!787701 () Bool)

(declare-fun b!2468231 () Bool)

(assert (=> b!2468231 (= e!1565635 (and tp!787701 (inv!38865 (tag!4973 (rule!6841 t2!67))) (inv!38868 (transformation!4483 (rule!6841 t2!67))) e!1565621))))

(declare-fun tp!787692 () Bool)

(declare-fun e!1565626 () Bool)

(declare-fun b!2468232 () Bool)

(assert (=> b!2468232 (= e!1565626 (and tp!787692 (inv!38865 (tag!4973 (rule!6841 t1!67))) (inv!38868 (transformation!4483 (rule!6841 t1!67))) e!1565636))))

(declare-fun b!2468233 () Bool)

(declare-fun separableTokensPredicate!857 (LexerInterface!4080 Token!8436 Token!8436 List!28883) Bool)

(assert (=> b!2468233 (= e!1565631 (not (separableTokensPredicate!857 thiss!27932 t1!67 t2!67 rules!4472)))))

(declare-fun tp!787702 () Bool)

(declare-fun b!2468234 () Bool)

(assert (=> b!2468234 (= e!1565622 (and (inv!21 (value!143171 t1!67)) e!1565626 tp!787702))))

(declare-fun e!1565632 () Bool)

(assert (=> b!2468235 (= e!1565632 (and tp!787693 tp!787706))))

(declare-fun b!2468236 () Bool)

(declare-fun res!1045491 () Bool)

(assert (=> b!2468236 (=> (not res!1045491) (not e!1565631))))

(declare-fun isEmpty!16718 (List!28883) Bool)

(assert (=> b!2468236 (= res!1045491 (not (isEmpty!16718 rules!4472)))))

(declare-fun b!2468237 () Bool)

(declare-fun res!1045492 () Bool)

(assert (=> b!2468237 (=> (not res!1045492) (not e!1565631))))

(assert (=> b!2468237 (= res!1045492 (= (apply!6774 l!6611 (+ 1 i!1803)) t2!67))))

(declare-fun tp!787704 () Bool)

(declare-fun b!2468238 () Bool)

(assert (=> b!2468238 (= e!1565627 (and (inv!38869 (h!34183 l!6611)) e!1565640 tp!787704))))

(assert (=> b!2468239 (= e!1565639 (and tp!787703 tp!787707))))

(declare-fun b!2468240 () Bool)

(declare-fun tp!787699 () Bool)

(assert (=> b!2468240 (= e!1565623 (and tp!787699 (inv!38865 (tag!4973 (rule!6841 (h!34183 l!6611)))) (inv!38868 (transformation!4483 (rule!6841 (h!34183 l!6611)))) e!1565632))))

(assert (= (and start!240678 res!1045493) b!2468236))

(assert (= (and b!2468236 res!1045491) b!2468227))

(assert (= (and b!2468227 res!1045494) b!2468222))

(assert (= (and b!2468222 res!1045488) b!2468220))

(assert (= (and b!2468220 res!1045489) b!2468224))

(assert (= (and b!2468224 res!1045497) b!2468218))

(assert (= (and b!2468218 res!1045496) b!2468221))

(assert (= (and b!2468221 res!1045495) b!2468237))

(assert (= (and b!2468237 res!1045492) b!2468225))

(assert (= (and b!2468225 res!1045490) b!2468233))

(assert (= b!2468219 b!2468239))

(assert (= b!2468226 b!2468219))

(assert (= (and start!240678 ((_ is Cons!28783) rules!4472)) b!2468226))

(assert (= b!2468231 b!2468228))

(assert (= b!2468229 b!2468231))

(assert (= start!240678 b!2468229))

(assert (= b!2468240 b!2468235))

(assert (= b!2468230 b!2468240))

(assert (= b!2468238 b!2468230))

(assert (= (and start!240678 ((_ is Cons!28782) l!6611)) b!2468238))

(assert (= b!2468232 b!2468223))

(assert (= b!2468234 b!2468232))

(assert (= start!240678 b!2468234))

(declare-fun m!2837351 () Bool)

(assert (=> b!2468240 m!2837351))

(declare-fun m!2837353 () Bool)

(assert (=> b!2468240 m!2837353))

(declare-fun m!2837355 () Bool)

(assert (=> b!2468234 m!2837355))

(declare-fun m!2837357 () Bool)

(assert (=> b!2468230 m!2837357))

(declare-fun m!2837359 () Bool)

(assert (=> b!2468233 m!2837359))

(declare-fun m!2837361 () Bool)

(assert (=> b!2468237 m!2837361))

(declare-fun m!2837363 () Bool)

(assert (=> b!2468221 m!2837363))

(declare-fun m!2837365 () Bool)

(assert (=> b!2468231 m!2837365))

(declare-fun m!2837367 () Bool)

(assert (=> b!2468231 m!2837367))

(declare-fun m!2837369 () Bool)

(assert (=> b!2468220 m!2837369))

(declare-fun m!2837371 () Bool)

(assert (=> start!240678 m!2837371))

(declare-fun m!2837373 () Bool)

(assert (=> start!240678 m!2837373))

(declare-fun m!2837375 () Bool)

(assert (=> b!2468227 m!2837375))

(declare-fun m!2837377 () Bool)

(assert (=> b!2468218 m!2837377))

(declare-fun m!2837379 () Bool)

(assert (=> b!2468238 m!2837379))

(declare-fun m!2837381 () Bool)

(assert (=> b!2468222 m!2837381))

(declare-fun m!2837383 () Bool)

(assert (=> b!2468219 m!2837383))

(declare-fun m!2837385 () Bool)

(assert (=> b!2468219 m!2837385))

(declare-fun m!2837387 () Bool)

(assert (=> b!2468236 m!2837387))

(declare-fun m!2837389 () Bool)

(assert (=> b!2468232 m!2837389))

(declare-fun m!2837391 () Bool)

(assert (=> b!2468232 m!2837391))

(declare-fun m!2837393 () Bool)

(assert (=> b!2468229 m!2837393))

(check-sat (not b_next!71943) b_and!186837 (not b!2468233) (not b!2468226) (not b!2468227) (not b!2468232) (not b_next!71955) (not start!240678) (not b_next!71953) (not b_next!71951) b_and!186851 (not b!2468236) (not b!2468240) (not b!2468237) b_and!186847 (not b!2468231) b_and!186845 (not b!2468218) (not b!2468229) (not b!2468234) b_and!186843 (not b!2468221) (not b_next!71945) b_and!186849 b_and!186839 (not b_next!71949) (not b!2468220) (not b_next!71947) (not b_next!71941) b_and!186841 (not b!2468238) (not b!2468230) (not b!2468222) (not b!2468219))
(check-sat (not b_next!71943) b_and!186837 b_and!186847 b_and!186845 (not b_next!71955) (not b_next!71953) (not b_next!71951) (not b_next!71949) b_and!186851 b_and!186841 b_and!186843 (not b_next!71945) b_and!186849 b_and!186839 (not b_next!71947) (not b_next!71941))
(get-model)

(declare-fun b!2468251 () Bool)

(declare-fun e!1565647 () Bool)

(declare-fun inv!17 (TokenValue!4669) Bool)

(assert (=> b!2468251 (= e!1565647 (inv!17 (value!143171 t1!67)))))

(declare-fun b!2468252 () Bool)

(declare-fun e!1565648 () Bool)

(assert (=> b!2468252 (= e!1565648 e!1565647)))

(declare-fun c!393386 () Bool)

(assert (=> b!2468252 (= c!393386 ((_ is IntegerValue!14008) (value!143171 t1!67)))))

(declare-fun d!710367 () Bool)

(declare-fun c!393387 () Bool)

(assert (=> d!710367 (= c!393387 ((_ is IntegerValue!14007) (value!143171 t1!67)))))

(assert (=> d!710367 (= (inv!21 (value!143171 t1!67)) e!1565648)))

(declare-fun b!2468253 () Bool)

(declare-fun res!1045504 () Bool)

(declare-fun e!1565649 () Bool)

(assert (=> b!2468253 (=> res!1045504 e!1565649)))

(assert (=> b!2468253 (= res!1045504 (not ((_ is IntegerValue!14009) (value!143171 t1!67))))))

(assert (=> b!2468253 (= e!1565647 e!1565649)))

(declare-fun b!2468254 () Bool)

(declare-fun inv!15 (TokenValue!4669) Bool)

(assert (=> b!2468254 (= e!1565649 (inv!15 (value!143171 t1!67)))))

(declare-fun b!2468255 () Bool)

(declare-fun inv!16 (TokenValue!4669) Bool)

(assert (=> b!2468255 (= e!1565648 (inv!16 (value!143171 t1!67)))))

(assert (= (and d!710367 c!393387) b!2468255))

(assert (= (and d!710367 (not c!393387)) b!2468252))

(assert (= (and b!2468252 c!393386) b!2468251))

(assert (= (and b!2468252 (not c!393386)) b!2468253))

(assert (= (and b!2468253 (not res!1045504)) b!2468254))

(declare-fun m!2837395 () Bool)

(assert (=> b!2468251 m!2837395))

(declare-fun m!2837397 () Bool)

(assert (=> b!2468254 m!2837397))

(declare-fun m!2837399 () Bool)

(assert (=> b!2468255 m!2837399))

(assert (=> b!2468234 d!710367))

(declare-fun d!710369 () Bool)

(assert (=> d!710369 (= (isEmpty!16718 rules!4472) ((_ is Nil!28783) rules!4472))))

(assert (=> b!2468236 d!710369))

(declare-fun d!710371 () Bool)

(assert (=> d!710371 (= (inv!38865 (tag!4973 (rule!6841 t1!67))) (= (mod (str.len (value!143170 (tag!4973 (rule!6841 t1!67)))) 2) 0))))

(assert (=> b!2468232 d!710371))

(declare-fun d!710373 () Bool)

(declare-fun res!1045513 () Bool)

(declare-fun e!1565658 () Bool)

(assert (=> d!710373 (=> (not res!1045513) (not e!1565658))))

(declare-fun semiInverseModEq!1844 (Int Int) Bool)

(assert (=> d!710373 (= res!1045513 (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toValue!6343 (transformation!4483 (rule!6841 t1!67)))))))

(assert (=> d!710373 (= (inv!38868 (transformation!4483 (rule!6841 t1!67))) e!1565658)))

(declare-fun b!2468268 () Bool)

(declare-fun equivClasses!1755 (Int Int) Bool)

(assert (=> b!2468268 (= e!1565658 (equivClasses!1755 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toValue!6343 (transformation!4483 (rule!6841 t1!67)))))))

(assert (= (and d!710373 res!1045513) b!2468268))

(declare-fun m!2837401 () Bool)

(assert (=> d!710373 m!2837401))

(declare-fun m!2837403 () Bool)

(assert (=> b!2468268 m!2837403))

(assert (=> b!2468232 d!710373))

(declare-fun d!710377 () Bool)

(declare-fun lt!882714 () Token!8436)

(declare-fun contains!4913 (List!28882 Token!8436) Bool)

(assert (=> d!710377 (contains!4913 l!6611 lt!882714)))

(declare-fun e!1565673 () Token!8436)

(assert (=> d!710377 (= lt!882714 e!1565673)))

(declare-fun c!393399 () Bool)

(assert (=> d!710377 (= c!393399 (= i!1803 0))))

(declare-fun e!1565672 () Bool)

(assert (=> d!710377 e!1565672))

(declare-fun res!1045520 () Bool)

(assert (=> d!710377 (=> (not res!1045520) (not e!1565672))))

(assert (=> d!710377 (= res!1045520 (<= 0 i!1803))))

(assert (=> d!710377 (= (apply!6774 l!6611 i!1803) lt!882714)))

(declare-fun b!2468289 () Bool)

(assert (=> b!2468289 (= e!1565672 (< i!1803 (size!22394 l!6611)))))

(declare-fun b!2468290 () Bool)

(declare-fun head!5635 (List!28882) Token!8436)

(assert (=> b!2468290 (= e!1565673 (head!5635 l!6611))))

(declare-fun b!2468291 () Bool)

(declare-fun tail!3916 (List!28882) List!28882)

(assert (=> b!2468291 (= e!1565673 (apply!6774 (tail!3916 l!6611) (- i!1803 1)))))

(assert (= (and d!710377 res!1045520) b!2468289))

(assert (= (and d!710377 c!393399) b!2468290))

(assert (= (and d!710377 (not c!393399)) b!2468291))

(declare-fun m!2837419 () Bool)

(assert (=> d!710377 m!2837419))

(assert (=> b!2468289 m!2837377))

(declare-fun m!2837421 () Bool)

(assert (=> b!2468290 m!2837421))

(declare-fun m!2837423 () Bool)

(assert (=> b!2468291 m!2837423))

(assert (=> b!2468291 m!2837423))

(declare-fun m!2837425 () Bool)

(assert (=> b!2468291 m!2837425))

(assert (=> b!2468221 d!710377))

(declare-fun d!710385 () Bool)

(assert (=> d!710385 (= (inv!38865 (tag!4973 (rule!6841 t2!67))) (= (mod (str.len (value!143170 (tag!4973 (rule!6841 t2!67)))) 2) 0))))

(assert (=> b!2468231 d!710385))

(declare-fun d!710387 () Bool)

(declare-fun res!1045521 () Bool)

(declare-fun e!1565674 () Bool)

(assert (=> d!710387 (=> (not res!1045521) (not e!1565674))))

(assert (=> d!710387 (= res!1045521 (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toValue!6343 (transformation!4483 (rule!6841 t2!67)))))))

(assert (=> d!710387 (= (inv!38868 (transformation!4483 (rule!6841 t2!67))) e!1565674)))

(declare-fun b!2468292 () Bool)

(assert (=> b!2468292 (= e!1565674 (equivClasses!1755 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toValue!6343 (transformation!4483 (rule!6841 t2!67)))))))

(assert (= (and d!710387 res!1045521) b!2468292))

(declare-fun m!2837427 () Bool)

(assert (=> d!710387 m!2837427))

(declare-fun m!2837429 () Bool)

(assert (=> b!2468292 m!2837429))

(assert (=> b!2468231 d!710387))

(declare-fun d!710389 () Bool)

(declare-fun prefixMatchZipperSequence!721 (Regex!7271 BalanceConc!18008) Bool)

(declare-fun rulesRegex!979 (LexerInterface!4080 List!28883) Regex!7271)

(declare-fun ++!7139 (BalanceConc!18008 BalanceConc!18008) BalanceConc!18008)

(declare-fun charsOf!2822 (Token!8436) BalanceConc!18008)

(declare-fun singletonSeq!1990 (C!14700) BalanceConc!18008)

(declare-fun apply!6776 (BalanceConc!18008 Int) C!14700)

(assert (=> d!710389 (= (separableTokensPredicate!857 thiss!27932 t1!67 t2!67 rules!4472) (not (prefixMatchZipperSequence!721 (rulesRegex!979 thiss!27932 rules!4472) (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun bs!466688 () Bool)

(assert (= bs!466688 d!710389))

(declare-fun m!2837465 () Bool)

(assert (=> bs!466688 m!2837465))

(declare-fun m!2837467 () Bool)

(assert (=> bs!466688 m!2837467))

(declare-fun m!2837469 () Bool)

(assert (=> bs!466688 m!2837469))

(declare-fun m!2837471 () Bool)

(assert (=> bs!466688 m!2837471))

(assert (=> bs!466688 m!2837469))

(declare-fun m!2837473 () Bool)

(assert (=> bs!466688 m!2837473))

(declare-fun m!2837475 () Bool)

(assert (=> bs!466688 m!2837475))

(declare-fun m!2837477 () Bool)

(assert (=> bs!466688 m!2837477))

(assert (=> bs!466688 m!2837477))

(assert (=> bs!466688 m!2837465))

(assert (=> bs!466688 m!2837471))

(assert (=> bs!466688 m!2837467))

(assert (=> bs!466688 m!2837473))

(assert (=> b!2468233 d!710389))

(declare-fun b!2468358 () Bool)

(declare-fun e!1565723 () Bool)

(assert (=> b!2468358 (= e!1565723 true)))

(declare-fun b!2468357 () Bool)

(declare-fun e!1565722 () Bool)

(assert (=> b!2468357 (= e!1565722 e!1565723)))

(declare-fun b!2468356 () Bool)

(declare-fun e!1565721 () Bool)

(assert (=> b!2468356 (= e!1565721 e!1565722)))

(declare-fun d!710401 () Bool)

(assert (=> d!710401 e!1565721))

(assert (= b!2468357 b!2468358))

(assert (= b!2468356 b!2468357))

(assert (= (and d!710401 ((_ is Cons!28783) rules!4472)) b!2468356))

(declare-fun order!15593 () Int)

(declare-fun lambda!93255 () Int)

(declare-fun order!15591 () Int)

(declare-fun dynLambda!12352 (Int Int) Int)

(declare-fun dynLambda!12353 (Int Int) Int)

(assert (=> b!2468358 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (h!34184 rules!4472)))) (dynLambda!12353 order!15593 lambda!93255))))

(declare-fun order!15595 () Int)

(declare-fun dynLambda!12354 (Int Int) Int)

(assert (=> b!2468358 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (h!34184 rules!4472)))) (dynLambda!12353 order!15593 lambda!93255))))

(assert (=> d!710401 true))

(declare-fun lt!882721 () Bool)

(declare-fun forall!5900 (List!28882 Int) Bool)

(assert (=> d!710401 (= lt!882721 (forall!5900 l!6611 lambda!93255))))

(declare-fun e!1565713 () Bool)

(assert (=> d!710401 (= lt!882721 e!1565713)))

(declare-fun res!1045547 () Bool)

(assert (=> d!710401 (=> res!1045547 e!1565713)))

(assert (=> d!710401 (= res!1045547 (not ((_ is Cons!28782) l!6611)))))

(assert (=> d!710401 (not (isEmpty!16718 rules!4472))))

(assert (=> d!710401 (= (rulesProduceEachTokenIndividuallyList!1396 thiss!27932 rules!4472 l!6611) lt!882721)))

(declare-fun b!2468346 () Bool)

(declare-fun e!1565714 () Bool)

(assert (=> b!2468346 (= e!1565713 e!1565714)))

(declare-fun res!1045546 () Bool)

(assert (=> b!2468346 (=> (not res!1045546) (not e!1565714))))

(declare-fun rulesProduceIndividualToken!1812 (LexerInterface!4080 List!28883 Token!8436) Bool)

(assert (=> b!2468346 (= res!1045546 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 l!6611)))))

(declare-fun b!2468347 () Bool)

(assert (=> b!2468347 (= e!1565714 (rulesProduceEachTokenIndividuallyList!1396 thiss!27932 rules!4472 (t!209627 l!6611)))))

(assert (= (and d!710401 (not res!1045547)) b!2468346))

(assert (= (and b!2468346 res!1045546) b!2468347))

(declare-fun m!2837509 () Bool)

(assert (=> d!710401 m!2837509))

(assert (=> d!710401 m!2837387))

(declare-fun m!2837511 () Bool)

(assert (=> b!2468346 m!2837511))

(declare-fun m!2837513 () Bool)

(assert (=> b!2468347 m!2837513))

(assert (=> b!2468222 d!710401))

(declare-fun d!710411 () Bool)

(assert (=> d!710411 (= (inv!38865 (tag!4973 (rule!6841 (h!34183 l!6611)))) (= (mod (str.len (value!143170 (tag!4973 (rule!6841 (h!34183 l!6611))))) 2) 0))))

(assert (=> b!2468240 d!710411))

(declare-fun d!710413 () Bool)

(declare-fun res!1045548 () Bool)

(declare-fun e!1565724 () Bool)

(assert (=> d!710413 (=> (not res!1045548) (not e!1565724))))

(assert (=> d!710413 (= res!1045548 (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611))))))))

(assert (=> d!710413 (= (inv!38868 (transformation!4483 (rule!6841 (h!34183 l!6611)))) e!1565724)))

(declare-fun b!2468361 () Bool)

(assert (=> b!2468361 (= e!1565724 (equivClasses!1755 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611))))))))

(assert (= (and d!710413 res!1045548) b!2468361))

(declare-fun m!2837515 () Bool)

(assert (=> d!710413 m!2837515))

(declare-fun m!2837517 () Bool)

(assert (=> b!2468361 m!2837517))

(assert (=> b!2468240 d!710413))

(declare-fun b!2468362 () Bool)

(declare-fun e!1565725 () Bool)

(assert (=> b!2468362 (= e!1565725 (inv!17 (value!143171 t2!67)))))

(declare-fun b!2468363 () Bool)

(declare-fun e!1565726 () Bool)

(assert (=> b!2468363 (= e!1565726 e!1565725)))

(declare-fun c!393405 () Bool)

(assert (=> b!2468363 (= c!393405 ((_ is IntegerValue!14008) (value!143171 t2!67)))))

(declare-fun d!710415 () Bool)

(declare-fun c!393406 () Bool)

(assert (=> d!710415 (= c!393406 ((_ is IntegerValue!14007) (value!143171 t2!67)))))

(assert (=> d!710415 (= (inv!21 (value!143171 t2!67)) e!1565726)))

(declare-fun b!2468364 () Bool)

(declare-fun res!1045549 () Bool)

(declare-fun e!1565727 () Bool)

(assert (=> b!2468364 (=> res!1045549 e!1565727)))

(assert (=> b!2468364 (= res!1045549 (not ((_ is IntegerValue!14009) (value!143171 t2!67))))))

(assert (=> b!2468364 (= e!1565725 e!1565727)))

(declare-fun b!2468365 () Bool)

(assert (=> b!2468365 (= e!1565727 (inv!15 (value!143171 t2!67)))))

(declare-fun b!2468366 () Bool)

(assert (=> b!2468366 (= e!1565726 (inv!16 (value!143171 t2!67)))))

(assert (= (and d!710415 c!393406) b!2468366))

(assert (= (and d!710415 (not c!393406)) b!2468363))

(assert (= (and b!2468363 c!393405) b!2468362))

(assert (= (and b!2468363 (not c!393405)) b!2468364))

(assert (= (and b!2468364 (not res!1045549)) b!2468365))

(declare-fun m!2837519 () Bool)

(assert (=> b!2468362 m!2837519))

(declare-fun m!2837521 () Bool)

(assert (=> b!2468365 m!2837521))

(declare-fun m!2837523 () Bool)

(assert (=> b!2468366 m!2837523))

(assert (=> b!2468229 d!710415))

(declare-fun d!710417 () Bool)

(declare-fun lt!882724 () Int)

(assert (=> d!710417 (>= lt!882724 0)))

(declare-fun e!1565730 () Int)

(assert (=> d!710417 (= lt!882724 e!1565730)))

(declare-fun c!393409 () Bool)

(assert (=> d!710417 (= c!393409 ((_ is Nil!28782) l!6611))))

(assert (=> d!710417 (= (size!22394 l!6611) lt!882724)))

(declare-fun b!2468371 () Bool)

(assert (=> b!2468371 (= e!1565730 0)))

(declare-fun b!2468372 () Bool)

(assert (=> b!2468372 (= e!1565730 (+ 1 (size!22394 (t!209627 l!6611))))))

(assert (= (and d!710417 c!393409) b!2468371))

(assert (= (and d!710417 (not c!393409)) b!2468372))

(declare-fun m!2837525 () Bool)

(assert (=> b!2468372 m!2837525))

(assert (=> b!2468218 d!710417))

(declare-fun d!710419 () Bool)

(declare-fun res!1045569 () Bool)

(declare-fun e!1565793 () Bool)

(assert (=> d!710419 (=> res!1045569 e!1565793)))

(assert (=> d!710419 (= res!1045569 (or (not ((_ is Cons!28782) l!6611)) (not ((_ is Cons!28782) (t!209627 l!6611)))))))

(assert (=> d!710419 (= (tokensListTwoByTwoPredicateSeparableList!619 thiss!27932 l!6611 rules!4472) e!1565793)))

(declare-fun b!2468456 () Bool)

(declare-fun e!1565794 () Bool)

(assert (=> b!2468456 (= e!1565793 e!1565794)))

(declare-fun res!1045568 () Bool)

(assert (=> b!2468456 (=> (not res!1045568) (not e!1565794))))

(assert (=> b!2468456 (= res!1045568 (separableTokensPredicate!857 thiss!27932 (h!34183 l!6611) (h!34183 (t!209627 l!6611)) rules!4472))))

(declare-datatypes ((Unit!42121 0))(
  ( (Unit!42122) )
))
(declare-fun lt!882766 () Unit!42121)

(declare-fun Unit!42123 () Unit!42121)

(assert (=> b!2468456 (= lt!882766 Unit!42123)))

(declare-fun size!22397 (BalanceConc!18008) Int)

(assert (=> b!2468456 (> (size!22397 (charsOf!2822 (h!34183 (t!209627 l!6611)))) 0)))

(declare-fun lt!882769 () Unit!42121)

(declare-fun Unit!42124 () Unit!42121)

(assert (=> b!2468456 (= lt!882769 Unit!42124)))

(assert (=> b!2468456 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 l!6611)))))

(declare-fun lt!882768 () Unit!42121)

(declare-fun Unit!42125 () Unit!42121)

(assert (=> b!2468456 (= lt!882768 Unit!42125)))

(assert (=> b!2468456 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 l!6611))))

(declare-fun lt!882763 () Unit!42121)

(declare-fun lt!882767 () Unit!42121)

(assert (=> b!2468456 (= lt!882763 lt!882767)))

(assert (=> b!2468456 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 l!6611)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!673 (LexerInterface!4080 List!28883 List!28882 Token!8436) Unit!42121)

(assert (=> b!2468456 (= lt!882767 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!673 thiss!27932 rules!4472 l!6611 (h!34183 (t!209627 l!6611))))))

(declare-fun lt!882764 () Unit!42121)

(declare-fun lt!882765 () Unit!42121)

(assert (=> b!2468456 (= lt!882764 lt!882765)))

(assert (=> b!2468456 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 l!6611))))

(assert (=> b!2468456 (= lt!882765 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!673 thiss!27932 rules!4472 l!6611 (h!34183 l!6611)))))

(declare-fun b!2468457 () Bool)

(assert (=> b!2468457 (= e!1565794 (tokensListTwoByTwoPredicateSeparableList!619 thiss!27932 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))) rules!4472))))

(assert (= (and d!710419 (not res!1045569)) b!2468456))

(assert (= (and b!2468456 res!1045568) b!2468457))

(declare-fun m!2837583 () Bool)

(assert (=> b!2468456 m!2837583))

(declare-fun m!2837585 () Bool)

(assert (=> b!2468456 m!2837585))

(declare-fun m!2837587 () Bool)

(assert (=> b!2468456 m!2837587))

(declare-fun m!2837589 () Bool)

(assert (=> b!2468456 m!2837589))

(declare-fun m!2837591 () Bool)

(assert (=> b!2468456 m!2837591))

(assert (=> b!2468456 m!2837511))

(assert (=> b!2468456 m!2837589))

(declare-fun m!2837593 () Bool)

(assert (=> b!2468456 m!2837593))

(declare-fun m!2837595 () Bool)

(assert (=> b!2468457 m!2837595))

(assert (=> b!2468220 d!710419))

(declare-fun b!2468458 () Bool)

(declare-fun e!1565795 () Bool)

(assert (=> b!2468458 (= e!1565795 (inv!17 (value!143171 (h!34183 l!6611))))))

(declare-fun b!2468459 () Bool)

(declare-fun e!1565796 () Bool)

(assert (=> b!2468459 (= e!1565796 e!1565795)))

(declare-fun c!393413 () Bool)

(assert (=> b!2468459 (= c!393413 ((_ is IntegerValue!14008) (value!143171 (h!34183 l!6611))))))

(declare-fun d!710439 () Bool)

(declare-fun c!393414 () Bool)

(assert (=> d!710439 (= c!393414 ((_ is IntegerValue!14007) (value!143171 (h!34183 l!6611))))))

(assert (=> d!710439 (= (inv!21 (value!143171 (h!34183 l!6611))) e!1565796)))

(declare-fun b!2468460 () Bool)

(declare-fun res!1045570 () Bool)

(declare-fun e!1565797 () Bool)

(assert (=> b!2468460 (=> res!1045570 e!1565797)))

(assert (=> b!2468460 (= res!1045570 (not ((_ is IntegerValue!14009) (value!143171 (h!34183 l!6611)))))))

(assert (=> b!2468460 (= e!1565795 e!1565797)))

(declare-fun b!2468461 () Bool)

(assert (=> b!2468461 (= e!1565797 (inv!15 (value!143171 (h!34183 l!6611))))))

(declare-fun b!2468462 () Bool)

(assert (=> b!2468462 (= e!1565796 (inv!16 (value!143171 (h!34183 l!6611))))))

(assert (= (and d!710439 c!393414) b!2468462))

(assert (= (and d!710439 (not c!393414)) b!2468459))

(assert (= (and b!2468459 c!393413) b!2468458))

(assert (= (and b!2468459 (not c!393413)) b!2468460))

(assert (= (and b!2468460 (not res!1045570)) b!2468461))

(declare-fun m!2837597 () Bool)

(assert (=> b!2468458 m!2837597))

(declare-fun m!2837599 () Bool)

(assert (=> b!2468461 m!2837599))

(declare-fun m!2837601 () Bool)

(assert (=> b!2468462 m!2837601))

(assert (=> b!2468230 d!710439))

(declare-fun d!710441 () Bool)

(declare-fun res!1045575 () Bool)

(declare-fun e!1565800 () Bool)

(assert (=> d!710441 (=> (not res!1045575) (not e!1565800))))

(declare-fun isEmpty!16720 (List!28881) Bool)

(assert (=> d!710441 (= res!1045575 (not (isEmpty!16720 (originalCharacters!5249 t2!67))))))

(assert (=> d!710441 (= (inv!38869 t2!67) e!1565800)))

(declare-fun b!2468467 () Bool)

(declare-fun res!1045576 () Bool)

(assert (=> b!2468467 (=> (not res!1045576) (not e!1565800))))

(declare-fun list!11131 (BalanceConc!18008) List!28881)

(declare-fun dynLambda!12355 (Int TokenValue!4669) BalanceConc!18008)

(assert (=> b!2468467 (= res!1045576 (= (originalCharacters!5249 t2!67) (list!11131 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))

(declare-fun b!2468468 () Bool)

(declare-fun size!22398 (List!28881) Int)

(assert (=> b!2468468 (= e!1565800 (= (size!22393 t2!67) (size!22398 (originalCharacters!5249 t2!67))))))

(assert (= (and d!710441 res!1045575) b!2468467))

(assert (= (and b!2468467 res!1045576) b!2468468))

(declare-fun b_lambda!75675 () Bool)

(assert (=> (not b_lambda!75675) (not b!2468467)))

(declare-fun t!209670 () Bool)

(declare-fun tb!139573 () Bool)

(assert (=> (and b!2468228 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) t!209670) tb!139573))

(declare-fun b!2468473 () Bool)

(declare-fun e!1565803 () Bool)

(declare-fun tp!787777 () Bool)

(declare-fun inv!38872 (Conc!9197) Bool)

(assert (=> b!2468473 (= e!1565803 (and (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) tp!787777))))

(declare-fun result!172270 () Bool)

(declare-fun inv!38873 (BalanceConc!18008) Bool)

(assert (=> tb!139573 (= result!172270 (and (inv!38873 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))) e!1565803))))

(assert (= tb!139573 b!2468473))

(declare-fun m!2837603 () Bool)

(assert (=> b!2468473 m!2837603))

(declare-fun m!2837605 () Bool)

(assert (=> tb!139573 m!2837605))

(assert (=> b!2468467 t!209670))

(declare-fun b_and!186885 () Bool)

(assert (= b_and!186839 (and (=> t!209670 result!172270) b_and!186885)))

(declare-fun t!209672 () Bool)

(declare-fun tb!139575 () Bool)

(assert (=> (and b!2468223 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) t!209672) tb!139575))

(declare-fun result!172274 () Bool)

(assert (= result!172274 result!172270))

(assert (=> b!2468467 t!209672))

(declare-fun b_and!186887 () Bool)

(assert (= b_and!186843 (and (=> t!209672 result!172274) b_and!186887)))

(declare-fun t!209674 () Bool)

(declare-fun tb!139577 () Bool)

(assert (=> (and b!2468239 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) t!209674) tb!139577))

(declare-fun result!172276 () Bool)

(assert (= result!172276 result!172270))

(assert (=> b!2468467 t!209674))

(declare-fun b_and!186889 () Bool)

(assert (= b_and!186847 (and (=> t!209674 result!172276) b_and!186889)))

(declare-fun tb!139579 () Bool)

(declare-fun t!209676 () Bool)

(assert (=> (and b!2468235 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) t!209676) tb!139579))

(declare-fun result!172278 () Bool)

(assert (= result!172278 result!172270))

(assert (=> b!2468467 t!209676))

(declare-fun b_and!186891 () Bool)

(assert (= b_and!186851 (and (=> t!209676 result!172278) b_and!186891)))

(declare-fun m!2837607 () Bool)

(assert (=> d!710441 m!2837607))

(declare-fun m!2837609 () Bool)

(assert (=> b!2468467 m!2837609))

(assert (=> b!2468467 m!2837609))

(declare-fun m!2837611 () Bool)

(assert (=> b!2468467 m!2837611))

(declare-fun m!2837613 () Bool)

(assert (=> b!2468468 m!2837613))

(assert (=> start!240678 d!710441))

(declare-fun d!710443 () Bool)

(declare-fun res!1045577 () Bool)

(declare-fun e!1565804 () Bool)

(assert (=> d!710443 (=> (not res!1045577) (not e!1565804))))

(assert (=> d!710443 (= res!1045577 (not (isEmpty!16720 (originalCharacters!5249 t1!67))))))

(assert (=> d!710443 (= (inv!38869 t1!67) e!1565804)))

(declare-fun b!2468474 () Bool)

(declare-fun res!1045578 () Bool)

(assert (=> b!2468474 (=> (not res!1045578) (not e!1565804))))

(assert (=> b!2468474 (= res!1045578 (= (originalCharacters!5249 t1!67) (list!11131 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))

(declare-fun b!2468475 () Bool)

(assert (=> b!2468475 (= e!1565804 (= (size!22393 t1!67) (size!22398 (originalCharacters!5249 t1!67))))))

(assert (= (and d!710443 res!1045577) b!2468474))

(assert (= (and b!2468474 res!1045578) b!2468475))

(declare-fun b_lambda!75677 () Bool)

(assert (=> (not b_lambda!75677) (not b!2468474)))

(declare-fun tb!139581 () Bool)

(declare-fun t!209678 () Bool)

(assert (=> (and b!2468228 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) t!209678) tb!139581))

(declare-fun b!2468476 () Bool)

(declare-fun e!1565805 () Bool)

(declare-fun tp!787778 () Bool)

(assert (=> b!2468476 (= e!1565805 (and (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) tp!787778))))

(declare-fun result!172280 () Bool)

(assert (=> tb!139581 (= result!172280 (and (inv!38873 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))) e!1565805))))

(assert (= tb!139581 b!2468476))

(declare-fun m!2837615 () Bool)

(assert (=> b!2468476 m!2837615))

(declare-fun m!2837617 () Bool)

(assert (=> tb!139581 m!2837617))

(assert (=> b!2468474 t!209678))

(declare-fun b_and!186893 () Bool)

(assert (= b_and!186885 (and (=> t!209678 result!172280) b_and!186893)))

(declare-fun t!209680 () Bool)

(declare-fun tb!139583 () Bool)

(assert (=> (and b!2468223 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) t!209680) tb!139583))

(declare-fun result!172282 () Bool)

(assert (= result!172282 result!172280))

(assert (=> b!2468474 t!209680))

(declare-fun b_and!186895 () Bool)

(assert (= b_and!186887 (and (=> t!209680 result!172282) b_and!186895)))

(declare-fun tb!139585 () Bool)

(declare-fun t!209682 () Bool)

(assert (=> (and b!2468239 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) t!209682) tb!139585))

(declare-fun result!172284 () Bool)

(assert (= result!172284 result!172280))

(assert (=> b!2468474 t!209682))

(declare-fun b_and!186897 () Bool)

(assert (= b_and!186889 (and (=> t!209682 result!172284) b_and!186897)))

(declare-fun t!209684 () Bool)

(declare-fun tb!139587 () Bool)

(assert (=> (and b!2468235 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) t!209684) tb!139587))

(declare-fun result!172286 () Bool)

(assert (= result!172286 result!172280))

(assert (=> b!2468474 t!209684))

(declare-fun b_and!186899 () Bool)

(assert (= b_and!186891 (and (=> t!209684 result!172286) b_and!186899)))

(declare-fun m!2837619 () Bool)

(assert (=> d!710443 m!2837619))

(declare-fun m!2837621 () Bool)

(assert (=> b!2468474 m!2837621))

(assert (=> b!2468474 m!2837621))

(declare-fun m!2837623 () Bool)

(assert (=> b!2468474 m!2837623))

(declare-fun m!2837625 () Bool)

(assert (=> b!2468475 m!2837625))

(assert (=> start!240678 d!710443))

(declare-fun d!710445 () Bool)

(assert (=> d!710445 (= (inv!38865 (tag!4973 (h!34184 rules!4472))) (= (mod (str.len (value!143170 (tag!4973 (h!34184 rules!4472)))) 2) 0))))

(assert (=> b!2468219 d!710445))

(declare-fun d!710447 () Bool)

(declare-fun res!1045579 () Bool)

(declare-fun e!1565806 () Bool)

(assert (=> d!710447 (=> (not res!1045579) (not e!1565806))))

(assert (=> d!710447 (= res!1045579 (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toValue!6343 (transformation!4483 (h!34184 rules!4472)))))))

(assert (=> d!710447 (= (inv!38868 (transformation!4483 (h!34184 rules!4472))) e!1565806)))

(declare-fun b!2468477 () Bool)

(assert (=> b!2468477 (= e!1565806 (equivClasses!1755 (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toValue!6343 (transformation!4483 (h!34184 rules!4472)))))))

(assert (= (and d!710447 res!1045579) b!2468477))

(declare-fun m!2837627 () Bool)

(assert (=> d!710447 m!2837627))

(declare-fun m!2837629 () Bool)

(assert (=> b!2468477 m!2837629))

(assert (=> b!2468219 d!710447))

(declare-fun d!710449 () Bool)

(declare-fun lt!882770 () Token!8436)

(assert (=> d!710449 (contains!4913 l!6611 lt!882770)))

(declare-fun e!1565808 () Token!8436)

(assert (=> d!710449 (= lt!882770 e!1565808)))

(declare-fun c!393415 () Bool)

(assert (=> d!710449 (= c!393415 (= (+ 1 i!1803) 0))))

(declare-fun e!1565807 () Bool)

(assert (=> d!710449 e!1565807))

(declare-fun res!1045580 () Bool)

(assert (=> d!710449 (=> (not res!1045580) (not e!1565807))))

(assert (=> d!710449 (= res!1045580 (<= 0 (+ 1 i!1803)))))

(assert (=> d!710449 (= (apply!6774 l!6611 (+ 1 i!1803)) lt!882770)))

(declare-fun b!2468478 () Bool)

(assert (=> b!2468478 (= e!1565807 (< (+ 1 i!1803) (size!22394 l!6611)))))

(declare-fun b!2468479 () Bool)

(assert (=> b!2468479 (= e!1565808 (head!5635 l!6611))))

(declare-fun b!2468480 () Bool)

(assert (=> b!2468480 (= e!1565808 (apply!6774 (tail!3916 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!710449 res!1045580) b!2468478))

(assert (= (and d!710449 c!393415) b!2468479))

(assert (= (and d!710449 (not c!393415)) b!2468480))

(declare-fun m!2837631 () Bool)

(assert (=> d!710449 m!2837631))

(assert (=> b!2468478 m!2837377))

(assert (=> b!2468479 m!2837421))

(assert (=> b!2468480 m!2837423))

(assert (=> b!2468480 m!2837423))

(declare-fun m!2837633 () Bool)

(assert (=> b!2468480 m!2837633))

(assert (=> b!2468237 d!710449))

(declare-fun d!710451 () Bool)

(declare-fun res!1045581 () Bool)

(declare-fun e!1565809 () Bool)

(assert (=> d!710451 (=> (not res!1045581) (not e!1565809))))

(assert (=> d!710451 (= res!1045581 (not (isEmpty!16720 (originalCharacters!5249 (h!34183 l!6611)))))))

(assert (=> d!710451 (= (inv!38869 (h!34183 l!6611)) e!1565809)))

(declare-fun b!2468481 () Bool)

(declare-fun res!1045582 () Bool)

(assert (=> b!2468481 (=> (not res!1045582) (not e!1565809))))

(assert (=> b!2468481 (= res!1045582 (= (originalCharacters!5249 (h!34183 l!6611)) (list!11131 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))

(declare-fun b!2468482 () Bool)

(assert (=> b!2468482 (= e!1565809 (= (size!22393 (h!34183 l!6611)) (size!22398 (originalCharacters!5249 (h!34183 l!6611)))))))

(assert (= (and d!710451 res!1045581) b!2468481))

(assert (= (and b!2468481 res!1045582) b!2468482))

(declare-fun b_lambda!75679 () Bool)

(assert (=> (not b_lambda!75679) (not b!2468481)))

(declare-fun t!209686 () Bool)

(declare-fun tb!139589 () Bool)

(assert (=> (and b!2468228 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) t!209686) tb!139589))

(declare-fun b!2468483 () Bool)

(declare-fun e!1565810 () Bool)

(declare-fun tp!787779 () Bool)

(assert (=> b!2468483 (= e!1565810 (and (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) tp!787779))))

(declare-fun result!172288 () Bool)

(assert (=> tb!139589 (= result!172288 (and (inv!38873 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))) e!1565810))))

(assert (= tb!139589 b!2468483))

(declare-fun m!2837635 () Bool)

(assert (=> b!2468483 m!2837635))

(declare-fun m!2837637 () Bool)

(assert (=> tb!139589 m!2837637))

(assert (=> b!2468481 t!209686))

(declare-fun b_and!186901 () Bool)

(assert (= b_and!186893 (and (=> t!209686 result!172288) b_and!186901)))

(declare-fun tb!139591 () Bool)

(declare-fun t!209688 () Bool)

(assert (=> (and b!2468223 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) t!209688) tb!139591))

(declare-fun result!172290 () Bool)

(assert (= result!172290 result!172288))

(assert (=> b!2468481 t!209688))

(declare-fun b_and!186903 () Bool)

(assert (= b_and!186895 (and (=> t!209688 result!172290) b_and!186903)))

(declare-fun tb!139593 () Bool)

(declare-fun t!209690 () Bool)

(assert (=> (and b!2468239 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) t!209690) tb!139593))

(declare-fun result!172292 () Bool)

(assert (= result!172292 result!172288))

(assert (=> b!2468481 t!209690))

(declare-fun b_and!186905 () Bool)

(assert (= b_and!186897 (and (=> t!209690 result!172292) b_and!186905)))

(declare-fun t!209692 () Bool)

(declare-fun tb!139595 () Bool)

(assert (=> (and b!2468235 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) t!209692) tb!139595))

(declare-fun result!172294 () Bool)

(assert (= result!172294 result!172288))

(assert (=> b!2468481 t!209692))

(declare-fun b_and!186907 () Bool)

(assert (= b_and!186899 (and (=> t!209692 result!172294) b_and!186907)))

(declare-fun m!2837639 () Bool)

(assert (=> d!710451 m!2837639))

(declare-fun m!2837641 () Bool)

(assert (=> b!2468481 m!2837641))

(assert (=> b!2468481 m!2837641))

(declare-fun m!2837643 () Bool)

(assert (=> b!2468481 m!2837643))

(declare-fun m!2837645 () Bool)

(assert (=> b!2468482 m!2837645))

(assert (=> b!2468238 d!710451))

(declare-fun d!710453 () Bool)

(declare-fun res!1045585 () Bool)

(declare-fun e!1565813 () Bool)

(assert (=> d!710453 (=> (not res!1045585) (not e!1565813))))

(declare-fun rulesValid!1667 (LexerInterface!4080 List!28883) Bool)

(assert (=> d!710453 (= res!1045585 (rulesValid!1667 thiss!27932 rules!4472))))

(assert (=> d!710453 (= (rulesInvariant!3580 thiss!27932 rules!4472) e!1565813)))

(declare-fun b!2468486 () Bool)

(declare-datatypes ((List!28885 0))(
  ( (Nil!28785) (Cons!28785 (h!34186 String!31641) (t!209706 List!28885)) )
))
(declare-fun noDuplicateTag!1665 (LexerInterface!4080 List!28883 List!28885) Bool)

(assert (=> b!2468486 (= e!1565813 (noDuplicateTag!1665 thiss!27932 rules!4472 Nil!28785))))

(assert (= (and d!710453 res!1045585) b!2468486))

(declare-fun m!2837647 () Bool)

(assert (=> d!710453 m!2837647))

(declare-fun m!2837649 () Bool)

(assert (=> b!2468486 m!2837649))

(assert (=> b!2468227 d!710453))

(declare-fun b!2468491 () Bool)

(declare-fun e!1565816 () Bool)

(declare-fun tp_is_empty!11951 () Bool)

(declare-fun tp!787782 () Bool)

(assert (=> b!2468491 (= e!1565816 (and tp_is_empty!11951 tp!787782))))

(assert (=> b!2468234 (= tp!787702 e!1565816)))

(assert (= (and b!2468234 ((_ is Cons!28781) (originalCharacters!5249 t1!67))) b!2468491))

(declare-fun b!2468504 () Bool)

(declare-fun e!1565819 () Bool)

(declare-fun tp!787796 () Bool)

(assert (=> b!2468504 (= e!1565819 tp!787796)))

(declare-fun b!2468503 () Bool)

(declare-fun tp!787797 () Bool)

(declare-fun tp!787794 () Bool)

(assert (=> b!2468503 (= e!1565819 (and tp!787797 tp!787794))))

(assert (=> b!2468232 (= tp!787692 e!1565819)))

(declare-fun b!2468502 () Bool)

(assert (=> b!2468502 (= e!1565819 tp_is_empty!11951)))

(declare-fun b!2468505 () Bool)

(declare-fun tp!787795 () Bool)

(declare-fun tp!787793 () Bool)

(assert (=> b!2468505 (= e!1565819 (and tp!787795 tp!787793))))

(assert (= (and b!2468232 ((_ is ElementMatch!7271) (regex!4483 (rule!6841 t1!67)))) b!2468502))

(assert (= (and b!2468232 ((_ is Concat!11941) (regex!4483 (rule!6841 t1!67)))) b!2468503))

(assert (= (and b!2468232 ((_ is Star!7271) (regex!4483 (rule!6841 t1!67)))) b!2468504))

(assert (= (and b!2468232 ((_ is Union!7271) (regex!4483 (rule!6841 t1!67)))) b!2468505))

(declare-fun b!2468508 () Bool)

(declare-fun e!1565820 () Bool)

(declare-fun tp!787801 () Bool)

(assert (=> b!2468508 (= e!1565820 tp!787801)))

(declare-fun b!2468507 () Bool)

(declare-fun tp!787802 () Bool)

(declare-fun tp!787799 () Bool)

(assert (=> b!2468507 (= e!1565820 (and tp!787802 tp!787799))))

(assert (=> b!2468231 (= tp!787701 e!1565820)))

(declare-fun b!2468506 () Bool)

(assert (=> b!2468506 (= e!1565820 tp_is_empty!11951)))

(declare-fun b!2468509 () Bool)

(declare-fun tp!787800 () Bool)

(declare-fun tp!787798 () Bool)

(assert (=> b!2468509 (= e!1565820 (and tp!787800 tp!787798))))

(assert (= (and b!2468231 ((_ is ElementMatch!7271) (regex!4483 (rule!6841 t2!67)))) b!2468506))

(assert (= (and b!2468231 ((_ is Concat!11941) (regex!4483 (rule!6841 t2!67)))) b!2468507))

(assert (= (and b!2468231 ((_ is Star!7271) (regex!4483 (rule!6841 t2!67)))) b!2468508))

(assert (= (and b!2468231 ((_ is Union!7271) (regex!4483 (rule!6841 t2!67)))) b!2468509))

(declare-fun b!2468512 () Bool)

(declare-fun e!1565821 () Bool)

(declare-fun tp!787806 () Bool)

(assert (=> b!2468512 (= e!1565821 tp!787806)))

(declare-fun b!2468511 () Bool)

(declare-fun tp!787807 () Bool)

(declare-fun tp!787804 () Bool)

(assert (=> b!2468511 (= e!1565821 (and tp!787807 tp!787804))))

(assert (=> b!2468240 (= tp!787699 e!1565821)))

(declare-fun b!2468510 () Bool)

(assert (=> b!2468510 (= e!1565821 tp_is_empty!11951)))

(declare-fun b!2468513 () Bool)

(declare-fun tp!787805 () Bool)

(declare-fun tp!787803 () Bool)

(assert (=> b!2468513 (= e!1565821 (and tp!787805 tp!787803))))

(assert (= (and b!2468240 ((_ is ElementMatch!7271) (regex!4483 (rule!6841 (h!34183 l!6611))))) b!2468510))

(assert (= (and b!2468240 ((_ is Concat!11941) (regex!4483 (rule!6841 (h!34183 l!6611))))) b!2468511))

(assert (= (and b!2468240 ((_ is Star!7271) (regex!4483 (rule!6841 (h!34183 l!6611))))) b!2468512))

(assert (= (and b!2468240 ((_ is Union!7271) (regex!4483 (rule!6841 (h!34183 l!6611))))) b!2468513))

(declare-fun b!2468514 () Bool)

(declare-fun e!1565822 () Bool)

(declare-fun tp!787808 () Bool)

(assert (=> b!2468514 (= e!1565822 (and tp_is_empty!11951 tp!787808))))

(assert (=> b!2468229 (= tp!787700 e!1565822)))

(assert (= (and b!2468229 ((_ is Cons!28781) (originalCharacters!5249 t2!67))) b!2468514))

(declare-fun b!2468515 () Bool)

(declare-fun e!1565823 () Bool)

(declare-fun tp!787809 () Bool)

(assert (=> b!2468515 (= e!1565823 (and tp_is_empty!11951 tp!787809))))

(assert (=> b!2468230 (= tp!787694 e!1565823)))

(assert (= (and b!2468230 ((_ is Cons!28781) (originalCharacters!5249 (h!34183 l!6611)))) b!2468515))

(declare-fun b!2468518 () Bool)

(declare-fun e!1565824 () Bool)

(declare-fun tp!787813 () Bool)

(assert (=> b!2468518 (= e!1565824 tp!787813)))

(declare-fun b!2468517 () Bool)

(declare-fun tp!787814 () Bool)

(declare-fun tp!787811 () Bool)

(assert (=> b!2468517 (= e!1565824 (and tp!787814 tp!787811))))

(assert (=> b!2468219 (= tp!787697 e!1565824)))

(declare-fun b!2468516 () Bool)

(assert (=> b!2468516 (= e!1565824 tp_is_empty!11951)))

(declare-fun b!2468519 () Bool)

(declare-fun tp!787812 () Bool)

(declare-fun tp!787810 () Bool)

(assert (=> b!2468519 (= e!1565824 (and tp!787812 tp!787810))))

(assert (= (and b!2468219 ((_ is ElementMatch!7271) (regex!4483 (h!34184 rules!4472)))) b!2468516))

(assert (= (and b!2468219 ((_ is Concat!11941) (regex!4483 (h!34184 rules!4472)))) b!2468517))

(assert (= (and b!2468219 ((_ is Star!7271) (regex!4483 (h!34184 rules!4472)))) b!2468518))

(assert (= (and b!2468219 ((_ is Union!7271) (regex!4483 (h!34184 rules!4472)))) b!2468519))

(declare-fun b!2468530 () Bool)

(declare-fun b_free!71261 () Bool)

(declare-fun b_next!71965 () Bool)

(assert (=> b!2468530 (= b_free!71261 (not b_next!71965))))

(declare-fun tp!787823 () Bool)

(declare-fun b_and!186909 () Bool)

(assert (=> b!2468530 (= tp!787823 b_and!186909)))

(declare-fun b_free!71263 () Bool)

(declare-fun b_next!71967 () Bool)

(assert (=> b!2468530 (= b_free!71263 (not b_next!71967))))

(declare-fun t!209694 () Bool)

(declare-fun tb!139597 () Bool)

(assert (=> (and b!2468530 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) t!209694) tb!139597))

(declare-fun result!172302 () Bool)

(assert (= result!172302 result!172270))

(assert (=> b!2468467 t!209694))

(declare-fun t!209696 () Bool)

(declare-fun tb!139599 () Bool)

(assert (=> (and b!2468530 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) t!209696) tb!139599))

(declare-fun result!172304 () Bool)

(assert (= result!172304 result!172280))

(assert (=> b!2468474 t!209696))

(declare-fun t!209698 () Bool)

(declare-fun tb!139601 () Bool)

(assert (=> (and b!2468530 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) t!209698) tb!139601))

(declare-fun result!172306 () Bool)

(assert (= result!172306 result!172288))

(assert (=> b!2468481 t!209698))

(declare-fun b_and!186911 () Bool)

(declare-fun tp!787825 () Bool)

(assert (=> b!2468530 (= tp!787825 (and (=> t!209694 result!172302) (=> t!209696 result!172304) (=> t!209698 result!172306) b_and!186911))))

(declare-fun e!1565833 () Bool)

(assert (=> b!2468530 (= e!1565833 (and tp!787823 tp!787825))))

(declare-fun tp!787826 () Bool)

(declare-fun e!1565835 () Bool)

(declare-fun b!2468529 () Bool)

(assert (=> b!2468529 (= e!1565835 (and tp!787826 (inv!38865 (tag!4973 (h!34184 (t!209628 rules!4472)))) (inv!38868 (transformation!4483 (h!34184 (t!209628 rules!4472)))) e!1565833))))

(declare-fun b!2468528 () Bool)

(declare-fun e!1565834 () Bool)

(declare-fun tp!787824 () Bool)

(assert (=> b!2468528 (= e!1565834 (and e!1565835 tp!787824))))

(assert (=> b!2468226 (= tp!787698 e!1565834)))

(assert (= b!2468529 b!2468530))

(assert (= b!2468528 b!2468529))

(assert (= (and b!2468226 ((_ is Cons!28783) (t!209628 rules!4472))) b!2468528))

(declare-fun m!2837651 () Bool)

(assert (=> b!2468529 m!2837651))

(declare-fun m!2837653 () Bool)

(assert (=> b!2468529 m!2837653))

(declare-fun b!2468544 () Bool)

(declare-fun b_free!71265 () Bool)

(declare-fun b_next!71969 () Bool)

(assert (=> b!2468544 (= b_free!71265 (not b_next!71969))))

(declare-fun tp!787839 () Bool)

(declare-fun b_and!186913 () Bool)

(assert (=> b!2468544 (= tp!787839 b_and!186913)))

(declare-fun b_free!71267 () Bool)

(declare-fun b_next!71971 () Bool)

(assert (=> b!2468544 (= b_free!71267 (not b_next!71971))))

(declare-fun tb!139603 () Bool)

(declare-fun t!209700 () Bool)

(assert (=> (and b!2468544 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) t!209700) tb!139603))

(declare-fun result!172310 () Bool)

(assert (= result!172310 result!172270))

(assert (=> b!2468467 t!209700))

(declare-fun tb!139605 () Bool)

(declare-fun t!209702 () Bool)

(assert (=> (and b!2468544 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) t!209702) tb!139605))

(declare-fun result!172312 () Bool)

(assert (= result!172312 result!172280))

(assert (=> b!2468474 t!209702))

(declare-fun t!209704 () Bool)

(declare-fun tb!139607 () Bool)

(assert (=> (and b!2468544 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) t!209704) tb!139607))

(declare-fun result!172314 () Bool)

(assert (= result!172314 result!172288))

(assert (=> b!2468481 t!209704))

(declare-fun tp!787837 () Bool)

(declare-fun b_and!186915 () Bool)

(assert (=> b!2468544 (= tp!787837 (and (=> t!209700 result!172310) (=> t!209702 result!172312) (=> t!209704 result!172314) b_and!186915))))

(declare-fun e!1565854 () Bool)

(declare-fun e!1565852 () Bool)

(declare-fun b!2468543 () Bool)

(declare-fun tp!787841 () Bool)

(assert (=> b!2468543 (= e!1565854 (and tp!787841 (inv!38865 (tag!4973 (rule!6841 (h!34183 (t!209627 l!6611))))) (inv!38868 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) e!1565852))))

(declare-fun b!2468542 () Bool)

(declare-fun e!1565851 () Bool)

(declare-fun tp!787840 () Bool)

(assert (=> b!2468542 (= e!1565851 (and (inv!21 (value!143171 (h!34183 (t!209627 l!6611)))) e!1565854 tp!787840))))

(assert (=> b!2468544 (= e!1565852 (and tp!787839 tp!787837))))

(declare-fun e!1565849 () Bool)

(assert (=> b!2468238 (= tp!787704 e!1565849)))

(declare-fun tp!787838 () Bool)

(declare-fun b!2468541 () Bool)

(assert (=> b!2468541 (= e!1565849 (and (inv!38869 (h!34183 (t!209627 l!6611))) e!1565851 tp!787838))))

(assert (= b!2468543 b!2468544))

(assert (= b!2468542 b!2468543))

(assert (= b!2468541 b!2468542))

(assert (= (and b!2468238 ((_ is Cons!28782) (t!209627 l!6611))) b!2468541))

(declare-fun m!2837655 () Bool)

(assert (=> b!2468543 m!2837655))

(declare-fun m!2837657 () Bool)

(assert (=> b!2468543 m!2837657))

(declare-fun m!2837659 () Bool)

(assert (=> b!2468542 m!2837659))

(declare-fun m!2837661 () Bool)

(assert (=> b!2468541 m!2837661))

(declare-fun b_lambda!75681 () Bool)

(assert (= b_lambda!75675 (or (and b!2468223 b_free!71243 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468235 b_free!71251 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468239 b_free!71247 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468530 b_free!71263 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468544 b_free!71267 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468228 b_free!71239) b_lambda!75681)))

(declare-fun b_lambda!75683 () Bool)

(assert (= b_lambda!75677 (or (and b!2468530 b_free!71263 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2468235 b_free!71251 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2468228 b_free!71239 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2468544 b_free!71267 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2468223 b_free!71243) (and b!2468239 b_free!71247 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) b_lambda!75683)))

(declare-fun b_lambda!75685 () Bool)

(assert (= b_lambda!75679 (or (and b!2468228 b_free!71239 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2468223 b_free!71243 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2468235 b_free!71251) (and b!2468239 b_free!71247 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2468530 b_free!71263 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2468544 b_free!71267 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) b_lambda!75685)))

(check-sat b_and!186911 (not b!2468508) (not b!2468517) (not b_next!71971) b_and!186849 (not b!2468366) (not b!2468458) b_and!186841 (not b_next!71943) (not b!2468511) b_and!186909 (not b!2468514) (not b!2468486) (not d!710389) (not b!2468513) (not b!2468478) (not b!2468529) (not b!2468473) b_and!186837 b_and!186905 (not b!2468468) (not b_next!71969) (not b!2468456) (not b!2468251) (not b!2468290) (not d!710443) b_and!186903 (not b!2468541) (not tb!139589) (not b!2468356) (not b!2468512) (not d!710453) b_and!186845 (not b!2468255) (not b!2468292) (not b!2468347) (not b!2468467) (not b!2468457) (not b!2468254) (not d!710377) (not b!2468474) b_and!186915 (not b_lambda!75683) tp_is_empty!11951 (not b_next!71967) (not b!2468483) (not b_next!71955) (not b!2468482) (not b!2468461) (not b!2468477) (not b!2468479) (not b_next!71953) (not b!2468504) (not b_next!71945) (not b!2468503) (not b!2468475) (not b!2468542) (not d!710451) (not b_lambda!75681) b_and!186907 (not b!2468361) (not b_next!71951) (not d!710387) (not b!2468289) (not b!2468518) (not b!2468346) (not b_next!71949) (not d!710401) b_and!186901 (not b!2468372) (not tb!139573) (not b!2468476) (not b!2468268) (not b_next!71947) (not b_next!71941) (not b!2468528) (not b!2468507) (not b!2468480) (not d!710413) (not b_lambda!75685) (not d!710447) (not b!2468509) (not d!710373) (not b!2468515) (not b!2468505) (not d!710449) (not b_next!71965) (not tb!139581) (not b!2468519) (not b!2468362) (not b!2468291) (not b!2468462) (not b!2468365) (not b!2468491) (not b!2468481) (not b!2468543) (not d!710441) b_and!186913)
(check-sat b_and!186837 b_and!186911 b_and!186903 b_and!186845 b_and!186915 (not b_next!71971) (not b_next!71953) (not b_next!71945) b_and!186849 b_and!186907 (not b_next!71951) b_and!186841 (not b_next!71965) b_and!186913 (not b_next!71943) b_and!186909 b_and!186905 (not b_next!71969) (not b_next!71967) (not b_next!71955) (not b_next!71949) b_and!186901 (not b_next!71947) (not b_next!71941))
(get-model)

(declare-fun d!710455 () Bool)

(declare-fun list!11132 (Conc!9197) List!28881)

(assert (=> d!710455 (= (list!11131 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))) (list!11132 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))

(declare-fun bs!466690 () Bool)

(assert (= bs!466690 d!710455))

(declare-fun m!2837663 () Bool)

(assert (=> bs!466690 m!2837663))

(assert (=> b!2468467 d!710455))

(declare-fun d!710457 () Bool)

(assert (=> d!710457 (= (list!11131 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))) (list!11132 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))

(declare-fun bs!466691 () Bool)

(assert (= bs!466691 d!710457))

(declare-fun m!2837665 () Bool)

(assert (=> bs!466691 m!2837665))

(assert (=> b!2468481 d!710457))

(declare-fun d!710459 () Bool)

(declare-fun res!1045596 () Bool)

(declare-fun e!1565859 () Bool)

(assert (=> d!710459 (=> res!1045596 e!1565859)))

(assert (=> d!710459 (= res!1045596 ((_ is Nil!28783) rules!4472))))

(assert (=> d!710459 (= (noDuplicateTag!1665 thiss!27932 rules!4472 Nil!28785) e!1565859)))

(declare-fun b!2468549 () Bool)

(declare-fun e!1565860 () Bool)

(assert (=> b!2468549 (= e!1565859 e!1565860)))

(declare-fun res!1045597 () Bool)

(assert (=> b!2468549 (=> (not res!1045597) (not e!1565860))))

(declare-fun contains!4914 (List!28885 String!31641) Bool)

(assert (=> b!2468549 (= res!1045597 (not (contains!4914 Nil!28785 (tag!4973 (h!34184 rules!4472)))))))

(declare-fun b!2468550 () Bool)

(assert (=> b!2468550 (= e!1565860 (noDuplicateTag!1665 thiss!27932 (t!209628 rules!4472) (Cons!28785 (tag!4973 (h!34184 rules!4472)) Nil!28785)))))

(assert (= (and d!710459 (not res!1045596)) b!2468549))

(assert (= (and b!2468549 res!1045597) b!2468550))

(declare-fun m!2837667 () Bool)

(assert (=> b!2468549 m!2837667))

(declare-fun m!2837669 () Bool)

(assert (=> b!2468550 m!2837669))

(assert (=> b!2468486 d!710459))

(declare-fun d!710461 () Bool)

(assert (=> d!710461 (= (head!5635 l!6611) (h!34183 l!6611))))

(assert (=> b!2468290 d!710461))

(declare-fun d!710463 () Bool)

(declare-fun lt!882771 () Int)

(assert (=> d!710463 (>= lt!882771 0)))

(declare-fun e!1565861 () Int)

(assert (=> d!710463 (= lt!882771 e!1565861)))

(declare-fun c!393416 () Bool)

(assert (=> d!710463 (= c!393416 ((_ is Nil!28782) (t!209627 l!6611)))))

(assert (=> d!710463 (= (size!22394 (t!209627 l!6611)) lt!882771)))

(declare-fun b!2468551 () Bool)

(assert (=> b!2468551 (= e!1565861 0)))

(declare-fun b!2468552 () Bool)

(assert (=> b!2468552 (= e!1565861 (+ 1 (size!22394 (t!209627 (t!209627 l!6611)))))))

(assert (= (and d!710463 c!393416) b!2468551))

(assert (= (and d!710463 (not c!393416)) b!2468552))

(declare-fun m!2837671 () Bool)

(assert (=> b!2468552 m!2837671))

(assert (=> b!2468372 d!710463))

(declare-fun d!710465 () Bool)

(declare-fun lt!882774 () Int)

(assert (=> d!710465 (>= lt!882774 0)))

(declare-fun e!1565864 () Int)

(assert (=> d!710465 (= lt!882774 e!1565864)))

(declare-fun c!393419 () Bool)

(assert (=> d!710465 (= c!393419 ((_ is Nil!28781) (originalCharacters!5249 t1!67)))))

(assert (=> d!710465 (= (size!22398 (originalCharacters!5249 t1!67)) lt!882774)))

(declare-fun b!2468557 () Bool)

(assert (=> b!2468557 (= e!1565864 0)))

(declare-fun b!2468558 () Bool)

(assert (=> b!2468558 (= e!1565864 (+ 1 (size!22398 (t!209626 (originalCharacters!5249 t1!67)))))))

(assert (= (and d!710465 c!393419) b!2468557))

(assert (= (and d!710465 (not c!393419)) b!2468558))

(declare-fun m!2837673 () Bool)

(assert (=> b!2468558 m!2837673))

(assert (=> b!2468475 d!710465))

(declare-fun bs!466692 () Bool)

(declare-fun d!710467 () Bool)

(assert (= bs!466692 (and d!710467 d!710401)))

(declare-fun lambda!93256 () Int)

(assert (=> bs!466692 (= lambda!93256 lambda!93255)))

(declare-fun b!2468563 () Bool)

(declare-fun e!1565869 () Bool)

(assert (=> b!2468563 (= e!1565869 true)))

(declare-fun b!2468562 () Bool)

(declare-fun e!1565868 () Bool)

(assert (=> b!2468562 (= e!1565868 e!1565869)))

(declare-fun b!2468561 () Bool)

(declare-fun e!1565867 () Bool)

(assert (=> b!2468561 (= e!1565867 e!1565868)))

(assert (=> d!710467 e!1565867))

(assert (= b!2468562 b!2468563))

(assert (= b!2468561 b!2468562))

(assert (= (and d!710467 ((_ is Cons!28783) rules!4472)) b!2468561))

(assert (=> b!2468563 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (h!34184 rules!4472)))) (dynLambda!12353 order!15593 lambda!93256))))

(assert (=> b!2468563 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (h!34184 rules!4472)))) (dynLambda!12353 order!15593 lambda!93256))))

(assert (=> d!710467 true))

(declare-fun lt!882775 () Bool)

(assert (=> d!710467 (= lt!882775 (forall!5900 (t!209627 l!6611) lambda!93256))))

(declare-fun e!1565865 () Bool)

(assert (=> d!710467 (= lt!882775 e!1565865)))

(declare-fun res!1045599 () Bool)

(assert (=> d!710467 (=> res!1045599 e!1565865)))

(assert (=> d!710467 (= res!1045599 (not ((_ is Cons!28782) (t!209627 l!6611))))))

(assert (=> d!710467 (not (isEmpty!16718 rules!4472))))

(assert (=> d!710467 (= (rulesProduceEachTokenIndividuallyList!1396 thiss!27932 rules!4472 (t!209627 l!6611)) lt!882775)))

(declare-fun b!2468559 () Bool)

(declare-fun e!1565866 () Bool)

(assert (=> b!2468559 (= e!1565865 e!1565866)))

(declare-fun res!1045598 () Bool)

(assert (=> b!2468559 (=> (not res!1045598) (not e!1565866))))

(assert (=> b!2468559 (= res!1045598 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 l!6611))))))

(declare-fun b!2468560 () Bool)

(assert (=> b!2468560 (= e!1565866 (rulesProduceEachTokenIndividuallyList!1396 thiss!27932 rules!4472 (t!209627 (t!209627 l!6611))))))

(assert (= (and d!710467 (not res!1045599)) b!2468559))

(assert (= (and b!2468559 res!1045598) b!2468560))

(declare-fun m!2837675 () Bool)

(assert (=> d!710467 m!2837675))

(assert (=> d!710467 m!2837387))

(assert (=> b!2468559 m!2837583))

(declare-fun m!2837677 () Bool)

(assert (=> b!2468560 m!2837677))

(assert (=> b!2468347 d!710467))

(declare-fun d!710469 () Bool)

(assert (=> d!710469 (= (isEmpty!16720 (originalCharacters!5249 t2!67)) ((_ is Nil!28781) (originalCharacters!5249 t2!67)))))

(assert (=> d!710441 d!710469))

(declare-fun d!710471 () Bool)

(declare-fun lt!882778 () Int)

(assert (=> d!710471 (= lt!882778 (size!22398 (list!11131 (charsOf!2822 (h!34183 (t!209627 l!6611))))))))

(declare-fun size!22399 (Conc!9197) Int)

(assert (=> d!710471 (= lt!882778 (size!22399 (c!393380 (charsOf!2822 (h!34183 (t!209627 l!6611))))))))

(assert (=> d!710471 (= (size!22397 (charsOf!2822 (h!34183 (t!209627 l!6611)))) lt!882778)))

(declare-fun bs!466693 () Bool)

(assert (= bs!466693 d!710471))

(assert (=> bs!466693 m!2837589))

(declare-fun m!2837679 () Bool)

(assert (=> bs!466693 m!2837679))

(assert (=> bs!466693 m!2837679))

(declare-fun m!2837681 () Bool)

(assert (=> bs!466693 m!2837681))

(declare-fun m!2837683 () Bool)

(assert (=> bs!466693 m!2837683))

(assert (=> b!2468456 d!710471))

(declare-fun d!710473 () Bool)

(assert (=> d!710473 (= (separableTokensPredicate!857 thiss!27932 (h!34183 l!6611) (h!34183 (t!209627 l!6611)) rules!4472) (not (prefixMatchZipperSequence!721 (rulesRegex!979 thiss!27932 rules!4472) (++!7139 (charsOf!2822 (h!34183 l!6611)) (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))))))))

(declare-fun bs!466694 () Bool)

(assert (= bs!466694 d!710473))

(declare-fun m!2837685 () Bool)

(assert (=> bs!466694 m!2837685))

(declare-fun m!2837687 () Bool)

(assert (=> bs!466694 m!2837687))

(assert (=> bs!466694 m!2837469))

(declare-fun m!2837689 () Bool)

(assert (=> bs!466694 m!2837689))

(assert (=> bs!466694 m!2837469))

(declare-fun m!2837691 () Bool)

(assert (=> bs!466694 m!2837691))

(declare-fun m!2837693 () Bool)

(assert (=> bs!466694 m!2837693))

(assert (=> bs!466694 m!2837589))

(assert (=> bs!466694 m!2837589))

(assert (=> bs!466694 m!2837685))

(assert (=> bs!466694 m!2837689))

(assert (=> bs!466694 m!2837687))

(assert (=> bs!466694 m!2837691))

(assert (=> b!2468456 d!710473))

(declare-fun d!710475 () Bool)

(declare-fun lt!882781 () BalanceConc!18008)

(assert (=> d!710475 (= (list!11131 lt!882781) (originalCharacters!5249 (h!34183 (t!209627 l!6611))))))

(assert (=> d!710475 (= lt!882781 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611)))))))

(assert (=> d!710475 (= (charsOf!2822 (h!34183 (t!209627 l!6611))) lt!882781)))

(declare-fun b_lambda!75687 () Bool)

(assert (=> (not b_lambda!75687) (not d!710475)))

(declare-fun t!209708 () Bool)

(declare-fun tb!139609 () Bool)

(assert (=> (and b!2468228 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) t!209708) tb!139609))

(declare-fun b!2468564 () Bool)

(declare-fun e!1565870 () Bool)

(declare-fun tp!787842 () Bool)

(assert (=> b!2468564 (= e!1565870 (and (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611)))))) tp!787842))))

(declare-fun result!172316 () Bool)

(assert (=> tb!139609 (= result!172316 (and (inv!38873 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611))))) e!1565870))))

(assert (= tb!139609 b!2468564))

(declare-fun m!2837695 () Bool)

(assert (=> b!2468564 m!2837695))

(declare-fun m!2837697 () Bool)

(assert (=> tb!139609 m!2837697))

(assert (=> d!710475 t!209708))

(declare-fun b_and!186917 () Bool)

(assert (= b_and!186901 (and (=> t!209708 result!172316) b_and!186917)))

(declare-fun t!209710 () Bool)

(declare-fun tb!139611 () Bool)

(assert (=> (and b!2468544 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) t!209710) tb!139611))

(declare-fun result!172318 () Bool)

(assert (= result!172318 result!172316))

(assert (=> d!710475 t!209710))

(declare-fun b_and!186919 () Bool)

(assert (= b_and!186915 (and (=> t!209710 result!172318) b_and!186919)))

(declare-fun t!209712 () Bool)

(declare-fun tb!139613 () Bool)

(assert (=> (and b!2468530 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) t!209712) tb!139613))

(declare-fun result!172320 () Bool)

(assert (= result!172320 result!172316))

(assert (=> d!710475 t!209712))

(declare-fun b_and!186921 () Bool)

(assert (= b_and!186911 (and (=> t!209712 result!172320) b_and!186921)))

(declare-fun t!209714 () Bool)

(declare-fun tb!139615 () Bool)

(assert (=> (and b!2468223 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) t!209714) tb!139615))

(declare-fun result!172322 () Bool)

(assert (= result!172322 result!172316))

(assert (=> d!710475 t!209714))

(declare-fun b_and!186923 () Bool)

(assert (= b_and!186903 (and (=> t!209714 result!172322) b_and!186923)))

(declare-fun tb!139617 () Bool)

(declare-fun t!209716 () Bool)

(assert (=> (and b!2468239 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) t!209716) tb!139617))

(declare-fun result!172324 () Bool)

(assert (= result!172324 result!172316))

(assert (=> d!710475 t!209716))

(declare-fun b_and!186925 () Bool)

(assert (= b_and!186905 (and (=> t!209716 result!172324) b_and!186925)))

(declare-fun t!209718 () Bool)

(declare-fun tb!139619 () Bool)

(assert (=> (and b!2468235 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) t!209718) tb!139619))

(declare-fun result!172326 () Bool)

(assert (= result!172326 result!172316))

(assert (=> d!710475 t!209718))

(declare-fun b_and!186927 () Bool)

(assert (= b_and!186907 (and (=> t!209718 result!172326) b_and!186927)))

(declare-fun m!2837699 () Bool)

(assert (=> d!710475 m!2837699))

(declare-fun m!2837701 () Bool)

(assert (=> d!710475 m!2837701))

(assert (=> b!2468456 d!710475))

(declare-fun d!710477 () Bool)

(declare-fun lt!882786 () Bool)

(declare-fun e!1565875 () Bool)

(assert (=> d!710477 (= lt!882786 e!1565875)))

(declare-fun res!1045608 () Bool)

(assert (=> d!710477 (=> (not res!1045608) (not e!1565875))))

(declare-datatypes ((IArray!18401 0))(
  ( (IArray!18402 (innerList!9258 List!28882)) )
))
(declare-datatypes ((Conc!9198 0))(
  ( (Node!9198 (left!22090 Conc!9198) (right!22420 Conc!9198) (csize!18626 Int) (cheight!9409 Int)) (Leaf!13747 (xs!12178 IArray!18401) (csize!18627 Int)) (Empty!9198) )
))
(declare-datatypes ((BalanceConc!18010 0))(
  ( (BalanceConc!18011 (c!393450 Conc!9198)) )
))
(declare-fun list!11133 (BalanceConc!18010) List!28882)

(declare-datatypes ((tuple2!28240 0))(
  ( (tuple2!28241 (_1!16661 BalanceConc!18010) (_2!16661 BalanceConc!18008)) )
))
(declare-fun lex!1860 (LexerInterface!4080 List!28883 BalanceConc!18008) tuple2!28240)

(declare-fun print!1582 (LexerInterface!4080 BalanceConc!18010) BalanceConc!18008)

(declare-fun singletonSeq!1991 (Token!8436) BalanceConc!18010)

(assert (=> d!710477 (= res!1045608 (= (list!11133 (_1!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611))))))) (list!11133 (singletonSeq!1991 (h!34183 (t!209627 l!6611))))))))

(declare-fun e!1565876 () Bool)

(assert (=> d!710477 (= lt!882786 e!1565876)))

(declare-fun res!1045609 () Bool)

(assert (=> d!710477 (=> (not res!1045609) (not e!1565876))))

(declare-fun lt!882787 () tuple2!28240)

(declare-fun size!22400 (BalanceConc!18010) Int)

(assert (=> d!710477 (= res!1045609 (= (size!22400 (_1!16661 lt!882787)) 1))))

(assert (=> d!710477 (= lt!882787 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611))))))))

(assert (=> d!710477 (not (isEmpty!16718 rules!4472))))

(assert (=> d!710477 (= (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 l!6611))) lt!882786)))

(declare-fun b!2468575 () Bool)

(declare-fun res!1045607 () Bool)

(assert (=> b!2468575 (=> (not res!1045607) (not e!1565876))))

(declare-fun apply!6777 (BalanceConc!18010 Int) Token!8436)

(assert (=> b!2468575 (= res!1045607 (= (apply!6777 (_1!16661 lt!882787) 0) (h!34183 (t!209627 l!6611))))))

(declare-fun b!2468576 () Bool)

(declare-fun isEmpty!16721 (BalanceConc!18008) Bool)

(assert (=> b!2468576 (= e!1565876 (isEmpty!16721 (_2!16661 lt!882787)))))

(declare-fun b!2468577 () Bool)

(assert (=> b!2468577 (= e!1565875 (isEmpty!16721 (_2!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611))))))))))

(assert (= (and d!710477 res!1045609) b!2468575))

(assert (= (and b!2468575 res!1045607) b!2468576))

(assert (= (and d!710477 res!1045608) b!2468577))

(declare-fun m!2837707 () Bool)

(assert (=> d!710477 m!2837707))

(declare-fun m!2837709 () Bool)

(assert (=> d!710477 m!2837709))

(declare-fun m!2837711 () Bool)

(assert (=> d!710477 m!2837711))

(declare-fun m!2837713 () Bool)

(assert (=> d!710477 m!2837713))

(assert (=> d!710477 m!2837709))

(declare-fun m!2837715 () Bool)

(assert (=> d!710477 m!2837715))

(assert (=> d!710477 m!2837387))

(assert (=> d!710477 m!2837709))

(assert (=> d!710477 m!2837715))

(declare-fun m!2837719 () Bool)

(assert (=> d!710477 m!2837719))

(declare-fun m!2837721 () Bool)

(assert (=> b!2468575 m!2837721))

(declare-fun m!2837723 () Bool)

(assert (=> b!2468576 m!2837723))

(assert (=> b!2468577 m!2837709))

(assert (=> b!2468577 m!2837709))

(assert (=> b!2468577 m!2837715))

(assert (=> b!2468577 m!2837715))

(assert (=> b!2468577 m!2837719))

(declare-fun m!2837725 () Bool)

(assert (=> b!2468577 m!2837725))

(assert (=> b!2468456 d!710477))

(declare-fun d!710487 () Bool)

(assert (=> d!710487 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 l!6611))))

(declare-fun lt!882818 () Unit!42121)

(declare-fun choose!14580 (LexerInterface!4080 List!28883 List!28882 Token!8436) Unit!42121)

(assert (=> d!710487 (= lt!882818 (choose!14580 thiss!27932 rules!4472 l!6611 (h!34183 l!6611)))))

(assert (=> d!710487 (not (isEmpty!16718 rules!4472))))

(assert (=> d!710487 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!673 thiss!27932 rules!4472 l!6611 (h!34183 l!6611)) lt!882818)))

(declare-fun bs!466709 () Bool)

(assert (= bs!466709 d!710487))

(assert (=> bs!466709 m!2837511))

(declare-fun m!2837837 () Bool)

(assert (=> bs!466709 m!2837837))

(assert (=> bs!466709 m!2837387))

(assert (=> b!2468456 d!710487))

(declare-fun d!710537 () Bool)

(assert (=> d!710537 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 l!6611)))))

(declare-fun lt!882819 () Unit!42121)

(assert (=> d!710537 (= lt!882819 (choose!14580 thiss!27932 rules!4472 l!6611 (h!34183 (t!209627 l!6611))))))

(assert (=> d!710537 (not (isEmpty!16718 rules!4472))))

(assert (=> d!710537 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!673 thiss!27932 rules!4472 l!6611 (h!34183 (t!209627 l!6611))) lt!882819)))

(declare-fun bs!466710 () Bool)

(assert (= bs!466710 d!710537))

(assert (=> bs!466710 m!2837583))

(declare-fun m!2837839 () Bool)

(assert (=> bs!466710 m!2837839))

(assert (=> bs!466710 m!2837387))

(assert (=> b!2468456 d!710537))

(declare-fun d!710539 () Bool)

(declare-fun lt!882820 () Bool)

(declare-fun e!1565916 () Bool)

(assert (=> d!710539 (= lt!882820 e!1565916)))

(declare-fun res!1045647 () Bool)

(assert (=> d!710539 (=> (not res!1045647) (not e!1565916))))

(assert (=> d!710539 (= res!1045647 (= (list!11133 (_1!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611)))))) (list!11133 (singletonSeq!1991 (h!34183 l!6611)))))))

(declare-fun e!1565917 () Bool)

(assert (=> d!710539 (= lt!882820 e!1565917)))

(declare-fun res!1045648 () Bool)

(assert (=> d!710539 (=> (not res!1045648) (not e!1565917))))

(declare-fun lt!882821 () tuple2!28240)

(assert (=> d!710539 (= res!1045648 (= (size!22400 (_1!16661 lt!882821)) 1))))

(assert (=> d!710539 (= lt!882821 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611)))))))

(assert (=> d!710539 (not (isEmpty!16718 rules!4472))))

(assert (=> d!710539 (= (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 l!6611)) lt!882820)))

(declare-fun b!2468637 () Bool)

(declare-fun res!1045646 () Bool)

(assert (=> b!2468637 (=> (not res!1045646) (not e!1565917))))

(assert (=> b!2468637 (= res!1045646 (= (apply!6777 (_1!16661 lt!882821) 0) (h!34183 l!6611)))))

(declare-fun b!2468638 () Bool)

(assert (=> b!2468638 (= e!1565917 (isEmpty!16721 (_2!16661 lt!882821)))))

(declare-fun b!2468639 () Bool)

(assert (=> b!2468639 (= e!1565916 (isEmpty!16721 (_2!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611)))))))))

(assert (= (and d!710539 res!1045648) b!2468637))

(assert (= (and b!2468637 res!1045646) b!2468638))

(assert (= (and d!710539 res!1045647) b!2468639))

(declare-fun m!2837841 () Bool)

(assert (=> d!710539 m!2837841))

(declare-fun m!2837843 () Bool)

(assert (=> d!710539 m!2837843))

(declare-fun m!2837845 () Bool)

(assert (=> d!710539 m!2837845))

(declare-fun m!2837847 () Bool)

(assert (=> d!710539 m!2837847))

(assert (=> d!710539 m!2837843))

(declare-fun m!2837849 () Bool)

(assert (=> d!710539 m!2837849))

(assert (=> d!710539 m!2837387))

(assert (=> d!710539 m!2837843))

(assert (=> d!710539 m!2837849))

(declare-fun m!2837851 () Bool)

(assert (=> d!710539 m!2837851))

(declare-fun m!2837853 () Bool)

(assert (=> b!2468637 m!2837853))

(declare-fun m!2837855 () Bool)

(assert (=> b!2468638 m!2837855))

(assert (=> b!2468639 m!2837843))

(assert (=> b!2468639 m!2837843))

(assert (=> b!2468639 m!2837849))

(assert (=> b!2468639 m!2837849))

(assert (=> b!2468639 m!2837851))

(declare-fun m!2837857 () Bool)

(assert (=> b!2468639 m!2837857))

(assert (=> b!2468456 d!710539))

(declare-fun d!710541 () Bool)

(declare-fun isBalanced!2801 (Conc!9197) Bool)

(assert (=> d!710541 (= (inv!38873 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))) (isBalanced!2801 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))

(declare-fun bs!466711 () Bool)

(assert (= bs!466711 d!710541))

(declare-fun m!2837859 () Bool)

(assert (=> bs!466711 m!2837859))

(assert (=> tb!139581 d!710541))

(assert (=> b!2468479 d!710461))

(declare-fun d!710543 () Bool)

(assert (=> d!710543 true))

(declare-fun order!15601 () Int)

(declare-fun lambda!93270 () Int)

(declare-fun dynLambda!12356 (Int Int) Int)

(assert (=> d!710543 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (rule!6841 t1!67)))) (dynLambda!12356 order!15601 lambda!93270))))

(declare-fun Forall2!746 (Int) Bool)

(assert (=> d!710543 (= (equivClasses!1755 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toValue!6343 (transformation!4483 (rule!6841 t1!67)))) (Forall2!746 lambda!93270))))

(declare-fun bs!466712 () Bool)

(assert (= bs!466712 d!710543))

(declare-fun m!2837861 () Bool)

(assert (=> bs!466712 m!2837861))

(assert (=> b!2468268 d!710543))

(declare-fun d!710545 () Bool)

(declare-fun charsToBigInt!1 (List!28880) Int)

(assert (=> d!710545 (= (inv!17 (value!143171 t2!67)) (= (charsToBigInt!1 (text!33131 (value!143171 t2!67))) (value!143163 (value!143171 t2!67))))))

(declare-fun bs!466713 () Bool)

(assert (= bs!466713 d!710545))

(declare-fun m!2837863 () Bool)

(assert (=> bs!466713 m!2837863))

(assert (=> b!2468362 d!710545))

(declare-fun d!710547 () Bool)

(declare-fun res!1045655 () Bool)

(declare-fun e!1565924 () Bool)

(assert (=> d!710547 (=> res!1045655 e!1565924)))

(assert (=> d!710547 (= res!1045655 ((_ is Nil!28782) l!6611))))

(assert (=> d!710547 (= (forall!5900 l!6611 lambda!93255) e!1565924)))

(declare-fun b!2468648 () Bool)

(declare-fun e!1565925 () Bool)

(assert (=> b!2468648 (= e!1565924 e!1565925)))

(declare-fun res!1045656 () Bool)

(assert (=> b!2468648 (=> (not res!1045656) (not e!1565925))))

(declare-fun dynLambda!12357 (Int Token!8436) Bool)

(assert (=> b!2468648 (= res!1045656 (dynLambda!12357 lambda!93255 (h!34183 l!6611)))))

(declare-fun b!2468649 () Bool)

(assert (=> b!2468649 (= e!1565925 (forall!5900 (t!209627 l!6611) lambda!93255))))

(assert (= (and d!710547 (not res!1045655)) b!2468648))

(assert (= (and b!2468648 res!1045656) b!2468649))

(declare-fun b_lambda!75695 () Bool)

(assert (=> (not b_lambda!75695) (not b!2468648)))

(declare-fun m!2837875 () Bool)

(assert (=> b!2468648 m!2837875))

(declare-fun m!2837879 () Bool)

(assert (=> b!2468649 m!2837879))

(assert (=> d!710401 d!710547))

(assert (=> d!710401 d!710369))

(declare-fun d!710549 () Bool)

(declare-fun c!393434 () Bool)

(assert (=> d!710549 (= c!393434 ((_ is Node!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))

(declare-fun e!1565936 () Bool)

(assert (=> d!710549 (= (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) e!1565936)))

(declare-fun b!2468662 () Bool)

(declare-fun inv!38874 (Conc!9197) Bool)

(assert (=> b!2468662 (= e!1565936 (inv!38874 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))

(declare-fun b!2468663 () Bool)

(declare-fun e!1565937 () Bool)

(assert (=> b!2468663 (= e!1565936 e!1565937)))

(declare-fun res!1045665 () Bool)

(assert (=> b!2468663 (= res!1045665 (not ((_ is Leaf!13746) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(assert (=> b!2468663 (=> res!1045665 e!1565937)))

(declare-fun b!2468664 () Bool)

(declare-fun inv!38875 (Conc!9197) Bool)

(assert (=> b!2468664 (= e!1565937 (inv!38875 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))

(assert (= (and d!710549 c!393434) b!2468662))

(assert (= (and d!710549 (not c!393434)) b!2468663))

(assert (= (and b!2468663 (not res!1045665)) b!2468664))

(declare-fun m!2837899 () Bool)

(assert (=> b!2468662 m!2837899))

(declare-fun m!2837901 () Bool)

(assert (=> b!2468664 m!2837901))

(assert (=> b!2468483 d!710549))

(declare-fun b!2468665 () Bool)

(declare-fun e!1565938 () Bool)

(assert (=> b!2468665 (= e!1565938 (inv!17 (value!143171 (h!34183 (t!209627 l!6611)))))))

(declare-fun b!2468666 () Bool)

(declare-fun e!1565939 () Bool)

(assert (=> b!2468666 (= e!1565939 e!1565938)))

(declare-fun c!393435 () Bool)

(assert (=> b!2468666 (= c!393435 ((_ is IntegerValue!14008) (value!143171 (h!34183 (t!209627 l!6611)))))))

(declare-fun d!710555 () Bool)

(declare-fun c!393436 () Bool)

(assert (=> d!710555 (= c!393436 ((_ is IntegerValue!14007) (value!143171 (h!34183 (t!209627 l!6611)))))))

(assert (=> d!710555 (= (inv!21 (value!143171 (h!34183 (t!209627 l!6611)))) e!1565939)))

(declare-fun b!2468667 () Bool)

(declare-fun res!1045666 () Bool)

(declare-fun e!1565940 () Bool)

(assert (=> b!2468667 (=> res!1045666 e!1565940)))

(assert (=> b!2468667 (= res!1045666 (not ((_ is IntegerValue!14009) (value!143171 (h!34183 (t!209627 l!6611))))))))

(assert (=> b!2468667 (= e!1565938 e!1565940)))

(declare-fun b!2468668 () Bool)

(assert (=> b!2468668 (= e!1565940 (inv!15 (value!143171 (h!34183 (t!209627 l!6611)))))))

(declare-fun b!2468669 () Bool)

(assert (=> b!2468669 (= e!1565939 (inv!16 (value!143171 (h!34183 (t!209627 l!6611)))))))

(assert (= (and d!710555 c!393436) b!2468669))

(assert (= (and d!710555 (not c!393436)) b!2468666))

(assert (= (and b!2468666 c!393435) b!2468665))

(assert (= (and b!2468666 (not c!393435)) b!2468667))

(assert (= (and b!2468667 (not res!1045666)) b!2468668))

(declare-fun m!2837903 () Bool)

(assert (=> b!2468665 m!2837903))

(declare-fun m!2837905 () Bool)

(assert (=> b!2468668 m!2837905))

(declare-fun m!2837907 () Bool)

(assert (=> b!2468669 m!2837907))

(assert (=> b!2468542 d!710555))

(declare-fun d!710557 () Bool)

(assert (=> d!710557 (= (inv!38865 (tag!4973 (h!34184 (t!209628 rules!4472)))) (= (mod (str.len (value!143170 (tag!4973 (h!34184 (t!209628 rules!4472))))) 2) 0))))

(assert (=> b!2468529 d!710557))

(declare-fun d!710559 () Bool)

(declare-fun res!1045667 () Bool)

(declare-fun e!1565941 () Bool)

(assert (=> d!710559 (=> (not res!1045667) (not e!1565941))))

(assert (=> d!710559 (= res!1045667 (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472))))))))

(assert (=> d!710559 (= (inv!38868 (transformation!4483 (h!34184 (t!209628 rules!4472)))) e!1565941)))

(declare-fun b!2468670 () Bool)

(assert (=> b!2468670 (= e!1565941 (equivClasses!1755 (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472))))))))

(assert (= (and d!710559 res!1045667) b!2468670))

(declare-fun m!2837909 () Bool)

(assert (=> d!710559 m!2837909))

(declare-fun m!2837911 () Bool)

(assert (=> b!2468670 m!2837911))

(assert (=> b!2468529 d!710559))

(declare-fun d!710561 () Bool)

(assert (=> d!710561 true))

(declare-fun lt!882858 () Bool)

(declare-fun rulesValidInductive!1584 (LexerInterface!4080 List!28883) Bool)

(assert (=> d!710561 (= lt!882858 (rulesValidInductive!1584 thiss!27932 rules!4472))))

(declare-fun lambda!93273 () Int)

(declare-fun forall!5901 (List!28883 Int) Bool)

(assert (=> d!710561 (= lt!882858 (forall!5901 rules!4472 lambda!93273))))

(assert (=> d!710561 (= (rulesValid!1667 thiss!27932 rules!4472) lt!882858)))

(declare-fun bs!466716 () Bool)

(assert (= bs!466716 d!710561))

(declare-fun m!2837923 () Bool)

(assert (=> bs!466716 m!2837923))

(declare-fun m!2837925 () Bool)

(assert (=> bs!466716 m!2837925))

(assert (=> d!710453 d!710561))

(declare-fun d!710569 () Bool)

(declare-fun charsToBigInt!0 (List!28880 Int) Int)

(assert (=> d!710569 (= (inv!15 (value!143171 t1!67)) (= (charsToBigInt!0 (text!33132 (value!143171 t1!67)) 0) (value!143166 (value!143171 t1!67))))))

(declare-fun bs!466721 () Bool)

(assert (= bs!466721 d!710569))

(declare-fun m!2837943 () Bool)

(assert (=> bs!466721 m!2837943))

(assert (=> b!2468254 d!710569))

(declare-fun d!710577 () Bool)

(declare-fun charsToInt!0 (List!28880) (_ BitVec 32))

(assert (=> d!710577 (= (inv!16 (value!143171 t2!67)) (= (charsToInt!0 (text!33130 (value!143171 t2!67))) (value!143162 (value!143171 t2!67))))))

(declare-fun bs!466722 () Bool)

(assert (= bs!466722 d!710577))

(declare-fun m!2837951 () Bool)

(assert (=> bs!466722 m!2837951))

(assert (=> b!2468366 d!710577))

(declare-fun d!710583 () Bool)

(assert (=> d!710583 (= (inv!15 (value!143171 (h!34183 l!6611))) (= (charsToBigInt!0 (text!33132 (value!143171 (h!34183 l!6611))) 0) (value!143166 (value!143171 (h!34183 l!6611)))))))

(declare-fun bs!466724 () Bool)

(assert (= bs!466724 d!710583))

(declare-fun m!2837953 () Bool)

(assert (=> bs!466724 m!2837953))

(assert (=> b!2468461 d!710583))

(declare-fun bs!466728 () Bool)

(declare-fun d!710585 () Bool)

(assert (= bs!466728 (and d!710585 d!710543)))

(declare-fun lambda!93276 () Int)

(assert (=> bs!466728 (= (= (toValue!6343 (transformation!4483 (rule!6841 t2!67))) (toValue!6343 (transformation!4483 (rule!6841 t1!67)))) (= lambda!93276 lambda!93270))))

(assert (=> d!710585 true))

(assert (=> d!710585 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (rule!6841 t2!67)))) (dynLambda!12356 order!15601 lambda!93276))))

(assert (=> d!710585 (= (equivClasses!1755 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toValue!6343 (transformation!4483 (rule!6841 t2!67)))) (Forall2!746 lambda!93276))))

(declare-fun bs!466729 () Bool)

(assert (= bs!466729 d!710585))

(declare-fun m!2837957 () Bool)

(assert (=> bs!466729 m!2837957))

(assert (=> b!2468292 d!710585))

(declare-fun d!710589 () Bool)

(assert (=> d!710589 (= (isEmpty!16720 (originalCharacters!5249 t1!67)) ((_ is Nil!28781) (originalCharacters!5249 t1!67)))))

(assert (=> d!710443 d!710589))

(assert (=> b!2468289 d!710417))

(declare-fun d!710591 () Bool)

(declare-fun lt!882861 () Token!8436)

(assert (=> d!710591 (contains!4913 (tail!3916 l!6611) lt!882861)))

(declare-fun e!1565955 () Token!8436)

(assert (=> d!710591 (= lt!882861 e!1565955)))

(declare-fun c!393440 () Bool)

(assert (=> d!710591 (= c!393440 (= (- i!1803 1) 0))))

(declare-fun e!1565954 () Bool)

(assert (=> d!710591 e!1565954))

(declare-fun res!1045677 () Bool)

(assert (=> d!710591 (=> (not res!1045677) (not e!1565954))))

(assert (=> d!710591 (= res!1045677 (<= 0 (- i!1803 1)))))

(assert (=> d!710591 (= (apply!6774 (tail!3916 l!6611) (- i!1803 1)) lt!882861)))

(declare-fun b!2468689 () Bool)

(assert (=> b!2468689 (= e!1565954 (< (- i!1803 1) (size!22394 (tail!3916 l!6611))))))

(declare-fun b!2468690 () Bool)

(assert (=> b!2468690 (= e!1565955 (head!5635 (tail!3916 l!6611)))))

(declare-fun b!2468691 () Bool)

(assert (=> b!2468691 (= e!1565955 (apply!6774 (tail!3916 (tail!3916 l!6611)) (- (- i!1803 1) 1)))))

(assert (= (and d!710591 res!1045677) b!2468689))

(assert (= (and d!710591 c!393440) b!2468690))

(assert (= (and d!710591 (not c!393440)) b!2468691))

(assert (=> d!710591 m!2837423))

(declare-fun m!2837963 () Bool)

(assert (=> d!710591 m!2837963))

(assert (=> b!2468689 m!2837423))

(declare-fun m!2837965 () Bool)

(assert (=> b!2468689 m!2837965))

(assert (=> b!2468690 m!2837423))

(declare-fun m!2837967 () Bool)

(assert (=> b!2468690 m!2837967))

(assert (=> b!2468691 m!2837423))

(declare-fun m!2837969 () Bool)

(assert (=> b!2468691 m!2837969))

(assert (=> b!2468691 m!2837969))

(declare-fun m!2837971 () Bool)

(assert (=> b!2468691 m!2837971))

(assert (=> b!2468291 d!710591))

(declare-fun d!710599 () Bool)

(assert (=> d!710599 (= (tail!3916 l!6611) (t!209627 l!6611))))

(assert (=> b!2468291 d!710599))

(assert (=> b!2468346 d!710539))

(declare-fun d!710607 () Bool)

(declare-fun lt!882870 () C!14700)

(declare-fun apply!6778 (List!28881 Int) C!14700)

(assert (=> d!710607 (= lt!882870 (apply!6778 (list!11131 (charsOf!2822 t2!67)) 0))))

(declare-fun apply!6779 (Conc!9197 Int) C!14700)

(assert (=> d!710607 (= lt!882870 (apply!6779 (c!393380 (charsOf!2822 t2!67)) 0))))

(declare-fun e!1565960 () Bool)

(assert (=> d!710607 e!1565960))

(declare-fun res!1045681 () Bool)

(assert (=> d!710607 (=> (not res!1045681) (not e!1565960))))

(assert (=> d!710607 (= res!1045681 (<= 0 0))))

(assert (=> d!710607 (= (apply!6776 (charsOf!2822 t2!67) 0) lt!882870)))

(declare-fun b!2468699 () Bool)

(assert (=> b!2468699 (= e!1565960 (< 0 (size!22397 (charsOf!2822 t2!67))))))

(assert (= (and d!710607 res!1045681) b!2468699))

(assert (=> d!710607 m!2837477))

(declare-fun m!2837983 () Bool)

(assert (=> d!710607 m!2837983))

(assert (=> d!710607 m!2837983))

(declare-fun m!2837985 () Bool)

(assert (=> d!710607 m!2837985))

(declare-fun m!2837987 () Bool)

(assert (=> d!710607 m!2837987))

(assert (=> b!2468699 m!2837477))

(declare-fun m!2837989 () Bool)

(assert (=> b!2468699 m!2837989))

(assert (=> d!710389 d!710607))

(declare-fun d!710611 () Bool)

(declare-fun lt!882872 () BalanceConc!18008)

(assert (=> d!710611 (= (list!11131 lt!882872) (originalCharacters!5249 t1!67))))

(assert (=> d!710611 (= lt!882872 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))

(assert (=> d!710611 (= (charsOf!2822 t1!67) lt!882872)))

(declare-fun b_lambda!75699 () Bool)

(assert (=> (not b_lambda!75699) (not d!710611)))

(assert (=> d!710611 t!209702))

(declare-fun b_and!186965 () Bool)

(assert (= b_and!186919 (and (=> t!209702 result!172312) b_and!186965)))

(assert (=> d!710611 t!209680))

(declare-fun b_and!186967 () Bool)

(assert (= b_and!186923 (and (=> t!209680 result!172282) b_and!186967)))

(assert (=> d!710611 t!209678))

(declare-fun b_and!186969 () Bool)

(assert (= b_and!186917 (and (=> t!209678 result!172280) b_and!186969)))

(assert (=> d!710611 t!209684))

(declare-fun b_and!186971 () Bool)

(assert (= b_and!186927 (and (=> t!209684 result!172286) b_and!186971)))

(assert (=> d!710611 t!209696))

(declare-fun b_and!186973 () Bool)

(assert (= b_and!186921 (and (=> t!209696 result!172304) b_and!186973)))

(assert (=> d!710611 t!209682))

(declare-fun b_and!186975 () Bool)

(assert (= b_and!186925 (and (=> t!209682 result!172284) b_and!186975)))

(declare-fun m!2837997 () Bool)

(assert (=> d!710611 m!2837997))

(assert (=> d!710611 m!2837621))

(assert (=> d!710389 d!710611))

(declare-fun lt!882876 () BalanceConc!18008)

(declare-fun e!1565963 () Bool)

(declare-fun b!2468711 () Bool)

(declare-fun ++!7140 (List!28881 List!28881) List!28881)

(assert (=> b!2468711 (= e!1565963 (= (list!11131 lt!882876) (++!7140 (list!11131 (charsOf!2822 t1!67)) (list!11131 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun b!2468710 () Bool)

(declare-fun res!1045692 () Bool)

(assert (=> b!2468710 (=> (not res!1045692) (not e!1565963))))

(declare-fun height!1341 (Conc!9197) Int)

(declare-fun ++!7141 (Conc!9197 Conc!9197) Conc!9197)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2468710 (= res!1045692 (>= (height!1341 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) (max!0 (height!1341 (c!393380 (charsOf!2822 t1!67))) (height!1341 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(declare-fun b!2468708 () Bool)

(declare-fun res!1045691 () Bool)

(assert (=> b!2468708 (=> (not res!1045691) (not e!1565963))))

(assert (=> b!2468708 (= res!1045691 (isBalanced!2801 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun d!710615 () Bool)

(assert (=> d!710615 e!1565963))

(declare-fun res!1045693 () Bool)

(assert (=> d!710615 (=> (not res!1045693) (not e!1565963))))

(declare-fun appendAssocInst!615 (Conc!9197 Conc!9197) Bool)

(assert (=> d!710615 (= res!1045693 (appendAssocInst!615 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))

(assert (=> d!710615 (= lt!882876 (BalanceConc!18009 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(assert (=> d!710615 (= (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882876)))

(declare-fun b!2468709 () Bool)

(declare-fun res!1045690 () Bool)

(assert (=> b!2468709 (=> (not res!1045690) (not e!1565963))))

(assert (=> b!2468709 (= res!1045690 (<= (height!1341 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) (+ (max!0 (height!1341 (c!393380 (charsOf!2822 t1!67))) (height!1341 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) 1)))))

(assert (= (and d!710615 res!1045693) b!2468708))

(assert (= (and b!2468708 res!1045691) b!2468709))

(assert (= (and b!2468709 res!1045690) b!2468710))

(assert (= (and b!2468710 res!1045692) b!2468711))

(declare-fun m!2838011 () Bool)

(assert (=> b!2468711 m!2838011))

(assert (=> b!2468711 m!2837471))

(declare-fun m!2838013 () Bool)

(assert (=> b!2468711 m!2838013))

(assert (=> b!2468711 m!2837467))

(declare-fun m!2838015 () Bool)

(assert (=> b!2468711 m!2838015))

(assert (=> b!2468711 m!2838013))

(assert (=> b!2468711 m!2838015))

(declare-fun m!2838017 () Bool)

(assert (=> b!2468711 m!2838017))

(declare-fun m!2838019 () Bool)

(assert (=> d!710615 m!2838019))

(declare-fun m!2838021 () Bool)

(assert (=> d!710615 m!2838021))

(assert (=> b!2468708 m!2838021))

(assert (=> b!2468708 m!2838021))

(declare-fun m!2838023 () Bool)

(assert (=> b!2468708 m!2838023))

(declare-fun m!2838025 () Bool)

(assert (=> b!2468709 m!2838025))

(assert (=> b!2468709 m!2838021))

(declare-fun m!2838027 () Bool)

(assert (=> b!2468709 m!2838027))

(declare-fun m!2838029 () Bool)

(assert (=> b!2468709 m!2838029))

(assert (=> b!2468709 m!2838025))

(declare-fun m!2838031 () Bool)

(assert (=> b!2468709 m!2838031))

(assert (=> b!2468709 m!2838021))

(assert (=> b!2468709 m!2838029))

(assert (=> b!2468710 m!2838025))

(assert (=> b!2468710 m!2838021))

(assert (=> b!2468710 m!2838027))

(assert (=> b!2468710 m!2838029))

(assert (=> b!2468710 m!2838025))

(assert (=> b!2468710 m!2838031))

(assert (=> b!2468710 m!2838021))

(assert (=> b!2468710 m!2838029))

(assert (=> d!710389 d!710615))

(declare-fun d!710621 () Bool)

(declare-fun lt!882877 () BalanceConc!18008)

(assert (=> d!710621 (= (list!11131 lt!882877) (originalCharacters!5249 t2!67))))

(assert (=> d!710621 (= lt!882877 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))

(assert (=> d!710621 (= (charsOf!2822 t2!67) lt!882877)))

(declare-fun b_lambda!75703 () Bool)

(assert (=> (not b_lambda!75703) (not d!710621)))

(assert (=> d!710621 t!209676))

(declare-fun b_and!186989 () Bool)

(assert (= b_and!186971 (and (=> t!209676 result!172278) b_and!186989)))

(assert (=> d!710621 t!209694))

(declare-fun b_and!186991 () Bool)

(assert (= b_and!186973 (and (=> t!209694 result!172302) b_and!186991)))

(assert (=> d!710621 t!209672))

(declare-fun b_and!186993 () Bool)

(assert (= b_and!186967 (and (=> t!209672 result!172274) b_and!186993)))

(assert (=> d!710621 t!209674))

(declare-fun b_and!186995 () Bool)

(assert (= b_and!186975 (and (=> t!209674 result!172276) b_and!186995)))

(assert (=> d!710621 t!209700))

(declare-fun b_and!186997 () Bool)

(assert (= b_and!186965 (and (=> t!209700 result!172310) b_and!186997)))

(assert (=> d!710621 t!209670))

(declare-fun b_and!186999 () Bool)

(assert (= b_and!186969 (and (=> t!209670 result!172270) b_and!186999)))

(declare-fun m!2838033 () Bool)

(assert (=> d!710621 m!2838033))

(assert (=> d!710621 m!2837609))

(assert (=> d!710389 d!710621))

(declare-fun d!710623 () Bool)

(declare-fun e!1565966 () Bool)

(assert (=> d!710623 e!1565966))

(declare-fun res!1045696 () Bool)

(assert (=> d!710623 (=> (not res!1045696) (not e!1565966))))

(declare-fun lt!882880 () BalanceConc!18008)

(assert (=> d!710623 (= res!1045696 (= (list!11131 lt!882880) (Cons!28781 (apply!6776 (charsOf!2822 t2!67) 0) Nil!28781)))))

(declare-fun singleton!893 (C!14700) BalanceConc!18008)

(assert (=> d!710623 (= lt!882880 (singleton!893 (apply!6776 (charsOf!2822 t2!67) 0)))))

(assert (=> d!710623 (= (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)) lt!882880)))

(declare-fun b!2468714 () Bool)

(assert (=> b!2468714 (= e!1565966 (isBalanced!2801 (c!393380 lt!882880)))))

(assert (= (and d!710623 res!1045696) b!2468714))

(declare-fun m!2838035 () Bool)

(assert (=> d!710623 m!2838035))

(assert (=> d!710623 m!2837465))

(declare-fun m!2838037 () Bool)

(assert (=> d!710623 m!2838037))

(declare-fun m!2838039 () Bool)

(assert (=> b!2468714 m!2838039))

(assert (=> d!710389 d!710623))

(declare-fun d!710625 () Bool)

(declare-fun lt!882883 () Unit!42121)

(declare-fun lemma!557 (List!28883 LexerInterface!4080 List!28883) Unit!42121)

(assert (=> d!710625 (= lt!882883 (lemma!557 rules!4472 thiss!27932 rules!4472))))

(declare-fun lambda!93282 () Int)

(declare-datatypes ((List!28886 0))(
  ( (Nil!28786) (Cons!28786 (h!34187 Regex!7271) (t!209769 List!28886)) )
))
(declare-fun generalisedUnion!534 (List!28886) Regex!7271)

(declare-fun map!5985 (List!28883 Int) List!28886)

(assert (=> d!710625 (= (rulesRegex!979 thiss!27932 rules!4472) (generalisedUnion!534 (map!5985 rules!4472 lambda!93282)))))

(declare-fun bs!466735 () Bool)

(assert (= bs!466735 d!710625))

(declare-fun m!2838041 () Bool)

(assert (=> bs!466735 m!2838041))

(declare-fun m!2838043 () Bool)

(assert (=> bs!466735 m!2838043))

(assert (=> bs!466735 m!2838043))

(declare-fun m!2838045 () Bool)

(assert (=> bs!466735 m!2838045))

(assert (=> d!710389 d!710625))

(declare-fun d!710627 () Bool)

(declare-fun lt!882911 () Bool)

(declare-fun prefixMatch!805 (Regex!7271 List!28881) Bool)

(assert (=> d!710627 (= lt!882911 (prefixMatch!805 (rulesRegex!979 thiss!27932 rules!4472) (list!11131 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Context!4236 0))(
  ( (Context!4237 (exprs!2618 List!28886)) )
))
(declare-fun prefixMatchZipperSequence!722 ((InoxSet Context!4236) BalanceConc!18008 Int) Bool)

(declare-fun focus!282 (Regex!7271) (InoxSet Context!4236))

(assert (=> d!710627 (= lt!882911 (prefixMatchZipperSequence!722 (focus!282 (rulesRegex!979 thiss!27932 rules!4472)) (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) 0))))

(declare-fun lt!882907 () Unit!42121)

(declare-fun lt!882910 () Unit!42121)

(assert (=> d!710627 (= lt!882907 lt!882910)))

(declare-fun lt!882905 () (InoxSet Context!4236))

(declare-fun lt!882908 () List!28881)

(declare-fun prefixMatchZipper!221 ((InoxSet Context!4236) List!28881) Bool)

(assert (=> d!710627 (= (prefixMatch!805 (rulesRegex!979 thiss!27932 rules!4472) lt!882908) (prefixMatchZipper!221 lt!882905 lt!882908))))

(declare-datatypes ((List!28887 0))(
  ( (Nil!28787) (Cons!28787 (h!34188 Context!4236) (t!209770 List!28887)) )
))
(declare-fun lt!882906 () List!28887)

(declare-fun prefixMatchZipperRegexEquiv!221 ((InoxSet Context!4236) List!28887 Regex!7271 List!28881) Unit!42121)

(assert (=> d!710627 (= lt!882910 (prefixMatchZipperRegexEquiv!221 lt!882905 lt!882906 (rulesRegex!979 thiss!27932 rules!4472) lt!882908))))

(assert (=> d!710627 (= lt!882908 (list!11131 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))

(declare-fun toList!1433 ((InoxSet Context!4236)) List!28887)

(assert (=> d!710627 (= lt!882906 (toList!1433 (focus!282 (rulesRegex!979 thiss!27932 rules!4472))))))

(assert (=> d!710627 (= lt!882905 (focus!282 (rulesRegex!979 thiss!27932 rules!4472)))))

(declare-fun lt!882904 () Unit!42121)

(declare-fun lt!882913 () Unit!42121)

(assert (=> d!710627 (= lt!882904 lt!882913)))

(declare-fun lt!882912 () (InoxSet Context!4236))

(declare-fun lt!882909 () Int)

(declare-fun dropList!827 (BalanceConc!18008 Int) List!28881)

(assert (=> d!710627 (= (prefixMatchZipper!221 lt!882912 (dropList!827 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909)) (prefixMatchZipperSequence!722 lt!882912 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!221 ((InoxSet Context!4236) BalanceConc!18008 Int) Unit!42121)

(assert (=> d!710627 (= lt!882913 (lemmaprefixMatchZipperSequenceEquivalent!221 lt!882912 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909))))

(assert (=> d!710627 (= lt!882909 0)))

(assert (=> d!710627 (= lt!882912 (focus!282 (rulesRegex!979 thiss!27932 rules!4472)))))

(declare-fun validRegex!2922 (Regex!7271) Bool)

(assert (=> d!710627 (validRegex!2922 (rulesRegex!979 thiss!27932 rules!4472))))

(assert (=> d!710627 (= (prefixMatchZipperSequence!721 (rulesRegex!979 thiss!27932 rules!4472) (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) lt!882911)))

(declare-fun bs!466736 () Bool)

(assert (= bs!466736 d!710627))

(declare-fun m!2838047 () Bool)

(assert (=> bs!466736 m!2838047))

(declare-fun m!2838049 () Bool)

(assert (=> bs!466736 m!2838049))

(assert (=> bs!466736 m!2838047))

(assert (=> bs!466736 m!2837473))

(declare-fun m!2838051 () Bool)

(assert (=> bs!466736 m!2838051))

(assert (=> bs!466736 m!2837473))

(declare-fun m!2838053 () Bool)

(assert (=> bs!466736 m!2838053))

(assert (=> bs!466736 m!2837469))

(declare-fun m!2838055 () Bool)

(assert (=> bs!466736 m!2838055))

(assert (=> bs!466736 m!2837469))

(declare-fun m!2838057 () Bool)

(assert (=> bs!466736 m!2838057))

(assert (=> bs!466736 m!2837473))

(declare-fun m!2838059 () Bool)

(assert (=> bs!466736 m!2838059))

(assert (=> bs!466736 m!2837473))

(declare-fun m!2838061 () Bool)

(assert (=> bs!466736 m!2838061))

(declare-fun m!2838063 () Bool)

(assert (=> bs!466736 m!2838063))

(assert (=> bs!466736 m!2837469))

(declare-fun m!2838065 () Bool)

(assert (=> bs!466736 m!2838065))

(assert (=> bs!466736 m!2837469))

(assert (=> bs!466736 m!2838061))

(declare-fun m!2838067 () Bool)

(assert (=> bs!466736 m!2838067))

(declare-fun m!2838069 () Bool)

(assert (=> bs!466736 m!2838069))

(declare-fun m!2838071 () Bool)

(assert (=> bs!466736 m!2838071))

(assert (=> bs!466736 m!2837469))

(assert (=> bs!466736 m!2838047))

(assert (=> bs!466736 m!2837473))

(assert (=> bs!466736 m!2838069))

(assert (=> d!710389 d!710627))

(declare-fun d!710629 () Bool)

(declare-fun lt!882914 () Int)

(assert (=> d!710629 (>= lt!882914 0)))

(declare-fun e!1565967 () Int)

(assert (=> d!710629 (= lt!882914 e!1565967)))

(declare-fun c!393445 () Bool)

(assert (=> d!710629 (= c!393445 ((_ is Nil!28781) (originalCharacters!5249 (h!34183 l!6611))))))

(assert (=> d!710629 (= (size!22398 (originalCharacters!5249 (h!34183 l!6611))) lt!882914)))

(declare-fun b!2468715 () Bool)

(assert (=> b!2468715 (= e!1565967 0)))

(declare-fun b!2468716 () Bool)

(assert (=> b!2468716 (= e!1565967 (+ 1 (size!22398 (t!209626 (originalCharacters!5249 (h!34183 l!6611))))))))

(assert (= (and d!710629 c!393445) b!2468715))

(assert (= (and d!710629 (not c!393445)) b!2468716))

(declare-fun m!2838073 () Bool)

(assert (=> b!2468716 m!2838073))

(assert (=> b!2468482 d!710629))

(declare-fun d!710631 () Bool)

(declare-fun lt!882915 () Int)

(assert (=> d!710631 (>= lt!882915 0)))

(declare-fun e!1565968 () Int)

(assert (=> d!710631 (= lt!882915 e!1565968)))

(declare-fun c!393446 () Bool)

(assert (=> d!710631 (= c!393446 ((_ is Nil!28781) (originalCharacters!5249 t2!67)))))

(assert (=> d!710631 (= (size!22398 (originalCharacters!5249 t2!67)) lt!882915)))

(declare-fun b!2468717 () Bool)

(assert (=> b!2468717 (= e!1565968 0)))

(declare-fun b!2468718 () Bool)

(assert (=> b!2468718 (= e!1565968 (+ 1 (size!22398 (t!209626 (originalCharacters!5249 t2!67)))))))

(assert (= (and d!710631 c!393446) b!2468717))

(assert (= (and d!710631 (not c!393446)) b!2468718))

(declare-fun m!2838075 () Bool)

(assert (=> b!2468718 m!2838075))

(assert (=> b!2468468 d!710631))

(declare-fun d!710633 () Bool)

(declare-fun lt!882918 () Bool)

(declare-fun content!3953 (List!28882) (InoxSet Token!8436))

(assert (=> d!710633 (= lt!882918 (select (content!3953 l!6611) lt!882714))))

(declare-fun e!1565973 () Bool)

(assert (=> d!710633 (= lt!882918 e!1565973)))

(declare-fun res!1045702 () Bool)

(assert (=> d!710633 (=> (not res!1045702) (not e!1565973))))

(assert (=> d!710633 (= res!1045702 ((_ is Cons!28782) l!6611))))

(assert (=> d!710633 (= (contains!4913 l!6611 lt!882714) lt!882918)))

(declare-fun b!2468723 () Bool)

(declare-fun e!1565974 () Bool)

(assert (=> b!2468723 (= e!1565973 e!1565974)))

(declare-fun res!1045701 () Bool)

(assert (=> b!2468723 (=> res!1045701 e!1565974)))

(assert (=> b!2468723 (= res!1045701 (= (h!34183 l!6611) lt!882714))))

(declare-fun b!2468724 () Bool)

(assert (=> b!2468724 (= e!1565974 (contains!4913 (t!209627 l!6611) lt!882714))))

(assert (= (and d!710633 res!1045702) b!2468723))

(assert (= (and b!2468723 (not res!1045701)) b!2468724))

(declare-fun m!2838077 () Bool)

(assert (=> d!710633 m!2838077))

(declare-fun m!2838079 () Bool)

(assert (=> d!710633 m!2838079))

(declare-fun m!2838081 () Bool)

(assert (=> b!2468724 m!2838081))

(assert (=> d!710377 d!710633))

(declare-fun bs!466737 () Bool)

(declare-fun d!710635 () Bool)

(assert (= bs!466737 (and d!710635 d!710543)))

(declare-fun lambda!93283 () Int)

(assert (=> bs!466737 (= (= (toValue!6343 (transformation!4483 (h!34184 rules!4472))) (toValue!6343 (transformation!4483 (rule!6841 t1!67)))) (= lambda!93283 lambda!93270))))

(declare-fun bs!466738 () Bool)

(assert (= bs!466738 (and d!710635 d!710585)))

(assert (=> bs!466738 (= (= (toValue!6343 (transformation!4483 (h!34184 rules!4472))) (toValue!6343 (transformation!4483 (rule!6841 t2!67)))) (= lambda!93283 lambda!93276))))

(assert (=> d!710635 true))

(assert (=> d!710635 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (h!34184 rules!4472)))) (dynLambda!12356 order!15601 lambda!93283))))

(assert (=> d!710635 (= (equivClasses!1755 (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toValue!6343 (transformation!4483 (h!34184 rules!4472)))) (Forall2!746 lambda!93283))))

(declare-fun bs!466739 () Bool)

(assert (= bs!466739 d!710635))

(declare-fun m!2838083 () Bool)

(assert (=> bs!466739 m!2838083))

(assert (=> b!2468477 d!710635))

(declare-fun bs!466740 () Bool)

(declare-fun d!710637 () Bool)

(assert (= bs!466740 (and d!710637 d!710543)))

(declare-fun lambda!93284 () Int)

(assert (=> bs!466740 (= (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toValue!6343 (transformation!4483 (rule!6841 t1!67)))) (= lambda!93284 lambda!93270))))

(declare-fun bs!466741 () Bool)

(assert (= bs!466741 (and d!710637 d!710585)))

(assert (=> bs!466741 (= (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toValue!6343 (transformation!4483 (rule!6841 t2!67)))) (= lambda!93284 lambda!93276))))

(declare-fun bs!466742 () Bool)

(assert (= bs!466742 (and d!710637 d!710635)))

(assert (=> bs!466742 (= (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toValue!6343 (transformation!4483 (h!34184 rules!4472)))) (= lambda!93284 lambda!93283))))

(assert (=> d!710637 true))

(assert (=> d!710637 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611))))) (dynLambda!12356 order!15601 lambda!93284))))

(assert (=> d!710637 (= (equivClasses!1755 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611))))) (Forall2!746 lambda!93284))))

(declare-fun bs!466743 () Bool)

(assert (= bs!466743 d!710637))

(declare-fun m!2838085 () Bool)

(assert (=> bs!466743 m!2838085))

(assert (=> b!2468361 d!710637))

(declare-fun d!710639 () Bool)

(assert (=> d!710639 (= (inv!38873 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))) (isBalanced!2801 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))

(declare-fun bs!466744 () Bool)

(assert (= bs!466744 d!710639))

(declare-fun m!2838087 () Bool)

(assert (=> bs!466744 m!2838087))

(assert (=> tb!139589 d!710639))

(declare-fun d!710641 () Bool)

(declare-fun res!1045703 () Bool)

(declare-fun e!1565975 () Bool)

(assert (=> d!710641 (=> (not res!1045703) (not e!1565975))))

(assert (=> d!710641 (= res!1045703 (not (isEmpty!16720 (originalCharacters!5249 (h!34183 (t!209627 l!6611))))))))

(assert (=> d!710641 (= (inv!38869 (h!34183 (t!209627 l!6611))) e!1565975)))

(declare-fun b!2468725 () Bool)

(declare-fun res!1045704 () Bool)

(assert (=> b!2468725 (=> (not res!1045704) (not e!1565975))))

(assert (=> b!2468725 (= res!1045704 (= (originalCharacters!5249 (h!34183 (t!209627 l!6611))) (list!11131 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611)))))))))

(declare-fun b!2468726 () Bool)

(assert (=> b!2468726 (= e!1565975 (= (size!22393 (h!34183 (t!209627 l!6611))) (size!22398 (originalCharacters!5249 (h!34183 (t!209627 l!6611))))))))

(assert (= (and d!710641 res!1045703) b!2468725))

(assert (= (and b!2468725 res!1045704) b!2468726))

(declare-fun b_lambda!75705 () Bool)

(assert (=> (not b_lambda!75705) (not b!2468725)))

(assert (=> b!2468725 t!209714))

(declare-fun b_and!187001 () Bool)

(assert (= b_and!186993 (and (=> t!209714 result!172322) b_and!187001)))

(assert (=> b!2468725 t!209718))

(declare-fun b_and!187003 () Bool)

(assert (= b_and!186989 (and (=> t!209718 result!172326) b_and!187003)))

(assert (=> b!2468725 t!209712))

(declare-fun b_and!187005 () Bool)

(assert (= b_and!186991 (and (=> t!209712 result!172320) b_and!187005)))

(assert (=> b!2468725 t!209716))

(declare-fun b_and!187007 () Bool)

(assert (= b_and!186995 (and (=> t!209716 result!172324) b_and!187007)))

(assert (=> b!2468725 t!209708))

(declare-fun b_and!187009 () Bool)

(assert (= b_and!186999 (and (=> t!209708 result!172316) b_and!187009)))

(assert (=> b!2468725 t!209710))

(declare-fun b_and!187011 () Bool)

(assert (= b_and!186997 (and (=> t!209710 result!172318) b_and!187011)))

(declare-fun m!2838089 () Bool)

(assert (=> d!710641 m!2838089))

(assert (=> b!2468725 m!2837701))

(assert (=> b!2468725 m!2837701))

(declare-fun m!2838091 () Bool)

(assert (=> b!2468725 m!2838091))

(declare-fun m!2838093 () Bool)

(assert (=> b!2468726 m!2838093))

(assert (=> b!2468541 d!710641))

(declare-fun d!710643 () Bool)

(assert (=> d!710643 (= (inv!38873 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))) (isBalanced!2801 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))

(declare-fun bs!466745 () Bool)

(assert (= bs!466745 d!710643))

(declare-fun m!2838095 () Bool)

(assert (=> bs!466745 m!2838095))

(assert (=> tb!139573 d!710643))

(declare-fun d!710645 () Bool)

(declare-fun c!393447 () Bool)

(assert (=> d!710645 (= c!393447 ((_ is Node!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))

(declare-fun e!1565976 () Bool)

(assert (=> d!710645 (= (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) e!1565976)))

(declare-fun b!2468727 () Bool)

(assert (=> b!2468727 (= e!1565976 (inv!38874 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))

(declare-fun b!2468728 () Bool)

(declare-fun e!1565977 () Bool)

(assert (=> b!2468728 (= e!1565976 e!1565977)))

(declare-fun res!1045705 () Bool)

(assert (=> b!2468728 (= res!1045705 (not ((_ is Leaf!13746) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(assert (=> b!2468728 (=> res!1045705 e!1565977)))

(declare-fun b!2468729 () Bool)

(assert (=> b!2468729 (= e!1565977 (inv!38875 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))

(assert (= (and d!710645 c!393447) b!2468727))

(assert (= (and d!710645 (not c!393447)) b!2468728))

(assert (= (and b!2468728 (not res!1045705)) b!2468729))

(declare-fun m!2838097 () Bool)

(assert (=> b!2468727 m!2838097))

(declare-fun m!2838099 () Bool)

(assert (=> b!2468729 m!2838099))

(assert (=> b!2468473 d!710645))

(declare-fun d!710647 () Bool)

(declare-fun lt!882919 () Bool)

(assert (=> d!710647 (= lt!882919 (select (content!3953 l!6611) lt!882770))))

(declare-fun e!1565978 () Bool)

(assert (=> d!710647 (= lt!882919 e!1565978)))

(declare-fun res!1045707 () Bool)

(assert (=> d!710647 (=> (not res!1045707) (not e!1565978))))

(assert (=> d!710647 (= res!1045707 ((_ is Cons!28782) l!6611))))

(assert (=> d!710647 (= (contains!4913 l!6611 lt!882770) lt!882919)))

(declare-fun b!2468730 () Bool)

(declare-fun e!1565979 () Bool)

(assert (=> b!2468730 (= e!1565978 e!1565979)))

(declare-fun res!1045706 () Bool)

(assert (=> b!2468730 (=> res!1045706 e!1565979)))

(assert (=> b!2468730 (= res!1045706 (= (h!34183 l!6611) lt!882770))))

(declare-fun b!2468731 () Bool)

(assert (=> b!2468731 (= e!1565979 (contains!4913 (t!209627 l!6611) lt!882770))))

(assert (= (and d!710647 res!1045707) b!2468730))

(assert (= (and b!2468730 (not res!1045706)) b!2468731))

(assert (=> d!710647 m!2838077))

(declare-fun m!2838101 () Bool)

(assert (=> d!710647 m!2838101))

(declare-fun m!2838103 () Bool)

(assert (=> b!2468731 m!2838103))

(assert (=> d!710449 d!710647))

(declare-fun d!710649 () Bool)

(assert (=> d!710649 (= (list!11131 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))) (list!11132 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))

(declare-fun bs!466746 () Bool)

(assert (= bs!466746 d!710649))

(declare-fun m!2838105 () Bool)

(assert (=> bs!466746 m!2838105))

(assert (=> b!2468474 d!710649))

(declare-fun d!710651 () Bool)

(declare-fun lt!882920 () Token!8436)

(assert (=> d!710651 (contains!4913 (tail!3916 l!6611) lt!882920)))

(declare-fun e!1565981 () Token!8436)

(assert (=> d!710651 (= lt!882920 e!1565981)))

(declare-fun c!393448 () Bool)

(assert (=> d!710651 (= c!393448 (= (- (+ 1 i!1803) 1) 0))))

(declare-fun e!1565980 () Bool)

(assert (=> d!710651 e!1565980))

(declare-fun res!1045708 () Bool)

(assert (=> d!710651 (=> (not res!1045708) (not e!1565980))))

(assert (=> d!710651 (= res!1045708 (<= 0 (- (+ 1 i!1803) 1)))))

(assert (=> d!710651 (= (apply!6774 (tail!3916 l!6611) (- (+ 1 i!1803) 1)) lt!882920)))

(declare-fun b!2468732 () Bool)

(assert (=> b!2468732 (= e!1565980 (< (- (+ 1 i!1803) 1) (size!22394 (tail!3916 l!6611))))))

(declare-fun b!2468733 () Bool)

(assert (=> b!2468733 (= e!1565981 (head!5635 (tail!3916 l!6611)))))

(declare-fun b!2468734 () Bool)

(assert (=> b!2468734 (= e!1565981 (apply!6774 (tail!3916 (tail!3916 l!6611)) (- (- (+ 1 i!1803) 1) 1)))))

(assert (= (and d!710651 res!1045708) b!2468732))

(assert (= (and d!710651 c!393448) b!2468733))

(assert (= (and d!710651 (not c!393448)) b!2468734))

(assert (=> d!710651 m!2837423))

(declare-fun m!2838107 () Bool)

(assert (=> d!710651 m!2838107))

(assert (=> b!2468732 m!2837423))

(assert (=> b!2468732 m!2837965))

(assert (=> b!2468733 m!2837423))

(assert (=> b!2468733 m!2837967))

(assert (=> b!2468734 m!2837423))

(assert (=> b!2468734 m!2837969))

(assert (=> b!2468734 m!2837969))

(declare-fun m!2838109 () Bool)

(assert (=> b!2468734 m!2838109))

(assert (=> b!2468480 d!710651))

(assert (=> b!2468480 d!710599))

(declare-fun d!710653 () Bool)

(declare-fun res!1045710 () Bool)

(declare-fun e!1565982 () Bool)

(assert (=> d!710653 (=> res!1045710 e!1565982)))

(assert (=> d!710653 (= res!1045710 (or (not ((_ is Cons!28782) (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (not ((_ is Cons!28782) (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))))

(assert (=> d!710653 (= (tokensListTwoByTwoPredicateSeparableList!619 thiss!27932 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))) rules!4472) e!1565982)))

(declare-fun b!2468735 () Bool)

(declare-fun e!1565983 () Bool)

(assert (=> b!2468735 (= e!1565982 e!1565983)))

(declare-fun res!1045709 () Bool)

(assert (=> b!2468735 (=> (not res!1045709) (not e!1565983))))

(assert (=> b!2468735 (= res!1045709 (separableTokensPredicate!857 thiss!27932 (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))) (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) rules!4472))))

(declare-fun lt!882924 () Unit!42121)

(declare-fun Unit!42129 () Unit!42121)

(assert (=> b!2468735 (= lt!882924 Unit!42129)))

(assert (=> b!2468735 (> (size!22397 (charsOf!2822 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))) 0)))

(declare-fun lt!882927 () Unit!42121)

(declare-fun Unit!42130 () Unit!42121)

(assert (=> b!2468735 (= lt!882927 Unit!42130)))

(assert (=> b!2468735 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))

(declare-fun lt!882926 () Unit!42121)

(declare-fun Unit!42131 () Unit!42121)

(assert (=> b!2468735 (= lt!882926 Unit!42131)))

(assert (=> b!2468735 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))

(declare-fun lt!882921 () Unit!42121)

(declare-fun lt!882925 () Unit!42121)

(assert (=> b!2468735 (= lt!882921 lt!882925)))

(assert (=> b!2468735 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))

(assert (=> b!2468735 (= lt!882925 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!673 thiss!27932 rules!4472 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))) (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))

(declare-fun lt!882922 () Unit!42121)

(declare-fun lt!882923 () Unit!42121)

(assert (=> b!2468735 (= lt!882922 lt!882923)))

(assert (=> b!2468735 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))

(assert (=> b!2468735 (= lt!882923 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!673 thiss!27932 rules!4472 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))) (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))

(declare-fun b!2468736 () Bool)

(assert (=> b!2468736 (= e!1565983 (tokensListTwoByTwoPredicateSeparableList!619 thiss!27932 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))) rules!4472))))

(assert (= (and d!710653 (not res!1045710)) b!2468735))

(assert (= (and b!2468735 res!1045709) b!2468736))

(declare-fun m!2838111 () Bool)

(assert (=> b!2468735 m!2838111))

(declare-fun m!2838113 () Bool)

(assert (=> b!2468735 m!2838113))

(declare-fun m!2838115 () Bool)

(assert (=> b!2468735 m!2838115))

(declare-fun m!2838117 () Bool)

(assert (=> b!2468735 m!2838117))

(declare-fun m!2838119 () Bool)

(assert (=> b!2468735 m!2838119))

(declare-fun m!2838121 () Bool)

(assert (=> b!2468735 m!2838121))

(assert (=> b!2468735 m!2838117))

(declare-fun m!2838123 () Bool)

(assert (=> b!2468735 m!2838123))

(declare-fun m!2838125 () Bool)

(assert (=> b!2468736 m!2838125))

(assert (=> b!2468457 d!710653))

(declare-fun d!710655 () Bool)

(assert (=> d!710655 (= (inv!38865 (tag!4973 (rule!6841 (h!34183 (t!209627 l!6611))))) (= (mod (str.len (value!143170 (tag!4973 (rule!6841 (h!34183 (t!209627 l!6611)))))) 2) 0))))

(assert (=> b!2468543 d!710655))

(declare-fun d!710657 () Bool)

(declare-fun res!1045711 () Bool)

(declare-fun e!1565984 () Bool)

(assert (=> d!710657 (=> (not res!1045711) (not e!1565984))))

(assert (=> d!710657 (= res!1045711 (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))))))

(assert (=> d!710657 (= (inv!38868 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) e!1565984)))

(declare-fun b!2468737 () Bool)

(assert (=> b!2468737 (= e!1565984 (equivClasses!1755 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))))))

(assert (= (and d!710657 res!1045711) b!2468737))

(declare-fun m!2838127 () Bool)

(assert (=> d!710657 m!2838127))

(declare-fun m!2838129 () Bool)

(assert (=> b!2468737 m!2838129))

(assert (=> b!2468543 d!710657))

(assert (=> b!2468478 d!710417))

(declare-fun d!710659 () Bool)

(declare-fun c!393449 () Bool)

(assert (=> d!710659 (= c!393449 ((_ is Node!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))

(declare-fun e!1565985 () Bool)

(assert (=> d!710659 (= (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) e!1565985)))

(declare-fun b!2468738 () Bool)

(assert (=> b!2468738 (= e!1565985 (inv!38874 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))

(declare-fun b!2468739 () Bool)

(declare-fun e!1565986 () Bool)

(assert (=> b!2468739 (= e!1565985 e!1565986)))

(declare-fun res!1045712 () Bool)

(assert (=> b!2468739 (= res!1045712 (not ((_ is Leaf!13746) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(assert (=> b!2468739 (=> res!1045712 e!1565986)))

(declare-fun b!2468740 () Bool)

(assert (=> b!2468740 (= e!1565986 (inv!38875 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))

(assert (= (and d!710659 c!393449) b!2468738))

(assert (= (and d!710659 (not c!393449)) b!2468739))

(assert (= (and b!2468739 (not res!1045712)) b!2468740))

(declare-fun m!2838131 () Bool)

(assert (=> b!2468738 m!2838131))

(declare-fun m!2838133 () Bool)

(assert (=> b!2468740 m!2838133))

(assert (=> b!2468476 d!710659))

(declare-fun d!710661 () Bool)

(assert (=> d!710661 true))

(declare-fun lambda!93287 () Int)

(declare-fun order!15603 () Int)

(declare-fun dynLambda!12361 (Int Int) Int)

(assert (=> d!710661 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) (dynLambda!12361 order!15603 lambda!93287))))

(assert (=> d!710661 true))

(assert (=> d!710661 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (rule!6841 t1!67)))) (dynLambda!12361 order!15603 lambda!93287))))

(declare-fun Forall!1138 (Int) Bool)

(assert (=> d!710661 (= (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toValue!6343 (transformation!4483 (rule!6841 t1!67)))) (Forall!1138 lambda!93287))))

(declare-fun bs!466747 () Bool)

(assert (= bs!466747 d!710661))

(declare-fun m!2838135 () Bool)

(assert (=> bs!466747 m!2838135))

(assert (=> d!710373 d!710661))

(declare-fun bs!466748 () Bool)

(declare-fun d!710663 () Bool)

(assert (= bs!466748 (and d!710663 d!710661)))

(declare-fun lambda!93288 () Int)

(assert (=> bs!466748 (= (and (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) (= (toValue!6343 (transformation!4483 (h!34184 rules!4472))) (toValue!6343 (transformation!4483 (rule!6841 t1!67))))) (= lambda!93288 lambda!93287))))

(assert (=> d!710663 true))

(assert (=> d!710663 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (h!34184 rules!4472)))) (dynLambda!12361 order!15603 lambda!93288))))

(assert (=> d!710663 true))

(assert (=> d!710663 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (h!34184 rules!4472)))) (dynLambda!12361 order!15603 lambda!93288))))

(assert (=> d!710663 (= (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toValue!6343 (transformation!4483 (h!34184 rules!4472)))) (Forall!1138 lambda!93288))))

(declare-fun bs!466749 () Bool)

(assert (= bs!466749 d!710663))

(declare-fun m!2838137 () Bool)

(assert (=> bs!466749 m!2838137))

(assert (=> d!710447 d!710663))

(declare-fun d!710665 () Bool)

(assert (=> d!710665 (= (inv!16 (value!143171 (h!34183 l!6611))) (= (charsToInt!0 (text!33130 (value!143171 (h!34183 l!6611)))) (value!143162 (value!143171 (h!34183 l!6611)))))))

(declare-fun bs!466750 () Bool)

(assert (= bs!466750 d!710665))

(declare-fun m!2838139 () Bool)

(assert (=> bs!466750 m!2838139))

(assert (=> b!2468462 d!710665))

(declare-fun bs!466751 () Bool)

(declare-fun d!710667 () Bool)

(assert (= bs!466751 (and d!710667 d!710661)))

(declare-fun lambda!93289 () Int)

(assert (=> bs!466751 (= (and (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toValue!6343 (transformation!4483 (rule!6841 t1!67))))) (= lambda!93289 lambda!93287))))

(declare-fun bs!466752 () Bool)

(assert (= bs!466752 (and d!710667 d!710663)))

(assert (=> bs!466752 (= (and (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (h!34184 rules!4472)))) (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toValue!6343 (transformation!4483 (h!34184 rules!4472))))) (= lambda!93289 lambda!93288))))

(assert (=> d!710667 true))

(assert (=> d!710667 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) (dynLambda!12361 order!15603 lambda!93289))))

(assert (=> d!710667 true))

(assert (=> d!710667 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611))))) (dynLambda!12361 order!15603 lambda!93289))))

(assert (=> d!710667 (= (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611))))) (Forall!1138 lambda!93289))))

(declare-fun bs!466753 () Bool)

(assert (= bs!466753 d!710667))

(declare-fun m!2838141 () Bool)

(assert (=> bs!466753 m!2838141))

(assert (=> d!710413 d!710667))

(declare-fun d!710669 () Bool)

(assert (=> d!710669 (= (inv!16 (value!143171 t1!67)) (= (charsToInt!0 (text!33130 (value!143171 t1!67))) (value!143162 (value!143171 t1!67))))))

(declare-fun bs!466754 () Bool)

(assert (= bs!466754 d!710669))

(declare-fun m!2838143 () Bool)

(assert (=> bs!466754 m!2838143))

(assert (=> b!2468255 d!710669))

(declare-fun d!710671 () Bool)

(assert (=> d!710671 (= (isEmpty!16720 (originalCharacters!5249 (h!34183 l!6611))) ((_ is Nil!28781) (originalCharacters!5249 (h!34183 l!6611))))))

(assert (=> d!710451 d!710671))

(declare-fun bs!466755 () Bool)

(declare-fun d!710673 () Bool)

(assert (= bs!466755 (and d!710673 d!710661)))

(declare-fun lambda!93290 () Int)

(assert (=> bs!466755 (= (and (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) (= (toValue!6343 (transformation!4483 (rule!6841 t2!67))) (toValue!6343 (transformation!4483 (rule!6841 t1!67))))) (= lambda!93290 lambda!93287))))

(declare-fun bs!466756 () Bool)

(assert (= bs!466756 (and d!710673 d!710663)))

(assert (=> bs!466756 (= (and (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (h!34184 rules!4472)))) (= (toValue!6343 (transformation!4483 (rule!6841 t2!67))) (toValue!6343 (transformation!4483 (h!34184 rules!4472))))) (= lambda!93290 lambda!93288))))

(declare-fun bs!466757 () Bool)

(assert (= bs!466757 (and d!710673 d!710667)))

(assert (=> bs!466757 (= (and (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) (= (toValue!6343 (transformation!4483 (rule!6841 t2!67))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (= lambda!93290 lambda!93289))))

(assert (=> d!710673 true))

(assert (=> d!710673 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) (dynLambda!12361 order!15603 lambda!93290))))

(assert (=> d!710673 true))

(assert (=> d!710673 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (rule!6841 t2!67)))) (dynLambda!12361 order!15603 lambda!93290))))

(assert (=> d!710673 (= (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toValue!6343 (transformation!4483 (rule!6841 t2!67)))) (Forall!1138 lambda!93290))))

(declare-fun bs!466758 () Bool)

(assert (= bs!466758 d!710673))

(declare-fun m!2838145 () Bool)

(assert (=> bs!466758 m!2838145))

(assert (=> d!710387 d!710673))

(declare-fun d!710675 () Bool)

(assert (=> d!710675 (= (inv!17 (value!143171 (h!34183 l!6611))) (= (charsToBigInt!1 (text!33131 (value!143171 (h!34183 l!6611)))) (value!143163 (value!143171 (h!34183 l!6611)))))))

(declare-fun bs!466759 () Bool)

(assert (= bs!466759 d!710675))

(declare-fun m!2838147 () Bool)

(assert (=> bs!466759 m!2838147))

(assert (=> b!2468458 d!710675))

(declare-fun d!710677 () Bool)

(assert (=> d!710677 (= (inv!17 (value!143171 t1!67)) (= (charsToBigInt!1 (text!33131 (value!143171 t1!67))) (value!143163 (value!143171 t1!67))))))

(declare-fun bs!466760 () Bool)

(assert (= bs!466760 d!710677))

(declare-fun m!2838149 () Bool)

(assert (=> bs!466760 m!2838149))

(assert (=> b!2468251 d!710677))

(declare-fun d!710679 () Bool)

(assert (=> d!710679 (= (inv!15 (value!143171 t2!67)) (= (charsToBigInt!0 (text!33132 (value!143171 t2!67)) 0) (value!143166 (value!143171 t2!67))))))

(declare-fun bs!466761 () Bool)

(assert (= bs!466761 d!710679))

(declare-fun m!2838151 () Bool)

(assert (=> bs!466761 m!2838151))

(assert (=> b!2468365 d!710679))

(declare-fun b!2468745 () Bool)

(declare-fun e!1565987 () Bool)

(declare-fun tp!787844 () Bool)

(assert (=> b!2468745 (= e!1565987 (and tp_is_empty!11951 tp!787844))))

(assert (=> b!2468514 (= tp!787808 e!1565987)))

(assert (= (and b!2468514 ((_ is Cons!28781) (t!209626 (originalCharacters!5249 t2!67)))) b!2468745))

(declare-fun b!2468748 () Bool)

(declare-fun e!1565988 () Bool)

(declare-fun tp!787848 () Bool)

(assert (=> b!2468748 (= e!1565988 tp!787848)))

(declare-fun b!2468747 () Bool)

(declare-fun tp!787849 () Bool)

(declare-fun tp!787846 () Bool)

(assert (=> b!2468747 (= e!1565988 (and tp!787849 tp!787846))))

(assert (=> b!2468505 (= tp!787795 e!1565988)))

(declare-fun b!2468746 () Bool)

(assert (=> b!2468746 (= e!1565988 tp_is_empty!11951)))

(declare-fun b!2468749 () Bool)

(declare-fun tp!787847 () Bool)

(declare-fun tp!787845 () Bool)

(assert (=> b!2468749 (= e!1565988 (and tp!787847 tp!787845))))

(assert (= (and b!2468505 ((_ is ElementMatch!7271) (regOne!15055 (regex!4483 (rule!6841 t1!67))))) b!2468746))

(assert (= (and b!2468505 ((_ is Concat!11941) (regOne!15055 (regex!4483 (rule!6841 t1!67))))) b!2468747))

(assert (= (and b!2468505 ((_ is Star!7271) (regOne!15055 (regex!4483 (rule!6841 t1!67))))) b!2468748))

(assert (= (and b!2468505 ((_ is Union!7271) (regOne!15055 (regex!4483 (rule!6841 t1!67))))) b!2468749))

(declare-fun b!2468752 () Bool)

(declare-fun e!1565989 () Bool)

(declare-fun tp!787853 () Bool)

(assert (=> b!2468752 (= e!1565989 tp!787853)))

(declare-fun b!2468751 () Bool)

(declare-fun tp!787854 () Bool)

(declare-fun tp!787851 () Bool)

(assert (=> b!2468751 (= e!1565989 (and tp!787854 tp!787851))))

(assert (=> b!2468505 (= tp!787793 e!1565989)))

(declare-fun b!2468750 () Bool)

(assert (=> b!2468750 (= e!1565989 tp_is_empty!11951)))

(declare-fun b!2468753 () Bool)

(declare-fun tp!787852 () Bool)

(declare-fun tp!787850 () Bool)

(assert (=> b!2468753 (= e!1565989 (and tp!787852 tp!787850))))

(assert (= (and b!2468505 ((_ is ElementMatch!7271) (regTwo!15055 (regex!4483 (rule!6841 t1!67))))) b!2468750))

(assert (= (and b!2468505 ((_ is Concat!11941) (regTwo!15055 (regex!4483 (rule!6841 t1!67))))) b!2468751))

(assert (= (and b!2468505 ((_ is Star!7271) (regTwo!15055 (regex!4483 (rule!6841 t1!67))))) b!2468752))

(assert (= (and b!2468505 ((_ is Union!7271) (regTwo!15055 (regex!4483 (rule!6841 t1!67))))) b!2468753))

(declare-fun b!2468756 () Bool)

(declare-fun e!1565992 () Bool)

(assert (=> b!2468756 (= e!1565992 true)))

(declare-fun b!2468755 () Bool)

(declare-fun e!1565991 () Bool)

(assert (=> b!2468755 (= e!1565991 e!1565992)))

(declare-fun b!2468754 () Bool)

(declare-fun e!1565990 () Bool)

(assert (=> b!2468754 (= e!1565990 e!1565991)))

(assert (=> b!2468356 e!1565990))

(assert (= b!2468755 b!2468756))

(assert (= b!2468754 b!2468755))

(assert (= (and b!2468356 ((_ is Cons!28783) (t!209628 rules!4472))) b!2468754))

(assert (=> b!2468756 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472))))) (dynLambda!12353 order!15593 lambda!93255))))

(assert (=> b!2468756 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472))))) (dynLambda!12353 order!15593 lambda!93255))))

(declare-fun b!2468759 () Bool)

(declare-fun e!1565993 () Bool)

(declare-fun tp!787858 () Bool)

(assert (=> b!2468759 (= e!1565993 tp!787858)))

(declare-fun b!2468758 () Bool)

(declare-fun tp!787859 () Bool)

(declare-fun tp!787856 () Bool)

(assert (=> b!2468758 (= e!1565993 (and tp!787859 tp!787856))))

(assert (=> b!2468507 (= tp!787802 e!1565993)))

(declare-fun b!2468757 () Bool)

(assert (=> b!2468757 (= e!1565993 tp_is_empty!11951)))

(declare-fun b!2468760 () Bool)

(declare-fun tp!787857 () Bool)

(declare-fun tp!787855 () Bool)

(assert (=> b!2468760 (= e!1565993 (and tp!787857 tp!787855))))

(assert (= (and b!2468507 ((_ is ElementMatch!7271) (regOne!15054 (regex!4483 (rule!6841 t2!67))))) b!2468757))

(assert (= (and b!2468507 ((_ is Concat!11941) (regOne!15054 (regex!4483 (rule!6841 t2!67))))) b!2468758))

(assert (= (and b!2468507 ((_ is Star!7271) (regOne!15054 (regex!4483 (rule!6841 t2!67))))) b!2468759))

(assert (= (and b!2468507 ((_ is Union!7271) (regOne!15054 (regex!4483 (rule!6841 t2!67))))) b!2468760))

(declare-fun b!2468763 () Bool)

(declare-fun e!1565994 () Bool)

(declare-fun tp!787863 () Bool)

(assert (=> b!2468763 (= e!1565994 tp!787863)))

(declare-fun b!2468762 () Bool)

(declare-fun tp!787864 () Bool)

(declare-fun tp!787861 () Bool)

(assert (=> b!2468762 (= e!1565994 (and tp!787864 tp!787861))))

(assert (=> b!2468507 (= tp!787799 e!1565994)))

(declare-fun b!2468761 () Bool)

(assert (=> b!2468761 (= e!1565994 tp_is_empty!11951)))

(declare-fun b!2468764 () Bool)

(declare-fun tp!787862 () Bool)

(declare-fun tp!787860 () Bool)

(assert (=> b!2468764 (= e!1565994 (and tp!787862 tp!787860))))

(assert (= (and b!2468507 ((_ is ElementMatch!7271) (regTwo!15054 (regex!4483 (rule!6841 t2!67))))) b!2468761))

(assert (= (and b!2468507 ((_ is Concat!11941) (regTwo!15054 (regex!4483 (rule!6841 t2!67))))) b!2468762))

(assert (= (and b!2468507 ((_ is Star!7271) (regTwo!15054 (regex!4483 (rule!6841 t2!67))))) b!2468763))

(assert (= (and b!2468507 ((_ is Union!7271) (regTwo!15054 (regex!4483 (rule!6841 t2!67))))) b!2468764))

(declare-fun b!2468768 () Bool)

(declare-fun b_free!71269 () Bool)

(declare-fun b_next!71973 () Bool)

(assert (=> b!2468768 (= b_free!71269 (not b_next!71973))))

(declare-fun tp!787867 () Bool)

(declare-fun b_and!187013 () Bool)

(assert (=> b!2468768 (= tp!787867 b_and!187013)))

(declare-fun b_free!71271 () Bool)

(declare-fun b_next!71975 () Bool)

(assert (=> b!2468768 (= b_free!71271 (not b_next!71975))))

(declare-fun t!209736 () Bool)

(declare-fun tb!139633 () Bool)

(assert (=> (and b!2468768 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) t!209736) tb!139633))

(declare-fun result!172340 () Bool)

(assert (= result!172340 result!172270))

(assert (=> b!2468467 t!209736))

(declare-fun t!209738 () Bool)

(declare-fun tb!139635 () Bool)

(assert (=> (and b!2468768 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) t!209738) tb!139635))

(declare-fun result!172342 () Bool)

(assert (= result!172342 result!172316))

(assert (=> b!2468725 t!209738))

(declare-fun tb!139637 () Bool)

(declare-fun t!209740 () Bool)

(assert (=> (and b!2468768 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) t!209740) tb!139637))

(declare-fun result!172344 () Bool)

(assert (= result!172344 result!172280))

(assert (=> d!710611 t!209740))

(assert (=> b!2468474 t!209740))

(assert (=> d!710621 t!209736))

(declare-fun t!209742 () Bool)

(declare-fun tb!139639 () Bool)

(assert (=> (and b!2468768 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) t!209742) tb!139639))

(declare-fun result!172346 () Bool)

(assert (= result!172346 result!172288))

(assert (=> b!2468481 t!209742))

(assert (=> d!710475 t!209738))

(declare-fun tp!787865 () Bool)

(declare-fun b_and!187015 () Bool)

(assert (=> b!2468768 (= tp!787865 (and (=> t!209738 result!172342) (=> t!209740 result!172344) (=> t!209742 result!172346) (=> t!209736 result!172340) b_and!187015))))

(declare-fun tp!787869 () Bool)

(declare-fun e!1565998 () Bool)

(declare-fun b!2468767 () Bool)

(declare-fun e!1566000 () Bool)

(assert (=> b!2468767 (= e!1566000 (and tp!787869 (inv!38865 (tag!4973 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (inv!38868 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) e!1565998))))

(declare-fun e!1565997 () Bool)

(declare-fun b!2468766 () Bool)

(declare-fun tp!787868 () Bool)

(assert (=> b!2468766 (= e!1565997 (and (inv!21 (value!143171 (h!34183 (t!209627 (t!209627 l!6611))))) e!1566000 tp!787868))))

(assert (=> b!2468768 (= e!1565998 (and tp!787867 tp!787865))))

(declare-fun e!1565995 () Bool)

(assert (=> b!2468541 (= tp!787838 e!1565995)))

(declare-fun tp!787866 () Bool)

(declare-fun b!2468765 () Bool)

(assert (=> b!2468765 (= e!1565995 (and (inv!38869 (h!34183 (t!209627 (t!209627 l!6611)))) e!1565997 tp!787866))))

(assert (= b!2468767 b!2468768))

(assert (= b!2468766 b!2468767))

(assert (= b!2468765 b!2468766))

(assert (= (and b!2468541 ((_ is Cons!28782) (t!209627 (t!209627 l!6611)))) b!2468765))

(declare-fun m!2838153 () Bool)

(assert (=> b!2468767 m!2838153))

(declare-fun m!2838155 () Bool)

(assert (=> b!2468767 m!2838155))

(declare-fun m!2838157 () Bool)

(assert (=> b!2468766 m!2838157))

(declare-fun m!2838159 () Bool)

(assert (=> b!2468765 m!2838159))

(declare-fun b!2468771 () Bool)

(declare-fun e!1566001 () Bool)

(declare-fun tp!787873 () Bool)

(assert (=> b!2468771 (= e!1566001 tp!787873)))

(declare-fun b!2468770 () Bool)

(declare-fun tp!787874 () Bool)

(declare-fun tp!787871 () Bool)

(assert (=> b!2468770 (= e!1566001 (and tp!787874 tp!787871))))

(assert (=> b!2468508 (= tp!787801 e!1566001)))

(declare-fun b!2468769 () Bool)

(assert (=> b!2468769 (= e!1566001 tp_is_empty!11951)))

(declare-fun b!2468772 () Bool)

(declare-fun tp!787872 () Bool)

(declare-fun tp!787870 () Bool)

(assert (=> b!2468772 (= e!1566001 (and tp!787872 tp!787870))))

(assert (= (and b!2468508 ((_ is ElementMatch!7271) (reg!7600 (regex!4483 (rule!6841 t2!67))))) b!2468769))

(assert (= (and b!2468508 ((_ is Concat!11941) (reg!7600 (regex!4483 (rule!6841 t2!67))))) b!2468770))

(assert (= (and b!2468508 ((_ is Star!7271) (reg!7600 (regex!4483 (rule!6841 t2!67))))) b!2468771))

(assert (= (and b!2468508 ((_ is Union!7271) (reg!7600 (regex!4483 (rule!6841 t2!67))))) b!2468772))

(declare-fun b!2468781 () Bool)

(declare-fun e!1566006 () Bool)

(declare-fun tp!787883 () Bool)

(declare-fun tp!787881 () Bool)

(assert (=> b!2468781 (= e!1566006 (and (inv!38872 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) tp!787883 (inv!38872 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) tp!787881))))

(declare-fun b!2468783 () Bool)

(declare-fun e!1566007 () Bool)

(declare-fun tp!787882 () Bool)

(assert (=> b!2468783 (= e!1566007 tp!787882)))

(declare-fun b!2468782 () Bool)

(declare-fun inv!38878 (IArray!18399) Bool)

(assert (=> b!2468782 (= e!1566006 (and (inv!38878 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) e!1566007))))

(assert (=> b!2468473 (= tp!787777 (and (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) e!1566006))))

(assert (= (and b!2468473 ((_ is Node!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) b!2468781))

(assert (= b!2468782 b!2468783))

(assert (= (and b!2468473 ((_ is Leaf!13746) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) b!2468782))

(declare-fun m!2838161 () Bool)

(assert (=> b!2468781 m!2838161))

(declare-fun m!2838163 () Bool)

(assert (=> b!2468781 m!2838163))

(declare-fun m!2838165 () Bool)

(assert (=> b!2468782 m!2838165))

(assert (=> b!2468473 m!2837603))

(declare-fun b!2468784 () Bool)

(declare-fun e!1566008 () Bool)

(declare-fun tp!787884 () Bool)

(assert (=> b!2468784 (= e!1566008 (and tp_is_empty!11951 tp!787884))))

(assert (=> b!2468515 (= tp!787809 e!1566008)))

(assert (= (and b!2468515 ((_ is Cons!28781) (t!209626 (originalCharacters!5249 (h!34183 l!6611))))) b!2468784))

(declare-fun b!2468785 () Bool)

(declare-fun e!1566009 () Bool)

(declare-fun tp!787885 () Bool)

(assert (=> b!2468785 (= e!1566009 (and tp_is_empty!11951 tp!787885))))

(assert (=> b!2468491 (= tp!787782 e!1566009)))

(assert (= (and b!2468491 ((_ is Cons!28781) (t!209626 (originalCharacters!5249 t1!67)))) b!2468785))

(declare-fun b!2468788 () Bool)

(declare-fun e!1566010 () Bool)

(declare-fun tp!787889 () Bool)

(assert (=> b!2468788 (= e!1566010 tp!787889)))

(declare-fun b!2468787 () Bool)

(declare-fun tp!787890 () Bool)

(declare-fun tp!787887 () Bool)

(assert (=> b!2468787 (= e!1566010 (and tp!787890 tp!787887))))

(assert (=> b!2468517 (= tp!787814 e!1566010)))

(declare-fun b!2468786 () Bool)

(assert (=> b!2468786 (= e!1566010 tp_is_empty!11951)))

(declare-fun b!2468789 () Bool)

(declare-fun tp!787888 () Bool)

(declare-fun tp!787886 () Bool)

(assert (=> b!2468789 (= e!1566010 (and tp!787888 tp!787886))))

(assert (= (and b!2468517 ((_ is ElementMatch!7271) (regOne!15054 (regex!4483 (h!34184 rules!4472))))) b!2468786))

(assert (= (and b!2468517 ((_ is Concat!11941) (regOne!15054 (regex!4483 (h!34184 rules!4472))))) b!2468787))

(assert (= (and b!2468517 ((_ is Star!7271) (regOne!15054 (regex!4483 (h!34184 rules!4472))))) b!2468788))

(assert (= (and b!2468517 ((_ is Union!7271) (regOne!15054 (regex!4483 (h!34184 rules!4472))))) b!2468789))

(declare-fun b!2468792 () Bool)

(declare-fun e!1566011 () Bool)

(declare-fun tp!787894 () Bool)

(assert (=> b!2468792 (= e!1566011 tp!787894)))

(declare-fun b!2468791 () Bool)

(declare-fun tp!787895 () Bool)

(declare-fun tp!787892 () Bool)

(assert (=> b!2468791 (= e!1566011 (and tp!787895 tp!787892))))

(assert (=> b!2468517 (= tp!787811 e!1566011)))

(declare-fun b!2468790 () Bool)

(assert (=> b!2468790 (= e!1566011 tp_is_empty!11951)))

(declare-fun b!2468793 () Bool)

(declare-fun tp!787893 () Bool)

(declare-fun tp!787891 () Bool)

(assert (=> b!2468793 (= e!1566011 (and tp!787893 tp!787891))))

(assert (= (and b!2468517 ((_ is ElementMatch!7271) (regTwo!15054 (regex!4483 (h!34184 rules!4472))))) b!2468790))

(assert (= (and b!2468517 ((_ is Concat!11941) (regTwo!15054 (regex!4483 (h!34184 rules!4472))))) b!2468791))

(assert (= (and b!2468517 ((_ is Star!7271) (regTwo!15054 (regex!4483 (h!34184 rules!4472))))) b!2468792))

(assert (= (and b!2468517 ((_ is Union!7271) (regTwo!15054 (regex!4483 (h!34184 rules!4472))))) b!2468793))

(declare-fun b!2468796 () Bool)

(declare-fun e!1566012 () Bool)

(declare-fun tp!787899 () Bool)

(assert (=> b!2468796 (= e!1566012 tp!787899)))

(declare-fun b!2468795 () Bool)

(declare-fun tp!787900 () Bool)

(declare-fun tp!787897 () Bool)

(assert (=> b!2468795 (= e!1566012 (and tp!787900 tp!787897))))

(assert (=> b!2468518 (= tp!787813 e!1566012)))

(declare-fun b!2468794 () Bool)

(assert (=> b!2468794 (= e!1566012 tp_is_empty!11951)))

(declare-fun b!2468797 () Bool)

(declare-fun tp!787898 () Bool)

(declare-fun tp!787896 () Bool)

(assert (=> b!2468797 (= e!1566012 (and tp!787898 tp!787896))))

(assert (= (and b!2468518 ((_ is ElementMatch!7271) (reg!7600 (regex!4483 (h!34184 rules!4472))))) b!2468794))

(assert (= (and b!2468518 ((_ is Concat!11941) (reg!7600 (regex!4483 (h!34184 rules!4472))))) b!2468795))

(assert (= (and b!2468518 ((_ is Star!7271) (reg!7600 (regex!4483 (h!34184 rules!4472))))) b!2468796))

(assert (= (and b!2468518 ((_ is Union!7271) (reg!7600 (regex!4483 (h!34184 rules!4472))))) b!2468797))

(declare-fun b!2468802 () Bool)

(declare-fun e!1566015 () Bool)

(declare-fun tp!787904 () Bool)

(assert (=> b!2468802 (= e!1566015 tp!787904)))

(declare-fun b!2468801 () Bool)

(declare-fun tp!787905 () Bool)

(declare-fun tp!787902 () Bool)

(assert (=> b!2468801 (= e!1566015 (and tp!787905 tp!787902))))

(assert (=> b!2468519 (= tp!787812 e!1566015)))

(declare-fun b!2468800 () Bool)

(assert (=> b!2468800 (= e!1566015 tp_is_empty!11951)))

(declare-fun b!2468803 () Bool)

(declare-fun tp!787903 () Bool)

(declare-fun tp!787901 () Bool)

(assert (=> b!2468803 (= e!1566015 (and tp!787903 tp!787901))))

(assert (= (and b!2468519 ((_ is ElementMatch!7271) (regOne!15055 (regex!4483 (h!34184 rules!4472))))) b!2468800))

(assert (= (and b!2468519 ((_ is Concat!11941) (regOne!15055 (regex!4483 (h!34184 rules!4472))))) b!2468801))

(assert (= (and b!2468519 ((_ is Star!7271) (regOne!15055 (regex!4483 (h!34184 rules!4472))))) b!2468802))

(assert (= (and b!2468519 ((_ is Union!7271) (regOne!15055 (regex!4483 (h!34184 rules!4472))))) b!2468803))

(declare-fun b!2468810 () Bool)

(declare-fun e!1566018 () Bool)

(declare-fun tp!787909 () Bool)

(assert (=> b!2468810 (= e!1566018 tp!787909)))

(declare-fun b!2468808 () Bool)

(declare-fun tp!787910 () Bool)

(declare-fun tp!787907 () Bool)

(assert (=> b!2468808 (= e!1566018 (and tp!787910 tp!787907))))

(assert (=> b!2468519 (= tp!787810 e!1566018)))

(declare-fun b!2468806 () Bool)

(assert (=> b!2468806 (= e!1566018 tp_is_empty!11951)))

(declare-fun b!2468811 () Bool)

(declare-fun tp!787908 () Bool)

(declare-fun tp!787906 () Bool)

(assert (=> b!2468811 (= e!1566018 (and tp!787908 tp!787906))))

(assert (= (and b!2468519 ((_ is ElementMatch!7271) (regTwo!15055 (regex!4483 (h!34184 rules!4472))))) b!2468806))

(assert (= (and b!2468519 ((_ is Concat!11941) (regTwo!15055 (regex!4483 (h!34184 rules!4472))))) b!2468808))

(assert (= (and b!2468519 ((_ is Star!7271) (regTwo!15055 (regex!4483 (h!34184 rules!4472))))) b!2468810))

(assert (= (and b!2468519 ((_ is Union!7271) (regTwo!15055 (regex!4483 (h!34184 rules!4472))))) b!2468811))

(declare-fun tp!787911 () Bool)

(declare-fun b!2468812 () Bool)

(declare-fun tp!787913 () Bool)

(declare-fun e!1566019 () Bool)

(assert (=> b!2468812 (= e!1566019 (and (inv!38872 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) tp!787913 (inv!38872 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) tp!787911))))

(declare-fun b!2468814 () Bool)

(declare-fun e!1566020 () Bool)

(declare-fun tp!787912 () Bool)

(assert (=> b!2468814 (= e!1566020 tp!787912)))

(declare-fun b!2468813 () Bool)

(assert (=> b!2468813 (= e!1566019 (and (inv!38878 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) e!1566020))))

(assert (=> b!2468483 (= tp!787779 (and (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) e!1566019))))

(assert (= (and b!2468483 ((_ is Node!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) b!2468812))

(assert (= b!2468813 b!2468814))

(assert (= (and b!2468483 ((_ is Leaf!13746) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) b!2468813))

(declare-fun m!2838167 () Bool)

(assert (=> b!2468812 m!2838167))

(declare-fun m!2838169 () Bool)

(assert (=> b!2468812 m!2838169))

(declare-fun m!2838171 () Bool)

(assert (=> b!2468813 m!2838171))

(assert (=> b!2468483 m!2837635))

(declare-fun b!2468817 () Bool)

(declare-fun e!1566021 () Bool)

(declare-fun tp!787917 () Bool)

(assert (=> b!2468817 (= e!1566021 tp!787917)))

(declare-fun b!2468816 () Bool)

(declare-fun tp!787918 () Bool)

(declare-fun tp!787915 () Bool)

(assert (=> b!2468816 (= e!1566021 (and tp!787918 tp!787915))))

(assert (=> b!2468509 (= tp!787800 e!1566021)))

(declare-fun b!2468815 () Bool)

(assert (=> b!2468815 (= e!1566021 tp_is_empty!11951)))

(declare-fun b!2468818 () Bool)

(declare-fun tp!787916 () Bool)

(declare-fun tp!787914 () Bool)

(assert (=> b!2468818 (= e!1566021 (and tp!787916 tp!787914))))

(assert (= (and b!2468509 ((_ is ElementMatch!7271) (regOne!15055 (regex!4483 (rule!6841 t2!67))))) b!2468815))

(assert (= (and b!2468509 ((_ is Concat!11941) (regOne!15055 (regex!4483 (rule!6841 t2!67))))) b!2468816))

(assert (= (and b!2468509 ((_ is Star!7271) (regOne!15055 (regex!4483 (rule!6841 t2!67))))) b!2468817))

(assert (= (and b!2468509 ((_ is Union!7271) (regOne!15055 (regex!4483 (rule!6841 t2!67))))) b!2468818))

(declare-fun b!2468821 () Bool)

(declare-fun e!1566022 () Bool)

(declare-fun tp!787922 () Bool)

(assert (=> b!2468821 (= e!1566022 tp!787922)))

(declare-fun b!2468820 () Bool)

(declare-fun tp!787923 () Bool)

(declare-fun tp!787920 () Bool)

(assert (=> b!2468820 (= e!1566022 (and tp!787923 tp!787920))))

(assert (=> b!2468509 (= tp!787798 e!1566022)))

(declare-fun b!2468819 () Bool)

(assert (=> b!2468819 (= e!1566022 tp_is_empty!11951)))

(declare-fun b!2468822 () Bool)

(declare-fun tp!787921 () Bool)

(declare-fun tp!787919 () Bool)

(assert (=> b!2468822 (= e!1566022 (and tp!787921 tp!787919))))

(assert (= (and b!2468509 ((_ is ElementMatch!7271) (regTwo!15055 (regex!4483 (rule!6841 t2!67))))) b!2468819))

(assert (= (and b!2468509 ((_ is Concat!11941) (regTwo!15055 (regex!4483 (rule!6841 t2!67))))) b!2468820))

(assert (= (and b!2468509 ((_ is Star!7271) (regTwo!15055 (regex!4483 (rule!6841 t2!67))))) b!2468821))

(assert (= (and b!2468509 ((_ is Union!7271) (regTwo!15055 (regex!4483 (rule!6841 t2!67))))) b!2468822))

(declare-fun b!2468825 () Bool)

(declare-fun b_free!71273 () Bool)

(declare-fun b_next!71977 () Bool)

(assert (=> b!2468825 (= b_free!71273 (not b_next!71977))))

(declare-fun tp!787924 () Bool)

(declare-fun b_and!187017 () Bool)

(assert (=> b!2468825 (= tp!787924 b_and!187017)))

(declare-fun b_free!71275 () Bool)

(declare-fun b_next!71979 () Bool)

(assert (=> b!2468825 (= b_free!71275 (not b_next!71979))))

(declare-fun t!209745 () Bool)

(declare-fun tb!139641 () Bool)

(assert (=> (and b!2468825 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) t!209745) tb!139641))

(declare-fun result!172350 () Bool)

(assert (= result!172350 result!172270))

(assert (=> b!2468467 t!209745))

(declare-fun tb!139643 () Bool)

(declare-fun t!209747 () Bool)

(assert (=> (and b!2468825 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) t!209747) tb!139643))

(declare-fun result!172352 () Bool)

(assert (= result!172352 result!172316))

(assert (=> b!2468725 t!209747))

(declare-fun tb!139645 () Bool)

(declare-fun t!209749 () Bool)

(assert (=> (and b!2468825 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) t!209749) tb!139645))

(declare-fun result!172354 () Bool)

(assert (= result!172354 result!172280))

(assert (=> d!710611 t!209749))

(assert (=> b!2468474 t!209749))

(assert (=> d!710621 t!209745))

(declare-fun tb!139647 () Bool)

(declare-fun t!209751 () Bool)

(assert (=> (and b!2468825 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) t!209751) tb!139647))

(declare-fun result!172356 () Bool)

(assert (= result!172356 result!172288))

(assert (=> b!2468481 t!209751))

(assert (=> d!710475 t!209747))

(declare-fun tp!787926 () Bool)

(declare-fun b_and!187019 () Bool)

(assert (=> b!2468825 (= tp!787926 (and (=> t!209747 result!172352) (=> t!209749 result!172354) (=> t!209751 result!172356) (=> t!209745 result!172350) b_and!187019))))

(declare-fun e!1566023 () Bool)

(assert (=> b!2468825 (= e!1566023 (and tp!787924 tp!787926))))

(declare-fun b!2468824 () Bool)

(declare-fun e!1566025 () Bool)

(declare-fun tp!787927 () Bool)

(assert (=> b!2468824 (= e!1566025 (and tp!787927 (inv!38865 (tag!4973 (h!34184 (t!209628 (t!209628 rules!4472))))) (inv!38868 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) e!1566023))))

(declare-fun b!2468823 () Bool)

(declare-fun e!1566024 () Bool)

(declare-fun tp!787925 () Bool)

(assert (=> b!2468823 (= e!1566024 (and e!1566025 tp!787925))))

(assert (=> b!2468528 (= tp!787824 e!1566024)))

(assert (= b!2468824 b!2468825))

(assert (= b!2468823 b!2468824))

(assert (= (and b!2468528 ((_ is Cons!28783) (t!209628 (t!209628 rules!4472)))) b!2468823))

(declare-fun m!2838173 () Bool)

(assert (=> b!2468824 m!2838173))

(declare-fun m!2838175 () Bool)

(assert (=> b!2468824 m!2838175))

(declare-fun b!2468826 () Bool)

(declare-fun e!1566027 () Bool)

(declare-fun tp!787928 () Bool)

(assert (=> b!2468826 (= e!1566027 (and tp_is_empty!11951 tp!787928))))

(assert (=> b!2468542 (= tp!787840 e!1566027)))

(assert (= (and b!2468542 ((_ is Cons!28781) (originalCharacters!5249 (h!34183 (t!209627 l!6611))))) b!2468826))

(declare-fun b!2468829 () Bool)

(declare-fun e!1566028 () Bool)

(declare-fun tp!787932 () Bool)

(assert (=> b!2468829 (= e!1566028 tp!787932)))

(declare-fun b!2468828 () Bool)

(declare-fun tp!787933 () Bool)

(declare-fun tp!787930 () Bool)

(assert (=> b!2468828 (= e!1566028 (and tp!787933 tp!787930))))

(assert (=> b!2468543 (= tp!787841 e!1566028)))

(declare-fun b!2468827 () Bool)

(assert (=> b!2468827 (= e!1566028 tp_is_empty!11951)))

(declare-fun b!2468830 () Bool)

(declare-fun tp!787931 () Bool)

(declare-fun tp!787929 () Bool)

(assert (=> b!2468830 (= e!1566028 (and tp!787931 tp!787929))))

(assert (= (and b!2468543 ((_ is ElementMatch!7271) (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) b!2468827))

(assert (= (and b!2468543 ((_ is Concat!11941) (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) b!2468828))

(assert (= (and b!2468543 ((_ is Star!7271) (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) b!2468829))

(assert (= (and b!2468543 ((_ is Union!7271) (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) b!2468830))

(declare-fun b!2468833 () Bool)

(declare-fun e!1566029 () Bool)

(declare-fun tp!787937 () Bool)

(assert (=> b!2468833 (= e!1566029 tp!787937)))

(declare-fun b!2468832 () Bool)

(declare-fun tp!787938 () Bool)

(declare-fun tp!787935 () Bool)

(assert (=> b!2468832 (= e!1566029 (and tp!787938 tp!787935))))

(assert (=> b!2468529 (= tp!787826 e!1566029)))

(declare-fun b!2468831 () Bool)

(assert (=> b!2468831 (= e!1566029 tp_is_empty!11951)))

(declare-fun b!2468834 () Bool)

(declare-fun tp!787936 () Bool)

(declare-fun tp!787934 () Bool)

(assert (=> b!2468834 (= e!1566029 (and tp!787936 tp!787934))))

(assert (= (and b!2468529 ((_ is ElementMatch!7271) (regex!4483 (h!34184 (t!209628 rules!4472))))) b!2468831))

(assert (= (and b!2468529 ((_ is Concat!11941) (regex!4483 (h!34184 (t!209628 rules!4472))))) b!2468832))

(assert (= (and b!2468529 ((_ is Star!7271) (regex!4483 (h!34184 (t!209628 rules!4472))))) b!2468833))

(assert (= (and b!2468529 ((_ is Union!7271) (regex!4483 (h!34184 (t!209628 rules!4472))))) b!2468834))

(declare-fun e!1566030 () Bool)

(declare-fun tp!787941 () Bool)

(declare-fun b!2468835 () Bool)

(declare-fun tp!787939 () Bool)

(assert (=> b!2468835 (= e!1566030 (and (inv!38872 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) tp!787941 (inv!38872 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) tp!787939))))

(declare-fun b!2468837 () Bool)

(declare-fun e!1566031 () Bool)

(declare-fun tp!787940 () Bool)

(assert (=> b!2468837 (= e!1566031 tp!787940)))

(declare-fun b!2468836 () Bool)

(assert (=> b!2468836 (= e!1566030 (and (inv!38878 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) e!1566031))))

(assert (=> b!2468476 (= tp!787778 (and (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) e!1566030))))

(assert (= (and b!2468476 ((_ is Node!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) b!2468835))

(assert (= b!2468836 b!2468837))

(assert (= (and b!2468476 ((_ is Leaf!13746) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) b!2468836))

(declare-fun m!2838177 () Bool)

(assert (=> b!2468835 m!2838177))

(declare-fun m!2838179 () Bool)

(assert (=> b!2468835 m!2838179))

(declare-fun m!2838181 () Bool)

(assert (=> b!2468836 m!2838181))

(assert (=> b!2468476 m!2837615))

(declare-fun b!2468843 () Bool)

(declare-fun e!1566034 () Bool)

(declare-fun tp!787945 () Bool)

(assert (=> b!2468843 (= e!1566034 tp!787945)))

(declare-fun b!2468842 () Bool)

(declare-fun tp!787946 () Bool)

(declare-fun tp!787943 () Bool)

(assert (=> b!2468842 (= e!1566034 (and tp!787946 tp!787943))))

(assert (=> b!2468511 (= tp!787807 e!1566034)))

(declare-fun b!2468841 () Bool)

(assert (=> b!2468841 (= e!1566034 tp_is_empty!11951)))

(declare-fun b!2468844 () Bool)

(declare-fun tp!787944 () Bool)

(declare-fun tp!787942 () Bool)

(assert (=> b!2468844 (= e!1566034 (and tp!787944 tp!787942))))

(assert (= (and b!2468511 ((_ is ElementMatch!7271) (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468841))

(assert (= (and b!2468511 ((_ is Concat!11941) (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468842))

(assert (= (and b!2468511 ((_ is Star!7271) (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468843))

(assert (= (and b!2468511 ((_ is Union!7271) (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468844))

(declare-fun b!2468847 () Bool)

(declare-fun e!1566035 () Bool)

(declare-fun tp!787950 () Bool)

(assert (=> b!2468847 (= e!1566035 tp!787950)))

(declare-fun b!2468846 () Bool)

(declare-fun tp!787951 () Bool)

(declare-fun tp!787948 () Bool)

(assert (=> b!2468846 (= e!1566035 (and tp!787951 tp!787948))))

(assert (=> b!2468511 (= tp!787804 e!1566035)))

(declare-fun b!2468845 () Bool)

(assert (=> b!2468845 (= e!1566035 tp_is_empty!11951)))

(declare-fun b!2468848 () Bool)

(declare-fun tp!787949 () Bool)

(declare-fun tp!787947 () Bool)

(assert (=> b!2468848 (= e!1566035 (and tp!787949 tp!787947))))

(assert (= (and b!2468511 ((_ is ElementMatch!7271) (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468845))

(assert (= (and b!2468511 ((_ is Concat!11941) (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468846))

(assert (= (and b!2468511 ((_ is Star!7271) (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468847))

(assert (= (and b!2468511 ((_ is Union!7271) (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468848))

(declare-fun b!2468851 () Bool)

(declare-fun e!1566036 () Bool)

(declare-fun tp!787955 () Bool)

(assert (=> b!2468851 (= e!1566036 tp!787955)))

(declare-fun b!2468850 () Bool)

(declare-fun tp!787956 () Bool)

(declare-fun tp!787953 () Bool)

(assert (=> b!2468850 (= e!1566036 (and tp!787956 tp!787953))))

(assert (=> b!2468503 (= tp!787797 e!1566036)))

(declare-fun b!2468849 () Bool)

(assert (=> b!2468849 (= e!1566036 tp_is_empty!11951)))

(declare-fun b!2468852 () Bool)

(declare-fun tp!787954 () Bool)

(declare-fun tp!787952 () Bool)

(assert (=> b!2468852 (= e!1566036 (and tp!787954 tp!787952))))

(assert (= (and b!2468503 ((_ is ElementMatch!7271) (regOne!15054 (regex!4483 (rule!6841 t1!67))))) b!2468849))

(assert (= (and b!2468503 ((_ is Concat!11941) (regOne!15054 (regex!4483 (rule!6841 t1!67))))) b!2468850))

(assert (= (and b!2468503 ((_ is Star!7271) (regOne!15054 (regex!4483 (rule!6841 t1!67))))) b!2468851))

(assert (= (and b!2468503 ((_ is Union!7271) (regOne!15054 (regex!4483 (rule!6841 t1!67))))) b!2468852))

(declare-fun b!2468855 () Bool)

(declare-fun e!1566037 () Bool)

(declare-fun tp!787960 () Bool)

(assert (=> b!2468855 (= e!1566037 tp!787960)))

(declare-fun b!2468854 () Bool)

(declare-fun tp!787961 () Bool)

(declare-fun tp!787958 () Bool)

(assert (=> b!2468854 (= e!1566037 (and tp!787961 tp!787958))))

(assert (=> b!2468503 (= tp!787794 e!1566037)))

(declare-fun b!2468853 () Bool)

(assert (=> b!2468853 (= e!1566037 tp_is_empty!11951)))

(declare-fun b!2468856 () Bool)

(declare-fun tp!787959 () Bool)

(declare-fun tp!787957 () Bool)

(assert (=> b!2468856 (= e!1566037 (and tp!787959 tp!787957))))

(assert (= (and b!2468503 ((_ is ElementMatch!7271) (regTwo!15054 (regex!4483 (rule!6841 t1!67))))) b!2468853))

(assert (= (and b!2468503 ((_ is Concat!11941) (regTwo!15054 (regex!4483 (rule!6841 t1!67))))) b!2468854))

(assert (= (and b!2468503 ((_ is Star!7271) (regTwo!15054 (regex!4483 (rule!6841 t1!67))))) b!2468855))

(assert (= (and b!2468503 ((_ is Union!7271) (regTwo!15054 (regex!4483 (rule!6841 t1!67))))) b!2468856))

(declare-fun b!2468859 () Bool)

(declare-fun e!1566038 () Bool)

(declare-fun tp!787965 () Bool)

(assert (=> b!2468859 (= e!1566038 tp!787965)))

(declare-fun b!2468858 () Bool)

(declare-fun tp!787966 () Bool)

(declare-fun tp!787963 () Bool)

(assert (=> b!2468858 (= e!1566038 (and tp!787966 tp!787963))))

(assert (=> b!2468504 (= tp!787796 e!1566038)))

(declare-fun b!2468857 () Bool)

(assert (=> b!2468857 (= e!1566038 tp_is_empty!11951)))

(declare-fun b!2468860 () Bool)

(declare-fun tp!787964 () Bool)

(declare-fun tp!787962 () Bool)

(assert (=> b!2468860 (= e!1566038 (and tp!787964 tp!787962))))

(assert (= (and b!2468504 ((_ is ElementMatch!7271) (reg!7600 (regex!4483 (rule!6841 t1!67))))) b!2468857))

(assert (= (and b!2468504 ((_ is Concat!11941) (reg!7600 (regex!4483 (rule!6841 t1!67))))) b!2468858))

(assert (= (and b!2468504 ((_ is Star!7271) (reg!7600 (regex!4483 (rule!6841 t1!67))))) b!2468859))

(assert (= (and b!2468504 ((_ is Union!7271) (reg!7600 (regex!4483 (rule!6841 t1!67))))) b!2468860))

(declare-fun b!2468863 () Bool)

(declare-fun e!1566039 () Bool)

(declare-fun tp!787970 () Bool)

(assert (=> b!2468863 (= e!1566039 tp!787970)))

(declare-fun b!2468862 () Bool)

(declare-fun tp!787971 () Bool)

(declare-fun tp!787968 () Bool)

(assert (=> b!2468862 (= e!1566039 (and tp!787971 tp!787968))))

(assert (=> b!2468512 (= tp!787806 e!1566039)))

(declare-fun b!2468861 () Bool)

(assert (=> b!2468861 (= e!1566039 tp_is_empty!11951)))

(declare-fun b!2468864 () Bool)

(declare-fun tp!787969 () Bool)

(declare-fun tp!787967 () Bool)

(assert (=> b!2468864 (= e!1566039 (and tp!787969 tp!787967))))

(assert (= (and b!2468512 ((_ is ElementMatch!7271) (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468861))

(assert (= (and b!2468512 ((_ is Concat!11941) (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468862))

(assert (= (and b!2468512 ((_ is Star!7271) (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468863))

(assert (= (and b!2468512 ((_ is Union!7271) (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468864))

(declare-fun b!2468867 () Bool)

(declare-fun e!1566040 () Bool)

(declare-fun tp!787975 () Bool)

(assert (=> b!2468867 (= e!1566040 tp!787975)))

(declare-fun b!2468866 () Bool)

(declare-fun tp!787976 () Bool)

(declare-fun tp!787973 () Bool)

(assert (=> b!2468866 (= e!1566040 (and tp!787976 tp!787973))))

(assert (=> b!2468513 (= tp!787805 e!1566040)))

(declare-fun b!2468865 () Bool)

(assert (=> b!2468865 (= e!1566040 tp_is_empty!11951)))

(declare-fun b!2468868 () Bool)

(declare-fun tp!787974 () Bool)

(declare-fun tp!787972 () Bool)

(assert (=> b!2468868 (= e!1566040 (and tp!787974 tp!787972))))

(assert (= (and b!2468513 ((_ is ElementMatch!7271) (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468865))

(assert (= (and b!2468513 ((_ is Concat!11941) (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468866))

(assert (= (and b!2468513 ((_ is Star!7271) (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468867))

(assert (= (and b!2468513 ((_ is Union!7271) (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468868))

(declare-fun b!2468871 () Bool)

(declare-fun e!1566041 () Bool)

(declare-fun tp!787980 () Bool)

(assert (=> b!2468871 (= e!1566041 tp!787980)))

(declare-fun b!2468870 () Bool)

(declare-fun tp!787981 () Bool)

(declare-fun tp!787978 () Bool)

(assert (=> b!2468870 (= e!1566041 (and tp!787981 tp!787978))))

(assert (=> b!2468513 (= tp!787803 e!1566041)))

(declare-fun b!2468869 () Bool)

(assert (=> b!2468869 (= e!1566041 tp_is_empty!11951)))

(declare-fun b!2468872 () Bool)

(declare-fun tp!787979 () Bool)

(declare-fun tp!787977 () Bool)

(assert (=> b!2468872 (= e!1566041 (and tp!787979 tp!787977))))

(assert (= (and b!2468513 ((_ is ElementMatch!7271) (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468869))

(assert (= (and b!2468513 ((_ is Concat!11941) (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468870))

(assert (= (and b!2468513 ((_ is Star!7271) (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468871))

(assert (= (and b!2468513 ((_ is Union!7271) (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611)))))) b!2468872))

(declare-fun b_lambda!75707 () Bool)

(assert (= b_lambda!75703 (or (and b!2468223 b_free!71243 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468235 b_free!71251 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468768 b_free!71271 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468239 b_free!71247 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468530 b_free!71263 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468544 b_free!71267 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468228 b_free!71239) (and b!2468825 b_free!71275 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) b_lambda!75707)))

(declare-fun b_lambda!75709 () Bool)

(assert (= b_lambda!75687 (or (and b!2468825 b_free!71275 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468530 b_free!71263 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468223 b_free!71243 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468228 b_free!71239 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468235 b_free!71251 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468768 b_free!71271 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468544 b_free!71267) (and b!2468239 b_free!71247 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b_lambda!75709)))

(declare-fun b_lambda!75711 () Bool)

(assert (= b_lambda!75699 (or (and b!2468530 b_free!71263 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2468228 b_free!71239 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2468544 b_free!71267 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2468223 b_free!71243) (and b!2468239 b_free!71247 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2468768 b_free!71271 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2468825 b_free!71275 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2468235 b_free!71251 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) b_lambda!75711)))

(declare-fun b_lambda!75713 () Bool)

(assert (= b_lambda!75695 (or d!710401 b_lambda!75713)))

(declare-fun bs!466762 () Bool)

(declare-fun d!710683 () Bool)

(assert (= bs!466762 (and d!710683 d!710401)))

(assert (=> bs!466762 (= (dynLambda!12357 lambda!93255 (h!34183 l!6611)) (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 l!6611)))))

(assert (=> bs!466762 m!2837511))

(assert (=> b!2468648 d!710683))

(declare-fun b_lambda!75715 () Bool)

(assert (= b_lambda!75705 (or (and b!2468825 b_free!71275 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468530 b_free!71263 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468223 b_free!71243 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468228 b_free!71239 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468235 b_free!71251 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468768 b_free!71271 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (and b!2468544 b_free!71267) (and b!2468239 b_free!71247 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b_lambda!75715)))

(check-sat (not b_next!71943) (not d!710475) b_and!186909 (not b!2468764) (not b!2468576) (not b!2468842) (not b!2468748) (not b!2468813) (not b!2468473) b_and!186837 (not b!2468751) (not b!2468860) (not b!2468559) (not b_next!71969) (not b!2468837) (not b!2468733) (not b!2468649) (not b!2468552) (not d!710675) b_and!187009 b_and!187019 (not b!2468855) (not b!2468858) (not b!2468781) (not d!710583) (not d!710561) (not b!2468765) (not d!710477) (not b_next!71977) (not b!2468745) (not b!2468830) (not d!710543) (not d!710679) (not b!2468870) (not b!2468866) (not b!2468735) (not b!2468726) (not d!710545) (not b!2468823) (not b!2468828) (not b!2468560) (not b!2468791) (not b!2468797) (not b!2468561) b_and!186845 (not b_lambda!75715) (not b!2468637) (not b!2468575) (not b!2468731) (not d!710467) (not d!710641) (not b!2468833) (not b!2468577) (not b!2468812) (not b!2468836) (not d!710625) (not b!2468662) (not d!710607) (not b!2468760) b_and!187015 (not b!2468785) (not d!710457) (not b!2468638) (not b!2468782) (not b!2468762) (not b!2468835) (not b!2468664) (not b_lambda!75683) (not d!710539) (not d!710637) tp_is_empty!11951 (not b!2468795) (not b!2468811) (not b!2468734) (not d!710677) (not b!2468708) (not b!2468564) (not b!2468716) (not b_next!71971) (not b_lambda!75707) (not b!2468844) (not d!710591) (not d!710633) (not b_lambda!75713) (not b!2468483) (not b!2468859) (not b!2468872) (not d!710537) (not b!2468747) (not b_next!71967) (not b!2468690) (not b_next!71955) (not b!2468810) (not d!710487) (not b!2468740) (not b!2468826) (not d!710661) (not d!710635) (not b!2468817) (not b!2468758) (not b!2468718) b_and!187017 (not b!2468796) (not b!2468808) (not b!2468818) (not b!2468736) (not d!710643) (not b!2468820) (not b_next!71953) (not b!2468843) (not b!2468737) (not b!2468864) (not b!2468803) b_and!187013 (not b!2468727) (not b_next!71945) (not b!2468852) (not b!2468771) (not b!2468871) (not d!710569) (not b_next!71979) (not b!2468847) (not b!2468710) (not d!710455) (not d!710673) (not b!2468729) (not b!2468801) b_and!186849 (not d!710627) (not b_lambda!75709) (not d!710623) (not b!2468738) (not b!2468846) (not b!2468792) (not b!2468766) (not b!2468868) (not b!2468558) (not b_lambda!75681) (not b!2468824) (not b!2468665) (not b!2468714) (not d!710585) (not d!710611) (not tb!139609) (not b_next!71975) (not b!2468670) (not b_next!71973) (not b!2468724) (not b_next!71951) (not b_next!71949) (not b!2468822) (not b!2468689) b_and!187005 (not d!710559) (not d!710657) (not b_next!71947) (not b!2468863) (not d!710577) (not b_next!71941) (not d!710651) (not d!710639) (not b!2468476) (not b!2468639) (not b!2468787) (not b!2468783) (not b!2468691) (not b!2468711) (not b!2468752) (not b!2468770) (not b_lambda!75685) (not b_lambda!75711) (not d!710649) (not bs!466762) (not b!2468784) (not d!710663) (not b!2468816) b_and!187003 (not b!2468854) (not b!2468821) b_and!187007 (not b!2468867) (not b!2468759) (not d!710541) (not b!2468732) (not b!2468789) b_and!187011 (not b!2468668) (not b!2468767) (not b!2468772) (not d!710667) (not b!2468829) (not b!2468802) (not b!2468856) (not d!710473) (not b!2468788) b_and!186841 (not b!2468862) (not b!2468725) (not b!2468848) (not b!2468793) (not d!710647) (not d!710615) (not b!2468814) (not d!710471) (not b!2468669) (not b!2468749) (not b!2468832) (not b_next!71965) (not b!2468549) (not d!710669) (not d!710621) (not b!2468699) (not b!2468851) (not b!2468753) (not b!2468754) (not b!2468550) (not b!2468834) (not b!2468709) (not d!710665) (not b!2468763) (not b!2468850) b_and!187001 b_and!186913)
(check-sat b_and!186837 (not b_next!71969) (not b_next!71977) b_and!186845 b_and!187015 (not b_next!71971) (not b_next!71979) b_and!186849 b_and!187011 b_and!186841 (not b_next!71965) (not b_next!71943) b_and!186909 b_and!187019 b_and!187009 (not b_next!71967) (not b_next!71955) b_and!187017 (not b_next!71953) b_and!187013 (not b_next!71945) (not b_next!71951) (not b_next!71975) (not b_next!71973) (not b_next!71949) b_and!187005 (not b_next!71947) (not b_next!71941) b_and!187003 b_and!187007 b_and!187001 b_and!186913)
(get-model)

(declare-fun d!710715 () Bool)

(declare-fun lt!882941 () Bool)

(assert (=> d!710715 (= lt!882941 (select (content!3953 (t!209627 l!6611)) lt!882770))))

(declare-fun e!1566099 () Bool)

(assert (=> d!710715 (= lt!882941 e!1566099)))

(declare-fun res!1045738 () Bool)

(assert (=> d!710715 (=> (not res!1045738) (not e!1566099))))

(assert (=> d!710715 (= res!1045738 ((_ is Cons!28782) (t!209627 l!6611)))))

(assert (=> d!710715 (= (contains!4913 (t!209627 l!6611) lt!882770) lt!882941)))

(declare-fun b!2469003 () Bool)

(declare-fun e!1566100 () Bool)

(assert (=> b!2469003 (= e!1566099 e!1566100)))

(declare-fun res!1045737 () Bool)

(assert (=> b!2469003 (=> res!1045737 e!1566100)))

(assert (=> b!2469003 (= res!1045737 (= (h!34183 (t!209627 l!6611)) lt!882770))))

(declare-fun b!2469004 () Bool)

(assert (=> b!2469004 (= e!1566100 (contains!4913 (t!209627 (t!209627 l!6611)) lt!882770))))

(assert (= (and d!710715 res!1045738) b!2469003))

(assert (= (and b!2469003 (not res!1045737)) b!2469004))

(declare-fun m!2838279 () Bool)

(assert (=> d!710715 m!2838279))

(declare-fun m!2838281 () Bool)

(assert (=> d!710715 m!2838281))

(declare-fun m!2838283 () Bool)

(assert (=> b!2469004 m!2838283))

(assert (=> b!2468731 d!710715))

(declare-fun bs!466778 () Bool)

(declare-fun d!710717 () Bool)

(assert (= bs!466778 (and d!710717 d!710561)))

(declare-fun lambda!93296 () Int)

(assert (=> bs!466778 (= lambda!93296 lambda!93273)))

(assert (=> d!710717 true))

(declare-fun lt!882944 () Bool)

(assert (=> d!710717 (= lt!882944 (forall!5901 rules!4472 lambda!93296))))

(declare-fun e!1566105 () Bool)

(assert (=> d!710717 (= lt!882944 e!1566105)))

(declare-fun res!1045743 () Bool)

(assert (=> d!710717 (=> res!1045743 e!1566105)))

(assert (=> d!710717 (= res!1045743 (not ((_ is Cons!28783) rules!4472)))))

(assert (=> d!710717 (= (rulesValidInductive!1584 thiss!27932 rules!4472) lt!882944)))

(declare-fun b!2469009 () Bool)

(declare-fun e!1566106 () Bool)

(assert (=> b!2469009 (= e!1566105 e!1566106)))

(declare-fun res!1045744 () Bool)

(assert (=> b!2469009 (=> (not res!1045744) (not e!1566106))))

(declare-fun ruleValid!1514 (LexerInterface!4080 Rule!8766) Bool)

(assert (=> b!2469009 (= res!1045744 (ruleValid!1514 thiss!27932 (h!34184 rules!4472)))))

(declare-fun b!2469010 () Bool)

(assert (=> b!2469010 (= e!1566106 (rulesValidInductive!1584 thiss!27932 (t!209628 rules!4472)))))

(assert (= (and d!710717 (not res!1045743)) b!2469009))

(assert (= (and b!2469009 res!1045744) b!2469010))

(declare-fun m!2838285 () Bool)

(assert (=> d!710717 m!2838285))

(declare-fun m!2838287 () Bool)

(assert (=> b!2469009 m!2838287))

(declare-fun m!2838289 () Bool)

(assert (=> b!2469010 m!2838289))

(assert (=> d!710561 d!710717))

(declare-fun d!710719 () Bool)

(declare-fun res!1045749 () Bool)

(declare-fun e!1566111 () Bool)

(assert (=> d!710719 (=> res!1045749 e!1566111)))

(assert (=> d!710719 (= res!1045749 ((_ is Nil!28783) rules!4472))))

(assert (=> d!710719 (= (forall!5901 rules!4472 lambda!93273) e!1566111)))

(declare-fun b!2469015 () Bool)

(declare-fun e!1566112 () Bool)

(assert (=> b!2469015 (= e!1566111 e!1566112)))

(declare-fun res!1045750 () Bool)

(assert (=> b!2469015 (=> (not res!1045750) (not e!1566112))))

(declare-fun dynLambda!12362 (Int Rule!8766) Bool)

(assert (=> b!2469015 (= res!1045750 (dynLambda!12362 lambda!93273 (h!34184 rules!4472)))))

(declare-fun b!2469016 () Bool)

(assert (=> b!2469016 (= e!1566112 (forall!5901 (t!209628 rules!4472) lambda!93273))))

(assert (= (and d!710719 (not res!1045749)) b!2469015))

(assert (= (and b!2469015 res!1045750) b!2469016))

(declare-fun b_lambda!75727 () Bool)

(assert (=> (not b_lambda!75727) (not b!2469015)))

(declare-fun m!2838291 () Bool)

(assert (=> b!2469015 m!2838291))

(declare-fun m!2838293 () Bool)

(assert (=> b!2469016 m!2838293))

(assert (=> d!710561 d!710719))

(declare-fun d!710721 () Bool)

(declare-fun lt!882947 () Bool)

(assert (=> d!710721 (= lt!882947 (isEmpty!16720 (list!11131 (_2!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611))))))))))

(declare-fun isEmpty!16723 (Conc!9197) Bool)

(assert (=> d!710721 (= lt!882947 (isEmpty!16723 (c!393380 (_2!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611))))))))))

(assert (=> d!710721 (= (isEmpty!16721 (_2!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611)))))) lt!882947)))

(declare-fun bs!466779 () Bool)

(assert (= bs!466779 d!710721))

(declare-fun m!2838295 () Bool)

(assert (=> bs!466779 m!2838295))

(assert (=> bs!466779 m!2838295))

(declare-fun m!2838297 () Bool)

(assert (=> bs!466779 m!2838297))

(declare-fun m!2838299 () Bool)

(assert (=> bs!466779 m!2838299))

(assert (=> b!2468639 d!710721))

(declare-fun b!2469031 () Bool)

(declare-fun e!1566123 () Bool)

(declare-fun e!1566124 () Bool)

(assert (=> b!2469031 (= e!1566123 e!1566124)))

(declare-fun lt!882959 () tuple2!28240)

(declare-fun res!1045763 () Bool)

(assert (=> b!2469031 (= res!1045763 (< (size!22397 (_2!16661 lt!882959)) (size!22397 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611))))))))

(assert (=> b!2469031 (=> (not res!1045763) (not e!1566124))))

(declare-fun b!2469032 () Bool)

(declare-fun isEmpty!16724 (BalanceConc!18010) Bool)

(assert (=> b!2469032 (= e!1566124 (not (isEmpty!16724 (_1!16661 lt!882959))))))

(declare-fun e!1566125 () Bool)

(declare-fun b!2469033 () Bool)

(declare-datatypes ((tuple2!28244 0))(
  ( (tuple2!28245 (_1!16663 List!28882) (_2!16663 List!28881)) )
))
(declare-fun lexList!1147 (LexerInterface!4080 List!28883 List!28881) tuple2!28244)

(assert (=> b!2469033 (= e!1566125 (= (list!11131 (_2!16661 lt!882959)) (_2!16663 (lexList!1147 thiss!27932 rules!4472 (list!11131 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611))))))))))

(declare-fun b!2469034 () Bool)

(declare-fun res!1045762 () Bool)

(assert (=> b!2469034 (=> (not res!1045762) (not e!1566125))))

(assert (=> b!2469034 (= res!1045762 (= (list!11133 (_1!16661 lt!882959)) (_1!16663 (lexList!1147 thiss!27932 rules!4472 (list!11131 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611))))))))))

(declare-fun b!2469035 () Bool)

(assert (=> b!2469035 (= e!1566123 (= (_2!16661 lt!882959) (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611)))))))

(declare-fun d!710723 () Bool)

(assert (=> d!710723 e!1566125))

(declare-fun res!1045764 () Bool)

(assert (=> d!710723 (=> (not res!1045764) (not e!1566125))))

(assert (=> d!710723 (= res!1045764 e!1566123)))

(declare-fun c!393457 () Bool)

(assert (=> d!710723 (= c!393457 (> (size!22400 (_1!16661 lt!882959)) 0))))

(declare-fun lexTailRecV2!822 (LexerInterface!4080 List!28883 BalanceConc!18008 BalanceConc!18008 BalanceConc!18008 BalanceConc!18010) tuple2!28240)

(assert (=> d!710723 (= lt!882959 (lexTailRecV2!822 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611))) (BalanceConc!18009 Empty!9197) (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611))) (BalanceConc!18011 Empty!9198)))))

(assert (=> d!710723 (= (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611)))) lt!882959)))

(assert (= (and d!710723 c!393457) b!2469031))

(assert (= (and d!710723 (not c!393457)) b!2469035))

(assert (= (and b!2469031 res!1045763) b!2469032))

(assert (= (and d!710723 res!1045764) b!2469034))

(assert (= (and b!2469034 res!1045762) b!2469033))

(declare-fun m!2838317 () Bool)

(assert (=> b!2469034 m!2838317))

(assert (=> b!2469034 m!2837849))

(declare-fun m!2838319 () Bool)

(assert (=> b!2469034 m!2838319))

(assert (=> b!2469034 m!2838319))

(declare-fun m!2838321 () Bool)

(assert (=> b!2469034 m!2838321))

(declare-fun m!2838323 () Bool)

(assert (=> b!2469033 m!2838323))

(assert (=> b!2469033 m!2837849))

(assert (=> b!2469033 m!2838319))

(assert (=> b!2469033 m!2838319))

(assert (=> b!2469033 m!2838321))

(declare-fun m!2838325 () Bool)

(assert (=> b!2469032 m!2838325))

(declare-fun m!2838327 () Bool)

(assert (=> d!710723 m!2838327))

(assert (=> d!710723 m!2837849))

(assert (=> d!710723 m!2837849))

(declare-fun m!2838329 () Bool)

(assert (=> d!710723 m!2838329))

(declare-fun m!2838331 () Bool)

(assert (=> b!2469031 m!2838331))

(assert (=> b!2469031 m!2837849))

(declare-fun m!2838333 () Bool)

(assert (=> b!2469031 m!2838333))

(assert (=> b!2468639 d!710723))

(declare-fun d!710729 () Bool)

(declare-fun lt!882964 () BalanceConc!18008)

(declare-fun printList!1131 (LexerInterface!4080 List!28882) List!28881)

(assert (=> d!710729 (= (list!11131 lt!882964) (printList!1131 thiss!27932 (list!11133 (singletonSeq!1991 (h!34183 l!6611)))))))

(declare-fun printTailRec!1082 (LexerInterface!4080 BalanceConc!18010 Int BalanceConc!18008) BalanceConc!18008)

(assert (=> d!710729 (= lt!882964 (printTailRec!1082 thiss!27932 (singletonSeq!1991 (h!34183 l!6611)) 0 (BalanceConc!18009 Empty!9197)))))

(assert (=> d!710729 (= (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611))) lt!882964)))

(declare-fun bs!466780 () Bool)

(assert (= bs!466780 d!710729))

(declare-fun m!2838351 () Bool)

(assert (=> bs!466780 m!2838351))

(assert (=> bs!466780 m!2837843))

(assert (=> bs!466780 m!2837845))

(assert (=> bs!466780 m!2837845))

(declare-fun m!2838353 () Bool)

(assert (=> bs!466780 m!2838353))

(assert (=> bs!466780 m!2837843))

(declare-fun m!2838355 () Bool)

(assert (=> bs!466780 m!2838355))

(assert (=> b!2468639 d!710729))

(declare-fun d!710737 () Bool)

(declare-fun e!1566138 () Bool)

(assert (=> d!710737 e!1566138))

(declare-fun res!1045788 () Bool)

(assert (=> d!710737 (=> (not res!1045788) (not e!1566138))))

(declare-fun lt!882967 () BalanceConc!18010)

(assert (=> d!710737 (= res!1045788 (= (list!11133 lt!882967) (Cons!28782 (h!34183 l!6611) Nil!28782)))))

(declare-fun singleton!895 (Token!8436) BalanceConc!18010)

(assert (=> d!710737 (= lt!882967 (singleton!895 (h!34183 l!6611)))))

(assert (=> d!710737 (= (singletonSeq!1991 (h!34183 l!6611)) lt!882967)))

(declare-fun b!2469059 () Bool)

(declare-fun isBalanced!2803 (Conc!9198) Bool)

(assert (=> b!2469059 (= e!1566138 (isBalanced!2803 (c!393450 lt!882967)))))

(assert (= (and d!710737 res!1045788) b!2469059))

(declare-fun m!2838357 () Bool)

(assert (=> d!710737 m!2838357))

(declare-fun m!2838359 () Bool)

(assert (=> d!710737 m!2838359))

(declare-fun m!2838361 () Bool)

(assert (=> b!2469059 m!2838361))

(assert (=> b!2468639 d!710737))

(declare-fun d!710739 () Bool)

(assert (=> d!710739 (= (inv!38878 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) (<= (size!22398 (innerList!9257 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) 2147483647))))

(declare-fun bs!466781 () Bool)

(assert (= bs!466781 d!710739))

(declare-fun m!2838363 () Bool)

(assert (=> bs!466781 m!2838363))

(assert (=> b!2468813 d!710739))

(declare-fun d!710741 () Bool)

(declare-fun lt!882968 () Int)

(assert (=> d!710741 (>= lt!882968 0)))

(declare-fun e!1566139 () Int)

(assert (=> d!710741 (= lt!882968 e!1566139)))

(declare-fun c!393458 () Bool)

(assert (=> d!710741 (= c!393458 ((_ is Nil!28782) (tail!3916 l!6611)))))

(assert (=> d!710741 (= (size!22394 (tail!3916 l!6611)) lt!882968)))

(declare-fun b!2469060 () Bool)

(assert (=> b!2469060 (= e!1566139 0)))

(declare-fun b!2469061 () Bool)

(assert (=> b!2469061 (= e!1566139 (+ 1 (size!22394 (t!209627 (tail!3916 l!6611)))))))

(assert (= (and d!710741 c!393458) b!2469060))

(assert (= (and d!710741 (not c!393458)) b!2469061))

(declare-fun m!2838365 () Bool)

(assert (=> b!2469061 m!2838365))

(assert (=> b!2468689 d!710741))

(declare-fun d!710743 () Bool)

(declare-fun res!1045799 () Bool)

(declare-fun e!1566145 () Bool)

(assert (=> d!710743 (=> (not res!1045799) (not e!1566145))))

(declare-fun list!11136 (IArray!18399) List!28881)

(assert (=> d!710743 (= res!1045799 (<= (size!22398 (list!11136 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) 512))))

(assert (=> d!710743 (= (inv!38875 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) e!1566145)))

(declare-fun b!2469074 () Bool)

(declare-fun res!1045800 () Bool)

(assert (=> b!2469074 (=> (not res!1045800) (not e!1566145))))

(assert (=> b!2469074 (= res!1045800 (= (csize!18625 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) (size!22398 (list!11136 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))))

(declare-fun b!2469075 () Bool)

(assert (=> b!2469075 (= e!1566145 (and (> (csize!18625 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) 0) (<= (csize!18625 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) 512)))))

(assert (= (and d!710743 res!1045799) b!2469074))

(assert (= (and b!2469074 res!1045800) b!2469075))

(declare-fun m!2838381 () Bool)

(assert (=> d!710743 m!2838381))

(assert (=> d!710743 m!2838381))

(declare-fun m!2838383 () Bool)

(assert (=> d!710743 m!2838383))

(assert (=> b!2469074 m!2838381))

(assert (=> b!2469074 m!2838381))

(assert (=> b!2469074 m!2838383))

(assert (=> b!2468664 d!710743))

(declare-fun d!710749 () Bool)

(declare-fun res!1045801 () Bool)

(declare-fun e!1566147 () Bool)

(assert (=> d!710749 (=> (not res!1045801) (not e!1566147))))

(assert (=> d!710749 (= res!1045801 (<= (size!22398 (list!11136 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) 512))))

(assert (=> d!710749 (= (inv!38875 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) e!1566147)))

(declare-fun b!2469078 () Bool)

(declare-fun res!1045802 () Bool)

(assert (=> b!2469078 (=> (not res!1045802) (not e!1566147))))

(assert (=> b!2469078 (= res!1045802 (= (csize!18625 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) (size!22398 (list!11136 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))))

(declare-fun b!2469079 () Bool)

(assert (=> b!2469079 (= e!1566147 (and (> (csize!18625 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) 0) (<= (csize!18625 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) 512)))))

(assert (= (and d!710749 res!1045801) b!2469078))

(assert (= (and b!2469078 res!1045802) b!2469079))

(declare-fun m!2838387 () Bool)

(assert (=> d!710749 m!2838387))

(assert (=> d!710749 m!2838387))

(declare-fun m!2838389 () Bool)

(assert (=> d!710749 m!2838389))

(assert (=> b!2469078 m!2838387))

(assert (=> b!2469078 m!2838387))

(assert (=> b!2469078 m!2838389))

(assert (=> b!2468729 d!710749))

(assert (=> b!2468483 d!710549))

(declare-fun d!710753 () Bool)

(declare-fun res!1045805 () Bool)

(declare-fun e!1566150 () Bool)

(assert (=> d!710753 (=> (not res!1045805) (not e!1566150))))

(assert (=> d!710753 (= res!1045805 (not (isEmpty!16720 (originalCharacters!5249 (h!34183 (t!209627 (t!209627 l!6611)))))))))

(assert (=> d!710753 (= (inv!38869 (h!34183 (t!209627 (t!209627 l!6611)))) e!1566150)))

(declare-fun b!2469082 () Bool)

(declare-fun res!1045806 () Bool)

(assert (=> b!2469082 (=> (not res!1045806) (not e!1566150))))

(assert (=> b!2469082 (= res!1045806 (= (originalCharacters!5249 (h!34183 (t!209627 (t!209627 l!6611)))) (list!11131 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (value!143171 (h!34183 (t!209627 (t!209627 l!6611))))))))))

(declare-fun b!2469083 () Bool)

(assert (=> b!2469083 (= e!1566150 (= (size!22393 (h!34183 (t!209627 (t!209627 l!6611)))) (size!22398 (originalCharacters!5249 (h!34183 (t!209627 (t!209627 l!6611)))))))))

(assert (= (and d!710753 res!1045805) b!2469082))

(assert (= (and b!2469082 res!1045806) b!2469083))

(declare-fun b_lambda!75729 () Bool)

(assert (=> (not b_lambda!75729) (not b!2469082)))

(declare-fun tb!139665 () Bool)

(declare-fun t!209776 () Bool)

(assert (=> (and b!2468825 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) t!209776) tb!139665))

(declare-fun b!2469084 () Bool)

(declare-fun e!1566151 () Bool)

(declare-fun tp!788120 () Bool)

(assert (=> b!2469084 (= e!1566151 (and (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (value!143171 (h!34183 (t!209627 (t!209627 l!6611))))))) tp!788120))))

(declare-fun result!172376 () Bool)

(assert (=> tb!139665 (= result!172376 (and (inv!38873 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (value!143171 (h!34183 (t!209627 (t!209627 l!6611)))))) e!1566151))))

(assert (= tb!139665 b!2469084))

(declare-fun m!2838395 () Bool)

(assert (=> b!2469084 m!2838395))

(declare-fun m!2838397 () Bool)

(assert (=> tb!139665 m!2838397))

(assert (=> b!2469082 t!209776))

(declare-fun b_and!187029 () Bool)

(assert (= b_and!187019 (and (=> t!209776 result!172376) b_and!187029)))

(declare-fun t!209778 () Bool)

(declare-fun tb!139667 () Bool)

(assert (=> (and b!2468530 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) t!209778) tb!139667))

(declare-fun result!172378 () Bool)

(assert (= result!172378 result!172376))

(assert (=> b!2469082 t!209778))

(declare-fun b_and!187031 () Bool)

(assert (= b_and!187005 (and (=> t!209778 result!172378) b_and!187031)))

(declare-fun tb!139669 () Bool)

(declare-fun t!209780 () Bool)

(assert (=> (and b!2468228 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) t!209780) tb!139669))

(declare-fun result!172380 () Bool)

(assert (= result!172380 result!172376))

(assert (=> b!2469082 t!209780))

(declare-fun b_and!187033 () Bool)

(assert (= b_and!187009 (and (=> t!209780 result!172380) b_and!187033)))

(declare-fun tb!139671 () Bool)

(declare-fun t!209782 () Bool)

(assert (=> (and b!2468239 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) t!209782) tb!139671))

(declare-fun result!172382 () Bool)

(assert (= result!172382 result!172376))

(assert (=> b!2469082 t!209782))

(declare-fun b_and!187035 () Bool)

(assert (= b_and!187007 (and (=> t!209782 result!172382) b_and!187035)))

(declare-fun tb!139673 () Bool)

(declare-fun t!209784 () Bool)

(assert (=> (and b!2468223 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) t!209784) tb!139673))

(declare-fun result!172384 () Bool)

(assert (= result!172384 result!172376))

(assert (=> b!2469082 t!209784))

(declare-fun b_and!187037 () Bool)

(assert (= b_and!187001 (and (=> t!209784 result!172384) b_and!187037)))

(declare-fun t!209786 () Bool)

(declare-fun tb!139675 () Bool)

(assert (=> (and b!2468544 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) t!209786) tb!139675))

(declare-fun result!172386 () Bool)

(assert (= result!172386 result!172376))

(assert (=> b!2469082 t!209786))

(declare-fun b_and!187039 () Bool)

(assert (= b_and!187011 (and (=> t!209786 result!172386) b_and!187039)))

(declare-fun t!209788 () Bool)

(declare-fun tb!139677 () Bool)

(assert (=> (and b!2468235 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) t!209788) tb!139677))

(declare-fun result!172388 () Bool)

(assert (= result!172388 result!172376))

(assert (=> b!2469082 t!209788))

(declare-fun b_and!187041 () Bool)

(assert (= b_and!187003 (and (=> t!209788 result!172388) b_and!187041)))

(declare-fun t!209790 () Bool)

(declare-fun tb!139679 () Bool)

(assert (=> (and b!2468768 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) t!209790) tb!139679))

(declare-fun result!172390 () Bool)

(assert (= result!172390 result!172376))

(assert (=> b!2469082 t!209790))

(declare-fun b_and!187043 () Bool)

(assert (= b_and!187015 (and (=> t!209790 result!172390) b_and!187043)))

(declare-fun m!2838399 () Bool)

(assert (=> d!710753 m!2838399))

(declare-fun m!2838401 () Bool)

(assert (=> b!2469082 m!2838401))

(assert (=> b!2469082 m!2838401))

(declare-fun m!2838403 () Bool)

(assert (=> b!2469082 m!2838403))

(declare-fun m!2838405 () Bool)

(assert (=> b!2469083 m!2838405))

(assert (=> b!2468765 d!710753))

(declare-fun d!710757 () Bool)

(assert (=> d!710757 (= (separableTokensPredicate!857 thiss!27932 (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))) (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) rules!4472) (not (prefixMatchZipperSequence!721 (rulesRegex!979 thiss!27932 rules!4472) (++!7139 (charsOf!2822 (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))) 0))))))))

(declare-fun bs!466782 () Bool)

(assert (= bs!466782 d!710757))

(declare-fun m!2838407 () Bool)

(assert (=> bs!466782 m!2838407))

(declare-fun m!2838409 () Bool)

(assert (=> bs!466782 m!2838409))

(assert (=> bs!466782 m!2837469))

(declare-fun m!2838411 () Bool)

(assert (=> bs!466782 m!2838411))

(assert (=> bs!466782 m!2837469))

(declare-fun m!2838413 () Bool)

(assert (=> bs!466782 m!2838413))

(declare-fun m!2838415 () Bool)

(assert (=> bs!466782 m!2838415))

(assert (=> bs!466782 m!2838117))

(assert (=> bs!466782 m!2838117))

(assert (=> bs!466782 m!2838407))

(assert (=> bs!466782 m!2838411))

(assert (=> bs!466782 m!2838409))

(assert (=> bs!466782 m!2838413))

(assert (=> b!2468735 d!710757))

(declare-fun d!710759 () Bool)

(assert (=> d!710759 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))

(declare-fun lt!882974 () Unit!42121)

(assert (=> d!710759 (= lt!882974 (choose!14580 thiss!27932 rules!4472 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))) (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))

(assert (=> d!710759 (not (isEmpty!16718 rules!4472))))

(assert (=> d!710759 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!673 thiss!27932 rules!4472 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))) (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))) lt!882974)))

(declare-fun bs!466783 () Bool)

(assert (= bs!466783 d!710759))

(assert (=> bs!466783 m!2838111))

(declare-fun m!2838417 () Bool)

(assert (=> bs!466783 m!2838417))

(assert (=> bs!466783 m!2837387))

(assert (=> b!2468735 d!710759))

(declare-fun d!710761 () Bool)

(declare-fun lt!882975 () BalanceConc!18008)

(assert (=> d!710761 (= (list!11131 lt!882975) (originalCharacters!5249 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))

(assert (=> d!710761 (= lt!882975 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))) (value!143171 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))))

(assert (=> d!710761 (= (charsOf!2822 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))) lt!882975)))

(declare-fun b_lambda!75731 () Bool)

(assert (=> (not b_lambda!75731) (not d!710761)))

(declare-fun t!209792 () Bool)

(declare-fun tb!139681 () Bool)

(assert (=> (and b!2468530 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) t!209792) tb!139681))

(declare-fun b!2469085 () Bool)

(declare-fun e!1566152 () Bool)

(declare-fun tp!788121 () Bool)

(assert (=> b!2469085 (= e!1566152 (and (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))) (value!143171 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) tp!788121))))

(declare-fun result!172392 () Bool)

(assert (=> tb!139681 (= result!172392 (and (inv!38873 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))) (value!143171 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))) e!1566152))))

(assert (= tb!139681 b!2469085))

(declare-fun m!2838423 () Bool)

(assert (=> b!2469085 m!2838423))

(declare-fun m!2838425 () Bool)

(assert (=> tb!139681 m!2838425))

(assert (=> d!710761 t!209792))

(declare-fun b_and!187045 () Bool)

(assert (= b_and!187031 (and (=> t!209792 result!172392) b_and!187045)))

(declare-fun t!209794 () Bool)

(declare-fun tb!139683 () Bool)

(assert (=> (and b!2468235 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) t!209794) tb!139683))

(declare-fun result!172394 () Bool)

(assert (= result!172394 result!172392))

(assert (=> d!710761 t!209794))

(declare-fun b_and!187047 () Bool)

(assert (= b_and!187041 (and (=> t!209794 result!172394) b_and!187047)))

(declare-fun t!209796 () Bool)

(declare-fun tb!139685 () Bool)

(assert (=> (and b!2468768 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) t!209796) tb!139685))

(declare-fun result!172396 () Bool)

(assert (= result!172396 result!172392))

(assert (=> d!710761 t!209796))

(declare-fun b_and!187049 () Bool)

(assert (= b_and!187043 (and (=> t!209796 result!172396) b_and!187049)))

(declare-fun t!209798 () Bool)

(declare-fun tb!139687 () Bool)

(assert (=> (and b!2468223 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) t!209798) tb!139687))

(declare-fun result!172398 () Bool)

(assert (= result!172398 result!172392))

(assert (=> d!710761 t!209798))

(declare-fun b_and!187051 () Bool)

(assert (= b_and!187037 (and (=> t!209798 result!172398) b_and!187051)))

(declare-fun t!209800 () Bool)

(declare-fun tb!139689 () Bool)

(assert (=> (and b!2468544 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) t!209800) tb!139689))

(declare-fun result!172400 () Bool)

(assert (= result!172400 result!172392))

(assert (=> d!710761 t!209800))

(declare-fun b_and!187053 () Bool)

(assert (= b_and!187039 (and (=> t!209800 result!172400) b_and!187053)))

(declare-fun t!209802 () Bool)

(declare-fun tb!139691 () Bool)

(assert (=> (and b!2468228 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) t!209802) tb!139691))

(declare-fun result!172402 () Bool)

(assert (= result!172402 result!172392))

(assert (=> d!710761 t!209802))

(declare-fun b_and!187055 () Bool)

(assert (= b_and!187033 (and (=> t!209802 result!172402) b_and!187055)))

(declare-fun tb!139693 () Bool)

(declare-fun t!209804 () Bool)

(assert (=> (and b!2468239 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) t!209804) tb!139693))

(declare-fun result!172404 () Bool)

(assert (= result!172404 result!172392))

(assert (=> d!710761 t!209804))

(declare-fun b_and!187057 () Bool)

(assert (= b_and!187035 (and (=> t!209804 result!172404) b_and!187057)))

(declare-fun tb!139695 () Bool)

(declare-fun t!209806 () Bool)

(assert (=> (and b!2468825 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) t!209806) tb!139695))

(declare-fun result!172406 () Bool)

(assert (= result!172406 result!172392))

(assert (=> d!710761 t!209806))

(declare-fun b_and!187059 () Bool)

(assert (= b_and!187029 (and (=> t!209806 result!172406) b_and!187059)))

(declare-fun m!2838429 () Bool)

(assert (=> d!710761 m!2838429))

(declare-fun m!2838431 () Bool)

(assert (=> d!710761 m!2838431))

(assert (=> b!2468735 d!710761))

(declare-fun d!710765 () Bool)

(declare-fun lt!882977 () Bool)

(declare-fun e!1566153 () Bool)

(assert (=> d!710765 (= lt!882977 e!1566153)))

(declare-fun res!1045808 () Bool)

(assert (=> d!710765 (=> (not res!1045808) (not e!1566153))))

(assert (=> d!710765 (= res!1045808 (= (list!11133 (_1!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))) (list!11133 (singletonSeq!1991 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))))

(declare-fun e!1566154 () Bool)

(assert (=> d!710765 (= lt!882977 e!1566154)))

(declare-fun res!1045809 () Bool)

(assert (=> d!710765 (=> (not res!1045809) (not e!1566154))))

(declare-fun lt!882978 () tuple2!28240)

(assert (=> d!710765 (= res!1045809 (= (size!22400 (_1!16661 lt!882978)) 1))))

(assert (=> d!710765 (= lt!882978 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))))

(assert (=> d!710765 (not (isEmpty!16718 rules!4472))))

(assert (=> d!710765 (= (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))) lt!882977)))

(declare-fun b!2469086 () Bool)

(declare-fun res!1045807 () Bool)

(assert (=> b!2469086 (=> (not res!1045807) (not e!1566154))))

(assert (=> b!2469086 (= res!1045807 (= (apply!6777 (_1!16661 lt!882978) 0) (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))

(declare-fun b!2469087 () Bool)

(assert (=> b!2469087 (= e!1566154 (isEmpty!16721 (_2!16661 lt!882978)))))

(declare-fun b!2469088 () Bool)

(assert (=> b!2469088 (= e!1566153 (isEmpty!16721 (_2!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))))))

(assert (= (and d!710765 res!1045809) b!2469086))

(assert (= (and b!2469086 res!1045807) b!2469087))

(assert (= (and d!710765 res!1045808) b!2469088))

(declare-fun m!2838433 () Bool)

(assert (=> d!710765 m!2838433))

(declare-fun m!2838435 () Bool)

(assert (=> d!710765 m!2838435))

(declare-fun m!2838437 () Bool)

(assert (=> d!710765 m!2838437))

(declare-fun m!2838439 () Bool)

(assert (=> d!710765 m!2838439))

(assert (=> d!710765 m!2838435))

(declare-fun m!2838441 () Bool)

(assert (=> d!710765 m!2838441))

(assert (=> d!710765 m!2837387))

(assert (=> d!710765 m!2838435))

(assert (=> d!710765 m!2838441))

(declare-fun m!2838443 () Bool)

(assert (=> d!710765 m!2838443))

(declare-fun m!2838445 () Bool)

(assert (=> b!2469086 m!2838445))

(declare-fun m!2838447 () Bool)

(assert (=> b!2469087 m!2838447))

(assert (=> b!2469088 m!2838435))

(assert (=> b!2469088 m!2838435))

(assert (=> b!2469088 m!2838441))

(assert (=> b!2469088 m!2838441))

(assert (=> b!2469088 m!2838443))

(declare-fun m!2838449 () Bool)

(assert (=> b!2469088 m!2838449))

(assert (=> b!2468735 d!710765))

(declare-fun d!710767 () Bool)

(assert (=> d!710767 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))

(declare-fun lt!882979 () Unit!42121)

(assert (=> d!710767 (= lt!882979 (choose!14580 thiss!27932 rules!4472 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))) (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))

(assert (=> d!710767 (not (isEmpty!16718 rules!4472))))

(assert (=> d!710767 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!673 thiss!27932 rules!4472 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))) (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) lt!882979)))

(declare-fun bs!466789 () Bool)

(assert (= bs!466789 d!710767))

(assert (=> bs!466789 m!2838121))

(declare-fun m!2838453 () Bool)

(assert (=> bs!466789 m!2838453))

(assert (=> bs!466789 m!2837387))

(assert (=> b!2468735 d!710767))

(declare-fun d!710769 () Bool)

(declare-fun lt!882980 () Int)

(assert (=> d!710769 (= lt!882980 (size!22398 (list!11131 (charsOf!2822 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))))

(assert (=> d!710769 (= lt!882980 (size!22399 (c!393380 (charsOf!2822 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))))

(assert (=> d!710769 (= (size!22397 (charsOf!2822 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))) lt!882980)))

(declare-fun bs!466791 () Bool)

(assert (= bs!466791 d!710769))

(assert (=> bs!466791 m!2838117))

(declare-fun m!2838455 () Bool)

(assert (=> bs!466791 m!2838455))

(assert (=> bs!466791 m!2838455))

(declare-fun m!2838457 () Bool)

(assert (=> bs!466791 m!2838457))

(declare-fun m!2838459 () Bool)

(assert (=> bs!466791 m!2838459))

(assert (=> b!2468735 d!710769))

(declare-fun d!710773 () Bool)

(declare-fun lt!882981 () Bool)

(declare-fun e!1566155 () Bool)

(assert (=> d!710773 (= lt!882981 e!1566155)))

(declare-fun res!1045811 () Bool)

(assert (=> d!710773 (=> (not res!1045811) (not e!1566155))))

(assert (=> d!710773 (= res!1045811 (= (list!11133 (_1!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) (list!11133 (singletonSeq!1991 (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))))

(declare-fun e!1566156 () Bool)

(assert (=> d!710773 (= lt!882981 e!1566156)))

(declare-fun res!1045812 () Bool)

(assert (=> d!710773 (=> (not res!1045812) (not e!1566156))))

(declare-fun lt!882982 () tuple2!28240)

(assert (=> d!710773 (= res!1045812 (= (size!22400 (_1!16661 lt!882982)) 1))))

(assert (=> d!710773 (= lt!882982 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))))

(assert (=> d!710773 (not (isEmpty!16718 rules!4472))))

(assert (=> d!710773 (= (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) lt!882981)))

(declare-fun b!2469089 () Bool)

(declare-fun res!1045810 () Bool)

(assert (=> b!2469089 (=> (not res!1045810) (not e!1566156))))

(assert (=> b!2469089 (= res!1045810 (= (apply!6777 (_1!16661 lt!882982) 0) (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))

(declare-fun b!2469090 () Bool)

(assert (=> b!2469090 (= e!1566156 (isEmpty!16721 (_2!16661 lt!882982)))))

(declare-fun b!2469091 () Bool)

(assert (=> b!2469091 (= e!1566155 (isEmpty!16721 (_2!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))))))

(assert (= (and d!710773 res!1045812) b!2469089))

(assert (= (and b!2469089 res!1045810) b!2469090))

(assert (= (and d!710773 res!1045811) b!2469091))

(declare-fun m!2838461 () Bool)

(assert (=> d!710773 m!2838461))

(declare-fun m!2838465 () Bool)

(assert (=> d!710773 m!2838465))

(declare-fun m!2838467 () Bool)

(assert (=> d!710773 m!2838467))

(declare-fun m!2838469 () Bool)

(assert (=> d!710773 m!2838469))

(assert (=> d!710773 m!2838465))

(declare-fun m!2838471 () Bool)

(assert (=> d!710773 m!2838471))

(assert (=> d!710773 m!2837387))

(assert (=> d!710773 m!2838465))

(assert (=> d!710773 m!2838471))

(declare-fun m!2838473 () Bool)

(assert (=> d!710773 m!2838473))

(declare-fun m!2838475 () Bool)

(assert (=> b!2469089 m!2838475))

(declare-fun m!2838477 () Bool)

(assert (=> b!2469090 m!2838477))

(assert (=> b!2469091 m!2838465))

(assert (=> b!2469091 m!2838465))

(assert (=> b!2469091 m!2838471))

(assert (=> b!2469091 m!2838471))

(assert (=> b!2469091 m!2838473))

(declare-fun m!2838479 () Bool)

(assert (=> b!2469091 m!2838479))

(assert (=> b!2468735 d!710773))

(declare-fun d!710777 () Bool)

(declare-fun lt!882983 () Int)

(assert (=> d!710777 (= lt!882983 (size!22398 (list!11131 (charsOf!2822 t2!67))))))

(assert (=> d!710777 (= lt!882983 (size!22399 (c!393380 (charsOf!2822 t2!67))))))

(assert (=> d!710777 (= (size!22397 (charsOf!2822 t2!67)) lt!882983)))

(declare-fun bs!466793 () Bool)

(assert (= bs!466793 d!710777))

(assert (=> bs!466793 m!2837477))

(assert (=> bs!466793 m!2837983))

(assert (=> bs!466793 m!2837983))

(declare-fun m!2838481 () Bool)

(assert (=> bs!466793 m!2838481))

(declare-fun m!2838483 () Bool)

(assert (=> bs!466793 m!2838483))

(assert (=> b!2468699 d!710777))

(declare-fun bs!466796 () Bool)

(declare-fun d!710779 () Bool)

(assert (= bs!466796 (and d!710779 d!710661)))

(declare-fun lambda!93299 () Int)

(assert (=> bs!466796 (= (and (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (rule!6841 t1!67))))) (= lambda!93299 lambda!93287))))

(declare-fun bs!466798 () Bool)

(assert (= bs!466798 (and d!710779 d!710663)))

(assert (=> bs!466798 (= (and (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (h!34184 rules!4472)))) (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (h!34184 rules!4472))))) (= lambda!93299 lambda!93288))))

(declare-fun bs!466799 () Bool)

(assert (= bs!466799 (and d!710779 d!710667)))

(assert (=> bs!466799 (= (and (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (= lambda!93299 lambda!93289))))

(declare-fun bs!466801 () Bool)

(assert (= bs!466801 (and d!710779 d!710673)))

(assert (=> bs!466801 (= (and (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (rule!6841 t2!67))))) (= lambda!93299 lambda!93290))))

(assert (=> d!710779 true))

(assert (=> d!710779 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) (dynLambda!12361 order!15603 lambda!93299))))

(assert (=> d!710779 true))

(assert (=> d!710779 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) (dynLambda!12361 order!15603 lambda!93299))))

(assert (=> d!710779 (= (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) (Forall!1138 lambda!93299))))

(declare-fun bs!466803 () Bool)

(assert (= bs!466803 d!710779))

(declare-fun m!2838485 () Bool)

(assert (=> bs!466803 m!2838485))

(assert (=> d!710657 d!710779))

(declare-fun b!2469106 () Bool)

(declare-fun e!1566162 () Bool)

(declare-fun e!1566163 () Bool)

(assert (=> b!2469106 (= e!1566162 e!1566163)))

(declare-fun res!1045825 () Bool)

(assert (=> b!2469106 (=> (not res!1045825) (not e!1566163))))

(assert (=> b!2469106 (= res!1045825 (<= (- 1) (- (height!1341 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) (height!1341 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))))

(declare-fun b!2469107 () Bool)

(assert (=> b!2469107 (= e!1566163 (not (isEmpty!16723 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))))

(declare-fun b!2469108 () Bool)

(declare-fun res!1045829 () Bool)

(assert (=> b!2469108 (=> (not res!1045829) (not e!1566163))))

(assert (=> b!2469108 (= res!1045829 (not (isEmpty!16723 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))))

(declare-fun b!2469109 () Bool)

(declare-fun res!1045826 () Bool)

(assert (=> b!2469109 (=> (not res!1045826) (not e!1566163))))

(assert (=> b!2469109 (= res!1045826 (isBalanced!2801 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(declare-fun b!2469110 () Bool)

(declare-fun res!1045830 () Bool)

(assert (=> b!2469110 (=> (not res!1045830) (not e!1566163))))

(assert (=> b!2469110 (= res!1045830 (<= (- (height!1341 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) (height!1341 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) 1))))

(declare-fun d!710781 () Bool)

(declare-fun res!1045828 () Bool)

(assert (=> d!710781 (=> res!1045828 e!1566162)))

(assert (=> d!710781 (= res!1045828 (not ((_ is Node!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(assert (=> d!710781 (= (isBalanced!2801 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) e!1566162)))

(declare-fun b!2469111 () Bool)

(declare-fun res!1045827 () Bool)

(assert (=> b!2469111 (=> (not res!1045827) (not e!1566163))))

(assert (=> b!2469111 (= res!1045827 (isBalanced!2801 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(assert (= (and d!710781 (not res!1045828)) b!2469106))

(assert (= (and b!2469106 res!1045825) b!2469110))

(assert (= (and b!2469110 res!1045830) b!2469109))

(assert (= (and b!2469109 res!1045826) b!2469111))

(assert (= (and b!2469111 res!1045827) b!2469108))

(assert (= (and b!2469108 res!1045829) b!2469107))

(declare-fun m!2838491 () Bool)

(assert (=> b!2469108 m!2838491))

(declare-fun m!2838493 () Bool)

(assert (=> b!2469109 m!2838493))

(declare-fun m!2838495 () Bool)

(assert (=> b!2469106 m!2838495))

(declare-fun m!2838497 () Bool)

(assert (=> b!2469106 m!2838497))

(declare-fun m!2838499 () Bool)

(assert (=> b!2469107 m!2838499))

(assert (=> b!2469110 m!2838495))

(assert (=> b!2469110 m!2838497))

(declare-fun m!2838501 () Bool)

(assert (=> b!2469111 m!2838501))

(assert (=> d!710541 d!710781))

(assert (=> b!2468559 d!710477))

(declare-fun bs!466805 () Bool)

(declare-fun d!710787 () Bool)

(assert (= bs!466805 (and d!710787 d!710661)))

(declare-fun lambda!93300 () Int)

(assert (=> bs!466805 (= (and (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) (= (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (rule!6841 t1!67))))) (= lambda!93300 lambda!93287))))

(declare-fun bs!466806 () Bool)

(assert (= bs!466806 (and d!710787 d!710667)))

(assert (=> bs!466806 (= (and (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) (= (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (= lambda!93300 lambda!93289))))

(declare-fun bs!466807 () Bool)

(assert (= bs!466807 (and d!710787 d!710779)))

(assert (=> bs!466807 (= (and (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) (= (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) (= lambda!93300 lambda!93299))))

(declare-fun bs!466808 () Bool)

(assert (= bs!466808 (and d!710787 d!710673)))

(assert (=> bs!466808 (= (and (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) (= (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (rule!6841 t2!67))))) (= lambda!93300 lambda!93290))))

(declare-fun bs!466809 () Bool)

(assert (= bs!466809 (and d!710787 d!710663)))

(assert (=> bs!466809 (= (and (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (h!34184 rules!4472)))) (= (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (h!34184 rules!4472))))) (= lambda!93300 lambda!93288))))

(assert (=> d!710787 true))

(assert (=> d!710787 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472))))) (dynLambda!12361 order!15603 lambda!93300))))

(assert (=> d!710787 true))

(assert (=> d!710787 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472))))) (dynLambda!12361 order!15603 lambda!93300))))

(assert (=> d!710787 (= (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472))))) (Forall!1138 lambda!93300))))

(declare-fun bs!466810 () Bool)

(assert (= bs!466810 d!710787))

(declare-fun m!2838503 () Bool)

(assert (=> bs!466810 m!2838503))

(assert (=> d!710559 d!710787))

(declare-fun b!2469124 () Bool)

(declare-fun e!1566170 () List!28881)

(assert (=> b!2469124 (= e!1566170 Nil!28781)))

(declare-fun b!2469125 () Bool)

(declare-fun e!1566171 () List!28881)

(assert (=> b!2469125 (= e!1566170 e!1566171)))

(declare-fun c!393469 () Bool)

(assert (=> b!2469125 (= c!393469 ((_ is Leaf!13746) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))

(declare-fun b!2469126 () Bool)

(assert (=> b!2469126 (= e!1566171 (list!11136 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(declare-fun d!710789 () Bool)

(declare-fun c!393468 () Bool)

(assert (=> d!710789 (= c!393468 ((_ is Empty!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))

(assert (=> d!710789 (= (list!11132 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) e!1566170)))

(declare-fun b!2469127 () Bool)

(assert (=> b!2469127 (= e!1566171 (++!7140 (list!11132 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) (list!11132 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))))

(assert (= (and d!710789 c!393468) b!2469124))

(assert (= (and d!710789 (not c!393468)) b!2469125))

(assert (= (and b!2469125 c!393469) b!2469126))

(assert (= (and b!2469125 (not c!393469)) b!2469127))

(assert (=> b!2469126 m!2838387))

(declare-fun m!2838505 () Bool)

(assert (=> b!2469127 m!2838505))

(declare-fun m!2838507 () Bool)

(assert (=> b!2469127 m!2838507))

(assert (=> b!2469127 m!2838505))

(assert (=> b!2469127 m!2838507))

(declare-fun m!2838509 () Bool)

(assert (=> b!2469127 m!2838509))

(assert (=> d!710455 d!710789))

(declare-fun d!710791 () Bool)

(assert (=> d!710791 (= (inv!38865 (tag!4973 (h!34184 (t!209628 (t!209628 rules!4472))))) (= (mod (str.len (value!143170 (tag!4973 (h!34184 (t!209628 (t!209628 rules!4472)))))) 2) 0))))

(assert (=> b!2468824 d!710791))

(declare-fun d!710793 () Bool)

(declare-fun res!1045831 () Bool)

(declare-fun e!1566173 () Bool)

(assert (=> d!710793 (=> (not res!1045831) (not e!1566173))))

(assert (=> d!710793 (= res!1045831 (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toValue!6343 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472)))))))))

(assert (=> d!710793 (= (inv!38868 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) e!1566173)))

(declare-fun b!2469130 () Bool)

(assert (=> b!2469130 (= e!1566173 (equivClasses!1755 (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toValue!6343 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472)))))))))

(assert (= (and d!710793 res!1045831) b!2469130))

(declare-fun m!2838511 () Bool)

(assert (=> d!710793 m!2838511))

(declare-fun m!2838513 () Bool)

(assert (=> b!2469130 m!2838513))

(assert (=> b!2468824 d!710793))

(declare-fun b!2469131 () Bool)

(declare-fun e!1566174 () Bool)

(declare-fun e!1566175 () Bool)

(assert (=> b!2469131 (= e!1566174 e!1566175)))

(declare-fun res!1045832 () Bool)

(assert (=> b!2469131 (=> (not res!1045832) (not e!1566175))))

(assert (=> b!2469131 (= res!1045832 (<= (- 1) (- (height!1341 (left!22085 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))) (height!1341 (right!22415 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))))

(declare-fun b!2469132 () Bool)

(assert (=> b!2469132 (= e!1566175 (not (isEmpty!16723 (right!22415 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))))

(declare-fun b!2469133 () Bool)

(declare-fun res!1045836 () Bool)

(assert (=> b!2469133 (=> (not res!1045836) (not e!1566175))))

(assert (=> b!2469133 (= res!1045836 (not (isEmpty!16723 (left!22085 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))))

(declare-fun b!2469134 () Bool)

(declare-fun res!1045833 () Bool)

(assert (=> b!2469134 (=> (not res!1045833) (not e!1566175))))

(assert (=> b!2469134 (= res!1045833 (isBalanced!2801 (left!22085 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(declare-fun b!2469135 () Bool)

(declare-fun res!1045837 () Bool)

(assert (=> b!2469135 (=> (not res!1045837) (not e!1566175))))

(assert (=> b!2469135 (= res!1045837 (<= (- (height!1341 (left!22085 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))) (height!1341 (right!22415 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))) 1))))

(declare-fun d!710795 () Bool)

(declare-fun res!1045835 () Bool)

(assert (=> d!710795 (=> res!1045835 e!1566174)))

(assert (=> d!710795 (= res!1045835 (not ((_ is Node!9197) (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(assert (=> d!710795 (= (isBalanced!2801 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) e!1566174)))

(declare-fun b!2469136 () Bool)

(declare-fun res!1045834 () Bool)

(assert (=> b!2469136 (=> (not res!1045834) (not e!1566175))))

(assert (=> b!2469136 (= res!1045834 (isBalanced!2801 (right!22415 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(assert (= (and d!710795 (not res!1045835)) b!2469131))

(assert (= (and b!2469131 res!1045832) b!2469135))

(assert (= (and b!2469135 res!1045837) b!2469134))

(assert (= (and b!2469134 res!1045833) b!2469136))

(assert (= (and b!2469136 res!1045834) b!2469133))

(assert (= (and b!2469133 res!1045836) b!2469132))

(declare-fun m!2838515 () Bool)

(assert (=> b!2469133 m!2838515))

(declare-fun m!2838517 () Bool)

(assert (=> b!2469134 m!2838517))

(declare-fun m!2838519 () Bool)

(assert (=> b!2469131 m!2838519))

(declare-fun m!2838521 () Bool)

(assert (=> b!2469131 m!2838521))

(declare-fun m!2838523 () Bool)

(assert (=> b!2469132 m!2838523))

(assert (=> b!2469135 m!2838519))

(assert (=> b!2469135 m!2838521))

(declare-fun m!2838527 () Bool)

(assert (=> b!2469136 m!2838527))

(assert (=> b!2468708 d!710795))

(declare-fun c!393506 () Bool)

(declare-fun lt!883009 () Conc!9197)

(declare-fun call!151468 () Int)

(declare-fun bm!151450 () Bool)

(assert (=> bm!151450 (= call!151468 (height!1341 (ite c!393506 lt!883009 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun b!2469215 () Bool)

(declare-fun res!1045858 () Bool)

(declare-fun e!1566226 () Bool)

(assert (=> b!2469215 (=> (not res!1045858) (not e!1566226))))

(declare-fun lt!883008 () Conc!9197)

(assert (=> b!2469215 (= res!1045858 (<= (height!1341 lt!883008) (+ (max!0 (height!1341 (c!393380 (charsOf!2822 t1!67))) (height!1341 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) 1)))))

(declare-fun b!2469216 () Bool)

(declare-fun e!1566221 () Conc!9197)

(declare-fun call!151461 () Conc!9197)

(assert (=> b!2469216 (= e!1566221 call!151461)))

(declare-fun b!2469217 () Bool)

(declare-fun e!1566217 () Conc!9197)

(assert (=> b!2469217 (= e!1566217 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))

(declare-fun c!393509 () Bool)

(declare-fun call!151459 () Conc!9197)

(declare-fun c!393507 () Bool)

(declare-fun lt!883006 () Conc!9197)

(declare-fun call!151464 () Conc!9197)

(declare-fun c!393504 () Bool)

(declare-fun c!393505 () Bool)

(declare-fun call!151465 () Conc!9197)

(declare-fun call!151470 () Conc!9197)

(declare-fun bm!151451 () Bool)

(declare-fun c!393502 () Bool)

(declare-fun <>!219 (Conc!9197 Conc!9197) Conc!9197)

(assert (=> bm!151451 (= call!151464 (<>!219 (ite c!393509 (c!393380 (charsOf!2822 t1!67)) (ite c!393506 (ite (or c!393505 c!393502) (left!22085 (c!393380 (charsOf!2822 t1!67))) call!151470) (ite c!393504 call!151465 (ite c!393507 lt!883006 (right!22415 (left!22085 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))) (ite c!393509 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) (ite c!393506 (ite c!393505 call!151459 (ite c!393502 call!151470 lt!883009)) (ite c!393504 (right!22415 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) (ite c!393507 (right!22415 (left!22085 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) (right!22415 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))))))

(declare-fun bm!151452 () Bool)

(declare-fun call!151462 () Int)

(assert (=> bm!151452 (= call!151462 (height!1341 (ite c!393506 (c!393380 (charsOf!2822 t1!67)) lt!883006)))))

(declare-fun call!151457 () Conc!9197)

(declare-fun call!151463 () Conc!9197)

(declare-fun bm!151453 () Bool)

(assert (=> bm!151453 (= call!151463 (<>!219 (ite c!393506 (ite c!393502 (left!22085 (right!22415 (c!393380 (charsOf!2822 t1!67)))) (left!22085 (c!393380 (charsOf!2822 t1!67)))) (ite c!393507 call!151457 lt!883006)) (ite c!393506 (ite c!393502 lt!883009 (left!22085 (right!22415 (c!393380 (charsOf!2822 t1!67))))) (ite c!393507 (right!22415 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) call!151457))))))

(declare-fun bm!151454 () Bool)

(declare-fun call!151455 () Int)

(assert (=> bm!151454 (= call!151455 (height!1341 (ite c!393506 (right!22415 (c!393380 (charsOf!2822 t1!67))) (right!22415 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(declare-fun bm!151455 () Bool)

(declare-fun call!151466 () Conc!9197)

(assert (=> bm!151455 (= call!151465 call!151466)))

(declare-fun bm!151456 () Bool)

(declare-fun call!151467 () Conc!9197)

(assert (=> bm!151456 (= call!151467 call!151464)))

(declare-fun bm!151457 () Bool)

(assert (=> bm!151457 (= call!151470 call!151463)))

(declare-fun b!2469218 () Bool)

(assert (=> b!2469218 (= e!1566226 (= (list!11132 lt!883008) (++!7140 (list!11132 (c!393380 (charsOf!2822 t1!67))) (list!11132 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(declare-fun b!2469219 () Bool)

(declare-fun e!1566223 () Conc!9197)

(declare-fun call!151456 () Conc!9197)

(assert (=> b!2469219 (= e!1566223 call!151456)))

(declare-fun b!2469220 () Bool)

(declare-fun e!1566220 () Conc!9197)

(declare-fun call!151469 () Conc!9197)

(assert (=> b!2469220 (= e!1566220 call!151469)))

(declare-fun bm!151458 () Bool)

(assert (=> bm!151458 (= call!151469 call!151467)))

(declare-fun b!2469221 () Bool)

(declare-fun e!1566218 () Conc!9197)

(assert (=> b!2469221 (= e!1566218 call!151464)))

(declare-fun bm!151459 () Bool)

(assert (=> bm!151459 (= call!151459 call!151466)))

(declare-fun b!2469222 () Bool)

(declare-fun e!1566225 () Conc!9197)

(declare-fun call!151458 () Conc!9197)

(assert (=> b!2469222 (= e!1566225 call!151458)))

(declare-fun d!710797 () Bool)

(assert (=> d!710797 e!1566226))

(declare-fun res!1045854 () Bool)

(assert (=> d!710797 (=> (not res!1045854) (not e!1566226))))

(assert (=> d!710797 (= res!1045854 (appendAssocInst!615 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))

(assert (=> d!710797 (= lt!883008 e!1566217)))

(declare-fun c!393508 () Bool)

(assert (=> d!710797 (= c!393508 (= (c!393380 (charsOf!2822 t1!67)) Empty!9197))))

(declare-fun e!1566219 () Bool)

(assert (=> d!710797 e!1566219))

(declare-fun res!1045855 () Bool)

(assert (=> d!710797 (=> (not res!1045855) (not e!1566219))))

(assert (=> d!710797 (= res!1045855 (isBalanced!2801 (c!393380 (charsOf!2822 t1!67))))))

(assert (=> d!710797 (= (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) lt!883008)))

(declare-fun b!2469223 () Bool)

(declare-fun res!1045857 () Bool)

(assert (=> b!2469223 (=> (not res!1045857) (not e!1566226))))

(assert (=> b!2469223 (= res!1045857 (isBalanced!2801 lt!883008))))

(declare-fun bm!151460 () Bool)

(assert (=> bm!151460 (= call!151456 call!151469)))

(declare-fun bm!151461 () Bool)

(assert (=> bm!151461 (= call!151457 call!151458)))

(declare-fun b!2469224 () Bool)

(declare-fun lt!883007 () Int)

(assert (=> b!2469224 (= c!393509 (and (<= (- 1) lt!883007) (<= lt!883007 1)))))

(assert (=> b!2469224 (= lt!883007 (- (height!1341 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) (height!1341 (c!393380 (charsOf!2822 t1!67)))))))

(declare-fun e!1566224 () Conc!9197)

(assert (=> b!2469224 (= e!1566224 e!1566218)))

(declare-fun b!2469225 () Bool)

(declare-fun call!151460 () Int)

(assert (=> b!2469225 (= c!393504 (>= call!151455 call!151460))))

(declare-fun e!1566222 () Conc!9197)

(assert (=> b!2469225 (= e!1566222 e!1566225)))

(declare-fun b!2469226 () Bool)

(assert (=> b!2469226 (= e!1566217 e!1566224)))

(declare-fun c!393503 () Bool)

(assert (=> b!2469226 (= c!393503 (= (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) Empty!9197))))

(declare-fun b!2469227 () Bool)

(assert (=> b!2469227 (= e!1566223 call!151456)))

(declare-fun b!2469228 () Bool)

(assert (=> b!2469228 (= e!1566221 call!151461)))

(declare-fun b!2469229 () Bool)

(assert (=> b!2469229 (= e!1566220 e!1566223)))

(assert (=> b!2469229 (= lt!883009 call!151459)))

(assert (=> b!2469229 (= c!393502 (= call!151468 (- call!151462 3)))))

(declare-fun b!2469230 () Bool)

(assert (=> b!2469230 (= e!1566225 e!1566221)))

(assert (=> b!2469230 (= lt!883006 call!151465)))

(assert (=> b!2469230 (= c!393507 (= call!151462 (- call!151468 3)))))

(declare-fun b!2469231 () Bool)

(assert (=> b!2469231 (= e!1566219 (isBalanced!2801 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))

(declare-fun b!2469232 () Bool)

(assert (=> b!2469232 (= e!1566224 (c!393380 (charsOf!2822 t1!67)))))

(declare-fun bm!151462 () Bool)

(assert (=> bm!151462 (= call!151461 call!151463)))

(declare-fun bm!151463 () Bool)

(assert (=> bm!151463 (= call!151466 (++!7141 (ite c!393506 (ite c!393505 (right!22415 (c!393380 (charsOf!2822 t1!67))) (right!22415 (right!22415 (c!393380 (charsOf!2822 t1!67))))) (c!393380 (charsOf!2822 t1!67))) (ite c!393506 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) (ite c!393504 (left!22085 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) (left!22085 (left!22085 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))))

(declare-fun b!2469233 () Bool)

(declare-fun res!1045856 () Bool)

(assert (=> b!2469233 (=> (not res!1045856) (not e!1566226))))

(assert (=> b!2469233 (= res!1045856 (>= (height!1341 lt!883008) (max!0 (height!1341 (c!393380 (charsOf!2822 t1!67))) (height!1341 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(declare-fun bm!151464 () Bool)

(assert (=> bm!151464 (= call!151458 call!151467)))

(declare-fun bm!151465 () Bool)

(assert (=> bm!151465 (= call!151460 (height!1341 (ite c!393506 (left!22085 (c!393380 (charsOf!2822 t1!67))) (left!22085 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(declare-fun b!2469234 () Bool)

(assert (=> b!2469234 (= c!393505 (>= call!151460 call!151455))))

(assert (=> b!2469234 (= e!1566222 e!1566220)))

(declare-fun b!2469235 () Bool)

(assert (=> b!2469235 (= e!1566218 e!1566222)))

(assert (=> b!2469235 (= c!393506 (< lt!883007 (- 1)))))

(assert (= (and d!710797 res!1045855) b!2469231))

(assert (= (and d!710797 c!393508) b!2469217))

(assert (= (and d!710797 (not c!393508)) b!2469226))

(assert (= (and b!2469226 c!393503) b!2469232))

(assert (= (and b!2469226 (not c!393503)) b!2469224))

(assert (= (and b!2469224 c!393509) b!2469221))

(assert (= (and b!2469224 (not c!393509)) b!2469235))

(assert (= (and b!2469235 c!393506) b!2469234))

(assert (= (and b!2469235 (not c!393506)) b!2469225))

(assert (= (and b!2469234 c!393505) b!2469220))

(assert (= (and b!2469234 (not c!393505)) b!2469229))

(assert (= (and b!2469229 c!393502) b!2469227))

(assert (= (and b!2469229 (not c!393502)) b!2469219))

(assert (= (or b!2469227 b!2469219) bm!151457))

(assert (= (or b!2469227 b!2469219) bm!151460))

(assert (= (or b!2469220 b!2469229) bm!151459))

(assert (= (or b!2469220 bm!151460) bm!151458))

(assert (= (and b!2469225 c!393504) b!2469222))

(assert (= (and b!2469225 (not c!393504)) b!2469230))

(assert (= (and b!2469230 c!393507) b!2469228))

(assert (= (and b!2469230 (not c!393507)) b!2469216))

(assert (= (or b!2469228 b!2469216) bm!151461))

(assert (= (or b!2469228 b!2469216) bm!151462))

(assert (= (or b!2469222 b!2469230) bm!151455))

(assert (= (or b!2469222 bm!151461) bm!151464))

(assert (= (or bm!151458 bm!151464) bm!151456))

(assert (= (or b!2469229 b!2469230) bm!151450))

(assert (= (or bm!151459 bm!151455) bm!151463))

(assert (= (or b!2469234 b!2469225) bm!151454))

(assert (= (or bm!151457 bm!151462) bm!151453))

(assert (= (or b!2469234 b!2469225) bm!151465))

(assert (= (or b!2469229 b!2469230) bm!151452))

(assert (= (or b!2469221 bm!151456) bm!151451))

(assert (= (and d!710797 res!1045854) b!2469223))

(assert (= (and b!2469223 res!1045857) b!2469215))

(assert (= (and b!2469215 res!1045858) b!2469233))

(assert (= (and b!2469233 res!1045856) b!2469218))

(declare-fun m!2838571 () Bool)

(assert (=> b!2469233 m!2838571))

(assert (=> b!2469233 m!2838029))

(assert (=> b!2469233 m!2838025))

(assert (=> b!2469233 m!2838029))

(assert (=> b!2469233 m!2838025))

(assert (=> b!2469233 m!2838031))

(declare-fun m!2838573 () Bool)

(assert (=> b!2469218 m!2838573))

(declare-fun m!2838575 () Bool)

(assert (=> b!2469218 m!2838575))

(declare-fun m!2838577 () Bool)

(assert (=> b!2469218 m!2838577))

(assert (=> b!2469218 m!2838575))

(assert (=> b!2469218 m!2838577))

(declare-fun m!2838579 () Bool)

(assert (=> b!2469218 m!2838579))

(assert (=> b!2469215 m!2838571))

(assert (=> b!2469215 m!2838029))

(assert (=> b!2469215 m!2838025))

(assert (=> b!2469215 m!2838029))

(assert (=> b!2469215 m!2838025))

(assert (=> b!2469215 m!2838031))

(assert (=> b!2469224 m!2838025))

(assert (=> b!2469224 m!2838029))

(declare-fun m!2838581 () Bool)

(assert (=> b!2469223 m!2838581))

(declare-fun m!2838583 () Bool)

(assert (=> bm!151463 m!2838583))

(declare-fun m!2838585 () Bool)

(assert (=> bm!151451 m!2838585))

(declare-fun m!2838587 () Bool)

(assert (=> bm!151450 m!2838587))

(declare-fun m!2838589 () Bool)

(assert (=> bm!151453 m!2838589))

(declare-fun m!2838591 () Bool)

(assert (=> bm!151454 m!2838591))

(declare-fun m!2838593 () Bool)

(assert (=> b!2469231 m!2838593))

(declare-fun m!2838595 () Bool)

(assert (=> bm!151452 m!2838595))

(assert (=> d!710797 m!2838019))

(declare-fun m!2838597 () Bool)

(assert (=> d!710797 m!2838597))

(declare-fun m!2838599 () Bool)

(assert (=> bm!151465 m!2838599))

(assert (=> b!2468708 d!710797))

(declare-fun d!710809 () Bool)

(declare-fun lt!883010 () Int)

(assert (=> d!710809 (>= lt!883010 0)))

(declare-fun e!1566227 () Int)

(assert (=> d!710809 (= lt!883010 e!1566227)))

(declare-fun c!393510 () Bool)

(assert (=> d!710809 (= c!393510 ((_ is Nil!28781) (originalCharacters!5249 (h!34183 (t!209627 l!6611)))))))

(assert (=> d!710809 (= (size!22398 (originalCharacters!5249 (h!34183 (t!209627 l!6611)))) lt!883010)))

(declare-fun b!2469236 () Bool)

(assert (=> b!2469236 (= e!1566227 0)))

(declare-fun b!2469237 () Bool)

(assert (=> b!2469237 (= e!1566227 (+ 1 (size!22398 (t!209626 (originalCharacters!5249 (h!34183 (t!209627 l!6611)))))))))

(assert (= (and d!710809 c!393510) b!2469236))

(assert (= (and d!710809 (not c!393510)) b!2469237))

(declare-fun m!2838601 () Bool)

(assert (=> b!2469237 m!2838601))

(assert (=> b!2468726 d!710809))

(declare-fun d!710811 () Bool)

(declare-fun c!393511 () Bool)

(assert (=> d!710811 (= c!393511 ((_ is Node!9197) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(declare-fun e!1566228 () Bool)

(assert (=> d!710811 (= (inv!38872 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) e!1566228)))

(declare-fun b!2469238 () Bool)

(assert (=> b!2469238 (= e!1566228 (inv!38874 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(declare-fun b!2469239 () Bool)

(declare-fun e!1566229 () Bool)

(assert (=> b!2469239 (= e!1566228 e!1566229)))

(declare-fun res!1045859 () Bool)

(assert (=> b!2469239 (= res!1045859 (not ((_ is Leaf!13746) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))))

(assert (=> b!2469239 (=> res!1045859 e!1566229)))

(declare-fun b!2469240 () Bool)

(assert (=> b!2469240 (= e!1566229 (inv!38875 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(assert (= (and d!710811 c!393511) b!2469238))

(assert (= (and d!710811 (not c!393511)) b!2469239))

(assert (= (and b!2469239 (not res!1045859)) b!2469240))

(declare-fun m!2838603 () Bool)

(assert (=> b!2469238 m!2838603))

(declare-fun m!2838605 () Bool)

(assert (=> b!2469240 m!2838605))

(assert (=> b!2468812 d!710811))

(declare-fun d!710813 () Bool)

(declare-fun c!393512 () Bool)

(assert (=> d!710813 (= c!393512 ((_ is Node!9197) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(declare-fun e!1566230 () Bool)

(assert (=> d!710813 (= (inv!38872 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) e!1566230)))

(declare-fun b!2469241 () Bool)

(assert (=> b!2469241 (= e!1566230 (inv!38874 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(declare-fun b!2469242 () Bool)

(declare-fun e!1566231 () Bool)

(assert (=> b!2469242 (= e!1566230 e!1566231)))

(declare-fun res!1045860 () Bool)

(assert (=> b!2469242 (= res!1045860 (not ((_ is Leaf!13746) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))))

(assert (=> b!2469242 (=> res!1045860 e!1566231)))

(declare-fun b!2469243 () Bool)

(assert (=> b!2469243 (= e!1566231 (inv!38875 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(assert (= (and d!710813 c!393512) b!2469241))

(assert (= (and d!710813 (not c!393512)) b!2469242))

(assert (= (and b!2469242 (not res!1045860)) b!2469243))

(declare-fun m!2838607 () Bool)

(assert (=> b!2469241 m!2838607))

(declare-fun m!2838609 () Bool)

(assert (=> b!2469243 m!2838609))

(assert (=> b!2468812 d!710813))

(declare-fun b!2469244 () Bool)

(declare-fun e!1566232 () List!28881)

(assert (=> b!2469244 (= e!1566232 Nil!28781)))

(declare-fun b!2469245 () Bool)

(declare-fun e!1566233 () List!28881)

(assert (=> b!2469245 (= e!1566232 e!1566233)))

(declare-fun c!393514 () Bool)

(assert (=> b!2469245 (= c!393514 ((_ is Leaf!13746) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))

(declare-fun b!2469246 () Bool)

(assert (=> b!2469246 (= e!1566233 (list!11136 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(declare-fun d!710815 () Bool)

(declare-fun c!393513 () Bool)

(assert (=> d!710815 (= c!393513 ((_ is Empty!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))

(assert (=> d!710815 (= (list!11132 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) e!1566232)))

(declare-fun b!2469247 () Bool)

(assert (=> b!2469247 (= e!1566233 (++!7140 (list!11132 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) (list!11132 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))))

(assert (= (and d!710815 c!393513) b!2469244))

(assert (= (and d!710815 (not c!393513)) b!2469245))

(assert (= (and b!2469245 c!393514) b!2469246))

(assert (= (and b!2469245 (not c!393514)) b!2469247))

(assert (=> b!2469246 m!2838381))

(declare-fun m!2838611 () Bool)

(assert (=> b!2469247 m!2838611))

(declare-fun m!2838613 () Bool)

(assert (=> b!2469247 m!2838613))

(assert (=> b!2469247 m!2838611))

(assert (=> b!2469247 m!2838613))

(declare-fun m!2838615 () Bool)

(assert (=> b!2469247 m!2838615))

(assert (=> d!710457 d!710815))

(declare-fun d!710817 () Bool)

(declare-fun lt!883011 () Bool)

(assert (=> d!710817 (= lt!883011 (isEmpty!16720 (list!11131 (_2!16661 lt!882821))))))

(assert (=> d!710817 (= lt!883011 (isEmpty!16723 (c!393380 (_2!16661 lt!882821))))))

(assert (=> d!710817 (= (isEmpty!16721 (_2!16661 lt!882821)) lt!883011)))

(declare-fun bs!466815 () Bool)

(assert (= bs!466815 d!710817))

(declare-fun m!2838617 () Bool)

(assert (=> bs!466815 m!2838617))

(assert (=> bs!466815 m!2838617))

(declare-fun m!2838619 () Bool)

(assert (=> bs!466815 m!2838619))

(declare-fun m!2838621 () Bool)

(assert (=> bs!466815 m!2838621))

(assert (=> b!2468638 d!710817))

(declare-fun d!710819 () Bool)

(assert (=> d!710819 (= (list!11131 lt!882880) (list!11132 (c!393380 lt!882880)))))

(declare-fun bs!466816 () Bool)

(assert (= bs!466816 d!710819))

(declare-fun m!2838623 () Bool)

(assert (=> bs!466816 m!2838623))

(assert (=> d!710623 d!710819))

(declare-fun d!710821 () Bool)

(declare-fun e!1566236 () Bool)

(assert (=> d!710821 e!1566236))

(declare-fun res!1045863 () Bool)

(assert (=> d!710821 (=> (not res!1045863) (not e!1566236))))

(declare-fun lt!883014 () BalanceConc!18008)

(assert (=> d!710821 (= res!1045863 (= (list!11131 lt!883014) (Cons!28781 (apply!6776 (charsOf!2822 t2!67) 0) Nil!28781)))))

(declare-fun choose!14583 (C!14700) BalanceConc!18008)

(assert (=> d!710821 (= lt!883014 (choose!14583 (apply!6776 (charsOf!2822 t2!67) 0)))))

(assert (=> d!710821 (= (singleton!893 (apply!6776 (charsOf!2822 t2!67) 0)) lt!883014)))

(declare-fun b!2469250 () Bool)

(assert (=> b!2469250 (= e!1566236 (isBalanced!2801 (c!393380 lt!883014)))))

(assert (= (and d!710821 res!1045863) b!2469250))

(declare-fun m!2838625 () Bool)

(assert (=> d!710821 m!2838625))

(assert (=> d!710821 m!2837465))

(declare-fun m!2838627 () Bool)

(assert (=> d!710821 m!2838627))

(declare-fun m!2838629 () Bool)

(assert (=> b!2469250 m!2838629))

(assert (=> d!710623 d!710821))

(declare-fun d!710823 () Bool)

(assert (=> d!710823 (= (inv!38878 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) (<= (size!22398 (innerList!9257 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) 2147483647))))

(declare-fun bs!466817 () Bool)

(assert (= bs!466817 d!710823))

(declare-fun m!2838631 () Bool)

(assert (=> bs!466817 m!2838631))

(assert (=> b!2468836 d!710823))

(assert (=> bs!466762 d!710539))

(declare-fun d!710825 () Bool)

(declare-fun lt!883015 () BalanceConc!18008)

(assert (=> d!710825 (= (list!11131 lt!883015) (printList!1131 thiss!27932 (list!11133 (singletonSeq!1991 (h!34183 (t!209627 l!6611))))))))

(assert (=> d!710825 (= lt!883015 (printTailRec!1082 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611))) 0 (BalanceConc!18009 Empty!9197)))))

(assert (=> d!710825 (= (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611)))) lt!883015)))

(declare-fun bs!466818 () Bool)

(assert (= bs!466818 d!710825))

(declare-fun m!2838633 () Bool)

(assert (=> bs!466818 m!2838633))

(assert (=> bs!466818 m!2837709))

(assert (=> bs!466818 m!2837711))

(assert (=> bs!466818 m!2837711))

(declare-fun m!2838635 () Bool)

(assert (=> bs!466818 m!2838635))

(assert (=> bs!466818 m!2837709))

(declare-fun m!2838637 () Bool)

(assert (=> bs!466818 m!2838637))

(assert (=> d!710477 d!710825))

(declare-fun d!710827 () Bool)

(declare-fun list!11138 (Conc!9198) List!28882)

(assert (=> d!710827 (= (list!11133 (singletonSeq!1991 (h!34183 (t!209627 l!6611)))) (list!11138 (c!393450 (singletonSeq!1991 (h!34183 (t!209627 l!6611))))))))

(declare-fun bs!466819 () Bool)

(assert (= bs!466819 d!710827))

(declare-fun m!2838639 () Bool)

(assert (=> bs!466819 m!2838639))

(assert (=> d!710477 d!710827))

(declare-fun d!710829 () Bool)

(assert (=> d!710829 (= (list!11133 (_1!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611))))))) (list!11138 (c!393450 (_1!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611)))))))))))

(declare-fun bs!466820 () Bool)

(assert (= bs!466820 d!710829))

(declare-fun m!2838641 () Bool)

(assert (=> bs!466820 m!2838641))

(assert (=> d!710477 d!710829))

(declare-fun d!710831 () Bool)

(declare-fun lt!883018 () Int)

(assert (=> d!710831 (= lt!883018 (size!22394 (list!11133 (_1!16661 lt!882787))))))

(declare-fun size!22403 (Conc!9198) Int)

(assert (=> d!710831 (= lt!883018 (size!22403 (c!393450 (_1!16661 lt!882787))))))

(assert (=> d!710831 (= (size!22400 (_1!16661 lt!882787)) lt!883018)))

(declare-fun bs!466821 () Bool)

(assert (= bs!466821 d!710831))

(declare-fun m!2838643 () Bool)

(assert (=> bs!466821 m!2838643))

(assert (=> bs!466821 m!2838643))

(declare-fun m!2838645 () Bool)

(assert (=> bs!466821 m!2838645))

(declare-fun m!2838647 () Bool)

(assert (=> bs!466821 m!2838647))

(assert (=> d!710477 d!710831))

(declare-fun b!2469251 () Bool)

(declare-fun e!1566237 () Bool)

(declare-fun e!1566238 () Bool)

(assert (=> b!2469251 (= e!1566237 e!1566238)))

(declare-fun lt!883019 () tuple2!28240)

(declare-fun res!1045865 () Bool)

(assert (=> b!2469251 (= res!1045865 (< (size!22397 (_2!16661 lt!883019)) (size!22397 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611)))))))))

(assert (=> b!2469251 (=> (not res!1045865) (not e!1566238))))

(declare-fun b!2469252 () Bool)

(assert (=> b!2469252 (= e!1566238 (not (isEmpty!16724 (_1!16661 lt!883019))))))

(declare-fun e!1566239 () Bool)

(declare-fun b!2469253 () Bool)

(assert (=> b!2469253 (= e!1566239 (= (list!11131 (_2!16661 lt!883019)) (_2!16663 (lexList!1147 thiss!27932 rules!4472 (list!11131 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611)))))))))))

(declare-fun b!2469254 () Bool)

(declare-fun res!1045864 () Bool)

(assert (=> b!2469254 (=> (not res!1045864) (not e!1566239))))

(assert (=> b!2469254 (= res!1045864 (= (list!11133 (_1!16661 lt!883019)) (_1!16663 (lexList!1147 thiss!27932 rules!4472 (list!11131 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611)))))))))))

(declare-fun b!2469255 () Bool)

(assert (=> b!2469255 (= e!1566237 (= (_2!16661 lt!883019) (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611))))))))

(declare-fun d!710833 () Bool)

(assert (=> d!710833 e!1566239))

(declare-fun res!1045866 () Bool)

(assert (=> d!710833 (=> (not res!1045866) (not e!1566239))))

(assert (=> d!710833 (= res!1045866 e!1566237)))

(declare-fun c!393515 () Bool)

(assert (=> d!710833 (= c!393515 (> (size!22400 (_1!16661 lt!883019)) 0))))

(assert (=> d!710833 (= lt!883019 (lexTailRecV2!822 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611)))) (BalanceConc!18009 Empty!9197) (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611)))) (BalanceConc!18011 Empty!9198)))))

(assert (=> d!710833 (= (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611))))) lt!883019)))

(assert (= (and d!710833 c!393515) b!2469251))

(assert (= (and d!710833 (not c!393515)) b!2469255))

(assert (= (and b!2469251 res!1045865) b!2469252))

(assert (= (and d!710833 res!1045866) b!2469254))

(assert (= (and b!2469254 res!1045864) b!2469253))

(declare-fun m!2838649 () Bool)

(assert (=> b!2469254 m!2838649))

(assert (=> b!2469254 m!2837715))

(declare-fun m!2838651 () Bool)

(assert (=> b!2469254 m!2838651))

(assert (=> b!2469254 m!2838651))

(declare-fun m!2838653 () Bool)

(assert (=> b!2469254 m!2838653))

(declare-fun m!2838655 () Bool)

(assert (=> b!2469253 m!2838655))

(assert (=> b!2469253 m!2837715))

(assert (=> b!2469253 m!2838651))

(assert (=> b!2469253 m!2838651))

(assert (=> b!2469253 m!2838653))

(declare-fun m!2838657 () Bool)

(assert (=> b!2469252 m!2838657))

(declare-fun m!2838659 () Bool)

(assert (=> d!710833 m!2838659))

(assert (=> d!710833 m!2837715))

(assert (=> d!710833 m!2837715))

(declare-fun m!2838661 () Bool)

(assert (=> d!710833 m!2838661))

(declare-fun m!2838663 () Bool)

(assert (=> b!2469251 m!2838663))

(assert (=> b!2469251 m!2837715))

(declare-fun m!2838665 () Bool)

(assert (=> b!2469251 m!2838665))

(assert (=> d!710477 d!710833))

(declare-fun d!710835 () Bool)

(declare-fun e!1566240 () Bool)

(assert (=> d!710835 e!1566240))

(declare-fun res!1045867 () Bool)

(assert (=> d!710835 (=> (not res!1045867) (not e!1566240))))

(declare-fun lt!883020 () BalanceConc!18010)

(assert (=> d!710835 (= res!1045867 (= (list!11133 lt!883020) (Cons!28782 (h!34183 (t!209627 l!6611)) Nil!28782)))))

(assert (=> d!710835 (= lt!883020 (singleton!895 (h!34183 (t!209627 l!6611))))))

(assert (=> d!710835 (= (singletonSeq!1991 (h!34183 (t!209627 l!6611))) lt!883020)))

(declare-fun b!2469256 () Bool)

(assert (=> b!2469256 (= e!1566240 (isBalanced!2803 (c!393450 lt!883020)))))

(assert (= (and d!710835 res!1045867) b!2469256))

(declare-fun m!2838667 () Bool)

(assert (=> d!710835 m!2838667))

(declare-fun m!2838669 () Bool)

(assert (=> d!710835 m!2838669))

(declare-fun m!2838671 () Bool)

(assert (=> b!2469256 m!2838671))

(assert (=> d!710477 d!710835))

(assert (=> d!710477 d!710369))

(declare-fun d!710837 () Bool)

(declare-fun choose!644 (List!28880) Int)

(assert (=> d!710837 (= (charsToBigInt!1 (text!33131 (value!143171 t2!67))) (choose!644 (text!33131 (value!143171 t2!67))))))

(declare-fun bs!466822 () Bool)

(assert (= bs!466822 d!710837))

(declare-fun m!2838673 () Bool)

(assert (=> bs!466822 m!2838673))

(assert (=> d!710545 d!710837))

(declare-fun d!710839 () Bool)

(declare-fun choose!14584 (Int) Bool)

(assert (=> d!710839 (= (Forall2!746 lambda!93270) (choose!14584 lambda!93270))))

(declare-fun bs!466823 () Bool)

(assert (= bs!466823 d!710839))

(declare-fun m!2838675 () Bool)

(assert (=> bs!466823 m!2838675))

(assert (=> d!710543 d!710839))

(declare-fun d!710841 () Bool)

(declare-fun lt!883021 () Bool)

(assert (=> d!710841 (= lt!883021 (select (content!3953 (tail!3916 l!6611)) lt!882920))))

(declare-fun e!1566241 () Bool)

(assert (=> d!710841 (= lt!883021 e!1566241)))

(declare-fun res!1045869 () Bool)

(assert (=> d!710841 (=> (not res!1045869) (not e!1566241))))

(assert (=> d!710841 (= res!1045869 ((_ is Cons!28782) (tail!3916 l!6611)))))

(assert (=> d!710841 (= (contains!4913 (tail!3916 l!6611) lt!882920) lt!883021)))

(declare-fun b!2469257 () Bool)

(declare-fun e!1566242 () Bool)

(assert (=> b!2469257 (= e!1566241 e!1566242)))

(declare-fun res!1045868 () Bool)

(assert (=> b!2469257 (=> res!1045868 e!1566242)))

(assert (=> b!2469257 (= res!1045868 (= (h!34183 (tail!3916 l!6611)) lt!882920))))

(declare-fun b!2469258 () Bool)

(assert (=> b!2469258 (= e!1566242 (contains!4913 (t!209627 (tail!3916 l!6611)) lt!882920))))

(assert (= (and d!710841 res!1045869) b!2469257))

(assert (= (and b!2469257 (not res!1045868)) b!2469258))

(assert (=> d!710841 m!2837423))

(declare-fun m!2838677 () Bool)

(assert (=> d!710841 m!2838677))

(declare-fun m!2838679 () Bool)

(assert (=> d!710841 m!2838679))

(declare-fun m!2838681 () Bool)

(assert (=> b!2469258 m!2838681))

(assert (=> d!710651 d!710841))

(declare-fun d!710843 () Bool)

(declare-fun res!1045870 () Bool)

(declare-fun e!1566243 () Bool)

(assert (=> d!710843 (=> (not res!1045870) (not e!1566243))))

(assert (=> d!710843 (= res!1045870 (<= (size!22398 (list!11136 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) 512))))

(assert (=> d!710843 (= (inv!38875 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) e!1566243)))

(declare-fun b!2469259 () Bool)

(declare-fun res!1045871 () Bool)

(assert (=> b!2469259 (=> (not res!1045871) (not e!1566243))))

(assert (=> b!2469259 (= res!1045871 (= (csize!18625 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) (size!22398 (list!11136 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))))

(declare-fun b!2469260 () Bool)

(assert (=> b!2469260 (= e!1566243 (and (> (csize!18625 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) 0) (<= (csize!18625 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) 512)))))

(assert (= (and d!710843 res!1045870) b!2469259))

(assert (= (and b!2469259 res!1045871) b!2469260))

(declare-fun m!2838683 () Bool)

(assert (=> d!710843 m!2838683))

(assert (=> d!710843 m!2838683))

(declare-fun m!2838685 () Bool)

(assert (=> d!710843 m!2838685))

(assert (=> b!2469259 m!2838683))

(assert (=> b!2469259 m!2838683))

(assert (=> b!2469259 m!2838685))

(assert (=> b!2468740 d!710843))

(declare-fun d!710845 () Bool)

(declare-fun lt!883022 () Int)

(assert (=> d!710845 (>= lt!883022 0)))

(declare-fun e!1566244 () Int)

(assert (=> d!710845 (= lt!883022 e!1566244)))

(declare-fun c!393516 () Bool)

(assert (=> d!710845 (= c!393516 ((_ is Nil!28781) (list!11131 (charsOf!2822 (h!34183 (t!209627 l!6611))))))))

(assert (=> d!710845 (= (size!22398 (list!11131 (charsOf!2822 (h!34183 (t!209627 l!6611))))) lt!883022)))

(declare-fun b!2469261 () Bool)

(assert (=> b!2469261 (= e!1566244 0)))

(declare-fun b!2469262 () Bool)

(assert (=> b!2469262 (= e!1566244 (+ 1 (size!22398 (t!209626 (list!11131 (charsOf!2822 (h!34183 (t!209627 l!6611))))))))))

(assert (= (and d!710845 c!393516) b!2469261))

(assert (= (and d!710845 (not c!393516)) b!2469262))

(declare-fun m!2838687 () Bool)

(assert (=> b!2469262 m!2838687))

(assert (=> d!710471 d!710845))

(declare-fun d!710847 () Bool)

(assert (=> d!710847 (= (list!11131 (charsOf!2822 (h!34183 (t!209627 l!6611)))) (list!11132 (c!393380 (charsOf!2822 (h!34183 (t!209627 l!6611))))))))

(declare-fun bs!466824 () Bool)

(assert (= bs!466824 d!710847))

(declare-fun m!2838689 () Bool)

(assert (=> bs!466824 m!2838689))

(assert (=> d!710471 d!710847))

(declare-fun d!710849 () Bool)

(declare-fun lt!883025 () Int)

(assert (=> d!710849 (= lt!883025 (size!22398 (list!11132 (c!393380 (charsOf!2822 (h!34183 (t!209627 l!6611)))))))))

(assert (=> d!710849 (= lt!883025 (ite ((_ is Empty!9197) (c!393380 (charsOf!2822 (h!34183 (t!209627 l!6611))))) 0 (ite ((_ is Leaf!13746) (c!393380 (charsOf!2822 (h!34183 (t!209627 l!6611))))) (csize!18625 (c!393380 (charsOf!2822 (h!34183 (t!209627 l!6611))))) (csize!18624 (c!393380 (charsOf!2822 (h!34183 (t!209627 l!6611))))))))))

(assert (=> d!710849 (= (size!22399 (c!393380 (charsOf!2822 (h!34183 (t!209627 l!6611))))) lt!883025)))

(declare-fun bs!466825 () Bool)

(assert (= bs!466825 d!710849))

(assert (=> bs!466825 m!2838689))

(assert (=> bs!466825 m!2838689))

(declare-fun m!2838691 () Bool)

(assert (=> bs!466825 m!2838691))

(assert (=> d!710471 d!710849))

(declare-fun d!710851 () Bool)

(declare-fun choose!14585 (Int) Bool)

(assert (=> d!710851 (= (Forall!1138 lambda!93288) (choose!14585 lambda!93288))))

(declare-fun bs!466826 () Bool)

(assert (= bs!466826 d!710851))

(declare-fun m!2838693 () Bool)

(assert (=> bs!466826 m!2838693))

(assert (=> d!710663 d!710851))

(declare-fun d!710853 () Bool)

(declare-fun lt!883028 () C!14700)

(declare-fun contains!4916 (List!28881 C!14700) Bool)

(assert (=> d!710853 (contains!4916 (list!11131 (charsOf!2822 t2!67)) lt!883028)))

(declare-fun e!1566249 () C!14700)

(assert (=> d!710853 (= lt!883028 e!1566249)))

(declare-fun c!393519 () Bool)

(assert (=> d!710853 (= c!393519 (= 0 0))))

(declare-fun e!1566250 () Bool)

(assert (=> d!710853 e!1566250))

(declare-fun res!1045874 () Bool)

(assert (=> d!710853 (=> (not res!1045874) (not e!1566250))))

(assert (=> d!710853 (= res!1045874 (<= 0 0))))

(assert (=> d!710853 (= (apply!6778 (list!11131 (charsOf!2822 t2!67)) 0) lt!883028)))

(declare-fun b!2469269 () Bool)

(assert (=> b!2469269 (= e!1566250 (< 0 (size!22398 (list!11131 (charsOf!2822 t2!67)))))))

(declare-fun b!2469270 () Bool)

(declare-fun head!5637 (List!28881) C!14700)

(assert (=> b!2469270 (= e!1566249 (head!5637 (list!11131 (charsOf!2822 t2!67))))))

(declare-fun b!2469271 () Bool)

(declare-fun tail!3918 (List!28881) List!28881)

(assert (=> b!2469271 (= e!1566249 (apply!6778 (tail!3918 (list!11131 (charsOf!2822 t2!67))) (- 0 1)))))

(assert (= (and d!710853 res!1045874) b!2469269))

(assert (= (and d!710853 c!393519) b!2469270))

(assert (= (and d!710853 (not c!393519)) b!2469271))

(assert (=> d!710853 m!2837983))

(declare-fun m!2838695 () Bool)

(assert (=> d!710853 m!2838695))

(assert (=> b!2469269 m!2837983))

(assert (=> b!2469269 m!2838481))

(assert (=> b!2469270 m!2837983))

(declare-fun m!2838697 () Bool)

(assert (=> b!2469270 m!2838697))

(assert (=> b!2469271 m!2837983))

(declare-fun m!2838699 () Bool)

(assert (=> b!2469271 m!2838699))

(assert (=> b!2469271 m!2838699))

(declare-fun m!2838701 () Bool)

(assert (=> b!2469271 m!2838701))

(assert (=> d!710607 d!710853))

(declare-fun d!710855 () Bool)

(assert (=> d!710855 (= (list!11131 (charsOf!2822 t2!67)) (list!11132 (c!393380 (charsOf!2822 t2!67))))))

(declare-fun bs!466827 () Bool)

(assert (= bs!466827 d!710855))

(declare-fun m!2838703 () Bool)

(assert (=> bs!466827 m!2838703))

(assert (=> d!710607 d!710855))

(declare-fun b!2469286 () Bool)

(declare-fun e!1566259 () Int)

(assert (=> b!2469286 (= e!1566259 0)))

(declare-fun b!2469287 () Bool)

(assert (=> b!2469287 (= e!1566259 (- 0 (size!22399 (left!22085 (c!393380 (charsOf!2822 t2!67))))))))

(declare-fun b!2469288 () Bool)

(declare-fun e!1566260 () C!14700)

(declare-fun call!151473 () C!14700)

(assert (=> b!2469288 (= e!1566260 call!151473)))

(declare-fun bm!151468 () Bool)

(declare-fun c!393526 () Bool)

(declare-fun c!393527 () Bool)

(assert (=> bm!151468 (= c!393526 c!393527)))

(assert (=> bm!151468 (= call!151473 (apply!6779 (ite c!393527 (left!22085 (c!393380 (charsOf!2822 t2!67))) (right!22415 (c!393380 (charsOf!2822 t2!67)))) e!1566259))))

(declare-fun b!2469290 () Bool)

(declare-fun e!1566261 () Bool)

(assert (=> b!2469290 (= e!1566261 (< 0 (size!22399 (c!393380 (charsOf!2822 t2!67)))))))

(declare-fun b!2469291 () Bool)

(declare-fun e!1566262 () C!14700)

(assert (=> b!2469291 (= e!1566262 e!1566260)))

(declare-fun lt!883033 () Bool)

(declare-fun appendIndex!258 (List!28881 List!28881 Int) Bool)

(assert (=> b!2469291 (= lt!883033 (appendIndex!258 (list!11132 (left!22085 (c!393380 (charsOf!2822 t2!67)))) (list!11132 (right!22415 (c!393380 (charsOf!2822 t2!67)))) 0))))

(assert (=> b!2469291 (= c!393527 (< 0 (size!22399 (left!22085 (c!393380 (charsOf!2822 t2!67))))))))

(declare-fun b!2469292 () Bool)

(assert (=> b!2469292 (= e!1566260 call!151473)))

(declare-fun b!2469289 () Bool)

(declare-fun apply!6784 (IArray!18399 Int) C!14700)

(assert (=> b!2469289 (= e!1566262 (apply!6784 (xs!12177 (c!393380 (charsOf!2822 t2!67))) 0))))

(declare-fun d!710857 () Bool)

(declare-fun lt!883034 () C!14700)

(assert (=> d!710857 (= lt!883034 (apply!6778 (list!11132 (c!393380 (charsOf!2822 t2!67))) 0))))

(assert (=> d!710857 (= lt!883034 e!1566262)))

(declare-fun c!393528 () Bool)

(assert (=> d!710857 (= c!393528 ((_ is Leaf!13746) (c!393380 (charsOf!2822 t2!67))))))

(assert (=> d!710857 e!1566261))

(declare-fun res!1045877 () Bool)

(assert (=> d!710857 (=> (not res!1045877) (not e!1566261))))

(assert (=> d!710857 (= res!1045877 (<= 0 0))))

(assert (=> d!710857 (= (apply!6779 (c!393380 (charsOf!2822 t2!67)) 0) lt!883034)))

(assert (= (and d!710857 res!1045877) b!2469290))

(assert (= (and d!710857 c!393528) b!2469289))

(assert (= (and d!710857 (not c!393528)) b!2469291))

(assert (= (and b!2469291 c!393527) b!2469292))

(assert (= (and b!2469291 (not c!393527)) b!2469288))

(assert (= (or b!2469292 b!2469288) bm!151468))

(assert (= (and bm!151468 c!393526) b!2469286))

(assert (= (and bm!151468 (not c!393526)) b!2469287))

(declare-fun m!2838705 () Bool)

(assert (=> b!2469287 m!2838705))

(declare-fun m!2838707 () Bool)

(assert (=> b!2469291 m!2838707))

(declare-fun m!2838709 () Bool)

(assert (=> b!2469291 m!2838709))

(assert (=> b!2469291 m!2838707))

(assert (=> b!2469291 m!2838709))

(declare-fun m!2838711 () Bool)

(assert (=> b!2469291 m!2838711))

(assert (=> b!2469291 m!2838705))

(declare-fun m!2838713 () Bool)

(assert (=> b!2469289 m!2838713))

(declare-fun m!2838715 () Bool)

(assert (=> bm!151468 m!2838715))

(assert (=> b!2469290 m!2838483))

(assert (=> d!710857 m!2838703))

(assert (=> d!710857 m!2838703))

(declare-fun m!2838717 () Bool)

(assert (=> d!710857 m!2838717))

(assert (=> d!710607 d!710857))

(declare-fun d!710859 () Bool)

(declare-fun c!393531 () Bool)

(assert (=> d!710859 (= c!393531 ((_ is Nil!28780) (text!33132 (value!143171 t2!67))))))

(declare-fun e!1566265 () Int)

(assert (=> d!710859 (= (charsToBigInt!0 (text!33132 (value!143171 t2!67)) 0) e!1566265)))

(declare-fun b!2469297 () Bool)

(assert (=> b!2469297 (= e!1566265 0)))

(declare-fun b!2469298 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!2469298 (= e!1566265 (charsToBigInt!0 (t!209625 (text!33132 (value!143171 t2!67))) (+ (* 0 10) (charToBigInt!0 (h!34181 (text!33132 (value!143171 t2!67)))))))))

(assert (= (and d!710859 c!393531) b!2469297))

(assert (= (and d!710859 (not c!393531)) b!2469298))

(declare-fun m!2838719 () Bool)

(assert (=> b!2469298 m!2838719))

(declare-fun m!2838721 () Bool)

(assert (=> b!2469298 m!2838721))

(assert (=> d!710679 d!710859))

(declare-fun d!710861 () Bool)

(assert (=> d!710861 (= (list!11133 (_1!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611)))))) (list!11138 (c!393450 (_1!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 l!6611))))))))))

(declare-fun bs!466828 () Bool)

(assert (= bs!466828 d!710861))

(declare-fun m!2838723 () Bool)

(assert (=> bs!466828 m!2838723))

(assert (=> d!710539 d!710861))

(assert (=> d!710539 d!710737))

(assert (=> d!710539 d!710729))

(declare-fun d!710863 () Bool)

(declare-fun lt!883035 () Int)

(assert (=> d!710863 (= lt!883035 (size!22394 (list!11133 (_1!16661 lt!882821))))))

(assert (=> d!710863 (= lt!883035 (size!22403 (c!393450 (_1!16661 lt!882821))))))

(assert (=> d!710863 (= (size!22400 (_1!16661 lt!882821)) lt!883035)))

(declare-fun bs!466829 () Bool)

(assert (= bs!466829 d!710863))

(declare-fun m!2838725 () Bool)

(assert (=> bs!466829 m!2838725))

(assert (=> bs!466829 m!2838725))

(declare-fun m!2838727 () Bool)

(assert (=> bs!466829 m!2838727))

(declare-fun m!2838729 () Bool)

(assert (=> bs!466829 m!2838729))

(assert (=> d!710539 d!710863))

(assert (=> d!710539 d!710723))

(declare-fun d!710865 () Bool)

(assert (=> d!710865 (= (list!11133 (singletonSeq!1991 (h!34183 l!6611))) (list!11138 (c!393450 (singletonSeq!1991 (h!34183 l!6611)))))))

(declare-fun bs!466830 () Bool)

(assert (= bs!466830 d!710865))

(declare-fun m!2838731 () Bool)

(assert (=> bs!466830 m!2838731))

(assert (=> d!710539 d!710865))

(assert (=> d!710539 d!710369))

(declare-fun d!710867 () Bool)

(assert (=> d!710867 (= (isEmpty!16720 (originalCharacters!5249 (h!34183 (t!209627 l!6611)))) ((_ is Nil!28781) (originalCharacters!5249 (h!34183 (t!209627 l!6611)))))))

(assert (=> d!710641 d!710867))

(assert (=> b!2468476 d!710659))

(declare-fun d!710869 () Bool)

(assert (=> d!710869 (= (list!11131 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611))))) (list!11132 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611)))))))))

(declare-fun bs!466831 () Bool)

(assert (= bs!466831 d!710869))

(declare-fun m!2838733 () Bool)

(assert (=> bs!466831 m!2838733))

(assert (=> b!2468725 d!710869))

(declare-fun d!710871 () Bool)

(declare-fun lt!883036 () Bool)

(assert (=> d!710871 (= lt!883036 (isEmpty!16720 (list!11131 (_2!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611)))))))))))

(assert (=> d!710871 (= lt!883036 (isEmpty!16723 (c!393380 (_2!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611)))))))))))

(assert (=> d!710871 (= (isEmpty!16721 (_2!16661 (lex!1860 thiss!27932 rules!4472 (print!1582 thiss!27932 (singletonSeq!1991 (h!34183 (t!209627 l!6611))))))) lt!883036)))

(declare-fun bs!466832 () Bool)

(assert (= bs!466832 d!710871))

(declare-fun m!2838735 () Bool)

(assert (=> bs!466832 m!2838735))

(assert (=> bs!466832 m!2838735))

(declare-fun m!2838737 () Bool)

(assert (=> bs!466832 m!2838737))

(declare-fun m!2838739 () Bool)

(assert (=> bs!466832 m!2838739))

(assert (=> b!2468577 d!710871))

(assert (=> b!2468577 d!710833))

(assert (=> b!2468577 d!710825))

(assert (=> b!2468577 d!710835))

(declare-fun d!710873 () Bool)

(declare-fun lt!883039 () Token!8436)

(assert (=> d!710873 (= lt!883039 (apply!6774 (list!11133 (_1!16661 lt!882821)) 0))))

(declare-fun apply!6785 (Conc!9198 Int) Token!8436)

(assert (=> d!710873 (= lt!883039 (apply!6785 (c!393450 (_1!16661 lt!882821)) 0))))

(declare-fun e!1566268 () Bool)

(assert (=> d!710873 e!1566268))

(declare-fun res!1045880 () Bool)

(assert (=> d!710873 (=> (not res!1045880) (not e!1566268))))

(assert (=> d!710873 (= res!1045880 (<= 0 0))))

(assert (=> d!710873 (= (apply!6777 (_1!16661 lt!882821) 0) lt!883039)))

(declare-fun b!2469301 () Bool)

(assert (=> b!2469301 (= e!1566268 (< 0 (size!22400 (_1!16661 lt!882821))))))

(assert (= (and d!710873 res!1045880) b!2469301))

(assert (=> d!710873 m!2838725))

(assert (=> d!710873 m!2838725))

(declare-fun m!2838741 () Bool)

(assert (=> d!710873 m!2838741))

(declare-fun m!2838743 () Bool)

(assert (=> d!710873 m!2838743))

(assert (=> b!2469301 m!2837847))

(assert (=> b!2468637 d!710873))

(declare-fun bs!466833 () Bool)

(declare-fun d!710875 () Bool)

(assert (= bs!466833 (and d!710875 d!710543)))

(declare-fun lambda!93310 () Int)

(assert (=> bs!466833 (= (= (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (rule!6841 t1!67)))) (= lambda!93310 lambda!93270))))

(declare-fun bs!466834 () Bool)

(assert (= bs!466834 (and d!710875 d!710585)))

(assert (=> bs!466834 (= (= (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (rule!6841 t2!67)))) (= lambda!93310 lambda!93276))))

(declare-fun bs!466835 () Bool)

(assert (= bs!466835 (and d!710875 d!710635)))

(assert (=> bs!466835 (= (= (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (h!34184 rules!4472)))) (= lambda!93310 lambda!93283))))

(declare-fun bs!466836 () Bool)

(assert (= bs!466836 (and d!710875 d!710637)))

(assert (=> bs!466836 (= (= (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611))))) (= lambda!93310 lambda!93284))))

(assert (=> d!710875 true))

(assert (=> d!710875 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472))))) (dynLambda!12356 order!15601 lambda!93310))))

(assert (=> d!710875 (= (equivClasses!1755 (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472))))) (Forall2!746 lambda!93310))))

(declare-fun bs!466837 () Bool)

(assert (= bs!466837 d!710875))

(declare-fun m!2838745 () Bool)

(assert (=> bs!466837 m!2838745))

(assert (=> b!2468670 d!710875))

(declare-fun d!710877 () Bool)

(assert (=> d!710877 (= (Forall2!746 lambda!93276) (choose!14584 lambda!93276))))

(declare-fun bs!466838 () Bool)

(assert (= bs!466838 d!710877))

(declare-fun m!2838747 () Bool)

(assert (=> bs!466838 m!2838747))

(assert (=> d!710585 d!710877))

(declare-fun d!710879 () Bool)

(declare-fun lt!883040 () Token!8436)

(assert (=> d!710879 (contains!4913 (tail!3916 (tail!3916 l!6611)) lt!883040)))

(declare-fun e!1566270 () Token!8436)

(assert (=> d!710879 (= lt!883040 e!1566270)))

(declare-fun c!393532 () Bool)

(assert (=> d!710879 (= c!393532 (= (- (- (+ 1 i!1803) 1) 1) 0))))

(declare-fun e!1566269 () Bool)

(assert (=> d!710879 e!1566269))

(declare-fun res!1045881 () Bool)

(assert (=> d!710879 (=> (not res!1045881) (not e!1566269))))

(assert (=> d!710879 (= res!1045881 (<= 0 (- (- (+ 1 i!1803) 1) 1)))))

(assert (=> d!710879 (= (apply!6774 (tail!3916 (tail!3916 l!6611)) (- (- (+ 1 i!1803) 1) 1)) lt!883040)))

(declare-fun b!2469302 () Bool)

(assert (=> b!2469302 (= e!1566269 (< (- (- (+ 1 i!1803) 1) 1) (size!22394 (tail!3916 (tail!3916 l!6611)))))))

(declare-fun b!2469303 () Bool)

(assert (=> b!2469303 (= e!1566270 (head!5635 (tail!3916 (tail!3916 l!6611))))))

(declare-fun b!2469304 () Bool)

(assert (=> b!2469304 (= e!1566270 (apply!6774 (tail!3916 (tail!3916 (tail!3916 l!6611))) (- (- (- (+ 1 i!1803) 1) 1) 1)))))

(assert (= (and d!710879 res!1045881) b!2469302))

(assert (= (and d!710879 c!393532) b!2469303))

(assert (= (and d!710879 (not c!393532)) b!2469304))

(assert (=> d!710879 m!2837969))

(declare-fun m!2838749 () Bool)

(assert (=> d!710879 m!2838749))

(assert (=> b!2469302 m!2837969))

(declare-fun m!2838751 () Bool)

(assert (=> b!2469302 m!2838751))

(assert (=> b!2469303 m!2837969))

(declare-fun m!2838753 () Bool)

(assert (=> b!2469303 m!2838753))

(assert (=> b!2469304 m!2837969))

(declare-fun m!2838755 () Bool)

(assert (=> b!2469304 m!2838755))

(assert (=> b!2469304 m!2838755))

(declare-fun m!2838757 () Bool)

(assert (=> b!2469304 m!2838757))

(assert (=> b!2468734 d!710879))

(declare-fun d!710881 () Bool)

(assert (=> d!710881 (= (tail!3916 (tail!3916 l!6611)) (t!209627 (tail!3916 l!6611)))))

(assert (=> b!2468734 d!710881))

(declare-fun bs!466839 () Bool)

(declare-fun d!710883 () Bool)

(assert (= bs!466839 (and d!710883 d!710635)))

(declare-fun lambda!93311 () Int)

(assert (=> bs!466839 (= (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (h!34184 rules!4472)))) (= lambda!93311 lambda!93283))))

(declare-fun bs!466840 () Bool)

(assert (= bs!466840 (and d!710883 d!710637)))

(assert (=> bs!466840 (= (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 l!6611))))) (= lambda!93311 lambda!93284))))

(declare-fun bs!466841 () Bool)

(assert (= bs!466841 (and d!710883 d!710875)))

(assert (=> bs!466841 (= (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472))))) (= lambda!93311 lambda!93310))))

(declare-fun bs!466842 () Bool)

(assert (= bs!466842 (and d!710883 d!710585)))

(assert (=> bs!466842 (= (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (rule!6841 t2!67)))) (= lambda!93311 lambda!93276))))

(declare-fun bs!466843 () Bool)

(assert (= bs!466843 (and d!710883 d!710543)))

(assert (=> bs!466843 (= (= (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (rule!6841 t1!67)))) (= lambda!93311 lambda!93270))))

(assert (=> d!710883 true))

(assert (=> d!710883 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) (dynLambda!12356 order!15601 lambda!93311))))

(assert (=> d!710883 (= (equivClasses!1755 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) (Forall2!746 lambda!93311))))

(declare-fun bs!466844 () Bool)

(assert (= bs!466844 d!710883))

(declare-fun m!2838759 () Bool)

(assert (=> bs!466844 m!2838759))

(assert (=> b!2468737 d!710883))

(declare-fun d!710885 () Bool)

(declare-fun lt!883041 () Int)

(assert (=> d!710885 (>= lt!883041 0)))

(declare-fun e!1566271 () Int)

(assert (=> d!710885 (= lt!883041 e!1566271)))

(declare-fun c!393533 () Bool)

(assert (=> d!710885 (= c!393533 ((_ is Nil!28781) (t!209626 (originalCharacters!5249 t2!67))))))

(assert (=> d!710885 (= (size!22398 (t!209626 (originalCharacters!5249 t2!67))) lt!883041)))

(declare-fun b!2469305 () Bool)

(assert (=> b!2469305 (= e!1566271 0)))

(declare-fun b!2469306 () Bool)

(assert (=> b!2469306 (= e!1566271 (+ 1 (size!22398 (t!209626 (t!209626 (originalCharacters!5249 t2!67))))))))

(assert (= (and d!710885 c!393533) b!2469305))

(assert (= (and d!710885 (not c!393533)) b!2469306))

(declare-fun m!2838761 () Bool)

(assert (=> b!2469306 m!2838761))

(assert (=> b!2468718 d!710885))

(declare-fun d!710887 () Bool)

(assert (=> d!710887 (= (inv!17 (value!143171 (h!34183 (t!209627 l!6611)))) (= (charsToBigInt!1 (text!33131 (value!143171 (h!34183 (t!209627 l!6611))))) (value!143163 (value!143171 (h!34183 (t!209627 l!6611))))))))

(declare-fun bs!466845 () Bool)

(assert (= bs!466845 d!710887))

(declare-fun m!2838763 () Bool)

(assert (=> bs!466845 m!2838763))

(assert (=> b!2468665 d!710887))

(declare-fun d!710889 () Bool)

(assert (=> d!710889 (= (Forall!1138 lambda!93289) (choose!14585 lambda!93289))))

(declare-fun bs!466846 () Bool)

(assert (= bs!466846 d!710889))

(declare-fun m!2838765 () Bool)

(assert (=> bs!466846 m!2838765))

(assert (=> d!710667 d!710889))

(declare-fun d!710891 () Bool)

(declare-fun res!1045888 () Bool)

(declare-fun e!1566274 () Bool)

(assert (=> d!710891 (=> (not res!1045888) (not e!1566274))))

(assert (=> d!710891 (= res!1045888 (= (csize!18624 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) (+ (size!22399 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) (size!22399 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))))

(assert (=> d!710891 (= (inv!38874 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) e!1566274)))

(declare-fun b!2469313 () Bool)

(declare-fun res!1045889 () Bool)

(assert (=> b!2469313 (=> (not res!1045889) (not e!1566274))))

(assert (=> b!2469313 (= res!1045889 (and (not (= (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) Empty!9197)) (not (= (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) Empty!9197))))))

(declare-fun b!2469314 () Bool)

(declare-fun res!1045890 () Bool)

(assert (=> b!2469314 (=> (not res!1045890) (not e!1566274))))

(assert (=> b!2469314 (= res!1045890 (= (cheight!9408 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) (+ (max!0 (height!1341 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) (height!1341 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) 1)))))

(declare-fun b!2469315 () Bool)

(assert (=> b!2469315 (= e!1566274 (<= 0 (cheight!9408 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(assert (= (and d!710891 res!1045888) b!2469313))

(assert (= (and b!2469313 res!1045889) b!2469314))

(assert (= (and b!2469314 res!1045890) b!2469315))

(declare-fun m!2838767 () Bool)

(assert (=> d!710891 m!2838767))

(declare-fun m!2838769 () Bool)

(assert (=> d!710891 m!2838769))

(declare-fun m!2838771 () Bool)

(assert (=> b!2469314 m!2838771))

(declare-fun m!2838773 () Bool)

(assert (=> b!2469314 m!2838773))

(assert (=> b!2469314 m!2838771))

(assert (=> b!2469314 m!2838773))

(declare-fun m!2838775 () Bool)

(assert (=> b!2469314 m!2838775))

(assert (=> b!2468662 d!710891))

(declare-fun d!710893 () Bool)

(declare-fun c!393536 () Bool)

(assert (=> d!710893 (= c!393536 ((_ is Nil!28782) l!6611))))

(declare-fun e!1566277 () (InoxSet Token!8436))

(assert (=> d!710893 (= (content!3953 l!6611) e!1566277)))

(declare-fun b!2469320 () Bool)

(assert (=> b!2469320 (= e!1566277 ((as const (Array Token!8436 Bool)) false))))

(declare-fun b!2469321 () Bool)

(assert (=> b!2469321 (= e!1566277 ((_ map or) (store ((as const (Array Token!8436 Bool)) false) (h!34183 l!6611) true) (content!3953 (t!209627 l!6611))))))

(assert (= (and d!710893 c!393536) b!2469320))

(assert (= (and d!710893 (not c!393536)) b!2469321))

(declare-fun m!2838777 () Bool)

(assert (=> b!2469321 m!2838777))

(assert (=> b!2469321 m!2838279))

(assert (=> d!710633 d!710893))

(declare-fun d!710895 () Bool)

(assert (=> d!710895 (= (list!11131 lt!882876) (list!11132 (c!393380 lt!882876)))))

(declare-fun bs!466847 () Bool)

(assert (= bs!466847 d!710895))

(declare-fun m!2838779 () Bool)

(assert (=> bs!466847 m!2838779))

(assert (=> b!2468711 d!710895))

(declare-fun lt!883044 () List!28881)

(declare-fun b!2469333 () Bool)

(declare-fun e!1566282 () Bool)

(assert (=> b!2469333 (= e!1566282 (or (not (= (list!11131 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) Nil!28781)) (= lt!883044 (list!11131 (charsOf!2822 t1!67)))))))

(declare-fun b!2469330 () Bool)

(declare-fun e!1566283 () List!28881)

(assert (=> b!2469330 (= e!1566283 (list!11131 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))

(declare-fun b!2469331 () Bool)

(assert (=> b!2469331 (= e!1566283 (Cons!28781 (h!34182 (list!11131 (charsOf!2822 t1!67))) (++!7140 (t!209626 (list!11131 (charsOf!2822 t1!67))) (list!11131 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun d!710897 () Bool)

(assert (=> d!710897 e!1566282))

(declare-fun res!1045895 () Bool)

(assert (=> d!710897 (=> (not res!1045895) (not e!1566282))))

(declare-fun content!3956 (List!28881) (InoxSet C!14700))

(assert (=> d!710897 (= res!1045895 (= (content!3956 lt!883044) ((_ map or) (content!3956 (list!11131 (charsOf!2822 t1!67))) (content!3956 (list!11131 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(assert (=> d!710897 (= lt!883044 e!1566283)))

(declare-fun c!393539 () Bool)

(assert (=> d!710897 (= c!393539 ((_ is Nil!28781) (list!11131 (charsOf!2822 t1!67))))))

(assert (=> d!710897 (= (++!7140 (list!11131 (charsOf!2822 t1!67)) (list!11131 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) lt!883044)))

(declare-fun b!2469332 () Bool)

(declare-fun res!1045896 () Bool)

(assert (=> b!2469332 (=> (not res!1045896) (not e!1566282))))

(assert (=> b!2469332 (= res!1045896 (= (size!22398 lt!883044) (+ (size!22398 (list!11131 (charsOf!2822 t1!67))) (size!22398 (list!11131 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(assert (= (and d!710897 c!393539) b!2469330))

(assert (= (and d!710897 (not c!393539)) b!2469331))

(assert (= (and d!710897 res!1045895) b!2469332))

(assert (= (and b!2469332 res!1045896) b!2469333))

(assert (=> b!2469331 m!2838015))

(declare-fun m!2838781 () Bool)

(assert (=> b!2469331 m!2838781))

(declare-fun m!2838783 () Bool)

(assert (=> d!710897 m!2838783))

(assert (=> d!710897 m!2838013))

(declare-fun m!2838785 () Bool)

(assert (=> d!710897 m!2838785))

(assert (=> d!710897 m!2838015))

(declare-fun m!2838787 () Bool)

(assert (=> d!710897 m!2838787))

(declare-fun m!2838789 () Bool)

(assert (=> b!2469332 m!2838789))

(assert (=> b!2469332 m!2838013))

(declare-fun m!2838791 () Bool)

(assert (=> b!2469332 m!2838791))

(assert (=> b!2469332 m!2838015))

(declare-fun m!2838793 () Bool)

(assert (=> b!2469332 m!2838793))

(assert (=> b!2468711 d!710897))

(declare-fun d!710899 () Bool)

(assert (=> d!710899 (= (list!11131 (charsOf!2822 t1!67)) (list!11132 (c!393380 (charsOf!2822 t1!67))))))

(declare-fun bs!466848 () Bool)

(assert (= bs!466848 d!710899))

(assert (=> bs!466848 m!2838575))

(assert (=> b!2468711 d!710899))

(declare-fun d!710901 () Bool)

(assert (=> d!710901 (= (list!11131 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) (list!11132 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))

(declare-fun bs!466849 () Bool)

(assert (= bs!466849 d!710901))

(assert (=> bs!466849 m!2838577))

(assert (=> b!2468711 d!710901))

(declare-fun d!710903 () Bool)

(declare-fun lt!883045 () Bool)

(assert (=> d!710903 (= lt!883045 (select (content!3953 (t!209627 l!6611)) lt!882714))))

(declare-fun e!1566284 () Bool)

(assert (=> d!710903 (= lt!883045 e!1566284)))

(declare-fun res!1045898 () Bool)

(assert (=> d!710903 (=> (not res!1045898) (not e!1566284))))

(assert (=> d!710903 (= res!1045898 ((_ is Cons!28782) (t!209627 l!6611)))))

(assert (=> d!710903 (= (contains!4913 (t!209627 l!6611) lt!882714) lt!883045)))

(declare-fun b!2469334 () Bool)

(declare-fun e!1566285 () Bool)

(assert (=> b!2469334 (= e!1566284 e!1566285)))

(declare-fun res!1045897 () Bool)

(assert (=> b!2469334 (=> res!1045897 e!1566285)))

(assert (=> b!2469334 (= res!1045897 (= (h!34183 (t!209627 l!6611)) lt!882714))))

(declare-fun b!2469335 () Bool)

(assert (=> b!2469335 (= e!1566285 (contains!4913 (t!209627 (t!209627 l!6611)) lt!882714))))

(assert (= (and d!710903 res!1045898) b!2469334))

(assert (= (and b!2469334 (not res!1045897)) b!2469335))

(assert (=> d!710903 m!2838279))

(declare-fun m!2838795 () Bool)

(assert (=> d!710903 m!2838795))

(declare-fun m!2838797 () Bool)

(assert (=> b!2469335 m!2838797))

(assert (=> b!2468724 d!710903))

(declare-fun d!710905 () Bool)

(declare-fun c!393540 () Bool)

(assert (=> d!710905 (= c!393540 ((_ is Node!9197) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(declare-fun e!1566286 () Bool)

(assert (=> d!710905 (= (inv!38872 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) e!1566286)))

(declare-fun b!2469336 () Bool)

(assert (=> b!2469336 (= e!1566286 (inv!38874 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(declare-fun b!2469337 () Bool)

(declare-fun e!1566287 () Bool)

(assert (=> b!2469337 (= e!1566286 e!1566287)))

(declare-fun res!1045899 () Bool)

(assert (=> b!2469337 (= res!1045899 (not ((_ is Leaf!13746) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))))

(assert (=> b!2469337 (=> res!1045899 e!1566287)))

(declare-fun b!2469338 () Bool)

(assert (=> b!2469338 (= e!1566287 (inv!38875 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(assert (= (and d!710905 c!393540) b!2469336))

(assert (= (and d!710905 (not c!393540)) b!2469337))

(assert (= (and b!2469337 (not res!1045899)) b!2469338))

(declare-fun m!2838799 () Bool)

(assert (=> b!2469336 m!2838799))

(declare-fun m!2838801 () Bool)

(assert (=> b!2469338 m!2838801))

(assert (=> b!2468835 d!710905))

(declare-fun d!710907 () Bool)

(declare-fun c!393541 () Bool)

(assert (=> d!710907 (= c!393541 ((_ is Node!9197) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(declare-fun e!1566288 () Bool)

(assert (=> d!710907 (= (inv!38872 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) e!1566288)))

(declare-fun b!2469339 () Bool)

(assert (=> b!2469339 (= e!1566288 (inv!38874 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(declare-fun b!2469340 () Bool)

(declare-fun e!1566289 () Bool)

(assert (=> b!2469340 (= e!1566288 e!1566289)))

(declare-fun res!1045900 () Bool)

(assert (=> b!2469340 (= res!1045900 (not ((_ is Leaf!13746) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))))

(assert (=> b!2469340 (=> res!1045900 e!1566289)))

(declare-fun b!2469341 () Bool)

(assert (=> b!2469341 (= e!1566289 (inv!38875 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(assert (= (and d!710907 c!393541) b!2469339))

(assert (= (and d!710907 (not c!393541)) b!2469340))

(assert (= (and b!2469340 (not res!1045900)) b!2469341))

(declare-fun m!2838803 () Bool)

(assert (=> b!2469339 m!2838803))

(declare-fun m!2838805 () Bool)

(assert (=> b!2469341 m!2838805))

(assert (=> b!2468835 d!710907))

(declare-fun b!2469342 () Bool)

(declare-fun e!1566290 () List!28881)

(assert (=> b!2469342 (= e!1566290 Nil!28781)))

(declare-fun b!2469343 () Bool)

(declare-fun e!1566291 () List!28881)

(assert (=> b!2469343 (= e!1566290 e!1566291)))

(declare-fun c!393543 () Bool)

(assert (=> b!2469343 (= c!393543 ((_ is Leaf!13746) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))

(declare-fun b!2469344 () Bool)

(assert (=> b!2469344 (= e!1566291 (list!11136 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(declare-fun d!710909 () Bool)

(declare-fun c!393542 () Bool)

(assert (=> d!710909 (= c!393542 ((_ is Empty!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))

(assert (=> d!710909 (= (list!11132 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) e!1566290)))

(declare-fun b!2469345 () Bool)

(assert (=> b!2469345 (= e!1566291 (++!7140 (list!11132 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) (list!11132 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))))))

(assert (= (and d!710909 c!393542) b!2469342))

(assert (= (and d!710909 (not c!393542)) b!2469343))

(assert (= (and b!2469343 c!393543) b!2469344))

(assert (= (and b!2469343 (not c!393543)) b!2469345))

(assert (=> b!2469344 m!2838683))

(declare-fun m!2838807 () Bool)

(assert (=> b!2469345 m!2838807))

(declare-fun m!2838809 () Bool)

(assert (=> b!2469345 m!2838809))

(assert (=> b!2469345 m!2838807))

(assert (=> b!2469345 m!2838809))

(declare-fun m!2838811 () Bool)

(assert (=> b!2469345 m!2838811))

(assert (=> d!710649 d!710909))

(declare-fun d!710911 () Bool)

(declare-fun res!1045901 () Bool)

(declare-fun e!1566292 () Bool)

(assert (=> d!710911 (=> res!1045901 e!1566292)))

(assert (=> d!710911 (= res!1045901 ((_ is Nil!28782) (t!209627 l!6611)))))

(assert (=> d!710911 (= (forall!5900 (t!209627 l!6611) lambda!93255) e!1566292)))

(declare-fun b!2469346 () Bool)

(declare-fun e!1566293 () Bool)

(assert (=> b!2469346 (= e!1566292 e!1566293)))

(declare-fun res!1045902 () Bool)

(assert (=> b!2469346 (=> (not res!1045902) (not e!1566293))))

(assert (=> b!2469346 (= res!1045902 (dynLambda!12357 lambda!93255 (h!34183 (t!209627 l!6611))))))

(declare-fun b!2469347 () Bool)

(assert (=> b!2469347 (= e!1566293 (forall!5900 (t!209627 (t!209627 l!6611)) lambda!93255))))

(assert (= (and d!710911 (not res!1045901)) b!2469346))

(assert (= (and b!2469346 res!1045902) b!2469347))

(declare-fun b_lambda!75735 () Bool)

(assert (=> (not b_lambda!75735) (not b!2469346)))

(declare-fun m!2838813 () Bool)

(assert (=> b!2469346 m!2838813))

(declare-fun m!2838815 () Bool)

(assert (=> b!2469347 m!2838815))

(assert (=> b!2468649 d!710911))

(declare-fun d!710913 () Bool)

(assert (=> d!710913 (= (list!11131 lt!882872) (list!11132 (c!393380 lt!882872)))))

(declare-fun bs!466850 () Bool)

(assert (= bs!466850 d!710913))

(declare-fun m!2838817 () Bool)

(assert (=> bs!466850 m!2838817))

(assert (=> d!710611 d!710913))

(declare-fun d!710915 () Bool)

(declare-fun lt!883046 () Int)

(assert (=> d!710915 (>= lt!883046 0)))

(declare-fun e!1566294 () Int)

(assert (=> d!710915 (= lt!883046 e!1566294)))

(declare-fun c!393544 () Bool)

(assert (=> d!710915 (= c!393544 ((_ is Nil!28781) (t!209626 (originalCharacters!5249 (h!34183 l!6611)))))))

(assert (=> d!710915 (= (size!22398 (t!209626 (originalCharacters!5249 (h!34183 l!6611)))) lt!883046)))

(declare-fun b!2469348 () Bool)

(assert (=> b!2469348 (= e!1566294 0)))

(declare-fun b!2469349 () Bool)

(assert (=> b!2469349 (= e!1566294 (+ 1 (size!22398 (t!209626 (t!209626 (originalCharacters!5249 (h!34183 l!6611)))))))))

(assert (= (and d!710915 c!393544) b!2469348))

(assert (= (and d!710915 (not c!393544)) b!2469349))

(declare-fun m!2838819 () Bool)

(assert (=> b!2469349 m!2838819))

(assert (=> b!2468716 d!710915))

(declare-fun d!710917 () Bool)

(declare-fun choose!625 (List!28880) (_ BitVec 32))

(assert (=> d!710917 (= (charsToInt!0 (text!33130 (value!143171 t1!67))) (choose!625 (text!33130 (value!143171 t1!67))))))

(declare-fun bs!466851 () Bool)

(assert (= bs!466851 d!710917))

(declare-fun m!2838821 () Bool)

(assert (=> bs!466851 m!2838821))

(assert (=> d!710669 d!710917))

(declare-fun d!710919 () Bool)

(assert (=> d!710919 (= (charsToBigInt!1 (text!33131 (value!143171 t1!67))) (choose!644 (text!33131 (value!143171 t1!67))))))

(declare-fun bs!466852 () Bool)

(assert (= bs!466852 d!710919))

(declare-fun m!2838823 () Bool)

(assert (=> bs!466852 m!2838823))

(assert (=> d!710677 d!710919))

(declare-fun d!710921 () Bool)

(declare-fun lt!883047 () Int)

(assert (=> d!710921 (>= lt!883047 0)))

(declare-fun e!1566295 () Int)

(assert (=> d!710921 (= lt!883047 e!1566295)))

(declare-fun c!393545 () Bool)

(assert (=> d!710921 (= c!393545 ((_ is Nil!28781) (t!209626 (originalCharacters!5249 t1!67))))))

(assert (=> d!710921 (= (size!22398 (t!209626 (originalCharacters!5249 t1!67))) lt!883047)))

(declare-fun b!2469350 () Bool)

(assert (=> b!2469350 (= e!1566295 0)))

(declare-fun b!2469351 () Bool)

(assert (=> b!2469351 (= e!1566295 (+ 1 (size!22398 (t!209626 (t!209626 (originalCharacters!5249 t1!67))))))))

(assert (= (and d!710921 c!393545) b!2469350))

(assert (= (and d!710921 (not c!393545)) b!2469351))

(declare-fun m!2838825 () Bool)

(assert (=> b!2469351 m!2838825))

(assert (=> b!2468558 d!710921))

(declare-fun b!2469352 () Bool)

(declare-fun e!1566296 () Bool)

(declare-fun e!1566297 () Bool)

(assert (=> b!2469352 (= e!1566296 e!1566297)))

(declare-fun res!1045903 () Bool)

(assert (=> b!2469352 (=> (not res!1045903) (not e!1566297))))

(assert (=> b!2469352 (= res!1045903 (<= (- 1) (- (height!1341 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) (height!1341 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))))

(declare-fun b!2469353 () Bool)

(assert (=> b!2469353 (= e!1566297 (not (isEmpty!16723 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))))

(declare-fun b!2469354 () Bool)

(declare-fun res!1045907 () Bool)

(assert (=> b!2469354 (=> (not res!1045907) (not e!1566297))))

(assert (=> b!2469354 (= res!1045907 (not (isEmpty!16723 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))))))

(declare-fun b!2469355 () Bool)

(declare-fun res!1045904 () Bool)

(assert (=> b!2469355 (=> (not res!1045904) (not e!1566297))))

(assert (=> b!2469355 (= res!1045904 (isBalanced!2801 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(declare-fun b!2469356 () Bool)

(declare-fun res!1045908 () Bool)

(assert (=> b!2469356 (=> (not res!1045908) (not e!1566297))))

(assert (=> b!2469356 (= res!1045908 (<= (- (height!1341 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) (height!1341 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) 1))))

(declare-fun d!710923 () Bool)

(declare-fun res!1045906 () Bool)

(assert (=> d!710923 (=> res!1045906 e!1566296)))

(assert (=> d!710923 (= res!1045906 (not ((_ is Node!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(assert (=> d!710923 (= (isBalanced!2801 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))) e!1566296)))

(declare-fun b!2469357 () Bool)

(declare-fun res!1045905 () Bool)

(assert (=> b!2469357 (=> (not res!1045905) (not e!1566297))))

(assert (=> b!2469357 (= res!1045905 (isBalanced!2801 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))))

(assert (= (and d!710923 (not res!1045906)) b!2469352))

(assert (= (and b!2469352 res!1045903) b!2469356))

(assert (= (and b!2469356 res!1045908) b!2469355))

(assert (= (and b!2469355 res!1045904) b!2469357))

(assert (= (and b!2469357 res!1045905) b!2469354))

(assert (= (and b!2469354 res!1045907) b!2469353))

(declare-fun m!2838827 () Bool)

(assert (=> b!2469354 m!2838827))

(declare-fun m!2838829 () Bool)

(assert (=> b!2469355 m!2838829))

(assert (=> b!2469352 m!2838771))

(assert (=> b!2469352 m!2838773))

(declare-fun m!2838831 () Bool)

(assert (=> b!2469353 m!2838831))

(assert (=> b!2469356 m!2838771))

(assert (=> b!2469356 m!2838773))

(declare-fun m!2838833 () Bool)

(assert (=> b!2469357 m!2838833))

(assert (=> d!710639 d!710923))

(declare-fun d!710925 () Bool)

(assert (=> d!710925 (= (inv!16 (value!143171 (h!34183 (t!209627 l!6611)))) (= (charsToInt!0 (text!33130 (value!143171 (h!34183 (t!209627 l!6611))))) (value!143162 (value!143171 (h!34183 (t!209627 l!6611))))))))

(declare-fun bs!466853 () Bool)

(assert (= bs!466853 d!710925))

(declare-fun m!2838835 () Bool)

(assert (=> bs!466853 m!2838835))

(assert (=> b!2468669 d!710925))

(declare-fun d!710927 () Bool)

(declare-fun lt!883048 () Token!8436)

(assert (=> d!710927 (contains!4913 (tail!3916 (tail!3916 l!6611)) lt!883048)))

(declare-fun e!1566299 () Token!8436)

(assert (=> d!710927 (= lt!883048 e!1566299)))

(declare-fun c!393546 () Bool)

(assert (=> d!710927 (= c!393546 (= (- (- i!1803 1) 1) 0))))

(declare-fun e!1566298 () Bool)

(assert (=> d!710927 e!1566298))

(declare-fun res!1045909 () Bool)

(assert (=> d!710927 (=> (not res!1045909) (not e!1566298))))

(assert (=> d!710927 (= res!1045909 (<= 0 (- (- i!1803 1) 1)))))

(assert (=> d!710927 (= (apply!6774 (tail!3916 (tail!3916 l!6611)) (- (- i!1803 1) 1)) lt!883048)))

(declare-fun b!2469358 () Bool)

(assert (=> b!2469358 (= e!1566298 (< (- (- i!1803 1) 1) (size!22394 (tail!3916 (tail!3916 l!6611)))))))

(declare-fun b!2469359 () Bool)

(assert (=> b!2469359 (= e!1566299 (head!5635 (tail!3916 (tail!3916 l!6611))))))

(declare-fun b!2469360 () Bool)

(assert (=> b!2469360 (= e!1566299 (apply!6774 (tail!3916 (tail!3916 (tail!3916 l!6611))) (- (- (- i!1803 1) 1) 1)))))

(assert (= (and d!710927 res!1045909) b!2469358))

(assert (= (and d!710927 c!393546) b!2469359))

(assert (= (and d!710927 (not c!393546)) b!2469360))

(assert (=> d!710927 m!2837969))

(declare-fun m!2838837 () Bool)

(assert (=> d!710927 m!2838837))

(assert (=> b!2469358 m!2837969))

(assert (=> b!2469358 m!2838751))

(assert (=> b!2469359 m!2837969))

(assert (=> b!2469359 m!2838753))

(assert (=> b!2469360 m!2837969))

(assert (=> b!2469360 m!2838755))

(assert (=> b!2469360 m!2838755))

(declare-fun m!2838839 () Bool)

(assert (=> b!2469360 m!2838839))

(assert (=> b!2468691 d!710927))

(assert (=> b!2468691 d!710881))

(declare-fun d!710929 () Bool)

(declare-fun res!1045910 () Bool)

(declare-fun e!1566300 () Bool)

(assert (=> d!710929 (=> (not res!1045910) (not e!1566300))))

(assert (=> d!710929 (= res!1045910 (= (csize!18624 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) (+ (size!22399 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) (size!22399 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))))

(assert (=> d!710929 (= (inv!38874 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) e!1566300)))

(declare-fun b!2469361 () Bool)

(declare-fun res!1045911 () Bool)

(assert (=> b!2469361 (=> (not res!1045911) (not e!1566300))))

(assert (=> b!2469361 (= res!1045911 (and (not (= (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) Empty!9197)) (not (= (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) Empty!9197))))))

(declare-fun b!2469362 () Bool)

(declare-fun res!1045912 () Bool)

(assert (=> b!2469362 (=> (not res!1045912) (not e!1566300))))

(assert (=> b!2469362 (= res!1045912 (= (cheight!9408 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) (+ (max!0 (height!1341 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) (height!1341 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) 1)))))

(declare-fun b!2469363 () Bool)

(assert (=> b!2469363 (= e!1566300 (<= 0 (cheight!9408 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(assert (= (and d!710929 res!1045910) b!2469361))

(assert (= (and b!2469361 res!1045911) b!2469362))

(assert (= (and b!2469362 res!1045912) b!2469363))

(declare-fun m!2838841 () Bool)

(assert (=> d!710929 m!2838841))

(declare-fun m!2838843 () Bool)

(assert (=> d!710929 m!2838843))

(declare-fun m!2838845 () Bool)

(assert (=> b!2469362 m!2838845))

(declare-fun m!2838847 () Bool)

(assert (=> b!2469362 m!2838847))

(assert (=> b!2469362 m!2838845))

(assert (=> b!2469362 m!2838847))

(declare-fun m!2838849 () Bool)

(assert (=> b!2469362 m!2838849))

(assert (=> b!2468727 d!710929))

(declare-fun d!710931 () Bool)

(assert (=> d!710931 (= (Forall2!746 lambda!93283) (choose!14584 lambda!93283))))

(declare-fun bs!466854 () Bool)

(assert (= bs!466854 d!710931))

(declare-fun m!2838851 () Bool)

(assert (=> bs!466854 m!2838851))

(assert (=> d!710635 d!710931))

(declare-fun b!2469364 () Bool)

(declare-fun e!1566301 () Bool)

(declare-fun e!1566302 () Bool)

(assert (=> b!2469364 (= e!1566301 e!1566302)))

(declare-fun res!1045913 () Bool)

(assert (=> b!2469364 (=> (not res!1045913) (not e!1566302))))

(assert (=> b!2469364 (= res!1045913 (<= (- 1) (- (height!1341 (left!22085 (c!393380 lt!882880))) (height!1341 (right!22415 (c!393380 lt!882880))))))))

(declare-fun b!2469365 () Bool)

(assert (=> b!2469365 (= e!1566302 (not (isEmpty!16723 (right!22415 (c!393380 lt!882880)))))))

(declare-fun b!2469366 () Bool)

(declare-fun res!1045917 () Bool)

(assert (=> b!2469366 (=> (not res!1045917) (not e!1566302))))

(assert (=> b!2469366 (= res!1045917 (not (isEmpty!16723 (left!22085 (c!393380 lt!882880)))))))

(declare-fun b!2469367 () Bool)

(declare-fun res!1045914 () Bool)

(assert (=> b!2469367 (=> (not res!1045914) (not e!1566302))))

(assert (=> b!2469367 (= res!1045914 (isBalanced!2801 (left!22085 (c!393380 lt!882880))))))

(declare-fun b!2469368 () Bool)

(declare-fun res!1045918 () Bool)

(assert (=> b!2469368 (=> (not res!1045918) (not e!1566302))))

(assert (=> b!2469368 (= res!1045918 (<= (- (height!1341 (left!22085 (c!393380 lt!882880))) (height!1341 (right!22415 (c!393380 lt!882880)))) 1))))

(declare-fun d!710933 () Bool)

(declare-fun res!1045916 () Bool)

(assert (=> d!710933 (=> res!1045916 e!1566301)))

(assert (=> d!710933 (= res!1045916 (not ((_ is Node!9197) (c!393380 lt!882880))))))

(assert (=> d!710933 (= (isBalanced!2801 (c!393380 lt!882880)) e!1566301)))

(declare-fun b!2469369 () Bool)

(declare-fun res!1045915 () Bool)

(assert (=> b!2469369 (=> (not res!1045915) (not e!1566302))))

(assert (=> b!2469369 (= res!1045915 (isBalanced!2801 (right!22415 (c!393380 lt!882880))))))

(assert (= (and d!710933 (not res!1045916)) b!2469364))

(assert (= (and b!2469364 res!1045913) b!2469368))

(assert (= (and b!2469368 res!1045918) b!2469367))

(assert (= (and b!2469367 res!1045914) b!2469369))

(assert (= (and b!2469369 res!1045915) b!2469366))

(assert (= (and b!2469366 res!1045917) b!2469365))

(declare-fun m!2838853 () Bool)

(assert (=> b!2469366 m!2838853))

(declare-fun m!2838855 () Bool)

(assert (=> b!2469367 m!2838855))

(declare-fun m!2838857 () Bool)

(assert (=> b!2469364 m!2838857))

(declare-fun m!2838859 () Bool)

(assert (=> b!2469364 m!2838859))

(declare-fun m!2838861 () Bool)

(assert (=> b!2469365 m!2838861))

(assert (=> b!2469368 m!2838857))

(assert (=> b!2469368 m!2838859))

(declare-fun m!2838863 () Bool)

(assert (=> b!2469369 m!2838863))

(assert (=> b!2468714 d!710933))

(declare-fun d!710935 () Bool)

(declare-fun res!1045919 () Bool)

(declare-fun e!1566303 () Bool)

(assert (=> d!710935 (=> res!1045919 e!1566303)))

(assert (=> d!710935 (= res!1045919 ((_ is Nil!28782) (t!209627 l!6611)))))

(assert (=> d!710935 (= (forall!5900 (t!209627 l!6611) lambda!93256) e!1566303)))

(declare-fun b!2469370 () Bool)

(declare-fun e!1566304 () Bool)

(assert (=> b!2469370 (= e!1566303 e!1566304)))

(declare-fun res!1045920 () Bool)

(assert (=> b!2469370 (=> (not res!1045920) (not e!1566304))))

(assert (=> b!2469370 (= res!1045920 (dynLambda!12357 lambda!93256 (h!34183 (t!209627 l!6611))))))

(declare-fun b!2469371 () Bool)

(assert (=> b!2469371 (= e!1566304 (forall!5900 (t!209627 (t!209627 l!6611)) lambda!93256))))

(assert (= (and d!710935 (not res!1045919)) b!2469370))

(assert (= (and b!2469370 res!1045920) b!2469371))

(declare-fun b_lambda!75737 () Bool)

(assert (=> (not b_lambda!75737) (not b!2469370)))

(declare-fun m!2838865 () Bool)

(assert (=> b!2469370 m!2838865))

(declare-fun m!2838867 () Bool)

(assert (=> b!2469371 m!2838867))

(assert (=> d!710467 d!710935))

(assert (=> d!710467 d!710369))

(declare-fun d!710937 () Bool)

(declare-fun res!1045921 () Bool)

(declare-fun e!1566305 () Bool)

(assert (=> d!710937 (=> res!1045921 e!1566305)))

(assert (=> d!710937 (= res!1045921 ((_ is Nil!28783) (t!209628 rules!4472)))))

(assert (=> d!710937 (= (noDuplicateTag!1665 thiss!27932 (t!209628 rules!4472) (Cons!28785 (tag!4973 (h!34184 rules!4472)) Nil!28785)) e!1566305)))

(declare-fun b!2469372 () Bool)

(declare-fun e!1566306 () Bool)

(assert (=> b!2469372 (= e!1566305 e!1566306)))

(declare-fun res!1045922 () Bool)

(assert (=> b!2469372 (=> (not res!1045922) (not e!1566306))))

(assert (=> b!2469372 (= res!1045922 (not (contains!4914 (Cons!28785 (tag!4973 (h!34184 rules!4472)) Nil!28785) (tag!4973 (h!34184 (t!209628 rules!4472))))))))

(declare-fun b!2469373 () Bool)

(assert (=> b!2469373 (= e!1566306 (noDuplicateTag!1665 thiss!27932 (t!209628 (t!209628 rules!4472)) (Cons!28785 (tag!4973 (h!34184 (t!209628 rules!4472))) (Cons!28785 (tag!4973 (h!34184 rules!4472)) Nil!28785))))))

(assert (= (and d!710937 (not res!1045921)) b!2469372))

(assert (= (and b!2469372 res!1045922) b!2469373))

(declare-fun m!2838869 () Bool)

(assert (=> b!2469372 m!2838869))

(declare-fun m!2838871 () Bool)

(assert (=> b!2469373 m!2838871))

(assert (=> b!2468550 d!710937))

(declare-fun d!710939 () Bool)

(assert (=> d!710939 (= (inv!38878 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) (<= (size!22398 (innerList!9257 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) 2147483647))))

(declare-fun bs!466855 () Bool)

(assert (= bs!466855 d!710939))

(declare-fun m!2838873 () Bool)

(assert (=> bs!466855 m!2838873))

(assert (=> b!2468782 d!710939))

(declare-fun d!710941 () Bool)

(assert (=> d!710941 (= (charsToInt!0 (text!33130 (value!143171 t2!67))) (choose!625 (text!33130 (value!143171 t2!67))))))

(declare-fun bs!466856 () Bool)

(assert (= bs!466856 d!710941))

(declare-fun m!2838875 () Bool)

(assert (=> bs!466856 m!2838875))

(assert (=> d!710577 d!710941))

(declare-fun d!710943 () Bool)

(assert (=> d!710943 (= (charsToInt!0 (text!33130 (value!143171 (h!34183 l!6611)))) (choose!625 (text!33130 (value!143171 (h!34183 l!6611)))))))

(declare-fun bs!466857 () Bool)

(assert (= bs!466857 d!710943))

(declare-fun m!2838877 () Bool)

(assert (=> bs!466857 m!2838877))

(assert (=> d!710665 d!710943))

(declare-fun d!710945 () Bool)

(declare-fun lt!883049 () Bool)

(assert (=> d!710945 (= lt!883049 (isEmpty!16720 (list!11131 (_2!16661 lt!882787))))))

(assert (=> d!710945 (= lt!883049 (isEmpty!16723 (c!393380 (_2!16661 lt!882787))))))

(assert (=> d!710945 (= (isEmpty!16721 (_2!16661 lt!882787)) lt!883049)))

(declare-fun bs!466858 () Bool)

(assert (= bs!466858 d!710945))

(declare-fun m!2838879 () Bool)

(assert (=> bs!466858 m!2838879))

(assert (=> bs!466858 m!2838879))

(declare-fun m!2838881 () Bool)

(assert (=> bs!466858 m!2838881))

(declare-fun m!2838883 () Bool)

(assert (=> bs!466858 m!2838883))

(assert (=> b!2468576 d!710945))

(declare-fun d!710947 () Bool)

(assert (=> d!710947 (= (height!1341 (c!393380 (charsOf!2822 t1!67))) (ite ((_ is Empty!9197) (c!393380 (charsOf!2822 t1!67))) 0 (ite ((_ is Leaf!13746) (c!393380 (charsOf!2822 t1!67))) 1 (cheight!9408 (c!393380 (charsOf!2822 t1!67))))))))

(assert (=> b!2468710 d!710947))

(assert (=> b!2468710 d!710797))

(declare-fun d!710949 () Bool)

(assert (=> d!710949 (= (height!1341 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) (ite ((_ is Empty!9197) (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) 0 (ite ((_ is Leaf!13746) (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) 1 (cheight!9408 (++!7141 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))))

(assert (=> b!2468710 d!710949))

(declare-fun d!710951 () Bool)

(assert (=> d!710951 (= (max!0 (height!1341 (c!393380 (charsOf!2822 t1!67))) (height!1341 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) (ite (< (height!1341 (c!393380 (charsOf!2822 t1!67))) (height!1341 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) (height!1341 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) (height!1341 (c!393380 (charsOf!2822 t1!67)))))))

(assert (=> b!2468710 d!710951))

(declare-fun d!710953 () Bool)

(assert (=> d!710953 (= (height!1341 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) (ite ((_ is Empty!9197) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) 0 (ite ((_ is Leaf!13746) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) 1 (cheight!9408 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(assert (=> b!2468710 d!710953))

(declare-fun d!710955 () Bool)

(assert (=> d!710955 (= (inv!38865 (tag!4973 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (= (mod (str.len (value!143170 (tag!4973 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) 2) 0))))

(assert (=> b!2468767 d!710955))

(declare-fun d!710957 () Bool)

(declare-fun res!1045923 () Bool)

(declare-fun e!1566307 () Bool)

(assert (=> d!710957 (=> (not res!1045923) (not e!1566307))))

(assert (=> d!710957 (= res!1045923 (semiInverseModEq!1844 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))))))

(assert (=> d!710957 (= (inv!38868 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) e!1566307)))

(declare-fun b!2469374 () Bool)

(assert (=> b!2469374 (= e!1566307 (equivClasses!1755 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toValue!6343 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))))))

(assert (= (and d!710957 res!1045923) b!2469374))

(declare-fun m!2838885 () Bool)

(assert (=> d!710957 m!2838885))

(declare-fun m!2838887 () Bool)

(assert (=> b!2469374 m!2838887))

(assert (=> b!2468767 d!710957))

(assert (=> d!710647 d!710893))

(declare-fun d!710959 () Bool)

(assert (=> d!710959 (= (Forall2!746 lambda!93284) (choose!14584 lambda!93284))))

(declare-fun bs!466859 () Bool)

(assert (= bs!466859 d!710959))

(declare-fun m!2838889 () Bool)

(assert (=> bs!466859 m!2838889))

(assert (=> d!710637 d!710959))

(declare-fun b!2469409 () Bool)

(declare-fun e!1566341 () Bool)

(declare-fun e!1566343 () Bool)

(assert (=> b!2469409 (= e!1566341 e!1566343)))

(declare-fun res!1045951 () Bool)

(assert (=> b!2469409 (=> (not res!1045951) (not e!1566343))))

(declare-fun appendAssoc!161 (List!28881 List!28881 List!28881) Bool)

(assert (=> b!2469409 (= res!1045951 (appendAssoc!161 (list!11132 (c!393380 (charsOf!2822 t1!67))) (list!11132 (left!22085 (left!22085 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))) (list!11132 (right!22415 (left!22085 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))))

(declare-fun b!2469410 () Bool)

(declare-fun e!1566337 () Bool)

(declare-fun e!1566335 () Bool)

(assert (=> b!2469410 (= e!1566337 e!1566335)))

(declare-fun res!1045956 () Bool)

(assert (=> b!2469410 (=> (not res!1045956) (not e!1566335))))

(assert (=> b!2469410 (= res!1045956 (appendAssoc!161 (list!11132 (c!393380 (charsOf!2822 t1!67))) (list!11132 (left!22085 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) (list!11132 (right!22415 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(declare-fun b!2469411 () Bool)

(declare-fun e!1566338 () Bool)

(assert (=> b!2469411 (= e!1566338 e!1566337)))

(declare-fun res!1045955 () Bool)

(assert (=> b!2469411 (=> res!1045955 e!1566337)))

(assert (=> b!2469411 (= res!1045955 (not ((_ is Node!9197) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun b!2469412 () Bool)

(assert (=> b!2469412 (= e!1566343 (appendAssoc!161 (++!7140 (list!11132 (c!393380 (charsOf!2822 t1!67))) (list!11132 (left!22085 (left!22085 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))) (list!11132 (right!22415 (left!22085 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))) (list!11132 (right!22415 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(declare-fun b!2469413 () Bool)

(declare-fun e!1566339 () Bool)

(declare-fun e!1566342 () Bool)

(assert (=> b!2469413 (= e!1566339 e!1566342)))

(declare-fun res!1045957 () Bool)

(assert (=> b!2469413 (=> (not res!1045957) (not e!1566342))))

(assert (=> b!2469413 (= res!1045957 (appendAssoc!161 (list!11132 (left!22085 (right!22415 (c!393380 (charsOf!2822 t1!67))))) (list!11132 (right!22415 (right!22415 (c!393380 (charsOf!2822 t1!67))))) (list!11132 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun b!2469414 () Bool)

(assert (=> b!2469414 (= e!1566342 (appendAssoc!161 (list!11132 (left!22085 (c!393380 (charsOf!2822 t1!67)))) (list!11132 (left!22085 (right!22415 (c!393380 (charsOf!2822 t1!67))))) (++!7140 (list!11132 (right!22415 (right!22415 (c!393380 (charsOf!2822 t1!67))))) (list!11132 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(declare-fun b!2469415 () Bool)

(declare-fun e!1566336 () Bool)

(declare-fun e!1566340 () Bool)

(assert (=> b!2469415 (= e!1566336 e!1566340)))

(declare-fun res!1045953 () Bool)

(assert (=> b!2469415 (=> (not res!1045953) (not e!1566340))))

(assert (=> b!2469415 (= res!1045953 (appendAssoc!161 (list!11132 (left!22085 (c!393380 (charsOf!2822 t1!67)))) (list!11132 (right!22415 (c!393380 (charsOf!2822 t1!67)))) (list!11132 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun b!2469416 () Bool)

(assert (=> b!2469416 (= e!1566340 e!1566339)))

(declare-fun res!1045952 () Bool)

(assert (=> b!2469416 (=> res!1045952 e!1566339)))

(assert (=> b!2469416 (= res!1045952 (not ((_ is Node!9197) (right!22415 (c!393380 (charsOf!2822 t1!67))))))))

(declare-fun d!710961 () Bool)

(assert (=> d!710961 e!1566338))

(declare-fun res!1045954 () Bool)

(assert (=> d!710961 (=> (not res!1045954) (not e!1566338))))

(assert (=> d!710961 (= res!1045954 e!1566336)))

(declare-fun res!1045958 () Bool)

(assert (=> d!710961 (=> res!1045958 e!1566336)))

(assert (=> d!710961 (= res!1045958 (not ((_ is Node!9197) (c!393380 (charsOf!2822 t1!67)))))))

(assert (=> d!710961 (= (appendAssocInst!615 (c!393380 (charsOf!2822 t1!67)) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) true)))

(declare-fun b!2469408 () Bool)

(assert (=> b!2469408 (= e!1566335 e!1566341)))

(declare-fun res!1045959 () Bool)

(assert (=> b!2469408 (=> res!1045959 e!1566341)))

(assert (=> b!2469408 (= res!1045959 (not ((_ is Node!9197) (left!22085 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(assert (= (and d!710961 (not res!1045958)) b!2469415))

(assert (= (and b!2469415 res!1045953) b!2469416))

(assert (= (and b!2469416 (not res!1045952)) b!2469413))

(assert (= (and b!2469413 res!1045957) b!2469414))

(assert (= (and d!710961 res!1045954) b!2469411))

(assert (= (and b!2469411 (not res!1045955)) b!2469410))

(assert (= (and b!2469410 res!1045956) b!2469408))

(assert (= (and b!2469408 (not res!1045959)) b!2469409))

(assert (= (and b!2469409 res!1045951) b!2469412))

(declare-fun m!2838909 () Bool)

(assert (=> b!2469412 m!2838909))

(declare-fun m!2838911 () Bool)

(assert (=> b!2469412 m!2838911))

(declare-fun m!2838913 () Bool)

(assert (=> b!2469412 m!2838913))

(declare-fun m!2838915 () Bool)

(assert (=> b!2469412 m!2838915))

(assert (=> b!2469412 m!2838911))

(declare-fun m!2838917 () Bool)

(assert (=> b!2469412 m!2838917))

(assert (=> b!2469412 m!2838575))

(assert (=> b!2469412 m!2838913))

(assert (=> b!2469412 m!2838575))

(assert (=> b!2469412 m!2838917))

(assert (=> b!2469412 m!2838909))

(declare-fun m!2838919 () Bool)

(assert (=> b!2469413 m!2838919))

(declare-fun m!2838921 () Bool)

(assert (=> b!2469413 m!2838921))

(assert (=> b!2469413 m!2838577))

(assert (=> b!2469413 m!2838919))

(assert (=> b!2469413 m!2838921))

(assert (=> b!2469413 m!2838577))

(declare-fun m!2838923 () Bool)

(assert (=> b!2469413 m!2838923))

(assert (=> b!2469414 m!2838921))

(assert (=> b!2469414 m!2838921))

(assert (=> b!2469414 m!2838577))

(declare-fun m!2838925 () Bool)

(assert (=> b!2469414 m!2838925))

(assert (=> b!2469414 m!2838577))

(assert (=> b!2469414 m!2838919))

(declare-fun m!2838927 () Bool)

(assert (=> b!2469414 m!2838927))

(assert (=> b!2469414 m!2838919))

(assert (=> b!2469414 m!2838925))

(declare-fun m!2838929 () Bool)

(assert (=> b!2469414 m!2838929))

(assert (=> b!2469414 m!2838927))

(assert (=> b!2469410 m!2838575))

(declare-fun m!2838931 () Bool)

(assert (=> b!2469410 m!2838931))

(assert (=> b!2469410 m!2838913))

(assert (=> b!2469410 m!2838575))

(assert (=> b!2469410 m!2838931))

(assert (=> b!2469410 m!2838913))

(declare-fun m!2838933 () Bool)

(assert (=> b!2469410 m!2838933))

(assert (=> b!2469409 m!2838575))

(assert (=> b!2469409 m!2838917))

(assert (=> b!2469409 m!2838911))

(assert (=> b!2469409 m!2838575))

(assert (=> b!2469409 m!2838917))

(assert (=> b!2469409 m!2838911))

(declare-fun m!2838935 () Bool)

(assert (=> b!2469409 m!2838935))

(assert (=> b!2469415 m!2838927))

(declare-fun m!2838937 () Bool)

(assert (=> b!2469415 m!2838937))

(assert (=> b!2469415 m!2838577))

(assert (=> b!2469415 m!2838927))

(assert (=> b!2469415 m!2838937))

(assert (=> b!2469415 m!2838577))

(declare-fun m!2838939 () Bool)

(assert (=> b!2469415 m!2838939))

(assert (=> d!710615 d!710961))

(assert (=> d!710615 d!710797))

(declare-fun d!710965 () Bool)

(assert (=> d!710965 (= (head!5635 (tail!3916 l!6611)) (h!34183 (tail!3916 l!6611)))))

(assert (=> b!2468733 d!710965))

(declare-fun d!710967 () Bool)

(declare-fun c!393551 () Bool)

(assert (=> d!710967 (= c!393551 ((_ is Node!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611)))))))))

(declare-fun e!1566344 () Bool)

(assert (=> d!710967 (= (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611)))))) e!1566344)))

(declare-fun b!2469417 () Bool)

(assert (=> b!2469417 (= e!1566344 (inv!38874 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611)))))))))

(declare-fun b!2469418 () Bool)

(declare-fun e!1566345 () Bool)

(assert (=> b!2469418 (= e!1566344 e!1566345)))

(declare-fun res!1045960 () Bool)

(assert (=> b!2469418 (= res!1045960 (not ((_ is Leaf!13746) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611))))))))))

(assert (=> b!2469418 (=> res!1045960 e!1566345)))

(declare-fun b!2469419 () Bool)

(assert (=> b!2469419 (= e!1566345 (inv!38875 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611)))))))))

(assert (= (and d!710967 c!393551) b!2469417))

(assert (= (and d!710967 (not c!393551)) b!2469418))

(assert (= (and b!2469418 (not res!1045960)) b!2469419))

(declare-fun m!2838941 () Bool)

(assert (=> b!2469417 m!2838941))

(declare-fun m!2838943 () Bool)

(assert (=> b!2469419 m!2838943))

(assert (=> b!2468564 d!710967))

(declare-fun d!710969 () Bool)

(assert (=> d!710969 (= (list!11131 lt!882877) (list!11132 (c!393380 lt!882877)))))

(declare-fun bs!466860 () Bool)

(assert (= bs!466860 d!710969))

(declare-fun m!2838945 () Bool)

(assert (=> bs!466860 m!2838945))

(assert (=> d!710621 d!710969))

(declare-fun d!710971 () Bool)

(assert (=> d!710971 (= (list!11131 lt!882781) (list!11132 (c!393380 lt!882781)))))

(declare-fun bs!466862 () Bool)

(assert (= bs!466862 d!710971))

(declare-fun m!2838949 () Bool)

(assert (=> bs!466862 m!2838949))

(assert (=> d!710475 d!710971))

(declare-fun d!710973 () Bool)

(assert (=> d!710973 (= (charsToBigInt!1 (text!33131 (value!143171 (h!34183 l!6611)))) (choose!644 (text!33131 (value!143171 (h!34183 l!6611)))))))

(declare-fun bs!466863 () Bool)

(assert (= bs!466863 d!710973))

(declare-fun m!2838953 () Bool)

(assert (=> bs!466863 m!2838953))

(assert (=> d!710675 d!710973))

(declare-fun bs!466865 () Bool)

(declare-fun d!710975 () Bool)

(assert (= bs!466865 (and d!710975 d!710625)))

(declare-fun lambda!93316 () Int)

(assert (=> bs!466865 (= lambda!93316 lambda!93282)))

(declare-fun lambda!93317 () Int)

(declare-fun forall!5904 (List!28886 Int) Bool)

(assert (=> d!710975 (forall!5904 (map!5985 rules!4472 lambda!93316) lambda!93317)))

(declare-fun lt!883063 () Unit!42121)

(declare-fun e!1566351 () Unit!42121)

(assert (=> d!710975 (= lt!883063 e!1566351)))

(declare-fun c!393554 () Bool)

(assert (=> d!710975 (= c!393554 ((_ is Nil!28783) rules!4472))))

(assert (=> d!710975 (rulesValidInductive!1584 thiss!27932 rules!4472)))

(assert (=> d!710975 (= (lemma!557 rules!4472 thiss!27932 rules!4472) lt!883063)))

(declare-fun b!2469427 () Bool)

(declare-fun Unit!42137 () Unit!42121)

(assert (=> b!2469427 (= e!1566351 Unit!42137)))

(declare-fun b!2469428 () Bool)

(declare-fun Unit!42138 () Unit!42121)

(assert (=> b!2469428 (= e!1566351 Unit!42138)))

(declare-fun lt!883064 () Unit!42121)

(assert (=> b!2469428 (= lt!883064 (lemma!557 rules!4472 thiss!27932 (t!209628 rules!4472)))))

(assert (= (and d!710975 c!393554) b!2469427))

(assert (= (and d!710975 (not c!393554)) b!2469428))

(declare-fun m!2838965 () Bool)

(assert (=> d!710975 m!2838965))

(assert (=> d!710975 m!2838965))

(declare-fun m!2838967 () Bool)

(assert (=> d!710975 m!2838967))

(assert (=> d!710975 m!2837923))

(declare-fun m!2838969 () Bool)

(assert (=> b!2469428 m!2838969))

(assert (=> d!710625 d!710975))

(declare-fun bs!466866 () Bool)

(declare-fun d!710987 () Bool)

(assert (= bs!466866 (and d!710987 d!710975)))

(declare-fun lambda!93320 () Int)

(assert (=> bs!466866 (= lambda!93320 lambda!93317)))

(declare-fun b!2469449 () Bool)

(declare-fun e!1566364 () Bool)

(declare-fun lt!883067 () Regex!7271)

(declare-fun isEmptyLang!147 (Regex!7271) Bool)

(assert (=> b!2469449 (= e!1566364 (isEmptyLang!147 lt!883067))))

(declare-fun b!2469450 () Bool)

(declare-fun e!1566368 () Regex!7271)

(assert (=> b!2469450 (= e!1566368 (Union!7271 (h!34187 (map!5985 rules!4472 lambda!93282)) (generalisedUnion!534 (t!209769 (map!5985 rules!4472 lambda!93282)))))))

(declare-fun b!2469451 () Bool)

(declare-fun e!1566369 () Bool)

(declare-fun isEmpty!16728 (List!28886) Bool)

(assert (=> b!2469451 (= e!1566369 (isEmpty!16728 (t!209769 (map!5985 rules!4472 lambda!93282))))))

(declare-fun b!2469452 () Bool)

(declare-fun e!1566367 () Bool)

(declare-fun isUnion!147 (Regex!7271) Bool)

(assert (=> b!2469452 (= e!1566367 (isUnion!147 lt!883067))))

(declare-fun e!1566366 () Bool)

(assert (=> d!710987 e!1566366))

(declare-fun res!1045968 () Bool)

(assert (=> d!710987 (=> (not res!1045968) (not e!1566366))))

(assert (=> d!710987 (= res!1045968 (validRegex!2922 lt!883067))))

(declare-fun e!1566365 () Regex!7271)

(assert (=> d!710987 (= lt!883067 e!1566365)))

(declare-fun c!393564 () Bool)

(assert (=> d!710987 (= c!393564 e!1566369)))

(declare-fun res!1045969 () Bool)

(assert (=> d!710987 (=> (not res!1045969) (not e!1566369))))

(assert (=> d!710987 (= res!1045969 ((_ is Cons!28786) (map!5985 rules!4472 lambda!93282)))))

(assert (=> d!710987 (forall!5904 (map!5985 rules!4472 lambda!93282) lambda!93320)))

(assert (=> d!710987 (= (generalisedUnion!534 (map!5985 rules!4472 lambda!93282)) lt!883067)))

(declare-fun b!2469453 () Bool)

(assert (=> b!2469453 (= e!1566366 e!1566364)))

(declare-fun c!393565 () Bool)

(assert (=> b!2469453 (= c!393565 (isEmpty!16728 (map!5985 rules!4472 lambda!93282)))))

(declare-fun b!2469454 () Bool)

(declare-fun head!5639 (List!28886) Regex!7271)

(assert (=> b!2469454 (= e!1566367 (= lt!883067 (head!5639 (map!5985 rules!4472 lambda!93282))))))

(declare-fun b!2469455 () Bool)

(assert (=> b!2469455 (= e!1566365 e!1566368)))

(declare-fun c!393566 () Bool)

(assert (=> b!2469455 (= c!393566 ((_ is Cons!28786) (map!5985 rules!4472 lambda!93282)))))

(declare-fun b!2469456 () Bool)

(assert (=> b!2469456 (= e!1566364 e!1566367)))

(declare-fun c!393563 () Bool)

(declare-fun tail!3920 (List!28886) List!28886)

(assert (=> b!2469456 (= c!393563 (isEmpty!16728 (tail!3920 (map!5985 rules!4472 lambda!93282))))))

(declare-fun b!2469457 () Bool)

(assert (=> b!2469457 (= e!1566368 EmptyLang!7271)))

(declare-fun b!2469458 () Bool)

(assert (=> b!2469458 (= e!1566365 (h!34187 (map!5985 rules!4472 lambda!93282)))))

(assert (= (and d!710987 res!1045969) b!2469451))

(assert (= (and d!710987 c!393564) b!2469458))

(assert (= (and d!710987 (not c!393564)) b!2469455))

(assert (= (and b!2469455 c!393566) b!2469450))

(assert (= (and b!2469455 (not c!393566)) b!2469457))

(assert (= (and d!710987 res!1045968) b!2469453))

(assert (= (and b!2469453 c!393565) b!2469449))

(assert (= (and b!2469453 (not c!393565)) b!2469456))

(assert (= (and b!2469456 c!393563) b!2469454))

(assert (= (and b!2469456 (not c!393563)) b!2469452))

(declare-fun m!2838971 () Bool)

(assert (=> d!710987 m!2838971))

(assert (=> d!710987 m!2838043))

(declare-fun m!2838973 () Bool)

(assert (=> d!710987 m!2838973))

(declare-fun m!2838975 () Bool)

(assert (=> b!2469449 m!2838975))

(assert (=> b!2469453 m!2838043))

(declare-fun m!2838977 () Bool)

(assert (=> b!2469453 m!2838977))

(assert (=> b!2469456 m!2838043))

(declare-fun m!2838979 () Bool)

(assert (=> b!2469456 m!2838979))

(assert (=> b!2469456 m!2838979))

(declare-fun m!2838981 () Bool)

(assert (=> b!2469456 m!2838981))

(declare-fun m!2838983 () Bool)

(assert (=> b!2469450 m!2838983))

(declare-fun m!2838985 () Bool)

(assert (=> b!2469451 m!2838985))

(assert (=> b!2469454 m!2838043))

(declare-fun m!2838987 () Bool)

(assert (=> b!2469454 m!2838987))

(declare-fun m!2838989 () Bool)

(assert (=> b!2469452 m!2838989))

(assert (=> d!710625 d!710987))

(declare-fun d!710989 () Bool)

(declare-fun lt!883070 () List!28886)

(declare-fun size!22407 (List!28886) Int)

(declare-fun size!22408 (List!28883) Int)

(assert (=> d!710989 (= (size!22407 lt!883070) (size!22408 rules!4472))))

(declare-fun e!1566372 () List!28886)

(assert (=> d!710989 (= lt!883070 e!1566372)))

(declare-fun c!393569 () Bool)

(assert (=> d!710989 (= c!393569 ((_ is Nil!28783) rules!4472))))

(assert (=> d!710989 (= (map!5985 rules!4472 lambda!93282) lt!883070)))

(declare-fun b!2469463 () Bool)

(assert (=> b!2469463 (= e!1566372 Nil!28786)))

(declare-fun b!2469464 () Bool)

(declare-fun $colon$colon!537 (List!28886 Regex!7271) List!28886)

(declare-fun dynLambda!12364 (Int Rule!8766) Regex!7271)

(assert (=> b!2469464 (= e!1566372 ($colon$colon!537 (map!5985 (t!209628 rules!4472) lambda!93282) (dynLambda!12364 lambda!93282 (h!34184 rules!4472))))))

(assert (= (and d!710989 c!393569) b!2469463))

(assert (= (and d!710989 (not c!393569)) b!2469464))

(declare-fun b_lambda!75739 () Bool)

(assert (=> (not b_lambda!75739) (not b!2469464)))

(declare-fun m!2838991 () Bool)

(assert (=> d!710989 m!2838991))

(declare-fun m!2838993 () Bool)

(assert (=> d!710989 m!2838993))

(declare-fun m!2838995 () Bool)

(assert (=> b!2469464 m!2838995))

(declare-fun m!2838997 () Bool)

(assert (=> b!2469464 m!2838997))

(assert (=> b!2469464 m!2838995))

(assert (=> b!2469464 m!2838997))

(declare-fun m!2838999 () Bool)

(assert (=> b!2469464 m!2838999))

(assert (=> d!710625 d!710989))

(assert (=> d!710473 d!710625))

(declare-fun b!2469468 () Bool)

(declare-fun e!1566373 () Bool)

(declare-fun lt!883071 () BalanceConc!18008)

(assert (=> b!2469468 (= e!1566373 (= (list!11131 lt!883071) (++!7140 (list!11131 (charsOf!2822 (h!34183 l!6611))) (list!11131 (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))))))))

(declare-fun b!2469467 () Bool)

(declare-fun res!1045972 () Bool)

(assert (=> b!2469467 (=> (not res!1045972) (not e!1566373))))

(assert (=> b!2469467 (= res!1045972 (>= (height!1341 (++!7141 (c!393380 (charsOf!2822 (h!34183 l!6611))) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))))) (max!0 (height!1341 (c!393380 (charsOf!2822 (h!34183 l!6611)))) (height!1341 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0)))))))))

(declare-fun b!2469465 () Bool)

(declare-fun res!1045971 () Bool)

(assert (=> b!2469465 (=> (not res!1045971) (not e!1566373))))

(assert (=> b!2469465 (= res!1045971 (isBalanced!2801 (++!7141 (c!393380 (charsOf!2822 (h!34183 l!6611))) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))))))))

(declare-fun d!710991 () Bool)

(assert (=> d!710991 e!1566373))

(declare-fun res!1045973 () Bool)

(assert (=> d!710991 (=> (not res!1045973) (not e!1566373))))

(assert (=> d!710991 (= res!1045973 (appendAssocInst!615 (c!393380 (charsOf!2822 (h!34183 l!6611))) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0)))))))

(assert (=> d!710991 (= lt!883071 (BalanceConc!18009 (++!7141 (c!393380 (charsOf!2822 (h!34183 l!6611))) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))))))))

(assert (=> d!710991 (= (++!7139 (charsOf!2822 (h!34183 l!6611)) (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))) lt!883071)))

(declare-fun b!2469466 () Bool)

(declare-fun res!1045970 () Bool)

(assert (=> b!2469466 (=> (not res!1045970) (not e!1566373))))

(assert (=> b!2469466 (= res!1045970 (<= (height!1341 (++!7141 (c!393380 (charsOf!2822 (h!34183 l!6611))) (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))))) (+ (max!0 (height!1341 (c!393380 (charsOf!2822 (h!34183 l!6611)))) (height!1341 (c!393380 (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))))) 1)))))

(assert (= (and d!710991 res!1045973) b!2469465))

(assert (= (and b!2469465 res!1045971) b!2469466))

(assert (= (and b!2469466 res!1045970) b!2469467))

(assert (= (and b!2469467 res!1045972) b!2469468))

(declare-fun m!2839001 () Bool)

(assert (=> b!2469468 m!2839001))

(assert (=> b!2469468 m!2837689))

(declare-fun m!2839003 () Bool)

(assert (=> b!2469468 m!2839003))

(assert (=> b!2469468 m!2837687))

(declare-fun m!2839005 () Bool)

(assert (=> b!2469468 m!2839005))

(assert (=> b!2469468 m!2839003))

(assert (=> b!2469468 m!2839005))

(declare-fun m!2839007 () Bool)

(assert (=> b!2469468 m!2839007))

(declare-fun m!2839009 () Bool)

(assert (=> d!710991 m!2839009))

(declare-fun m!2839011 () Bool)

(assert (=> d!710991 m!2839011))

(assert (=> b!2469465 m!2839011))

(assert (=> b!2469465 m!2839011))

(declare-fun m!2839013 () Bool)

(assert (=> b!2469465 m!2839013))

(declare-fun m!2839015 () Bool)

(assert (=> b!2469466 m!2839015))

(assert (=> b!2469466 m!2839011))

(declare-fun m!2839017 () Bool)

(assert (=> b!2469466 m!2839017))

(declare-fun m!2839019 () Bool)

(assert (=> b!2469466 m!2839019))

(assert (=> b!2469466 m!2839015))

(declare-fun m!2839021 () Bool)

(assert (=> b!2469466 m!2839021))

(assert (=> b!2469466 m!2839011))

(assert (=> b!2469466 m!2839019))

(assert (=> b!2469467 m!2839015))

(assert (=> b!2469467 m!2839011))

(assert (=> b!2469467 m!2839017))

(assert (=> b!2469467 m!2839019))

(assert (=> b!2469467 m!2839015))

(assert (=> b!2469467 m!2839021))

(assert (=> b!2469467 m!2839011))

(assert (=> b!2469467 m!2839019))

(assert (=> d!710473 d!710991))

(declare-fun d!710993 () Bool)

(declare-fun e!1566388 () Bool)

(assert (=> d!710993 e!1566388))

(declare-fun res!1045976 () Bool)

(assert (=> d!710993 (=> (not res!1045976) (not e!1566388))))

(declare-fun lt!883078 () BalanceConc!18008)

(assert (=> d!710993 (= res!1045976 (= (list!11131 lt!883078) (Cons!28781 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0) Nil!28781)))))

(assert (=> d!710993 (= lt!883078 (singleton!893 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0)))))

(assert (=> d!710993 (= (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0)) lt!883078)))

(declare-fun b!2469495 () Bool)

(assert (=> b!2469495 (= e!1566388 (isBalanced!2801 (c!393380 lt!883078)))))

(assert (= (and d!710993 res!1045976) b!2469495))

(declare-fun m!2839023 () Bool)

(assert (=> d!710993 m!2839023))

(assert (=> d!710993 m!2837685))

(declare-fun m!2839025 () Bool)

(assert (=> d!710993 m!2839025))

(declare-fun m!2839027 () Bool)

(assert (=> b!2469495 m!2839027))

(assert (=> d!710473 d!710993))

(declare-fun lt!883086 () Bool)

(declare-fun d!710995 () Bool)

(assert (=> d!710995 (= lt!883086 (prefixMatch!805 (rulesRegex!979 thiss!27932 rules!4472) (list!11131 (++!7139 (charsOf!2822 (h!34183 l!6611)) (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))))))))

(assert (=> d!710995 (= lt!883086 (prefixMatchZipperSequence!722 (focus!282 (rulesRegex!979 thiss!27932 rules!4472)) (++!7139 (charsOf!2822 (h!34183 l!6611)) (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))) 0))))

(declare-fun lt!883082 () Unit!42121)

(declare-fun lt!883085 () Unit!42121)

(assert (=> d!710995 (= lt!883082 lt!883085)))

(declare-fun lt!883080 () (InoxSet Context!4236))

(declare-fun lt!883083 () List!28881)

(assert (=> d!710995 (= (prefixMatch!805 (rulesRegex!979 thiss!27932 rules!4472) lt!883083) (prefixMatchZipper!221 lt!883080 lt!883083))))

(declare-fun lt!883081 () List!28887)

(assert (=> d!710995 (= lt!883085 (prefixMatchZipperRegexEquiv!221 lt!883080 lt!883081 (rulesRegex!979 thiss!27932 rules!4472) lt!883083))))

(assert (=> d!710995 (= lt!883083 (list!11131 (++!7139 (charsOf!2822 (h!34183 l!6611)) (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0)))))))

(assert (=> d!710995 (= lt!883081 (toList!1433 (focus!282 (rulesRegex!979 thiss!27932 rules!4472))))))

(assert (=> d!710995 (= lt!883080 (focus!282 (rulesRegex!979 thiss!27932 rules!4472)))))

(declare-fun lt!883079 () Unit!42121)

(declare-fun lt!883088 () Unit!42121)

(assert (=> d!710995 (= lt!883079 lt!883088)))

(declare-fun lt!883087 () (InoxSet Context!4236))

(declare-fun lt!883084 () Int)

(assert (=> d!710995 (= (prefixMatchZipper!221 lt!883087 (dropList!827 (++!7139 (charsOf!2822 (h!34183 l!6611)) (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))) lt!883084)) (prefixMatchZipperSequence!722 lt!883087 (++!7139 (charsOf!2822 (h!34183 l!6611)) (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))) lt!883084))))

(assert (=> d!710995 (= lt!883088 (lemmaprefixMatchZipperSequenceEquivalent!221 lt!883087 (++!7139 (charsOf!2822 (h!34183 l!6611)) (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0))) lt!883084))))

(assert (=> d!710995 (= lt!883084 0)))

(assert (=> d!710995 (= lt!883087 (focus!282 (rulesRegex!979 thiss!27932 rules!4472)))))

(assert (=> d!710995 (validRegex!2922 (rulesRegex!979 thiss!27932 rules!4472))))

(assert (=> d!710995 (= (prefixMatchZipperSequence!721 (rulesRegex!979 thiss!27932 rules!4472) (++!7139 (charsOf!2822 (h!34183 l!6611)) (singletonSeq!1990 (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0)))) lt!883086)))

(declare-fun bs!466867 () Bool)

(assert (= bs!466867 d!710995))

(assert (=> bs!466867 m!2838047))

(assert (=> bs!466867 m!2838049))

(assert (=> bs!466867 m!2838047))

(assert (=> bs!466867 m!2837691))

(declare-fun m!2839029 () Bool)

(assert (=> bs!466867 m!2839029))

(assert (=> bs!466867 m!2837691))

(declare-fun m!2839031 () Bool)

(assert (=> bs!466867 m!2839031))

(assert (=> bs!466867 m!2837469))

(declare-fun m!2839033 () Bool)

(assert (=> bs!466867 m!2839033))

(assert (=> bs!466867 m!2837469))

(assert (=> bs!466867 m!2838057))

(assert (=> bs!466867 m!2837691))

(declare-fun m!2839035 () Bool)

(assert (=> bs!466867 m!2839035))

(assert (=> bs!466867 m!2837691))

(declare-fun m!2839037 () Bool)

(assert (=> bs!466867 m!2839037))

(declare-fun m!2839039 () Bool)

(assert (=> bs!466867 m!2839039))

(assert (=> bs!466867 m!2837469))

(declare-fun m!2839041 () Bool)

(assert (=> bs!466867 m!2839041))

(assert (=> bs!466867 m!2837469))

(assert (=> bs!466867 m!2839037))

(declare-fun m!2839043 () Bool)

(assert (=> bs!466867 m!2839043))

(declare-fun m!2839045 () Bool)

(assert (=> bs!466867 m!2839045))

(declare-fun m!2839047 () Bool)

(assert (=> bs!466867 m!2839047))

(assert (=> bs!466867 m!2837469))

(assert (=> bs!466867 m!2838047))

(assert (=> bs!466867 m!2837691))

(assert (=> bs!466867 m!2839045))

(assert (=> d!710473 d!710995))

(assert (=> d!710473 d!710475))

(declare-fun d!710997 () Bool)

(declare-fun lt!883091 () C!14700)

(assert (=> d!710997 (= lt!883091 (apply!6778 (list!11131 (charsOf!2822 (h!34183 (t!209627 l!6611)))) 0))))

(assert (=> d!710997 (= lt!883091 (apply!6779 (c!393380 (charsOf!2822 (h!34183 (t!209627 l!6611)))) 0))))

(declare-fun e!1566393 () Bool)

(assert (=> d!710997 e!1566393))

(declare-fun res!1045977 () Bool)

(assert (=> d!710997 (=> (not res!1045977) (not e!1566393))))

(assert (=> d!710997 (= res!1045977 (<= 0 0))))

(assert (=> d!710997 (= (apply!6776 (charsOf!2822 (h!34183 (t!209627 l!6611))) 0) lt!883091)))

(declare-fun b!2469504 () Bool)

(assert (=> b!2469504 (= e!1566393 (< 0 (size!22397 (charsOf!2822 (h!34183 (t!209627 l!6611))))))))

(assert (= (and d!710997 res!1045977) b!2469504))

(assert (=> d!710997 m!2837589))

(assert (=> d!710997 m!2837679))

(assert (=> d!710997 m!2837679))

(declare-fun m!2839049 () Bool)

(assert (=> d!710997 m!2839049))

(declare-fun m!2839051 () Bool)

(assert (=> d!710997 m!2839051))

(assert (=> b!2469504 m!2837589))

(assert (=> b!2469504 m!2837593))

(assert (=> d!710473 d!710997))

(declare-fun d!710999 () Bool)

(declare-fun lt!883092 () BalanceConc!18008)

(assert (=> d!710999 (= (list!11131 lt!883092) (originalCharacters!5249 (h!34183 l!6611)))))

(assert (=> d!710999 (= lt!883092 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))

(assert (=> d!710999 (= (charsOf!2822 (h!34183 l!6611)) lt!883092)))

(declare-fun b_lambda!75741 () Bool)

(assert (=> (not b_lambda!75741) (not d!710999)))

(assert (=> d!710999 t!209688))

(declare-fun b_and!187061 () Bool)

(assert (= b_and!187051 (and (=> t!209688 result!172290) b_and!187061)))

(assert (=> d!710999 t!209692))

(declare-fun b_and!187063 () Bool)

(assert (= b_and!187047 (and (=> t!209692 result!172294) b_and!187063)))

(assert (=> d!710999 t!209704))

(declare-fun b_and!187065 () Bool)

(assert (= b_and!187053 (and (=> t!209704 result!172314) b_and!187065)))

(assert (=> d!710999 t!209751))

(declare-fun b_and!187067 () Bool)

(assert (= b_and!187059 (and (=> t!209751 result!172356) b_and!187067)))

(assert (=> d!710999 t!209698))

(declare-fun b_and!187069 () Bool)

(assert (= b_and!187045 (and (=> t!209698 result!172306) b_and!187069)))

(assert (=> d!710999 t!209690))

(declare-fun b_and!187071 () Bool)

(assert (= b_and!187057 (and (=> t!209690 result!172292) b_and!187071)))

(assert (=> d!710999 t!209686))

(declare-fun b_and!187073 () Bool)

(assert (= b_and!187055 (and (=> t!209686 result!172288) b_and!187073)))

(assert (=> d!710999 t!209742))

(declare-fun b_and!187075 () Bool)

(assert (= b_and!187049 (and (=> t!209742 result!172346) b_and!187075)))

(declare-fun m!2839053 () Bool)

(assert (=> d!710999 m!2839053))

(assert (=> d!710999 m!2837641))

(assert (=> d!710473 d!710999))

(assert (=> b!2468473 d!710645))

(assert (=> d!710487 d!710539))

(declare-fun d!711001 () Bool)

(assert (=> d!711001 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 l!6611))))

(assert (=> d!711001 true))

(declare-fun _$77!727 () Unit!42121)

(assert (=> d!711001 (= (choose!14580 thiss!27932 rules!4472 l!6611 (h!34183 l!6611)) _$77!727)))

(declare-fun bs!466871 () Bool)

(assert (= bs!466871 d!711001))

(assert (=> bs!466871 m!2837511))

(assert (=> d!710487 d!711001))

(assert (=> d!710487 d!710369))

(declare-fun d!711031 () Bool)

(assert (=> d!711031 (= (prefixMatchZipper!221 lt!882912 (dropList!827 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909)) (prefixMatchZipperSequence!722 lt!882912 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909))))

(declare-fun lt!883108 () Unit!42121)

(declare-fun choose!14590 ((InoxSet Context!4236) BalanceConc!18008 Int) Unit!42121)

(assert (=> d!711031 (= lt!883108 (choose!14590 lt!882912 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909))))

(declare-fun e!1566450 () Bool)

(assert (=> d!711031 e!1566450))

(declare-fun res!1046018 () Bool)

(assert (=> d!711031 (=> (not res!1046018) (not e!1566450))))

(assert (=> d!711031 (= res!1046018 (>= lt!882909 0))))

(assert (=> d!711031 (= (lemmaprefixMatchZipperSequenceEquivalent!221 lt!882912 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909) lt!883108)))

(declare-fun b!2469596 () Bool)

(assert (=> b!2469596 (= e!1566450 (<= lt!882909 (size!22397 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(assert (= (and d!711031 res!1046018) b!2469596))

(assert (=> d!711031 m!2837473))

(assert (=> d!711031 m!2838069))

(assert (=> d!711031 m!2838069))

(assert (=> d!711031 m!2838071))

(assert (=> d!711031 m!2837473))

(assert (=> d!711031 m!2838059))

(assert (=> d!711031 m!2837473))

(declare-fun m!2839173 () Bool)

(assert (=> d!711031 m!2839173))

(assert (=> b!2469596 m!2837473))

(declare-fun m!2839175 () Bool)

(assert (=> b!2469596 m!2839175))

(assert (=> d!710627 d!711031))

(declare-fun d!711045 () Bool)

(declare-fun e!1566456 () Bool)

(assert (=> d!711045 e!1566456))

(declare-fun res!1046030 () Bool)

(assert (=> d!711045 (=> (not res!1046030) (not e!1566456))))

(declare-fun lt!883111 () List!28887)

(declare-fun noDuplicate!321 (List!28887) Bool)

(assert (=> d!711045 (= res!1046030 (noDuplicate!321 lt!883111))))

(declare-fun choose!14591 ((InoxSet Context!4236)) List!28887)

(assert (=> d!711045 (= lt!883111 (choose!14591 (focus!282 (rulesRegex!979 thiss!27932 rules!4472))))))

(assert (=> d!711045 (= (toList!1433 (focus!282 (rulesRegex!979 thiss!27932 rules!4472))) lt!883111)))

(declare-fun b!2469608 () Bool)

(declare-fun content!3957 (List!28887) (InoxSet Context!4236))

(assert (=> b!2469608 (= e!1566456 (= (content!3957 lt!883111) (focus!282 (rulesRegex!979 thiss!27932 rules!4472))))))

(assert (= (and d!711045 res!1046030) b!2469608))

(declare-fun m!2839187 () Bool)

(assert (=> d!711045 m!2839187))

(assert (=> d!711045 m!2838047))

(declare-fun m!2839191 () Bool)

(assert (=> d!711045 m!2839191))

(declare-fun m!2839193 () Bool)

(assert (=> b!2469608 m!2839193))

(assert (=> d!710627 d!711045))

(declare-fun c!393618 () Bool)

(declare-fun d!711051 () Bool)

(assert (=> d!711051 (= c!393618 (= lt!882909 (size!22397 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun e!1566467 () Bool)

(assert (=> d!711051 (= (prefixMatchZipperSequence!722 lt!882912 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909) e!1566467)))

(declare-fun b!2469626 () Bool)

(declare-fun lostCauseZipper!412 ((InoxSet Context!4236)) Bool)

(assert (=> b!2469626 (= e!1566467 (not (lostCauseZipper!412 lt!882912)))))

(declare-fun b!2469627 () Bool)

(declare-fun derivationStepZipper!340 ((InoxSet Context!4236) C!14700) (InoxSet Context!4236))

(assert (=> b!2469627 (= e!1566467 (prefixMatchZipperSequence!722 (derivationStepZipper!340 lt!882912 (apply!6776 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909)) (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) (+ lt!882909 1)))))

(assert (= (and d!711051 c!393618) b!2469626))

(assert (= (and d!711051 (not c!393618)) b!2469627))

(assert (=> d!711051 m!2837473))

(assert (=> d!711051 m!2839175))

(declare-fun m!2839245 () Bool)

(assert (=> b!2469626 m!2839245))

(assert (=> b!2469627 m!2837473))

(declare-fun m!2839247 () Bool)

(assert (=> b!2469627 m!2839247))

(assert (=> b!2469627 m!2839247))

(declare-fun m!2839249 () Bool)

(assert (=> b!2469627 m!2839249))

(assert (=> b!2469627 m!2839249))

(assert (=> b!2469627 m!2837473))

(declare-fun m!2839251 () Bool)

(assert (=> b!2469627 m!2839251))

(assert (=> d!710627 d!711051))

(declare-fun bm!151532 () Bool)

(declare-fun call!151538 () Bool)

(declare-fun call!151539 () Bool)

(assert (=> bm!151532 (= call!151538 call!151539)))

(declare-fun c!393630 () Bool)

(declare-fun bm!151533 () Bool)

(declare-fun c!393629 () Bool)

(assert (=> bm!151533 (= call!151539 (validRegex!2922 (ite c!393629 (reg!7600 (rulesRegex!979 thiss!27932 rules!4472)) (ite c!393630 (regTwo!15055 (rulesRegex!979 thiss!27932 rules!4472)) (regOne!15054 (rulesRegex!979 thiss!27932 rules!4472))))))))

(declare-fun d!711073 () Bool)

(declare-fun res!1046049 () Bool)

(declare-fun e!1566492 () Bool)

(assert (=> d!711073 (=> res!1046049 e!1566492)))

(assert (=> d!711073 (= res!1046049 ((_ is ElementMatch!7271) (rulesRegex!979 thiss!27932 rules!4472)))))

(assert (=> d!711073 (= (validRegex!2922 (rulesRegex!979 thiss!27932 rules!4472)) e!1566492)))

(declare-fun b!2469662 () Bool)

(declare-fun res!1046052 () Bool)

(declare-fun e!1566495 () Bool)

(assert (=> b!2469662 (=> (not res!1046052) (not e!1566495))))

(declare-fun call!151537 () Bool)

(assert (=> b!2469662 (= res!1046052 call!151537)))

(declare-fun e!1566493 () Bool)

(assert (=> b!2469662 (= e!1566493 e!1566495)))

(declare-fun b!2469663 () Bool)

(declare-fun e!1566496 () Bool)

(assert (=> b!2469663 (= e!1566496 call!151539)))

(declare-fun b!2469664 () Bool)

(declare-fun e!1566494 () Bool)

(assert (=> b!2469664 (= e!1566494 e!1566496)))

(declare-fun res!1046051 () Bool)

(declare-fun nullable!2222 (Regex!7271) Bool)

(assert (=> b!2469664 (= res!1046051 (not (nullable!2222 (reg!7600 (rulesRegex!979 thiss!27932 rules!4472)))))))

(assert (=> b!2469664 (=> (not res!1046051) (not e!1566496))))

(declare-fun b!2469665 () Bool)

(declare-fun e!1566497 () Bool)

(assert (=> b!2469665 (= e!1566497 call!151537)))

(declare-fun b!2469666 () Bool)

(assert (=> b!2469666 (= e!1566494 e!1566493)))

(assert (=> b!2469666 (= c!393630 ((_ is Union!7271) (rulesRegex!979 thiss!27932 rules!4472)))))

(declare-fun b!2469667 () Bool)

(assert (=> b!2469667 (= e!1566495 call!151538)))

(declare-fun b!2469668 () Bool)

(declare-fun res!1046050 () Bool)

(declare-fun e!1566491 () Bool)

(assert (=> b!2469668 (=> res!1046050 e!1566491)))

(assert (=> b!2469668 (= res!1046050 (not ((_ is Concat!11941) (rulesRegex!979 thiss!27932 rules!4472))))))

(assert (=> b!2469668 (= e!1566493 e!1566491)))

(declare-fun b!2469669 () Bool)

(assert (=> b!2469669 (= e!1566492 e!1566494)))

(assert (=> b!2469669 (= c!393629 ((_ is Star!7271) (rulesRegex!979 thiss!27932 rules!4472)))))

(declare-fun bm!151534 () Bool)

(assert (=> bm!151534 (= call!151537 (validRegex!2922 (ite c!393630 (regOne!15055 (rulesRegex!979 thiss!27932 rules!4472)) (regTwo!15054 (rulesRegex!979 thiss!27932 rules!4472)))))))

(declare-fun b!2469670 () Bool)

(assert (=> b!2469670 (= e!1566491 e!1566497)))

(declare-fun res!1046053 () Bool)

(assert (=> b!2469670 (=> (not res!1046053) (not e!1566497))))

(assert (=> b!2469670 (= res!1046053 call!151538)))

(assert (= (and d!711073 (not res!1046049)) b!2469669))

(assert (= (and b!2469669 c!393629) b!2469664))

(assert (= (and b!2469669 (not c!393629)) b!2469666))

(assert (= (and b!2469664 res!1046051) b!2469663))

(assert (= (and b!2469666 c!393630) b!2469662))

(assert (= (and b!2469666 (not c!393630)) b!2469668))

(assert (= (and b!2469662 res!1046052) b!2469667))

(assert (= (and b!2469668 (not res!1046050)) b!2469670))

(assert (= (and b!2469670 res!1046053) b!2469665))

(assert (= (or b!2469667 b!2469670) bm!151532))

(assert (= (or b!2469662 b!2469665) bm!151534))

(assert (= (or b!2469663 bm!151532) bm!151533))

(declare-fun m!2839295 () Bool)

(assert (=> bm!151533 m!2839295))

(declare-fun m!2839299 () Bool)

(assert (=> b!2469664 m!2839299))

(declare-fun m!2839301 () Bool)

(assert (=> bm!151534 m!2839301))

(assert (=> d!710627 d!711073))

(declare-fun d!711083 () Bool)

(declare-fun c!393637 () Bool)

(assert (=> d!711083 (= c!393637 (isEmpty!16720 (list!11131 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun e!1566509 () Bool)

(assert (=> d!711083 (= (prefixMatch!805 (rulesRegex!979 thiss!27932 rules!4472) (list!11131 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) e!1566509)))

(declare-fun b!2469689 () Bool)

(declare-fun lostCause!694 (Regex!7271) Bool)

(assert (=> b!2469689 (= e!1566509 (not (lostCause!694 (rulesRegex!979 thiss!27932 rules!4472))))))

(declare-fun b!2469690 () Bool)

(declare-fun derivativeStep!1876 (Regex!7271 C!14700) Regex!7271)

(assert (=> b!2469690 (= e!1566509 (prefixMatch!805 (derivativeStep!1876 (rulesRegex!979 thiss!27932 rules!4472) (head!5637 (list!11131 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))) (tail!3918 (list!11131 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))))))))

(assert (= (and d!711083 c!393637) b!2469689))

(assert (= (and d!711083 (not c!393637)) b!2469690))

(assert (=> d!711083 m!2838061))

(declare-fun m!2839351 () Bool)

(assert (=> d!711083 m!2839351))

(assert (=> b!2469689 m!2837469))

(declare-fun m!2839355 () Bool)

(assert (=> b!2469689 m!2839355))

(assert (=> b!2469690 m!2838061))

(declare-fun m!2839357 () Bool)

(assert (=> b!2469690 m!2839357))

(assert (=> b!2469690 m!2837469))

(assert (=> b!2469690 m!2839357))

(declare-fun m!2839359 () Bool)

(assert (=> b!2469690 m!2839359))

(assert (=> b!2469690 m!2838061))

(declare-fun m!2839361 () Bool)

(assert (=> b!2469690 m!2839361))

(assert (=> b!2469690 m!2839359))

(assert (=> b!2469690 m!2839361))

(declare-fun m!2839367 () Bool)

(assert (=> b!2469690 m!2839367))

(assert (=> d!710627 d!711083))

(declare-fun d!711107 () Bool)

(declare-fun e!1566517 () Bool)

(assert (=> d!711107 e!1566517))

(declare-fun res!1046068 () Bool)

(assert (=> d!711107 (=> (not res!1046068) (not e!1566517))))

(assert (=> d!711107 (= res!1046068 (validRegex!2922 (rulesRegex!979 thiss!27932 rules!4472)))))

(assert (=> d!711107 (= (focus!282 (rulesRegex!979 thiss!27932 rules!4472)) (store ((as const (Array Context!4236 Bool)) false) (Context!4237 (Cons!28786 (rulesRegex!979 thiss!27932 rules!4472) Nil!28786)) true))))

(declare-fun b!2469702 () Bool)

(declare-fun unfocusZipper!168 (List!28887) Regex!7271)

(assert (=> b!2469702 (= e!1566517 (= (unfocusZipper!168 (toList!1433 (store ((as const (Array Context!4236 Bool)) false) (Context!4237 (Cons!28786 (rulesRegex!979 thiss!27932 rules!4472) Nil!28786)) true))) (rulesRegex!979 thiss!27932 rules!4472)))))

(assert (= (and d!711107 res!1046068) b!2469702))

(assert (=> d!711107 m!2837469))

(assert (=> d!711107 m!2838057))

(declare-fun m!2839399 () Bool)

(assert (=> d!711107 m!2839399))

(assert (=> b!2469702 m!2839399))

(assert (=> b!2469702 m!2839399))

(declare-fun m!2839401 () Bool)

(assert (=> b!2469702 m!2839401))

(assert (=> b!2469702 m!2839401))

(declare-fun m!2839405 () Bool)

(assert (=> b!2469702 m!2839405))

(assert (=> d!710627 d!711107))

(declare-fun d!711129 () Bool)

(assert (=> d!711129 (= (list!11131 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0)))) (list!11132 (c!393380 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun bs!466904 () Bool)

(assert (= bs!466904 d!711129))

(declare-fun m!2839407 () Bool)

(assert (=> bs!466904 m!2839407))

(assert (=> d!710627 d!711129))

(declare-fun d!711131 () Bool)

(declare-fun c!393642 () Bool)

(assert (=> d!711131 (= c!393642 (= 0 (size!22397 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))))))

(declare-fun e!1566520 () Bool)

(assert (=> d!711131 (= (prefixMatchZipperSequence!722 (focus!282 (rulesRegex!979 thiss!27932 rules!4472)) (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) 0) e!1566520)))

(declare-fun b!2469707 () Bool)

(assert (=> b!2469707 (= e!1566520 (not (lostCauseZipper!412 (focus!282 (rulesRegex!979 thiss!27932 rules!4472)))))))

(declare-fun b!2469708 () Bool)

(assert (=> b!2469708 (= e!1566520 (prefixMatchZipperSequence!722 (derivationStepZipper!340 (focus!282 (rulesRegex!979 thiss!27932 rules!4472)) (apply!6776 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) 0)) (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) (+ 0 1)))))

(assert (= (and d!711131 c!393642) b!2469707))

(assert (= (and d!711131 (not c!393642)) b!2469708))

(assert (=> d!711131 m!2837473))

(assert (=> d!711131 m!2839175))

(assert (=> b!2469707 m!2838047))

(declare-fun m!2839417 () Bool)

(assert (=> b!2469707 m!2839417))

(assert (=> b!2469708 m!2837473))

(declare-fun m!2839421 () Bool)

(assert (=> b!2469708 m!2839421))

(assert (=> b!2469708 m!2838047))

(assert (=> b!2469708 m!2839421))

(declare-fun m!2839425 () Bool)

(assert (=> b!2469708 m!2839425))

(assert (=> b!2469708 m!2839425))

(assert (=> b!2469708 m!2837473))

(declare-fun m!2839427 () Bool)

(assert (=> b!2469708 m!2839427))

(assert (=> d!710627 d!711131))

(declare-fun d!711137 () Bool)

(declare-fun c!393643 () Bool)

(assert (=> d!711137 (= c!393643 (isEmpty!16720 lt!882908))))

(declare-fun e!1566524 () Bool)

(assert (=> d!711137 (= (prefixMatch!805 (rulesRegex!979 thiss!27932 rules!4472) lt!882908) e!1566524)))

(declare-fun b!2469714 () Bool)

(assert (=> b!2469714 (= e!1566524 (not (lostCause!694 (rulesRegex!979 thiss!27932 rules!4472))))))

(declare-fun b!2469715 () Bool)

(assert (=> b!2469715 (= e!1566524 (prefixMatch!805 (derivativeStep!1876 (rulesRegex!979 thiss!27932 rules!4472) (head!5637 lt!882908)) (tail!3918 lt!882908)))))

(assert (= (and d!711137 c!393643) b!2469714))

(assert (= (and d!711137 (not c!393643)) b!2469715))

(declare-fun m!2839437 () Bool)

(assert (=> d!711137 m!2839437))

(assert (=> b!2469714 m!2837469))

(assert (=> b!2469714 m!2839355))

(declare-fun m!2839441 () Bool)

(assert (=> b!2469715 m!2839441))

(assert (=> b!2469715 m!2837469))

(assert (=> b!2469715 m!2839441))

(declare-fun m!2839443 () Bool)

(assert (=> b!2469715 m!2839443))

(declare-fun m!2839445 () Bool)

(assert (=> b!2469715 m!2839445))

(assert (=> b!2469715 m!2839443))

(assert (=> b!2469715 m!2839445))

(declare-fun m!2839447 () Bool)

(assert (=> b!2469715 m!2839447))

(assert (=> d!710627 d!711137))

(declare-fun d!711143 () Bool)

(assert (=> d!711143 (= (prefixMatch!805 (rulesRegex!979 thiss!27932 rules!4472) lt!882908) (prefixMatchZipper!221 lt!882905 lt!882908))))

(declare-fun lt!883137 () Unit!42121)

(declare-fun choose!14592 ((InoxSet Context!4236) List!28887 Regex!7271 List!28881) Unit!42121)

(assert (=> d!711143 (= lt!883137 (choose!14592 lt!882905 lt!882906 (rulesRegex!979 thiss!27932 rules!4472) lt!882908))))

(assert (=> d!711143 (validRegex!2922 (rulesRegex!979 thiss!27932 rules!4472))))

(assert (=> d!711143 (= (prefixMatchZipperRegexEquiv!221 lt!882905 lt!882906 (rulesRegex!979 thiss!27932 rules!4472) lt!882908) lt!883137)))

(declare-fun bs!466911 () Bool)

(assert (= bs!466911 d!711143))

(assert (=> bs!466911 m!2837469))

(assert (=> bs!466911 m!2838055))

(assert (=> bs!466911 m!2838063))

(assert (=> bs!466911 m!2837469))

(declare-fun m!2839513 () Bool)

(assert (=> bs!466911 m!2839513))

(assert (=> bs!466911 m!2837469))

(assert (=> bs!466911 m!2838057))

(assert (=> d!710627 d!711143))

(declare-fun c!393651 () Bool)

(declare-fun d!711171 () Bool)

(assert (=> d!711171 (= c!393651 (isEmpty!16720 (dropList!827 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909)))))

(declare-fun e!1566547 () Bool)

(assert (=> d!711171 (= (prefixMatchZipper!221 lt!882912 (dropList!827 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909)) e!1566547)))

(declare-fun b!2469754 () Bool)

(assert (=> b!2469754 (= e!1566547 (not (lostCauseZipper!412 lt!882912)))))

(declare-fun b!2469755 () Bool)

(assert (=> b!2469755 (= e!1566547 (prefixMatchZipper!221 (derivationStepZipper!340 lt!882912 (head!5637 (dropList!827 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909))) (tail!3918 (dropList!827 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909))))))

(assert (= (and d!711171 c!393651) b!2469754))

(assert (= (and d!711171 (not c!393651)) b!2469755))

(assert (=> d!711171 m!2838069))

(declare-fun m!2839531 () Bool)

(assert (=> d!711171 m!2839531))

(assert (=> b!2469754 m!2839245))

(assert (=> b!2469755 m!2838069))

(declare-fun m!2839533 () Bool)

(assert (=> b!2469755 m!2839533))

(assert (=> b!2469755 m!2839533))

(declare-fun m!2839535 () Bool)

(assert (=> b!2469755 m!2839535))

(assert (=> b!2469755 m!2838069))

(declare-fun m!2839537 () Bool)

(assert (=> b!2469755 m!2839537))

(assert (=> b!2469755 m!2839535))

(assert (=> b!2469755 m!2839537))

(declare-fun m!2839539 () Bool)

(assert (=> b!2469755 m!2839539))

(assert (=> d!710627 d!711171))

(declare-fun d!711181 () Bool)

(declare-fun c!393654 () Bool)

(assert (=> d!711181 (= c!393654 (isEmpty!16720 lt!882908))))

(declare-fun e!1566552 () Bool)

(assert (=> d!711181 (= (prefixMatchZipper!221 lt!882905 lt!882908) e!1566552)))

(declare-fun b!2469762 () Bool)

(assert (=> b!2469762 (= e!1566552 (not (lostCauseZipper!412 lt!882905)))))

(declare-fun b!2469763 () Bool)

(assert (=> b!2469763 (= e!1566552 (prefixMatchZipper!221 (derivationStepZipper!340 lt!882905 (head!5637 lt!882908)) (tail!3918 lt!882908)))))

(assert (= (and d!711181 c!393654) b!2469762))

(assert (= (and d!711181 (not c!393654)) b!2469763))

(assert (=> d!711181 m!2839437))

(declare-fun m!2839541 () Bool)

(assert (=> b!2469762 m!2839541))

(assert (=> b!2469763 m!2839441))

(assert (=> b!2469763 m!2839441))

(declare-fun m!2839543 () Bool)

(assert (=> b!2469763 m!2839543))

(assert (=> b!2469763 m!2839445))

(assert (=> b!2469763 m!2839543))

(assert (=> b!2469763 m!2839445))

(declare-fun m!2839545 () Bool)

(assert (=> b!2469763 m!2839545))

(assert (=> d!710627 d!711181))

(declare-fun d!711183 () Bool)

(declare-fun drop!1526 (List!28881 Int) List!28881)

(assert (=> d!711183 (= (dropList!827 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))) lt!882909) (drop!1526 (list!11132 (c!393380 (++!7139 (charsOf!2822 t1!67) (singletonSeq!1990 (apply!6776 (charsOf!2822 t2!67) 0))))) lt!882909))))

(declare-fun bs!466914 () Bool)

(assert (= bs!466914 d!711183))

(assert (=> bs!466914 m!2839407))

(assert (=> bs!466914 m!2839407))

(declare-fun m!2839559 () Bool)

(assert (=> bs!466914 m!2839559))

(assert (=> d!710627 d!711183))

(declare-fun d!711189 () Bool)

(declare-fun lt!883144 () Int)

(assert (=> d!711189 (>= lt!883144 0)))

(declare-fun e!1566555 () Int)

(assert (=> d!711189 (= lt!883144 e!1566555)))

(declare-fun c!393656 () Bool)

(assert (=> d!711189 (= c!393656 ((_ is Nil!28782) (t!209627 (t!209627 l!6611))))))

(assert (=> d!711189 (= (size!22394 (t!209627 (t!209627 l!6611))) lt!883144)))

(declare-fun b!2469767 () Bool)

(assert (=> b!2469767 (= e!1566555 0)))

(declare-fun b!2469768 () Bool)

(assert (=> b!2469768 (= e!1566555 (+ 1 (size!22394 (t!209627 (t!209627 (t!209627 l!6611))))))))

(assert (= (and d!711189 c!393656) b!2469767))

(assert (= (and d!711189 (not c!393656)) b!2469768))

(declare-fun m!2839561 () Bool)

(assert (=> b!2469768 m!2839561))

(assert (=> b!2468552 d!711189))

(declare-fun d!711191 () Bool)

(declare-fun res!1046100 () Bool)

(declare-fun e!1566556 () Bool)

(assert (=> d!711191 (=> (not res!1046100) (not e!1566556))))

(assert (=> d!711191 (= res!1046100 (= (csize!18624 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) (+ (size!22399 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) (size!22399 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))))

(assert (=> d!711191 (= (inv!38874 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) e!1566556)))

(declare-fun b!2469769 () Bool)

(declare-fun res!1046101 () Bool)

(assert (=> b!2469769 (=> (not res!1046101) (not e!1566556))))

(assert (=> b!2469769 (= res!1046101 (and (not (= (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) Empty!9197)) (not (= (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) Empty!9197))))))

(declare-fun b!2469770 () Bool)

(declare-fun res!1046102 () Bool)

(assert (=> b!2469770 (=> (not res!1046102) (not e!1566556))))

(assert (=> b!2469770 (= res!1046102 (= (cheight!9408 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))) (+ (max!0 (height!1341 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) (height!1341 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) 1)))))

(declare-fun b!2469771 () Bool)

(assert (=> b!2469771 (= e!1566556 (<= 0 (cheight!9408 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))))

(assert (= (and d!711191 res!1046100) b!2469769))

(assert (= (and b!2469769 res!1046101) b!2469770))

(assert (= (and b!2469770 res!1046102) b!2469771))

(declare-fun m!2839563 () Bool)

(assert (=> d!711191 m!2839563))

(declare-fun m!2839565 () Bool)

(assert (=> d!711191 m!2839565))

(assert (=> b!2469770 m!2838495))

(assert (=> b!2469770 m!2838497))

(assert (=> b!2469770 m!2838495))

(assert (=> b!2469770 m!2838497))

(declare-fun m!2839567 () Bool)

(assert (=> b!2469770 m!2839567))

(assert (=> b!2468738 d!711191))

(assert (=> d!710537 d!710477))

(declare-fun d!711193 () Bool)

(assert (=> d!711193 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 l!6611)))))

(assert (=> d!711193 true))

(declare-fun _$77!728 () Unit!42121)

(assert (=> d!711193 (= (choose!14580 thiss!27932 rules!4472 l!6611 (h!34183 (t!209627 l!6611))) _$77!728)))

(declare-fun bs!466915 () Bool)

(assert (= bs!466915 d!711193))

(assert (=> bs!466915 m!2837583))

(assert (=> d!710537 d!711193))

(assert (=> d!710537 d!710369))

(declare-fun d!711195 () Bool)

(assert (=> d!711195 (= (inv!15 (value!143171 (h!34183 (t!209627 l!6611)))) (= (charsToBigInt!0 (text!33132 (value!143171 (h!34183 (t!209627 l!6611)))) 0) (value!143166 (value!143171 (h!34183 (t!209627 l!6611))))))))

(declare-fun bs!466916 () Bool)

(assert (= bs!466916 d!711195))

(declare-fun m!2839569 () Bool)

(assert (=> bs!466916 m!2839569))

(assert (=> b!2468668 d!711195))

(assert (=> b!2468690 d!710965))

(declare-fun d!711197 () Bool)

(declare-fun c!393657 () Bool)

(assert (=> d!711197 (= c!393657 ((_ is Nil!28780) (text!33132 (value!143171 (h!34183 l!6611)))))))

(declare-fun e!1566557 () Int)

(assert (=> d!711197 (= (charsToBigInt!0 (text!33132 (value!143171 (h!34183 l!6611))) 0) e!1566557)))

(declare-fun b!2469772 () Bool)

(assert (=> b!2469772 (= e!1566557 0)))

(declare-fun b!2469773 () Bool)

(assert (=> b!2469773 (= e!1566557 (charsToBigInt!0 (t!209625 (text!33132 (value!143171 (h!34183 l!6611)))) (+ (* 0 10) (charToBigInt!0 (h!34181 (text!33132 (value!143171 (h!34183 l!6611))))))))))

(assert (= (and d!711197 c!393657) b!2469772))

(assert (= (and d!711197 (not c!393657)) b!2469773))

(declare-fun m!2839571 () Bool)

(assert (=> b!2469773 m!2839571))

(declare-fun m!2839573 () Bool)

(assert (=> b!2469773 m!2839573))

(assert (=> d!710583 d!711197))

(declare-fun d!711199 () Bool)

(declare-fun lt!883147 () Bool)

(declare-fun content!3958 (List!28885) (InoxSet String!31641))

(assert (=> d!711199 (= lt!883147 (select (content!3958 Nil!28785) (tag!4973 (h!34184 rules!4472))))))

(declare-fun e!1566563 () Bool)

(assert (=> d!711199 (= lt!883147 e!1566563)))

(declare-fun res!1046107 () Bool)

(assert (=> d!711199 (=> (not res!1046107) (not e!1566563))))

(assert (=> d!711199 (= res!1046107 ((_ is Cons!28785) Nil!28785))))

(assert (=> d!711199 (= (contains!4914 Nil!28785 (tag!4973 (h!34184 rules!4472))) lt!883147)))

(declare-fun b!2469778 () Bool)

(declare-fun e!1566562 () Bool)

(assert (=> b!2469778 (= e!1566563 e!1566562)))

(declare-fun res!1046108 () Bool)

(assert (=> b!2469778 (=> res!1046108 e!1566562)))

(assert (=> b!2469778 (= res!1046108 (= (h!34186 Nil!28785) (tag!4973 (h!34184 rules!4472))))))

(declare-fun b!2469779 () Bool)

(assert (=> b!2469779 (= e!1566562 (contains!4914 (t!209706 Nil!28785) (tag!4973 (h!34184 rules!4472))))))

(assert (= (and d!711199 res!1046107) b!2469778))

(assert (= (and b!2469778 (not res!1046108)) b!2469779))

(declare-fun m!2839575 () Bool)

(assert (=> d!711199 m!2839575))

(declare-fun m!2839577 () Bool)

(assert (=> d!711199 m!2839577))

(declare-fun m!2839579 () Bool)

(assert (=> b!2469779 m!2839579))

(assert (=> b!2468549 d!711199))

(declare-fun b!2469790 () Bool)

(declare-fun e!1566570 () Bool)

(assert (=> b!2469790 (= e!1566570 (inv!17 (value!143171 (h!34183 (t!209627 (t!209627 l!6611))))))))

(declare-fun b!2469791 () Bool)

(declare-fun e!1566571 () Bool)

(assert (=> b!2469791 (= e!1566571 e!1566570)))

(declare-fun c!393662 () Bool)

(assert (=> b!2469791 (= c!393662 ((_ is IntegerValue!14008) (value!143171 (h!34183 (t!209627 (t!209627 l!6611))))))))

(declare-fun d!711201 () Bool)

(declare-fun c!393663 () Bool)

(assert (=> d!711201 (= c!393663 ((_ is IntegerValue!14007) (value!143171 (h!34183 (t!209627 (t!209627 l!6611))))))))

(assert (=> d!711201 (= (inv!21 (value!143171 (h!34183 (t!209627 (t!209627 l!6611))))) e!1566571)))

(declare-fun b!2469792 () Bool)

(declare-fun res!1046111 () Bool)

(declare-fun e!1566572 () Bool)

(assert (=> b!2469792 (=> res!1046111 e!1566572)))

(assert (=> b!2469792 (= res!1046111 (not ((_ is IntegerValue!14009) (value!143171 (h!34183 (t!209627 (t!209627 l!6611)))))))))

(assert (=> b!2469792 (= e!1566570 e!1566572)))

(declare-fun b!2469793 () Bool)

(assert (=> b!2469793 (= e!1566572 (inv!15 (value!143171 (h!34183 (t!209627 (t!209627 l!6611))))))))

(declare-fun b!2469794 () Bool)

(assert (=> b!2469794 (= e!1566571 (inv!16 (value!143171 (h!34183 (t!209627 (t!209627 l!6611))))))))

(assert (= (and d!711201 c!393663) b!2469794))

(assert (= (and d!711201 (not c!393663)) b!2469791))

(assert (= (and b!2469791 c!393662) b!2469790))

(assert (= (and b!2469791 (not c!393662)) b!2469792))

(assert (= (and b!2469792 (not res!1046111)) b!2469793))

(declare-fun m!2839581 () Bool)

(assert (=> b!2469790 m!2839581))

(declare-fun m!2839583 () Bool)

(assert (=> b!2469793 m!2839583))

(declare-fun m!2839585 () Bool)

(assert (=> b!2469794 m!2839585))

(assert (=> b!2468766 d!711201))

(declare-fun d!711203 () Bool)

(declare-fun c!393666 () Bool)

(assert (=> d!711203 (= c!393666 ((_ is Node!9197) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(declare-fun e!1566575 () Bool)

(assert (=> d!711203 (= (inv!38872 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) e!1566575)))

(declare-fun b!2469799 () Bool)

(assert (=> b!2469799 (= e!1566575 (inv!38874 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(declare-fun b!2469800 () Bool)

(declare-fun e!1566576 () Bool)

(assert (=> b!2469800 (= e!1566575 e!1566576)))

(declare-fun res!1046112 () Bool)

(assert (=> b!2469800 (= res!1046112 (not ((_ is Leaf!13746) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))))

(assert (=> b!2469800 (=> res!1046112 e!1566576)))

(declare-fun b!2469801 () Bool)

(assert (=> b!2469801 (= e!1566576 (inv!38875 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(assert (= (and d!711203 c!393666) b!2469799))

(assert (= (and d!711203 (not c!393666)) b!2469800))

(assert (= (and b!2469800 (not res!1046112)) b!2469801))

(declare-fun m!2839587 () Bool)

(assert (=> b!2469799 m!2839587))

(declare-fun m!2839589 () Bool)

(assert (=> b!2469801 m!2839589))

(assert (=> b!2468781 d!711203))

(declare-fun d!711205 () Bool)

(declare-fun c!393667 () Bool)

(assert (=> d!711205 (= c!393667 ((_ is Node!9197) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(declare-fun e!1566577 () Bool)

(assert (=> d!711205 (= (inv!38872 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) e!1566577)))

(declare-fun b!2469802 () Bool)

(assert (=> b!2469802 (= e!1566577 (inv!38874 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(declare-fun b!2469803 () Bool)

(declare-fun e!1566578 () Bool)

(assert (=> b!2469803 (= e!1566577 e!1566578)))

(declare-fun res!1046113 () Bool)

(assert (=> b!2469803 (= res!1046113 (not ((_ is Leaf!13746) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))))

(assert (=> b!2469803 (=> res!1046113 e!1566578)))

(declare-fun b!2469804 () Bool)

(assert (=> b!2469804 (= e!1566578 (inv!38875 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(assert (= (and d!711205 c!393667) b!2469802))

(assert (= (and d!711205 (not c!393667)) b!2469803))

(assert (= (and b!2469803 (not res!1046113)) b!2469804))

(declare-fun m!2839591 () Bool)

(assert (=> b!2469802 m!2839591))

(declare-fun m!2839593 () Bool)

(assert (=> b!2469804 m!2839593))

(assert (=> b!2468781 d!711205))

(declare-fun d!711207 () Bool)

(assert (=> d!711207 (= (inv!38873 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611))))) (isBalanced!2801 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611)))))))))

(declare-fun bs!466917 () Bool)

(assert (= bs!466917 d!711207))

(declare-fun m!2839595 () Bool)

(assert (=> bs!466917 m!2839595))

(assert (=> tb!139609 d!711207))

(declare-fun d!711209 () Bool)

(declare-fun c!393668 () Bool)

(assert (=> d!711209 (= c!393668 ((_ is Nil!28780) (text!33132 (value!143171 t1!67))))))

(declare-fun e!1566579 () Int)

(assert (=> d!711209 (= (charsToBigInt!0 (text!33132 (value!143171 t1!67)) 0) e!1566579)))

(declare-fun b!2469805 () Bool)

(assert (=> b!2469805 (= e!1566579 0)))

(declare-fun b!2469806 () Bool)

(assert (=> b!2469806 (= e!1566579 (charsToBigInt!0 (t!209625 (text!33132 (value!143171 t1!67))) (+ (* 0 10) (charToBigInt!0 (h!34181 (text!33132 (value!143171 t1!67)))))))))

(assert (= (and d!711209 c!393668) b!2469805))

(assert (= (and d!711209 (not c!393668)) b!2469806))

(declare-fun m!2839597 () Bool)

(assert (=> b!2469806 m!2839597))

(declare-fun m!2839599 () Bool)

(assert (=> b!2469806 m!2839599))

(assert (=> d!710569 d!711209))

(declare-fun d!711211 () Bool)

(declare-fun lt!883152 () Bool)

(assert (=> d!711211 (= lt!883152 (select (content!3953 (tail!3916 l!6611)) lt!882861))))

(declare-fun e!1566580 () Bool)

(assert (=> d!711211 (= lt!883152 e!1566580)))

(declare-fun res!1046115 () Bool)

(assert (=> d!711211 (=> (not res!1046115) (not e!1566580))))

(assert (=> d!711211 (= res!1046115 ((_ is Cons!28782) (tail!3916 l!6611)))))

(assert (=> d!711211 (= (contains!4913 (tail!3916 l!6611) lt!882861) lt!883152)))

(declare-fun b!2469807 () Bool)

(declare-fun e!1566581 () Bool)

(assert (=> b!2469807 (= e!1566580 e!1566581)))

(declare-fun res!1046114 () Bool)

(assert (=> b!2469807 (=> res!1046114 e!1566581)))

(assert (=> b!2469807 (= res!1046114 (= (h!34183 (tail!3916 l!6611)) lt!882861))))

(declare-fun b!2469808 () Bool)

(assert (=> b!2469808 (= e!1566581 (contains!4913 (t!209627 (tail!3916 l!6611)) lt!882861))))

(assert (= (and d!711211 res!1046115) b!2469807))

(assert (= (and b!2469807 (not res!1046114)) b!2469808))

(assert (=> d!711211 m!2837423))

(assert (=> d!711211 m!2838677))

(declare-fun m!2839601 () Bool)

(assert (=> d!711211 m!2839601))

(declare-fun m!2839603 () Bool)

(assert (=> b!2469808 m!2839603))

(assert (=> d!710591 d!711211))

(declare-fun d!711213 () Bool)

(declare-fun res!1046117 () Bool)

(declare-fun e!1566582 () Bool)

(assert (=> d!711213 (=> res!1046117 e!1566582)))

(assert (=> d!711213 (= res!1046117 (or (not ((_ is Cons!28782) (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))) (not ((_ is Cons!28782) (t!209627 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))))))

(assert (=> d!711213 (= (tokensListTwoByTwoPredicateSeparableList!619 thiss!27932 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))) rules!4472) e!1566582)))

(declare-fun b!2469809 () Bool)

(declare-fun e!1566583 () Bool)

(assert (=> b!2469809 (= e!1566582 e!1566583)))

(declare-fun res!1046116 () Bool)

(assert (=> b!2469809 (=> (not res!1046116) (not e!1566583))))

(assert (=> b!2469809 (= res!1046116 (separableTokensPredicate!857 thiss!27932 (h!34183 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))) (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))) rules!4472))))

(declare-fun lt!883156 () Unit!42121)

(declare-fun Unit!42139 () Unit!42121)

(assert (=> b!2469809 (= lt!883156 Unit!42139)))

(assert (=> b!2469809 (> (size!22397 (charsOf!2822 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))) 0)))

(declare-fun lt!883159 () Unit!42121)

(declare-fun Unit!42140 () Unit!42121)

(assert (=> b!2469809 (= lt!883159 Unit!42140)))

(assert (=> b!2469809 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))))

(declare-fun lt!883158 () Unit!42121)

(declare-fun Unit!42141 () Unit!42121)

(assert (=> b!2469809 (= lt!883158 Unit!42141)))

(assert (=> b!2469809 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))))

(declare-fun lt!883153 () Unit!42121)

(declare-fun lt!883157 () Unit!42121)

(assert (=> b!2469809 (= lt!883153 lt!883157)))

(assert (=> b!2469809 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))))

(assert (=> b!2469809 (= lt!883157 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!673 thiss!27932 rules!4472 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))) (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))))))

(declare-fun lt!883154 () Unit!42121)

(declare-fun lt!883155 () Unit!42121)

(assert (=> b!2469809 (= lt!883154 lt!883155)))

(assert (=> b!2469809 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))))

(assert (=> b!2469809 (= lt!883155 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!673 thiss!27932 rules!4472 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))) (h!34183 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))))))

(declare-fun b!2469810 () Bool)

(assert (=> b!2469810 (= e!1566583 (tokensListTwoByTwoPredicateSeparableList!619 thiss!27932 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611)))))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))) (t!209627 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) rules!4472))))

(assert (= (and d!711213 (not res!1046117)) b!2469809))

(assert (= (and b!2469809 res!1046116) b!2469810))

(declare-fun m!2839605 () Bool)

(assert (=> b!2469809 m!2839605))

(declare-fun m!2839607 () Bool)

(assert (=> b!2469809 m!2839607))

(declare-fun m!2839609 () Bool)

(assert (=> b!2469809 m!2839609))

(declare-fun m!2839611 () Bool)

(assert (=> b!2469809 m!2839611))

(declare-fun m!2839613 () Bool)

(assert (=> b!2469809 m!2839613))

(declare-fun m!2839615 () Bool)

(assert (=> b!2469809 m!2839615))

(assert (=> b!2469809 m!2839611))

(declare-fun m!2839617 () Bool)

(assert (=> b!2469809 m!2839617))

(declare-fun m!2839619 () Bool)

(assert (=> b!2469810 m!2839619))

(assert (=> b!2468736 d!711213))

(assert (=> b!2468709 d!710947))

(assert (=> b!2468709 d!710797))

(assert (=> b!2468709 d!710949))

(assert (=> b!2468709 d!710951))

(assert (=> b!2468709 d!710953))

(declare-fun d!711215 () Bool)

(assert (=> d!711215 (= (Forall!1138 lambda!93287) (choose!14585 lambda!93287))))

(declare-fun bs!466918 () Bool)

(assert (= bs!466918 d!711215))

(declare-fun m!2839625 () Bool)

(assert (=> bs!466918 m!2839625))

(assert (=> d!710661 d!711215))

(declare-fun d!711217 () Bool)

(assert (=> d!711217 (= (Forall!1138 lambda!93290) (choose!14585 lambda!93290))))

(declare-fun bs!466919 () Bool)

(assert (= bs!466919 d!711217))

(declare-fun m!2839631 () Bool)

(assert (=> bs!466919 m!2839631))

(assert (=> d!710673 d!711217))

(declare-fun b!2469818 () Bool)

(declare-fun e!1566588 () Bool)

(declare-fun e!1566589 () Bool)

(assert (=> b!2469818 (= e!1566588 e!1566589)))

(declare-fun res!1046119 () Bool)

(assert (=> b!2469818 (=> (not res!1046119) (not e!1566589))))

(assert (=> b!2469818 (= res!1046119 (<= (- 1) (- (height!1341 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) (height!1341 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))))

(declare-fun b!2469819 () Bool)

(assert (=> b!2469819 (= e!1566589 (not (isEmpty!16723 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))))

(declare-fun b!2469820 () Bool)

(declare-fun res!1046123 () Bool)

(assert (=> b!2469820 (=> (not res!1046123) (not e!1566589))))

(assert (=> b!2469820 (= res!1046123 (not (isEmpty!16723 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))))))

(declare-fun b!2469821 () Bool)

(declare-fun res!1046120 () Bool)

(assert (=> b!2469821 (=> (not res!1046120) (not e!1566589))))

(assert (=> b!2469821 (= res!1046120 (isBalanced!2801 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(declare-fun b!2469822 () Bool)

(declare-fun res!1046124 () Bool)

(assert (=> b!2469822 (=> (not res!1046124) (not e!1566589))))

(assert (=> b!2469822 (= res!1046124 (<= (- (height!1341 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) (height!1341 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) 1))))

(declare-fun d!711219 () Bool)

(declare-fun res!1046122 () Bool)

(assert (=> d!711219 (=> res!1046122 e!1566588)))

(assert (=> d!711219 (= res!1046122 (not ((_ is Node!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(assert (=> d!711219 (= (isBalanced!2801 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))) e!1566588)))

(declare-fun b!2469823 () Bool)

(declare-fun res!1046121 () Bool)

(assert (=> b!2469823 (=> (not res!1046121) (not e!1566589))))

(assert (=> b!2469823 (= res!1046121 (isBalanced!2801 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))))

(assert (= (and d!711219 (not res!1046122)) b!2469818))

(assert (= (and b!2469818 res!1046119) b!2469822))

(assert (= (and b!2469822 res!1046124) b!2469821))

(assert (= (and b!2469821 res!1046120) b!2469823))

(assert (= (and b!2469823 res!1046121) b!2469820))

(assert (= (and b!2469820 res!1046123) b!2469819))

(declare-fun m!2839643 () Bool)

(assert (=> b!2469820 m!2839643))

(declare-fun m!2839645 () Bool)

(assert (=> b!2469821 m!2839645))

(assert (=> b!2469818 m!2838845))

(assert (=> b!2469818 m!2838847))

(declare-fun m!2839647 () Bool)

(assert (=> b!2469819 m!2839647))

(assert (=> b!2469822 m!2838845))

(assert (=> b!2469822 m!2838847))

(declare-fun m!2839649 () Bool)

(assert (=> b!2469823 m!2839649))

(assert (=> d!710643 d!711219))

(declare-fun d!711225 () Bool)

(declare-fun lt!883162 () Token!8436)

(assert (=> d!711225 (= lt!883162 (apply!6774 (list!11133 (_1!16661 lt!882787)) 0))))

(assert (=> d!711225 (= lt!883162 (apply!6785 (c!393450 (_1!16661 lt!882787)) 0))))

(declare-fun e!1566590 () Bool)

(assert (=> d!711225 e!1566590))

(declare-fun res!1046125 () Bool)

(assert (=> d!711225 (=> (not res!1046125) (not e!1566590))))

(assert (=> d!711225 (= res!1046125 (<= 0 0))))

(assert (=> d!711225 (= (apply!6777 (_1!16661 lt!882787) 0) lt!883162)))

(declare-fun b!2469824 () Bool)

(assert (=> b!2469824 (= e!1566590 (< 0 (size!22400 (_1!16661 lt!882787))))))

(assert (= (and d!711225 res!1046125) b!2469824))

(assert (=> d!711225 m!2838643))

(assert (=> d!711225 m!2838643))

(declare-fun m!2839651 () Bool)

(assert (=> d!711225 m!2839651))

(declare-fun m!2839653 () Bool)

(assert (=> d!711225 m!2839653))

(assert (=> b!2469824 m!2837713))

(assert (=> b!2468575 d!711225))

(declare-fun bs!466921 () Bool)

(declare-fun d!711227 () Bool)

(assert (= bs!466921 (and d!711227 d!710401)))

(declare-fun lambda!93323 () Int)

(assert (=> bs!466921 (= lambda!93323 lambda!93255)))

(declare-fun bs!466922 () Bool)

(assert (= bs!466922 (and d!711227 d!710467)))

(assert (=> bs!466922 (= lambda!93323 lambda!93256)))

(declare-fun b!2469829 () Bool)

(declare-fun e!1566595 () Bool)

(assert (=> b!2469829 (= e!1566595 true)))

(declare-fun b!2469828 () Bool)

(declare-fun e!1566594 () Bool)

(assert (=> b!2469828 (= e!1566594 e!1566595)))

(declare-fun b!2469827 () Bool)

(declare-fun e!1566593 () Bool)

(assert (=> b!2469827 (= e!1566593 e!1566594)))

(assert (=> d!711227 e!1566593))

(assert (= b!2469828 b!2469829))

(assert (= b!2469827 b!2469828))

(assert (= (and d!711227 ((_ is Cons!28783) rules!4472)) b!2469827))

(assert (=> b!2469829 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (h!34184 rules!4472)))) (dynLambda!12353 order!15593 lambda!93323))))

(assert (=> b!2469829 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (h!34184 rules!4472)))) (dynLambda!12353 order!15593 lambda!93323))))

(assert (=> d!711227 true))

(declare-fun lt!883163 () Bool)

(assert (=> d!711227 (= lt!883163 (forall!5900 (t!209627 (t!209627 l!6611)) lambda!93323))))

(declare-fun e!1566591 () Bool)

(assert (=> d!711227 (= lt!883163 e!1566591)))

(declare-fun res!1046127 () Bool)

(assert (=> d!711227 (=> res!1046127 e!1566591)))

(assert (=> d!711227 (= res!1046127 (not ((_ is Cons!28782) (t!209627 (t!209627 l!6611)))))))

(assert (=> d!711227 (not (isEmpty!16718 rules!4472))))

(assert (=> d!711227 (= (rulesProduceEachTokenIndividuallyList!1396 thiss!27932 rules!4472 (t!209627 (t!209627 l!6611))) lt!883163)))

(declare-fun b!2469825 () Bool)

(declare-fun e!1566592 () Bool)

(assert (=> b!2469825 (= e!1566591 e!1566592)))

(declare-fun res!1046126 () Bool)

(assert (=> b!2469825 (=> (not res!1046126) (not e!1566592))))

(assert (=> b!2469825 (= res!1046126 (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 (t!209627 l!6611)))))))

(declare-fun b!2469826 () Bool)

(assert (=> b!2469826 (= e!1566592 (rulesProduceEachTokenIndividuallyList!1396 thiss!27932 rules!4472 (t!209627 (t!209627 (t!209627 l!6611)))))))

(assert (= (and d!711227 (not res!1046127)) b!2469825))

(assert (= (and b!2469825 res!1046126) b!2469826))

(declare-fun m!2839655 () Bool)

(assert (=> d!711227 m!2839655))

(assert (=> d!711227 m!2837387))

(declare-fun m!2839657 () Bool)

(assert (=> b!2469825 m!2839657))

(declare-fun m!2839659 () Bool)

(assert (=> b!2469826 m!2839659))

(assert (=> b!2468560 d!711227))

(assert (=> b!2468732 d!710741))

(declare-fun b!2469832 () Bool)

(declare-fun e!1566596 () Bool)

(declare-fun tp!788127 () Bool)

(assert (=> b!2469832 (= e!1566596 tp!788127)))

(declare-fun b!2469831 () Bool)

(declare-fun tp!788128 () Bool)

(declare-fun tp!788125 () Bool)

(assert (=> b!2469831 (= e!1566596 (and tp!788128 tp!788125))))

(assert (=> b!2468764 (= tp!787862 e!1566596)))

(declare-fun b!2469830 () Bool)

(assert (=> b!2469830 (= e!1566596 tp_is_empty!11951)))

(declare-fun b!2469833 () Bool)

(declare-fun tp!788126 () Bool)

(declare-fun tp!788124 () Bool)

(assert (=> b!2469833 (= e!1566596 (and tp!788126 tp!788124))))

(assert (= (and b!2468764 ((_ is ElementMatch!7271) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469830))

(assert (= (and b!2468764 ((_ is Concat!11941) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469831))

(assert (= (and b!2468764 ((_ is Star!7271) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469832))

(assert (= (and b!2468764 ((_ is Union!7271) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469833))

(declare-fun b!2469836 () Bool)

(declare-fun e!1566597 () Bool)

(declare-fun tp!788132 () Bool)

(assert (=> b!2469836 (= e!1566597 tp!788132)))

(declare-fun b!2469835 () Bool)

(declare-fun tp!788133 () Bool)

(declare-fun tp!788130 () Bool)

(assert (=> b!2469835 (= e!1566597 (and tp!788133 tp!788130))))

(assert (=> b!2468764 (= tp!787860 e!1566597)))

(declare-fun b!2469834 () Bool)

(assert (=> b!2469834 (= e!1566597 tp_is_empty!11951)))

(declare-fun b!2469837 () Bool)

(declare-fun tp!788131 () Bool)

(declare-fun tp!788129 () Bool)

(assert (=> b!2469837 (= e!1566597 (and tp!788131 tp!788129))))

(assert (= (and b!2468764 ((_ is ElementMatch!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469834))

(assert (= (and b!2468764 ((_ is Concat!11941) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469835))

(assert (= (and b!2468764 ((_ is Star!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469836))

(assert (= (and b!2468764 ((_ is Union!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469837))

(declare-fun b!2469840 () Bool)

(declare-fun e!1566598 () Bool)

(declare-fun tp!788137 () Bool)

(assert (=> b!2469840 (= e!1566598 tp!788137)))

(declare-fun b!2469839 () Bool)

(declare-fun tp!788138 () Bool)

(declare-fun tp!788135 () Bool)

(assert (=> b!2469839 (= e!1566598 (and tp!788138 tp!788135))))

(assert (=> b!2468762 (= tp!787864 e!1566598)))

(declare-fun b!2469838 () Bool)

(assert (=> b!2469838 (= e!1566598 tp_is_empty!11951)))

(declare-fun b!2469841 () Bool)

(declare-fun tp!788136 () Bool)

(declare-fun tp!788134 () Bool)

(assert (=> b!2469841 (= e!1566598 (and tp!788136 tp!788134))))

(assert (= (and b!2468762 ((_ is ElementMatch!7271) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469838))

(assert (= (and b!2468762 ((_ is Concat!11941) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469839))

(assert (= (and b!2468762 ((_ is Star!7271) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469840))

(assert (= (and b!2468762 ((_ is Union!7271) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469841))

(declare-fun b!2469844 () Bool)

(declare-fun e!1566599 () Bool)

(declare-fun tp!788142 () Bool)

(assert (=> b!2469844 (= e!1566599 tp!788142)))

(declare-fun b!2469843 () Bool)

(declare-fun tp!788143 () Bool)

(declare-fun tp!788140 () Bool)

(assert (=> b!2469843 (= e!1566599 (and tp!788143 tp!788140))))

(assert (=> b!2468762 (= tp!787861 e!1566599)))

(declare-fun b!2469842 () Bool)

(assert (=> b!2469842 (= e!1566599 tp_is_empty!11951)))

(declare-fun b!2469845 () Bool)

(declare-fun tp!788141 () Bool)

(declare-fun tp!788139 () Bool)

(assert (=> b!2469845 (= e!1566599 (and tp!788141 tp!788139))))

(assert (= (and b!2468762 ((_ is ElementMatch!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469842))

(assert (= (and b!2468762 ((_ is Concat!11941) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469843))

(assert (= (and b!2468762 ((_ is Star!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469844))

(assert (= (and b!2468762 ((_ is Union!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469845))

(declare-fun b!2469848 () Bool)

(declare-fun e!1566600 () Bool)

(declare-fun tp!788147 () Bool)

(assert (=> b!2469848 (= e!1566600 tp!788147)))

(declare-fun b!2469847 () Bool)

(declare-fun tp!788148 () Bool)

(declare-fun tp!788145 () Bool)

(assert (=> b!2469847 (= e!1566600 (and tp!788148 tp!788145))))

(assert (=> b!2468867 (= tp!787975 e!1566600)))

(declare-fun b!2469846 () Bool)

(assert (=> b!2469846 (= e!1566600 tp_is_empty!11951)))

(declare-fun b!2469849 () Bool)

(declare-fun tp!788146 () Bool)

(declare-fun tp!788144 () Bool)

(assert (=> b!2469849 (= e!1566600 (and tp!788146 tp!788144))))

(assert (= (and b!2468867 ((_ is ElementMatch!7271) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469846))

(assert (= (and b!2468867 ((_ is Concat!11941) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469847))

(assert (= (and b!2468867 ((_ is Star!7271) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469848))

(assert (= (and b!2468867 ((_ is Union!7271) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469849))

(declare-fun b!2469852 () Bool)

(declare-fun e!1566601 () Bool)

(declare-fun tp!788152 () Bool)

(assert (=> b!2469852 (= e!1566601 tp!788152)))

(declare-fun b!2469851 () Bool)

(declare-fun tp!788153 () Bool)

(declare-fun tp!788150 () Bool)

(assert (=> b!2469851 (= e!1566601 (and tp!788153 tp!788150))))

(assert (=> b!2468792 (= tp!787894 e!1566601)))

(declare-fun b!2469850 () Bool)

(assert (=> b!2469850 (= e!1566601 tp_is_empty!11951)))

(declare-fun b!2469853 () Bool)

(declare-fun tp!788151 () Bool)

(declare-fun tp!788149 () Bool)

(assert (=> b!2469853 (= e!1566601 (and tp!788151 tp!788149))))

(assert (= (and b!2468792 ((_ is ElementMatch!7271) (reg!7600 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469850))

(assert (= (and b!2468792 ((_ is Concat!11941) (reg!7600 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469851))

(assert (= (and b!2468792 ((_ is Star!7271) (reg!7600 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469852))

(assert (= (and b!2468792 ((_ is Union!7271) (reg!7600 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469853))

(declare-fun tp!788154 () Bool)

(declare-fun b!2469854 () Bool)

(declare-fun e!1566602 () Bool)

(declare-fun tp!788156 () Bool)

(assert (=> b!2469854 (= e!1566602 (and (inv!38872 (left!22085 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) tp!788156 (inv!38872 (right!22415 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) tp!788154))))

(declare-fun b!2469856 () Bool)

(declare-fun e!1566603 () Bool)

(declare-fun tp!788155 () Bool)

(assert (=> b!2469856 (= e!1566603 tp!788155)))

(declare-fun b!2469855 () Bool)

(assert (=> b!2469855 (= e!1566602 (and (inv!38878 (xs!12177 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) e!1566603))))

(assert (=> b!2468835 (= tp!787941 (and (inv!38872 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) e!1566602))))

(assert (= (and b!2468835 ((_ is Node!9197) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) b!2469854))

(assert (= b!2469855 b!2469856))

(assert (= (and b!2468835 ((_ is Leaf!13746) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) b!2469855))

(declare-fun m!2839661 () Bool)

(assert (=> b!2469854 m!2839661))

(declare-fun m!2839663 () Bool)

(assert (=> b!2469854 m!2839663))

(declare-fun m!2839665 () Bool)

(assert (=> b!2469855 m!2839665))

(assert (=> b!2468835 m!2838177))

(declare-fun tp!788157 () Bool)

(declare-fun b!2469857 () Bool)

(declare-fun tp!788159 () Bool)

(declare-fun e!1566604 () Bool)

(assert (=> b!2469857 (= e!1566604 (and (inv!38872 (left!22085 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) tp!788159 (inv!38872 (right!22415 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) tp!788157))))

(declare-fun b!2469859 () Bool)

(declare-fun e!1566605 () Bool)

(declare-fun tp!788158 () Bool)

(assert (=> b!2469859 (= e!1566605 tp!788158)))

(declare-fun b!2469858 () Bool)

(assert (=> b!2469858 (= e!1566604 (and (inv!38878 (xs!12177 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) e!1566605))))

(assert (=> b!2468835 (= tp!787939 (and (inv!38872 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))) e!1566604))))

(assert (= (and b!2468835 ((_ is Node!9197) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) b!2469857))

(assert (= b!2469858 b!2469859))

(assert (= (and b!2468835 ((_ is Leaf!13746) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67)))))) b!2469858))

(declare-fun m!2839667 () Bool)

(assert (=> b!2469857 m!2839667))

(declare-fun m!2839669 () Bool)

(assert (=> b!2469857 m!2839669))

(declare-fun m!2839671 () Bool)

(assert (=> b!2469858 m!2839671))

(assert (=> b!2468835 m!2838179))

(declare-fun b!2469862 () Bool)

(declare-fun e!1566606 () Bool)

(declare-fun tp!788163 () Bool)

(assert (=> b!2469862 (= e!1566606 tp!788163)))

(declare-fun b!2469861 () Bool)

(declare-fun tp!788164 () Bool)

(declare-fun tp!788161 () Bool)

(assert (=> b!2469861 (= e!1566606 (and tp!788164 tp!788161))))

(assert (=> b!2468772 (= tp!787872 e!1566606)))

(declare-fun b!2469860 () Bool)

(assert (=> b!2469860 (= e!1566606 tp_is_empty!11951)))

(declare-fun b!2469863 () Bool)

(declare-fun tp!788162 () Bool)

(declare-fun tp!788160 () Bool)

(assert (=> b!2469863 (= e!1566606 (and tp!788162 tp!788160))))

(assert (= (and b!2468772 ((_ is ElementMatch!7271) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469860))

(assert (= (and b!2468772 ((_ is Concat!11941) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469861))

(assert (= (and b!2468772 ((_ is Star!7271) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469862))

(assert (= (and b!2468772 ((_ is Union!7271) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469863))

(declare-fun b!2469866 () Bool)

(declare-fun e!1566607 () Bool)

(declare-fun tp!788168 () Bool)

(assert (=> b!2469866 (= e!1566607 tp!788168)))

(declare-fun b!2469865 () Bool)

(declare-fun tp!788169 () Bool)

(declare-fun tp!788166 () Bool)

(assert (=> b!2469865 (= e!1566607 (and tp!788169 tp!788166))))

(assert (=> b!2468772 (= tp!787870 e!1566607)))

(declare-fun b!2469864 () Bool)

(assert (=> b!2469864 (= e!1566607 tp_is_empty!11951)))

(declare-fun b!2469867 () Bool)

(declare-fun tp!788167 () Bool)

(declare-fun tp!788165 () Bool)

(assert (=> b!2469867 (= e!1566607 (and tp!788167 tp!788165))))

(assert (= (and b!2468772 ((_ is ElementMatch!7271) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469864))

(assert (= (and b!2468772 ((_ is Concat!11941) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469865))

(assert (= (and b!2468772 ((_ is Star!7271) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469866))

(assert (= (and b!2468772 ((_ is Union!7271) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469867))

(declare-fun b!2469870 () Bool)

(declare-fun e!1566608 () Bool)

(declare-fun tp!788173 () Bool)

(assert (=> b!2469870 (= e!1566608 tp!788173)))

(declare-fun b!2469869 () Bool)

(declare-fun tp!788174 () Bool)

(declare-fun tp!788171 () Bool)

(assert (=> b!2469869 (= e!1566608 (and tp!788174 tp!788171))))

(assert (=> b!2468747 (= tp!787849 e!1566608)))

(declare-fun b!2469868 () Bool)

(assert (=> b!2469868 (= e!1566608 tp_is_empty!11951)))

(declare-fun b!2469871 () Bool)

(declare-fun tp!788172 () Bool)

(declare-fun tp!788170 () Bool)

(assert (=> b!2469871 (= e!1566608 (and tp!788172 tp!788170))))

(assert (= (and b!2468747 ((_ is ElementMatch!7271) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469868))

(assert (= (and b!2468747 ((_ is Concat!11941) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469869))

(assert (= (and b!2468747 ((_ is Star!7271) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469870))

(assert (= (and b!2468747 ((_ is Union!7271) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469871))

(declare-fun b!2469874 () Bool)

(declare-fun e!1566609 () Bool)

(declare-fun tp!788178 () Bool)

(assert (=> b!2469874 (= e!1566609 tp!788178)))

(declare-fun b!2469873 () Bool)

(declare-fun tp!788179 () Bool)

(declare-fun tp!788176 () Bool)

(assert (=> b!2469873 (= e!1566609 (and tp!788179 tp!788176))))

(assert (=> b!2468747 (= tp!787846 e!1566609)))

(declare-fun b!2469872 () Bool)

(assert (=> b!2469872 (= e!1566609 tp_is_empty!11951)))

(declare-fun b!2469875 () Bool)

(declare-fun tp!788177 () Bool)

(declare-fun tp!788175 () Bool)

(assert (=> b!2469875 (= e!1566609 (and tp!788177 tp!788175))))

(assert (= (and b!2468747 ((_ is ElementMatch!7271) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469872))

(assert (= (and b!2468747 ((_ is Concat!11941) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469873))

(assert (= (and b!2468747 ((_ is Star!7271) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469874))

(assert (= (and b!2468747 ((_ is Union!7271) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469875))

(declare-fun b!2469878 () Bool)

(declare-fun e!1566610 () Bool)

(declare-fun tp!788183 () Bool)

(assert (=> b!2469878 (= e!1566610 tp!788183)))

(declare-fun b!2469877 () Bool)

(declare-fun tp!788184 () Bool)

(declare-fun tp!788181 () Bool)

(assert (=> b!2469877 (= e!1566610 (and tp!788184 tp!788181))))

(assert (=> b!2468850 (= tp!787956 e!1566610)))

(declare-fun b!2469876 () Bool)

(assert (=> b!2469876 (= e!1566610 tp_is_empty!11951)))

(declare-fun b!2469879 () Bool)

(declare-fun tp!788182 () Bool)

(declare-fun tp!788180 () Bool)

(assert (=> b!2469879 (= e!1566610 (and tp!788182 tp!788180))))

(assert (= (and b!2468850 ((_ is ElementMatch!7271) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469876))

(assert (= (and b!2468850 ((_ is Concat!11941) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469877))

(assert (= (and b!2468850 ((_ is Star!7271) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469878))

(assert (= (and b!2468850 ((_ is Union!7271) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469879))

(declare-fun b!2469882 () Bool)

(declare-fun e!1566611 () Bool)

(declare-fun tp!788188 () Bool)

(assert (=> b!2469882 (= e!1566611 tp!788188)))

(declare-fun b!2469881 () Bool)

(declare-fun tp!788189 () Bool)

(declare-fun tp!788186 () Bool)

(assert (=> b!2469881 (= e!1566611 (and tp!788189 tp!788186))))

(assert (=> b!2468850 (= tp!787953 e!1566611)))

(declare-fun b!2469880 () Bool)

(assert (=> b!2469880 (= e!1566611 tp_is_empty!11951)))

(declare-fun b!2469883 () Bool)

(declare-fun tp!788187 () Bool)

(declare-fun tp!788185 () Bool)

(assert (=> b!2469883 (= e!1566611 (and tp!788187 tp!788185))))

(assert (= (and b!2468850 ((_ is ElementMatch!7271) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469880))

(assert (= (and b!2468850 ((_ is Concat!11941) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469881))

(assert (= (and b!2468850 ((_ is Star!7271) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469882))

(assert (= (and b!2468850 ((_ is Union!7271) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469883))

(declare-fun b!2469888 () Bool)

(declare-fun e!1566618 () Bool)

(declare-fun tp!788193 () Bool)

(assert (=> b!2469888 (= e!1566618 tp!788193)))

(declare-fun b!2469887 () Bool)

(declare-fun tp!788194 () Bool)

(declare-fun tp!788191 () Bool)

(assert (=> b!2469887 (= e!1566618 (and tp!788194 tp!788191))))

(assert (=> b!2468820 (= tp!787923 e!1566618)))

(declare-fun b!2469886 () Bool)

(assert (=> b!2469886 (= e!1566618 tp_is_empty!11951)))

(declare-fun b!2469889 () Bool)

(declare-fun tp!788192 () Bool)

(declare-fun tp!788190 () Bool)

(assert (=> b!2469889 (= e!1566618 (and tp!788192 tp!788190))))

(assert (= (and b!2468820 ((_ is ElementMatch!7271) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469886))

(assert (= (and b!2468820 ((_ is Concat!11941) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469887))

(assert (= (and b!2468820 ((_ is Star!7271) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469888))

(assert (= (and b!2468820 ((_ is Union!7271) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469889))

(declare-fun b!2469896 () Bool)

(declare-fun e!1566623 () Bool)

(declare-fun tp!788198 () Bool)

(assert (=> b!2469896 (= e!1566623 tp!788198)))

(declare-fun b!2469895 () Bool)

(declare-fun tp!788199 () Bool)

(declare-fun tp!788196 () Bool)

(assert (=> b!2469895 (= e!1566623 (and tp!788199 tp!788196))))

(assert (=> b!2468820 (= tp!787920 e!1566623)))

(declare-fun b!2469894 () Bool)

(assert (=> b!2469894 (= e!1566623 tp_is_empty!11951)))

(declare-fun b!2469897 () Bool)

(declare-fun tp!788197 () Bool)

(declare-fun tp!788195 () Bool)

(assert (=> b!2469897 (= e!1566623 (and tp!788197 tp!788195))))

(assert (= (and b!2468820 ((_ is ElementMatch!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469894))

(assert (= (and b!2468820 ((_ is Concat!11941) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469895))

(assert (= (and b!2468820 ((_ is Star!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469896))

(assert (= (and b!2468820 ((_ is Union!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469897))

(declare-fun b!2469902 () Bool)

(declare-fun e!1566624 () Bool)

(declare-fun tp!788200 () Bool)

(assert (=> b!2469902 (= e!1566624 (and tp_is_empty!11951 tp!788200))))

(assert (=> b!2468785 (= tp!787885 e!1566624)))

(assert (= (and b!2468785 ((_ is Cons!28781) (t!209626 (t!209626 (originalCharacters!5249 t1!67))))) b!2469902))

(declare-fun b!2469909 () Bool)

(declare-fun e!1566629 () Bool)

(declare-fun tp!788204 () Bool)

(assert (=> b!2469909 (= e!1566629 tp!788204)))

(declare-fun b!2469907 () Bool)

(declare-fun tp!788205 () Bool)

(declare-fun tp!788202 () Bool)

(assert (=> b!2469907 (= e!1566629 (and tp!788205 tp!788202))))

(assert (=> b!2468862 (= tp!787971 e!1566629)))

(declare-fun b!2469906 () Bool)

(assert (=> b!2469906 (= e!1566629 tp_is_empty!11951)))

(declare-fun b!2469910 () Bool)

(declare-fun tp!788203 () Bool)

(declare-fun tp!788201 () Bool)

(assert (=> b!2469910 (= e!1566629 (and tp!788203 tp!788201))))

(assert (= (and b!2468862 ((_ is ElementMatch!7271) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469906))

(assert (= (and b!2468862 ((_ is Concat!11941) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469907))

(assert (= (and b!2468862 ((_ is Star!7271) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469909))

(assert (= (and b!2468862 ((_ is Union!7271) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469910))

(declare-fun b!2469917 () Bool)

(declare-fun e!1566634 () Bool)

(declare-fun tp!788209 () Bool)

(assert (=> b!2469917 (= e!1566634 tp!788209)))

(declare-fun b!2469916 () Bool)

(declare-fun tp!788210 () Bool)

(declare-fun tp!788207 () Bool)

(assert (=> b!2469916 (= e!1566634 (and tp!788210 tp!788207))))

(assert (=> b!2468862 (= tp!787968 e!1566634)))

(declare-fun b!2469915 () Bool)

(assert (=> b!2469915 (= e!1566634 tp_is_empty!11951)))

(declare-fun b!2469918 () Bool)

(declare-fun tp!788208 () Bool)

(declare-fun tp!788206 () Bool)

(assert (=> b!2469918 (= e!1566634 (and tp!788208 tp!788206))))

(assert (= (and b!2468862 ((_ is ElementMatch!7271) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469915))

(assert (= (and b!2468862 ((_ is Concat!11941) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469916))

(assert (= (and b!2468862 ((_ is Star!7271) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469917))

(assert (= (and b!2468862 ((_ is Union!7271) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469918))

(declare-fun b!2469919 () Bool)

(declare-fun e!1566635 () Bool)

(declare-fun tp!788211 () Bool)

(assert (=> b!2469919 (= e!1566635 (and tp_is_empty!11951 tp!788211))))

(assert (=> b!2468837 (= tp!787940 e!1566635)))

(assert (= (and b!2468837 ((_ is Cons!28781) (innerList!9257 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (value!143171 t1!67))))))) b!2469919))

(declare-fun b!2469922 () Bool)

(declare-fun e!1566636 () Bool)

(declare-fun tp!788215 () Bool)

(assert (=> b!2469922 (= e!1566636 tp!788215)))

(declare-fun b!2469921 () Bool)

(declare-fun tp!788216 () Bool)

(declare-fun tp!788213 () Bool)

(assert (=> b!2469921 (= e!1566636 (and tp!788216 tp!788213))))

(assert (=> b!2468770 (= tp!787874 e!1566636)))

(declare-fun b!2469920 () Bool)

(assert (=> b!2469920 (= e!1566636 tp_is_empty!11951)))

(declare-fun b!2469923 () Bool)

(declare-fun tp!788214 () Bool)

(declare-fun tp!788212 () Bool)

(assert (=> b!2469923 (= e!1566636 (and tp!788214 tp!788212))))

(assert (= (and b!2468770 ((_ is ElementMatch!7271) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469920))

(assert (= (and b!2468770 ((_ is Concat!11941) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469921))

(assert (= (and b!2468770 ((_ is Star!7271) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469922))

(assert (= (and b!2468770 ((_ is Union!7271) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469923))

(declare-fun b!2469926 () Bool)

(declare-fun e!1566637 () Bool)

(declare-fun tp!788220 () Bool)

(assert (=> b!2469926 (= e!1566637 tp!788220)))

(declare-fun b!2469925 () Bool)

(declare-fun tp!788221 () Bool)

(declare-fun tp!788218 () Bool)

(assert (=> b!2469925 (= e!1566637 (and tp!788221 tp!788218))))

(assert (=> b!2468770 (= tp!787871 e!1566637)))

(declare-fun b!2469924 () Bool)

(assert (=> b!2469924 (= e!1566637 tp_is_empty!11951)))

(declare-fun b!2469927 () Bool)

(declare-fun tp!788219 () Bool)

(declare-fun tp!788217 () Bool)

(assert (=> b!2469927 (= e!1566637 (and tp!788219 tp!788217))))

(assert (= (and b!2468770 ((_ is ElementMatch!7271) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469924))

(assert (= (and b!2468770 ((_ is Concat!11941) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469925))

(assert (= (and b!2468770 ((_ is Star!7271) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469926))

(assert (= (and b!2468770 ((_ is Union!7271) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2469927))

(declare-fun b!2469930 () Bool)

(declare-fun e!1566638 () Bool)

(declare-fun tp!788225 () Bool)

(assert (=> b!2469930 (= e!1566638 tp!788225)))

(declare-fun b!2469929 () Bool)

(declare-fun tp!788226 () Bool)

(declare-fun tp!788223 () Bool)

(assert (=> b!2469929 (= e!1566638 (and tp!788226 tp!788223))))

(assert (=> b!2468843 (= tp!787945 e!1566638)))

(declare-fun b!2469928 () Bool)

(assert (=> b!2469928 (= e!1566638 tp_is_empty!11951)))

(declare-fun b!2469931 () Bool)

(declare-fun tp!788224 () Bool)

(declare-fun tp!788222 () Bool)

(assert (=> b!2469931 (= e!1566638 (and tp!788224 tp!788222))))

(assert (= (and b!2468843 ((_ is ElementMatch!7271) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469928))

(assert (= (and b!2468843 ((_ is Concat!11941) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469929))

(assert (= (and b!2468843 ((_ is Star!7271) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469930))

(assert (= (and b!2468843 ((_ is Union!7271) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469931))

(declare-fun b!2469934 () Bool)

(declare-fun e!1566639 () Bool)

(declare-fun tp!788230 () Bool)

(assert (=> b!2469934 (= e!1566639 tp!788230)))

(declare-fun b!2469933 () Bool)

(declare-fun tp!788231 () Bool)

(declare-fun tp!788228 () Bool)

(assert (=> b!2469933 (= e!1566639 (and tp!788231 tp!788228))))

(assert (=> b!2468749 (= tp!787847 e!1566639)))

(declare-fun b!2469932 () Bool)

(assert (=> b!2469932 (= e!1566639 tp_is_empty!11951)))

(declare-fun b!2469935 () Bool)

(declare-fun tp!788229 () Bool)

(declare-fun tp!788227 () Bool)

(assert (=> b!2469935 (= e!1566639 (and tp!788229 tp!788227))))

(assert (= (and b!2468749 ((_ is ElementMatch!7271) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469932))

(assert (= (and b!2468749 ((_ is Concat!11941) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469933))

(assert (= (and b!2468749 ((_ is Star!7271) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469934))

(assert (= (and b!2468749 ((_ is Union!7271) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469935))

(declare-fun b!2469938 () Bool)

(declare-fun e!1566640 () Bool)

(declare-fun tp!788235 () Bool)

(assert (=> b!2469938 (= e!1566640 tp!788235)))

(declare-fun b!2469937 () Bool)

(declare-fun tp!788236 () Bool)

(declare-fun tp!788233 () Bool)

(assert (=> b!2469937 (= e!1566640 (and tp!788236 tp!788233))))

(assert (=> b!2468749 (= tp!787845 e!1566640)))

(declare-fun b!2469936 () Bool)

(assert (=> b!2469936 (= e!1566640 tp_is_empty!11951)))

(declare-fun b!2469939 () Bool)

(declare-fun tp!788234 () Bool)

(declare-fun tp!788232 () Bool)

(assert (=> b!2469939 (= e!1566640 (and tp!788234 tp!788232))))

(assert (= (and b!2468749 ((_ is ElementMatch!7271) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469936))

(assert (= (and b!2468749 ((_ is Concat!11941) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469937))

(assert (= (and b!2468749 ((_ is Star!7271) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469938))

(assert (= (and b!2468749 ((_ is Union!7271) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2469939))

(declare-fun b!2469942 () Bool)

(declare-fun e!1566641 () Bool)

(declare-fun tp!788240 () Bool)

(assert (=> b!2469942 (= e!1566641 tp!788240)))

(declare-fun b!2469941 () Bool)

(declare-fun tp!788241 () Bool)

(declare-fun tp!788238 () Bool)

(assert (=> b!2469941 (= e!1566641 (and tp!788241 tp!788238))))

(assert (=> b!2468852 (= tp!787954 e!1566641)))

(declare-fun b!2469940 () Bool)

(assert (=> b!2469940 (= e!1566641 tp_is_empty!11951)))

(declare-fun b!2469943 () Bool)

(declare-fun tp!788239 () Bool)

(declare-fun tp!788237 () Bool)

(assert (=> b!2469943 (= e!1566641 (and tp!788239 tp!788237))))

(assert (= (and b!2468852 ((_ is ElementMatch!7271) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469940))

(assert (= (and b!2468852 ((_ is Concat!11941) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469941))

(assert (= (and b!2468852 ((_ is Star!7271) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469942))

(assert (= (and b!2468852 ((_ is Union!7271) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469943))

(declare-fun b!2469946 () Bool)

(declare-fun e!1566642 () Bool)

(declare-fun tp!788245 () Bool)

(assert (=> b!2469946 (= e!1566642 tp!788245)))

(declare-fun b!2469945 () Bool)

(declare-fun tp!788246 () Bool)

(declare-fun tp!788243 () Bool)

(assert (=> b!2469945 (= e!1566642 (and tp!788246 tp!788243))))

(assert (=> b!2468852 (= tp!787952 e!1566642)))

(declare-fun b!2469944 () Bool)

(assert (=> b!2469944 (= e!1566642 tp_is_empty!11951)))

(declare-fun b!2469947 () Bool)

(declare-fun tp!788244 () Bool)

(declare-fun tp!788242 () Bool)

(assert (=> b!2469947 (= e!1566642 (and tp!788244 tp!788242))))

(assert (= (and b!2468852 ((_ is ElementMatch!7271) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469944))

(assert (= (and b!2468852 ((_ is Concat!11941) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469945))

(assert (= (and b!2468852 ((_ is Star!7271) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469946))

(assert (= (and b!2468852 ((_ is Union!7271) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2469947))

(declare-fun b!2469950 () Bool)

(declare-fun e!1566643 () Bool)

(declare-fun tp!788250 () Bool)

(assert (=> b!2469950 (= e!1566643 tp!788250)))

(declare-fun b!2469949 () Bool)

(declare-fun tp!788251 () Bool)

(declare-fun tp!788248 () Bool)

(assert (=> b!2469949 (= e!1566643 (and tp!788251 tp!788248))))

(assert (=> b!2468822 (= tp!787921 e!1566643)))

(declare-fun b!2469948 () Bool)

(assert (=> b!2469948 (= e!1566643 tp_is_empty!11951)))

(declare-fun b!2469951 () Bool)

(declare-fun tp!788249 () Bool)

(declare-fun tp!788247 () Bool)

(assert (=> b!2469951 (= e!1566643 (and tp!788249 tp!788247))))

(assert (= (and b!2468822 ((_ is ElementMatch!7271) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469948))

(assert (= (and b!2468822 ((_ is Concat!11941) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469949))

(assert (= (and b!2468822 ((_ is Star!7271) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469950))

(assert (= (and b!2468822 ((_ is Union!7271) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469951))

(declare-fun b!2469954 () Bool)

(declare-fun e!1566644 () Bool)

(declare-fun tp!788255 () Bool)

(assert (=> b!2469954 (= e!1566644 tp!788255)))

(declare-fun b!2469953 () Bool)

(declare-fun tp!788256 () Bool)

(declare-fun tp!788253 () Bool)

(assert (=> b!2469953 (= e!1566644 (and tp!788256 tp!788253))))

(assert (=> b!2468822 (= tp!787919 e!1566644)))

(declare-fun b!2469952 () Bool)

(assert (=> b!2469952 (= e!1566644 tp_is_empty!11951)))

(declare-fun b!2469955 () Bool)

(declare-fun tp!788254 () Bool)

(declare-fun tp!788252 () Bool)

(assert (=> b!2469955 (= e!1566644 (and tp!788254 tp!788252))))

(assert (= (and b!2468822 ((_ is ElementMatch!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469952))

(assert (= (and b!2468822 ((_ is Concat!11941) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469953))

(assert (= (and b!2468822 ((_ is Star!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469954))

(assert (= (and b!2468822 ((_ is Union!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2469955))

(declare-fun b!2469958 () Bool)

(declare-fun e!1566645 () Bool)

(declare-fun tp!788260 () Bool)

(assert (=> b!2469958 (= e!1566645 tp!788260)))

(declare-fun b!2469957 () Bool)

(declare-fun tp!788261 () Bool)

(declare-fun tp!788258 () Bool)

(assert (=> b!2469957 (= e!1566645 (and tp!788261 tp!788258))))

(assert (=> b!2468864 (= tp!787969 e!1566645)))

(declare-fun b!2469956 () Bool)

(assert (=> b!2469956 (= e!1566645 tp_is_empty!11951)))

(declare-fun b!2469959 () Bool)

(declare-fun tp!788259 () Bool)

(declare-fun tp!788257 () Bool)

(assert (=> b!2469959 (= e!1566645 (and tp!788259 tp!788257))))

(assert (= (and b!2468864 ((_ is ElementMatch!7271) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469956))

(assert (= (and b!2468864 ((_ is Concat!11941) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469957))

(assert (= (and b!2468864 ((_ is Star!7271) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469958))

(assert (= (and b!2468864 ((_ is Union!7271) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469959))

(declare-fun b!2469962 () Bool)

(declare-fun e!1566646 () Bool)

(declare-fun tp!788265 () Bool)

(assert (=> b!2469962 (= e!1566646 tp!788265)))

(declare-fun b!2469961 () Bool)

(declare-fun tp!788266 () Bool)

(declare-fun tp!788263 () Bool)

(assert (=> b!2469961 (= e!1566646 (and tp!788266 tp!788263))))

(assert (=> b!2468864 (= tp!787967 e!1566646)))

(declare-fun b!2469960 () Bool)

(assert (=> b!2469960 (= e!1566646 tp_is_empty!11951)))

(declare-fun b!2469963 () Bool)

(declare-fun tp!788264 () Bool)

(declare-fun tp!788262 () Bool)

(assert (=> b!2469963 (= e!1566646 (and tp!788264 tp!788262))))

(assert (= (and b!2468864 ((_ is ElementMatch!7271) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469960))

(assert (= (and b!2468864 ((_ is Concat!11941) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469961))

(assert (= (and b!2468864 ((_ is Star!7271) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469962))

(assert (= (and b!2468864 ((_ is Union!7271) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469963))

(declare-fun b!2469966 () Bool)

(declare-fun e!1566647 () Bool)

(declare-fun tp!788270 () Bool)

(assert (=> b!2469966 (= e!1566647 tp!788270)))

(declare-fun b!2469965 () Bool)

(declare-fun tp!788271 () Bool)

(declare-fun tp!788268 () Bool)

(assert (=> b!2469965 (= e!1566647 (and tp!788271 tp!788268))))

(assert (=> b!2468829 (= tp!787932 e!1566647)))

(declare-fun b!2469964 () Bool)

(assert (=> b!2469964 (= e!1566647 tp_is_empty!11951)))

(declare-fun b!2469967 () Bool)

(declare-fun tp!788269 () Bool)

(declare-fun tp!788267 () Bool)

(assert (=> b!2469967 (= e!1566647 (and tp!788269 tp!788267))))

(assert (= (and b!2468829 ((_ is ElementMatch!7271) (reg!7600 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2469964))

(assert (= (and b!2468829 ((_ is Concat!11941) (reg!7600 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2469965))

(assert (= (and b!2468829 ((_ is Star!7271) (reg!7600 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2469966))

(assert (= (and b!2468829 ((_ is Union!7271) (reg!7600 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2469967))

(declare-fun b!2469970 () Bool)

(declare-fun e!1566648 () Bool)

(declare-fun tp!788275 () Bool)

(assert (=> b!2469970 (= e!1566648 tp!788275)))

(declare-fun b!2469969 () Bool)

(declare-fun tp!788276 () Bool)

(declare-fun tp!788273 () Bool)

(assert (=> b!2469969 (= e!1566648 (and tp!788276 tp!788273))))

(assert (=> b!2468759 (= tp!787858 e!1566648)))

(declare-fun b!2469968 () Bool)

(assert (=> b!2469968 (= e!1566648 tp_is_empty!11951)))

(declare-fun b!2469971 () Bool)

(declare-fun tp!788274 () Bool)

(declare-fun tp!788272 () Bool)

(assert (=> b!2469971 (= e!1566648 (and tp!788274 tp!788272))))

(assert (= (and b!2468759 ((_ is ElementMatch!7271) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469968))

(assert (= (and b!2468759 ((_ is Concat!11941) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469969))

(assert (= (and b!2468759 ((_ is Star!7271) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469970))

(assert (= (and b!2468759 ((_ is Union!7271) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2469971))

(declare-fun b!2469974 () Bool)

(declare-fun e!1566649 () Bool)

(declare-fun tp!788280 () Bool)

(assert (=> b!2469974 (= e!1566649 tp!788280)))

(declare-fun b!2469973 () Bool)

(declare-fun tp!788281 () Bool)

(declare-fun tp!788278 () Bool)

(assert (=> b!2469973 (= e!1566649 (and tp!788281 tp!788278))))

(assert (=> b!2468859 (= tp!787965 e!1566649)))

(declare-fun b!2469972 () Bool)

(assert (=> b!2469972 (= e!1566649 tp_is_empty!11951)))

(declare-fun b!2469975 () Bool)

(declare-fun tp!788279 () Bool)

(declare-fun tp!788277 () Bool)

(assert (=> b!2469975 (= e!1566649 (and tp!788279 tp!788277))))

(assert (= (and b!2468859 ((_ is ElementMatch!7271) (reg!7600 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2469972))

(assert (= (and b!2468859 ((_ is Concat!11941) (reg!7600 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2469973))

(assert (= (and b!2468859 ((_ is Star!7271) (reg!7600 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2469974))

(assert (= (and b!2468859 ((_ is Union!7271) (reg!7600 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2469975))

(declare-fun b!2469978 () Bool)

(declare-fun e!1566650 () Bool)

(declare-fun tp!788285 () Bool)

(assert (=> b!2469978 (= e!1566650 tp!788285)))

(declare-fun b!2469977 () Bool)

(declare-fun tp!788286 () Bool)

(declare-fun tp!788283 () Bool)

(assert (=> b!2469977 (= e!1566650 (and tp!788286 tp!788283))))

(assert (=> b!2468787 (= tp!787890 e!1566650)))

(declare-fun b!2469976 () Bool)

(assert (=> b!2469976 (= e!1566650 tp_is_empty!11951)))

(declare-fun b!2469979 () Bool)

(declare-fun tp!788284 () Bool)

(declare-fun tp!788282 () Bool)

(assert (=> b!2469979 (= e!1566650 (and tp!788284 tp!788282))))

(assert (= (and b!2468787 ((_ is ElementMatch!7271) (regOne!15054 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469976))

(assert (= (and b!2468787 ((_ is Concat!11941) (regOne!15054 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469977))

(assert (= (and b!2468787 ((_ is Star!7271) (regOne!15054 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469978))

(assert (= (and b!2468787 ((_ is Union!7271) (regOne!15054 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469979))

(declare-fun b!2469982 () Bool)

(declare-fun e!1566651 () Bool)

(declare-fun tp!788290 () Bool)

(assert (=> b!2469982 (= e!1566651 tp!788290)))

(declare-fun b!2469981 () Bool)

(declare-fun tp!788291 () Bool)

(declare-fun tp!788288 () Bool)

(assert (=> b!2469981 (= e!1566651 (and tp!788291 tp!788288))))

(assert (=> b!2468787 (= tp!787887 e!1566651)))

(declare-fun b!2469980 () Bool)

(assert (=> b!2469980 (= e!1566651 tp_is_empty!11951)))

(declare-fun b!2469983 () Bool)

(declare-fun tp!788289 () Bool)

(declare-fun tp!788287 () Bool)

(assert (=> b!2469983 (= e!1566651 (and tp!788289 tp!788287))))

(assert (= (and b!2468787 ((_ is ElementMatch!7271) (regTwo!15054 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469980))

(assert (= (and b!2468787 ((_ is Concat!11941) (regTwo!15054 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469981))

(assert (= (and b!2468787 ((_ is Star!7271) (regTwo!15054 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469982))

(assert (= (and b!2468787 ((_ is Union!7271) (regTwo!15054 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2469983))

(declare-fun b!2469987 () Bool)

(declare-fun b_free!71285 () Bool)

(declare-fun b_next!71989 () Bool)

(assert (=> b!2469987 (= b_free!71285 (not b_next!71989))))

(declare-fun tp!788294 () Bool)

(declare-fun b_and!187109 () Bool)

(assert (=> b!2469987 (= tp!788294 b_and!187109)))

(declare-fun b_free!71287 () Bool)

(declare-fun b_next!71991 () Bool)

(assert (=> b!2469987 (= b_free!71287 (not b_next!71991))))

(declare-fun t!209853 () Bool)

(declare-fun tb!139729 () Bool)

(assert (=> (and b!2469987 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) t!209853) tb!139729))

(declare-fun result!172440 () Bool)

(assert (= result!172440 result!172316))

(assert (=> b!2468725 t!209853))

(declare-fun t!209855 () Bool)

(declare-fun tb!139731 () Bool)

(assert (=> (and b!2469987 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) t!209855) tb!139731))

(declare-fun result!172442 () Bool)

(assert (= result!172442 result!172288))

(assert (=> d!710999 t!209855))

(declare-fun t!209857 () Bool)

(declare-fun tb!139733 () Bool)

(assert (=> (and b!2469987 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) t!209857) tb!139733))

(declare-fun result!172444 () Bool)

(assert (= result!172444 result!172376))

(assert (=> b!2469082 t!209857))

(declare-fun tb!139735 () Bool)

(declare-fun t!209859 () Bool)

(assert (=> (and b!2469987 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) t!209859) tb!139735))

(declare-fun result!172446 () Bool)

(assert (= result!172446 result!172280))

(assert (=> d!710611 t!209859))

(assert (=> b!2468474 t!209859))

(declare-fun t!209861 () Bool)

(declare-fun tb!139737 () Bool)

(assert (=> (and b!2469987 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) t!209861) tb!139737))

(declare-fun result!172448 () Bool)

(assert (= result!172448 result!172270))

(assert (=> d!710621 t!209861))

(assert (=> b!2468481 t!209855))

(assert (=> d!710475 t!209853))

(declare-fun t!209863 () Bool)

(declare-fun tb!139739 () Bool)

(assert (=> (and b!2469987 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) t!209863) tb!139739))

(declare-fun result!172450 () Bool)

(assert (= result!172450 result!172392))

(assert (=> d!710761 t!209863))

(assert (=> b!2468467 t!209861))

(declare-fun b_and!187111 () Bool)

(declare-fun tp!788292 () Bool)

(assert (=> b!2469987 (= tp!788292 (and (=> t!209855 result!172442) (=> t!209853 result!172440) (=> t!209863 result!172450) (=> t!209859 result!172446) (=> t!209861 result!172448) (=> t!209857 result!172444) b_and!187111))))

(declare-fun e!1566655 () Bool)

(declare-fun b!2469986 () Bool)

(declare-fun tp!788296 () Bool)

(declare-fun e!1566657 () Bool)

(assert (=> b!2469986 (= e!1566657 (and tp!788296 (inv!38865 (tag!4973 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (inv!38868 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) e!1566655))))

(declare-fun b!2469985 () Bool)

(declare-fun e!1566654 () Bool)

(declare-fun tp!788295 () Bool)

(assert (=> b!2469985 (= e!1566654 (and (inv!21 (value!143171 (h!34183 (t!209627 (t!209627 (t!209627 l!6611)))))) e!1566657 tp!788295))))

(assert (=> b!2469987 (= e!1566655 (and tp!788294 tp!788292))))

(declare-fun e!1566652 () Bool)

(assert (=> b!2468765 (= tp!787866 e!1566652)))

(declare-fun tp!788293 () Bool)

(declare-fun b!2469984 () Bool)

(assert (=> b!2469984 (= e!1566652 (and (inv!38869 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))) e!1566654 tp!788293))))

(assert (= b!2469986 b!2469987))

(assert (= b!2469985 b!2469986))

(assert (= b!2469984 b!2469985))

(assert (= (and b!2468765 ((_ is Cons!28782) (t!209627 (t!209627 (t!209627 l!6611))))) b!2469984))

(declare-fun m!2839673 () Bool)

(assert (=> b!2469986 m!2839673))

(declare-fun m!2839675 () Bool)

(assert (=> b!2469986 m!2839675))

(declare-fun m!2839677 () Bool)

(assert (=> b!2469985 m!2839677))

(declare-fun m!2839679 () Bool)

(assert (=> b!2469984 m!2839679))

(declare-fun b!2469990 () Bool)

(declare-fun e!1566658 () Bool)

(declare-fun tp!788300 () Bool)

(assert (=> b!2469990 (= e!1566658 tp!788300)))

(declare-fun b!2469989 () Bool)

(declare-fun tp!788301 () Bool)

(declare-fun tp!788298 () Bool)

(assert (=> b!2469989 (= e!1566658 (and tp!788301 tp!788298))))

(assert (=> b!2468871 (= tp!787980 e!1566658)))

(declare-fun b!2469988 () Bool)

(assert (=> b!2469988 (= e!1566658 tp_is_empty!11951)))

(declare-fun b!2469991 () Bool)

(declare-fun tp!788299 () Bool)

(declare-fun tp!788297 () Bool)

(assert (=> b!2469991 (= e!1566658 (and tp!788299 tp!788297))))

(assert (= (and b!2468871 ((_ is ElementMatch!7271) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469988))

(assert (= (and b!2468871 ((_ is Concat!11941) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469989))

(assert (= (and b!2468871 ((_ is Star!7271) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469990))

(assert (= (and b!2468871 ((_ is Union!7271) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2469991))

(declare-fun b!2470003 () Bool)

(declare-fun e!1566668 () Bool)

(declare-fun tp!788305 () Bool)

(assert (=> b!2470003 (= e!1566668 tp!788305)))

(declare-fun b!2470002 () Bool)

(declare-fun tp!788306 () Bool)

(declare-fun tp!788303 () Bool)

(assert (=> b!2470002 (= e!1566668 (and tp!788306 tp!788303))))

(assert (=> b!2468802 (= tp!787904 e!1566668)))

(declare-fun b!2470001 () Bool)

(assert (=> b!2470001 (= e!1566668 tp_is_empty!11951)))

(declare-fun b!2470004 () Bool)

(declare-fun tp!788304 () Bool)

(declare-fun tp!788302 () Bool)

(assert (=> b!2470004 (= e!1566668 (and tp!788304 tp!788302))))

(assert (= (and b!2468802 ((_ is ElementMatch!7271) (reg!7600 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470001))

(assert (= (and b!2468802 ((_ is Concat!11941) (reg!7600 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470002))

(assert (= (and b!2468802 ((_ is Star!7271) (reg!7600 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470003))

(assert (= (and b!2468802 ((_ is Union!7271) (reg!7600 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470004))

(declare-fun b!2470007 () Bool)

(declare-fun e!1566669 () Bool)

(declare-fun tp!788310 () Bool)

(assert (=> b!2470007 (= e!1566669 tp!788310)))

(declare-fun b!2470006 () Bool)

(declare-fun tp!788311 () Bool)

(declare-fun tp!788308 () Bool)

(assert (=> b!2470006 (= e!1566669 (and tp!788311 tp!788308))))

(assert (=> b!2468833 (= tp!787937 e!1566669)))

(declare-fun b!2470005 () Bool)

(assert (=> b!2470005 (= e!1566669 tp_is_empty!11951)))

(declare-fun b!2470008 () Bool)

(declare-fun tp!788309 () Bool)

(declare-fun tp!788307 () Bool)

(assert (=> b!2470008 (= e!1566669 (and tp!788309 tp!788307))))

(assert (= (and b!2468833 ((_ is ElementMatch!7271) (reg!7600 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470005))

(assert (= (and b!2468833 ((_ is Concat!11941) (reg!7600 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470006))

(assert (= (and b!2468833 ((_ is Star!7271) (reg!7600 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470007))

(assert (= (and b!2468833 ((_ is Union!7271) (reg!7600 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470008))

(declare-fun b!2470011 () Bool)

(declare-fun e!1566670 () Bool)

(declare-fun tp!788315 () Bool)

(assert (=> b!2470011 (= e!1566670 tp!788315)))

(declare-fun b!2470010 () Bool)

(declare-fun tp!788316 () Bool)

(declare-fun tp!788313 () Bool)

(assert (=> b!2470010 (= e!1566670 (and tp!788316 tp!788313))))

(assert (=> b!2468811 (= tp!787908 e!1566670)))

(declare-fun b!2470009 () Bool)

(assert (=> b!2470009 (= e!1566670 tp_is_empty!11951)))

(declare-fun b!2470012 () Bool)

(declare-fun tp!788314 () Bool)

(declare-fun tp!788312 () Bool)

(assert (=> b!2470012 (= e!1566670 (and tp!788314 tp!788312))))

(assert (= (and b!2468811 ((_ is ElementMatch!7271) (regOne!15055 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470009))

(assert (= (and b!2468811 ((_ is Concat!11941) (regOne!15055 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470010))

(assert (= (and b!2468811 ((_ is Star!7271) (regOne!15055 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470011))

(assert (= (and b!2468811 ((_ is Union!7271) (regOne!15055 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470012))

(declare-fun b!2470015 () Bool)

(declare-fun e!1566671 () Bool)

(declare-fun tp!788320 () Bool)

(assert (=> b!2470015 (= e!1566671 tp!788320)))

(declare-fun b!2470014 () Bool)

(declare-fun tp!788321 () Bool)

(declare-fun tp!788318 () Bool)

(assert (=> b!2470014 (= e!1566671 (and tp!788321 tp!788318))))

(assert (=> b!2468811 (= tp!787906 e!1566671)))

(declare-fun b!2470013 () Bool)

(assert (=> b!2470013 (= e!1566671 tp_is_empty!11951)))

(declare-fun b!2470016 () Bool)

(declare-fun tp!788319 () Bool)

(declare-fun tp!788317 () Bool)

(assert (=> b!2470016 (= e!1566671 (and tp!788319 tp!788317))))

(assert (= (and b!2468811 ((_ is ElementMatch!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470013))

(assert (= (and b!2468811 ((_ is Concat!11941) (regTwo!15055 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470014))

(assert (= (and b!2468811 ((_ is Star!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470015))

(assert (= (and b!2468811 ((_ is Union!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470016))

(declare-fun b!2470019 () Bool)

(declare-fun e!1566672 () Bool)

(declare-fun tp!788325 () Bool)

(assert (=> b!2470019 (= e!1566672 tp!788325)))

(declare-fun b!2470018 () Bool)

(declare-fun tp!788326 () Bool)

(declare-fun tp!788323 () Bool)

(assert (=> b!2470018 (= e!1566672 (and tp!788326 tp!788323))))

(assert (=> b!2468751 (= tp!787854 e!1566672)))

(declare-fun b!2470017 () Bool)

(assert (=> b!2470017 (= e!1566672 tp_is_empty!11951)))

(declare-fun b!2470020 () Bool)

(declare-fun tp!788324 () Bool)

(declare-fun tp!788322 () Bool)

(assert (=> b!2470020 (= e!1566672 (and tp!788324 tp!788322))))

(assert (= (and b!2468751 ((_ is ElementMatch!7271) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470017))

(assert (= (and b!2468751 ((_ is Concat!11941) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470018))

(assert (= (and b!2468751 ((_ is Star!7271) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470019))

(assert (= (and b!2468751 ((_ is Union!7271) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470020))

(declare-fun b!2470023 () Bool)

(declare-fun e!1566673 () Bool)

(declare-fun tp!788330 () Bool)

(assert (=> b!2470023 (= e!1566673 tp!788330)))

(declare-fun b!2470022 () Bool)

(declare-fun tp!788331 () Bool)

(declare-fun tp!788328 () Bool)

(assert (=> b!2470022 (= e!1566673 (and tp!788331 tp!788328))))

(assert (=> b!2468751 (= tp!787851 e!1566673)))

(declare-fun b!2470021 () Bool)

(assert (=> b!2470021 (= e!1566673 tp_is_empty!11951)))

(declare-fun b!2470024 () Bool)

(declare-fun tp!788329 () Bool)

(declare-fun tp!788327 () Bool)

(assert (=> b!2470024 (= e!1566673 (and tp!788329 tp!788327))))

(assert (= (and b!2468751 ((_ is ElementMatch!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470021))

(assert (= (and b!2468751 ((_ is Concat!11941) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470022))

(assert (= (and b!2468751 ((_ is Star!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470023))

(assert (= (and b!2468751 ((_ is Union!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470024))

(declare-fun b!2470027 () Bool)

(declare-fun e!1566674 () Bool)

(declare-fun tp!788335 () Bool)

(assert (=> b!2470027 (= e!1566674 tp!788335)))

(declare-fun b!2470026 () Bool)

(declare-fun tp!788336 () Bool)

(declare-fun tp!788333 () Bool)

(assert (=> b!2470026 (= e!1566674 (and tp!788336 tp!788333))))

(assert (=> b!2468854 (= tp!787961 e!1566674)))

(declare-fun b!2470025 () Bool)

(assert (=> b!2470025 (= e!1566674 tp_is_empty!11951)))

(declare-fun b!2470028 () Bool)

(declare-fun tp!788334 () Bool)

(declare-fun tp!788332 () Bool)

(assert (=> b!2470028 (= e!1566674 (and tp!788334 tp!788332))))

(assert (= (and b!2468854 ((_ is ElementMatch!7271) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470025))

(assert (= (and b!2468854 ((_ is Concat!11941) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470026))

(assert (= (and b!2468854 ((_ is Star!7271) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470027))

(assert (= (and b!2468854 ((_ is Union!7271) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470028))

(declare-fun b!2470031 () Bool)

(declare-fun e!1566675 () Bool)

(declare-fun tp!788340 () Bool)

(assert (=> b!2470031 (= e!1566675 tp!788340)))

(declare-fun b!2470030 () Bool)

(declare-fun tp!788341 () Bool)

(declare-fun tp!788338 () Bool)

(assert (=> b!2470030 (= e!1566675 (and tp!788341 tp!788338))))

(assert (=> b!2468854 (= tp!787958 e!1566675)))

(declare-fun b!2470029 () Bool)

(assert (=> b!2470029 (= e!1566675 tp_is_empty!11951)))

(declare-fun b!2470032 () Bool)

(declare-fun tp!788339 () Bool)

(declare-fun tp!788337 () Bool)

(assert (=> b!2470032 (= e!1566675 (and tp!788339 tp!788337))))

(assert (= (and b!2468854 ((_ is ElementMatch!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470029))

(assert (= (and b!2468854 ((_ is Concat!11941) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470030))

(assert (= (and b!2468854 ((_ is Star!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470031))

(assert (= (and b!2468854 ((_ is Union!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470032))

(declare-fun b!2470035 () Bool)

(declare-fun e!1566676 () Bool)

(declare-fun tp!788345 () Bool)

(assert (=> b!2470035 (= e!1566676 tp!788345)))

(declare-fun b!2470034 () Bool)

(declare-fun tp!788346 () Bool)

(declare-fun tp!788343 () Bool)

(assert (=> b!2470034 (= e!1566676 (and tp!788346 tp!788343))))

(assert (=> b!2468789 (= tp!787888 e!1566676)))

(declare-fun b!2470033 () Bool)

(assert (=> b!2470033 (= e!1566676 tp_is_empty!11951)))

(declare-fun b!2470036 () Bool)

(declare-fun tp!788344 () Bool)

(declare-fun tp!788342 () Bool)

(assert (=> b!2470036 (= e!1566676 (and tp!788344 tp!788342))))

(assert (= (and b!2468789 ((_ is ElementMatch!7271) (regOne!15055 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470033))

(assert (= (and b!2468789 ((_ is Concat!11941) (regOne!15055 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470034))

(assert (= (and b!2468789 ((_ is Star!7271) (regOne!15055 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470035))

(assert (= (and b!2468789 ((_ is Union!7271) (regOne!15055 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470036))

(declare-fun b!2470039 () Bool)

(declare-fun e!1566677 () Bool)

(declare-fun tp!788350 () Bool)

(assert (=> b!2470039 (= e!1566677 tp!788350)))

(declare-fun b!2470038 () Bool)

(declare-fun tp!788351 () Bool)

(declare-fun tp!788348 () Bool)

(assert (=> b!2470038 (= e!1566677 (and tp!788351 tp!788348))))

(assert (=> b!2468789 (= tp!787886 e!1566677)))

(declare-fun b!2470037 () Bool)

(assert (=> b!2470037 (= e!1566677 tp_is_empty!11951)))

(declare-fun b!2470040 () Bool)

(declare-fun tp!788349 () Bool)

(declare-fun tp!788347 () Bool)

(assert (=> b!2470040 (= e!1566677 (and tp!788349 tp!788347))))

(assert (= (and b!2468789 ((_ is ElementMatch!7271) (regTwo!15055 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470037))

(assert (= (and b!2468789 ((_ is Concat!11941) (regTwo!15055 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470038))

(assert (= (and b!2468789 ((_ is Star!7271) (regTwo!15055 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470039))

(assert (= (and b!2468789 ((_ is Union!7271) (regTwo!15055 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470040))

(declare-fun b!2470043 () Bool)

(declare-fun e!1566678 () Bool)

(declare-fun tp!788355 () Bool)

(assert (=> b!2470043 (= e!1566678 tp!788355)))

(declare-fun b!2470042 () Bool)

(declare-fun tp!788356 () Bool)

(declare-fun tp!788353 () Bool)

(assert (=> b!2470042 (= e!1566678 (and tp!788356 tp!788353))))

(assert (=> b!2468796 (= tp!787899 e!1566678)))

(declare-fun b!2470041 () Bool)

(assert (=> b!2470041 (= e!1566678 tp_is_empty!11951)))

(declare-fun b!2470044 () Bool)

(declare-fun tp!788354 () Bool)

(declare-fun tp!788352 () Bool)

(assert (=> b!2470044 (= e!1566678 (and tp!788354 tp!788352))))

(assert (= (and b!2468796 ((_ is ElementMatch!7271) (reg!7600 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470041))

(assert (= (and b!2468796 ((_ is Concat!11941) (reg!7600 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470042))

(assert (= (and b!2468796 ((_ is Star!7271) (reg!7600 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470043))

(assert (= (and b!2468796 ((_ is Union!7271) (reg!7600 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470044))

(declare-fun b!2470047 () Bool)

(declare-fun e!1566679 () Bool)

(declare-fun tp!788360 () Bool)

(assert (=> b!2470047 (= e!1566679 tp!788360)))

(declare-fun b!2470046 () Bool)

(declare-fun tp!788361 () Bool)

(declare-fun tp!788358 () Bool)

(assert (=> b!2470046 (= e!1566679 (and tp!788361 tp!788358))))

(assert (=> b!2468767 (= tp!787869 e!1566679)))

(declare-fun b!2470045 () Bool)

(assert (=> b!2470045 (= e!1566679 tp_is_empty!11951)))

(declare-fun b!2470048 () Bool)

(declare-fun tp!788359 () Bool)

(declare-fun tp!788357 () Bool)

(assert (=> b!2470048 (= e!1566679 (and tp!788359 tp!788357))))

(assert (= (and b!2468767 ((_ is ElementMatch!7271) (regex!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) b!2470045))

(assert (= (and b!2468767 ((_ is Concat!11941) (regex!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) b!2470046))

(assert (= (and b!2468767 ((_ is Star!7271) (regex!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) b!2470047))

(assert (= (and b!2468767 ((_ is Union!7271) (regex!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) b!2470048))

(declare-fun b!2470051 () Bool)

(declare-fun e!1566680 () Bool)

(declare-fun tp!788365 () Bool)

(assert (=> b!2470051 (= e!1566680 tp!788365)))

(declare-fun b!2470050 () Bool)

(declare-fun tp!788366 () Bool)

(declare-fun tp!788363 () Bool)

(assert (=> b!2470050 (= e!1566680 (and tp!788366 tp!788363))))

(assert (=> b!2468866 (= tp!787976 e!1566680)))

(declare-fun b!2470049 () Bool)

(assert (=> b!2470049 (= e!1566680 tp_is_empty!11951)))

(declare-fun b!2470052 () Bool)

(declare-fun tp!788364 () Bool)

(declare-fun tp!788362 () Bool)

(assert (=> b!2470052 (= e!1566680 (and tp!788364 tp!788362))))

(assert (= (and b!2468866 ((_ is ElementMatch!7271) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470049))

(assert (= (and b!2468866 ((_ is Concat!11941) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470050))

(assert (= (and b!2468866 ((_ is Star!7271) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470051))

(assert (= (and b!2468866 ((_ is Union!7271) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470052))

(declare-fun b!2470055 () Bool)

(declare-fun e!1566681 () Bool)

(declare-fun tp!788370 () Bool)

(assert (=> b!2470055 (= e!1566681 tp!788370)))

(declare-fun b!2470054 () Bool)

(declare-fun tp!788371 () Bool)

(declare-fun tp!788368 () Bool)

(assert (=> b!2470054 (= e!1566681 (and tp!788371 tp!788368))))

(assert (=> b!2468866 (= tp!787973 e!1566681)))

(declare-fun b!2470053 () Bool)

(assert (=> b!2470053 (= e!1566681 tp_is_empty!11951)))

(declare-fun b!2470056 () Bool)

(declare-fun tp!788369 () Bool)

(declare-fun tp!788367 () Bool)

(assert (=> b!2470056 (= e!1566681 (and tp!788369 tp!788367))))

(assert (= (and b!2468866 ((_ is ElementMatch!7271) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470053))

(assert (= (and b!2468866 ((_ is Concat!11941) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470054))

(assert (= (and b!2468866 ((_ is Star!7271) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470055))

(assert (= (and b!2468866 ((_ is Union!7271) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470056))

(declare-fun b!2470057 () Bool)

(declare-fun e!1566682 () Bool)

(declare-fun tp!788372 () Bool)

(assert (=> b!2470057 (= e!1566682 (and tp_is_empty!11951 tp!788372))))

(assert (=> b!2468826 (= tp!787928 e!1566682)))

(assert (= (and b!2468826 ((_ is Cons!28781) (t!209626 (originalCharacters!5249 (h!34183 (t!209627 l!6611)))))) b!2470057))

(declare-fun b!2470060 () Bool)

(declare-fun e!1566683 () Bool)

(declare-fun tp!788376 () Bool)

(assert (=> b!2470060 (= e!1566683 tp!788376)))

(declare-fun b!2470059 () Bool)

(declare-fun tp!788377 () Bool)

(declare-fun tp!788374 () Bool)

(assert (=> b!2470059 (= e!1566683 (and tp!788377 tp!788374))))

(assert (=> b!2468847 (= tp!787950 e!1566683)))

(declare-fun b!2470058 () Bool)

(assert (=> b!2470058 (= e!1566683 tp_is_empty!11951)))

(declare-fun b!2470061 () Bool)

(declare-fun tp!788375 () Bool)

(declare-fun tp!788373 () Bool)

(assert (=> b!2470061 (= e!1566683 (and tp!788375 tp!788373))))

(assert (= (and b!2468847 ((_ is ElementMatch!7271) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470058))

(assert (= (and b!2468847 ((_ is Concat!11941) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470059))

(assert (= (and b!2468847 ((_ is Star!7271) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470060))

(assert (= (and b!2468847 ((_ is Union!7271) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470061))

(declare-fun b!2470064 () Bool)

(declare-fun e!1566684 () Bool)

(declare-fun tp!788381 () Bool)

(assert (=> b!2470064 (= e!1566684 tp!788381)))

(declare-fun b!2470063 () Bool)

(declare-fun tp!788382 () Bool)

(declare-fun tp!788379 () Bool)

(assert (=> b!2470063 (= e!1566684 (and tp!788382 tp!788379))))

(assert (=> b!2468817 (= tp!787917 e!1566684)))

(declare-fun b!2470062 () Bool)

(assert (=> b!2470062 (= e!1566684 tp_is_empty!11951)))

(declare-fun b!2470065 () Bool)

(declare-fun tp!788380 () Bool)

(declare-fun tp!788378 () Bool)

(assert (=> b!2470065 (= e!1566684 (and tp!788380 tp!788378))))

(assert (= (and b!2468817 ((_ is ElementMatch!7271) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470062))

(assert (= (and b!2468817 ((_ is Concat!11941) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470063))

(assert (= (and b!2468817 ((_ is Star!7271) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470064))

(assert (= (and b!2468817 ((_ is Union!7271) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470065))

(declare-fun b!2470068 () Bool)

(declare-fun e!1566685 () Bool)

(declare-fun tp!788386 () Bool)

(assert (=> b!2470068 (= e!1566685 tp!788386)))

(declare-fun b!2470067 () Bool)

(declare-fun tp!788387 () Bool)

(declare-fun tp!788384 () Bool)

(assert (=> b!2470067 (= e!1566685 (and tp!788387 tp!788384))))

(assert (=> b!2468753 (= tp!787852 e!1566685)))

(declare-fun b!2470066 () Bool)

(assert (=> b!2470066 (= e!1566685 tp_is_empty!11951)))

(declare-fun b!2470069 () Bool)

(declare-fun tp!788385 () Bool)

(declare-fun tp!788383 () Bool)

(assert (=> b!2470069 (= e!1566685 (and tp!788385 tp!788383))))

(assert (= (and b!2468753 ((_ is ElementMatch!7271) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470066))

(assert (= (and b!2468753 ((_ is Concat!11941) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470067))

(assert (= (and b!2468753 ((_ is Star!7271) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470068))

(assert (= (and b!2468753 ((_ is Union!7271) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470069))

(declare-fun b!2470072 () Bool)

(declare-fun e!1566686 () Bool)

(declare-fun tp!788391 () Bool)

(assert (=> b!2470072 (= e!1566686 tp!788391)))

(declare-fun b!2470071 () Bool)

(declare-fun tp!788392 () Bool)

(declare-fun tp!788389 () Bool)

(assert (=> b!2470071 (= e!1566686 (and tp!788392 tp!788389))))

(assert (=> b!2468753 (= tp!787850 e!1566686)))

(declare-fun b!2470070 () Bool)

(assert (=> b!2470070 (= e!1566686 tp_is_empty!11951)))

(declare-fun b!2470073 () Bool)

(declare-fun tp!788390 () Bool)

(declare-fun tp!788388 () Bool)

(assert (=> b!2470073 (= e!1566686 (and tp!788390 tp!788388))))

(assert (= (and b!2468753 ((_ is ElementMatch!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470070))

(assert (= (and b!2468753 ((_ is Concat!11941) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470071))

(assert (= (and b!2468753 ((_ is Star!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470072))

(assert (= (and b!2468753 ((_ is Union!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470073))

(declare-fun b!2470076 () Bool)

(declare-fun e!1566687 () Bool)

(declare-fun tp!788396 () Bool)

(assert (=> b!2470076 (= e!1566687 tp!788396)))

(declare-fun b!2470075 () Bool)

(declare-fun tp!788397 () Bool)

(declare-fun tp!788394 () Bool)

(assert (=> b!2470075 (= e!1566687 (and tp!788397 tp!788394))))

(assert (=> b!2468856 (= tp!787959 e!1566687)))

(declare-fun b!2470074 () Bool)

(assert (=> b!2470074 (= e!1566687 tp_is_empty!11951)))

(declare-fun b!2470077 () Bool)

(declare-fun tp!788395 () Bool)

(declare-fun tp!788393 () Bool)

(assert (=> b!2470077 (= e!1566687 (and tp!788395 tp!788393))))

(assert (= (and b!2468856 ((_ is ElementMatch!7271) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470074))

(assert (= (and b!2468856 ((_ is Concat!11941) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470075))

(assert (= (and b!2468856 ((_ is Star!7271) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470076))

(assert (= (and b!2468856 ((_ is Union!7271) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470077))

(declare-fun b!2470080 () Bool)

(declare-fun e!1566688 () Bool)

(declare-fun tp!788401 () Bool)

(assert (=> b!2470080 (= e!1566688 tp!788401)))

(declare-fun b!2470079 () Bool)

(declare-fun tp!788402 () Bool)

(declare-fun tp!788399 () Bool)

(assert (=> b!2470079 (= e!1566688 (and tp!788402 tp!788399))))

(assert (=> b!2468856 (= tp!787957 e!1566688)))

(declare-fun b!2470078 () Bool)

(assert (=> b!2470078 (= e!1566688 tp_is_empty!11951)))

(declare-fun b!2470081 () Bool)

(declare-fun tp!788400 () Bool)

(declare-fun tp!788398 () Bool)

(assert (=> b!2470081 (= e!1566688 (and tp!788400 tp!788398))))

(assert (= (and b!2468856 ((_ is ElementMatch!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470078))

(assert (= (and b!2468856 ((_ is Concat!11941) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470079))

(assert (= (and b!2468856 ((_ is Star!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470080))

(assert (= (and b!2468856 ((_ is Union!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470081))

(declare-fun b!2470084 () Bool)

(declare-fun e!1566689 () Bool)

(declare-fun tp!788406 () Bool)

(assert (=> b!2470084 (= e!1566689 tp!788406)))

(declare-fun b!2470083 () Bool)

(declare-fun tp!788407 () Bool)

(declare-fun tp!788404 () Bool)

(assert (=> b!2470083 (= e!1566689 (and tp!788407 tp!788404))))

(assert (=> b!2468824 (= tp!787927 e!1566689)))

(declare-fun b!2470082 () Bool)

(assert (=> b!2470082 (= e!1566689 tp_is_empty!11951)))

(declare-fun b!2470085 () Bool)

(declare-fun tp!788405 () Bool)

(declare-fun tp!788403 () Bool)

(assert (=> b!2470085 (= e!1566689 (and tp!788405 tp!788403))))

(assert (= (and b!2468824 ((_ is ElementMatch!7271) (regex!4483 (h!34184 (t!209628 (t!209628 rules!4472)))))) b!2470082))

(assert (= (and b!2468824 ((_ is Concat!11941) (regex!4483 (h!34184 (t!209628 (t!209628 rules!4472)))))) b!2470083))

(assert (= (and b!2468824 ((_ is Star!7271) (regex!4483 (h!34184 (t!209628 (t!209628 rules!4472)))))) b!2470084))

(assert (= (and b!2468824 ((_ is Union!7271) (regex!4483 (h!34184 (t!209628 (t!209628 rules!4472)))))) b!2470085))

(declare-fun b!2470090 () Bool)

(declare-fun e!1566692 () Bool)

(declare-fun tp!788408 () Bool)

(declare-fun tp!788410 () Bool)

(assert (=> b!2470090 (= e!1566692 (and (inv!38872 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611))))))) tp!788410 (inv!38872 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611))))))) tp!788408))))

(declare-fun b!2470092 () Bool)

(declare-fun e!1566693 () Bool)

(declare-fun tp!788409 () Bool)

(assert (=> b!2470092 (= e!1566693 tp!788409)))

(declare-fun b!2470091 () Bool)

(assert (=> b!2470091 (= e!1566692 (and (inv!38878 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611))))))) e!1566693))))

(assert (=> b!2468564 (= tp!787842 (and (inv!38872 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611)))))) e!1566692))))

(assert (= (and b!2468564 ((_ is Node!9197) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611))))))) b!2470090))

(assert (= b!2470091 b!2470092))

(assert (= (and b!2468564 ((_ is Leaf!13746) (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (value!143171 (h!34183 (t!209627 l!6611))))))) b!2470091))

(declare-fun m!2839713 () Bool)

(assert (=> b!2470090 m!2839713))

(declare-fun m!2839715 () Bool)

(assert (=> b!2470090 m!2839715))

(declare-fun m!2839717 () Bool)

(assert (=> b!2470091 m!2839717))

(assert (=> b!2468564 m!2837695))

(declare-fun b!2470093 () Bool)

(declare-fun e!1566694 () Bool)

(declare-fun tp!788413 () Bool)

(declare-fun tp!788411 () Bool)

(assert (=> b!2470093 (= e!1566694 (and (inv!38872 (left!22085 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) tp!788413 (inv!38872 (right!22415 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) tp!788411))))

(declare-fun b!2470095 () Bool)

(declare-fun e!1566695 () Bool)

(declare-fun tp!788412 () Bool)

(assert (=> b!2470095 (= e!1566695 tp!788412)))

(declare-fun b!2470094 () Bool)

(assert (=> b!2470094 (= e!1566694 (and (inv!38878 (xs!12177 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) e!1566695))))

(assert (=> b!2468812 (= tp!787913 (and (inv!38872 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) e!1566694))))

(assert (= (and b!2468812 ((_ is Node!9197) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) b!2470093))

(assert (= b!2470094 b!2470095))

(assert (= (and b!2468812 ((_ is Leaf!13746) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) b!2470094))

(declare-fun m!2839719 () Bool)

(assert (=> b!2470093 m!2839719))

(declare-fun m!2839721 () Bool)

(assert (=> b!2470093 m!2839721))

(declare-fun m!2839723 () Bool)

(assert (=> b!2470094 m!2839723))

(assert (=> b!2468812 m!2838167))

(declare-fun tp!788414 () Bool)

(declare-fun tp!788416 () Bool)

(declare-fun e!1566697 () Bool)

(declare-fun b!2470098 () Bool)

(assert (=> b!2470098 (= e!1566697 (and (inv!38872 (left!22085 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) tp!788416 (inv!38872 (right!22415 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) tp!788414))))

(declare-fun b!2470100 () Bool)

(declare-fun e!1566698 () Bool)

(declare-fun tp!788415 () Bool)

(assert (=> b!2470100 (= e!1566698 tp!788415)))

(declare-fun b!2470099 () Bool)

(assert (=> b!2470099 (= e!1566697 (and (inv!38878 (xs!12177 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) e!1566698))))

(assert (=> b!2468812 (= tp!787911 (and (inv!38872 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))) e!1566697))))

(assert (= (and b!2468812 ((_ is Node!9197) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) b!2470098))

(assert (= b!2470099 b!2470100))

(assert (= (and b!2468812 ((_ is Leaf!13746) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611))))))) b!2470099))

(declare-fun m!2839727 () Bool)

(assert (=> b!2470098 m!2839727))

(declare-fun m!2839729 () Bool)

(assert (=> b!2470098 m!2839729))

(declare-fun m!2839731 () Bool)

(assert (=> b!2470099 m!2839731))

(assert (=> b!2468812 m!2838169))

(declare-fun b!2470103 () Bool)

(declare-fun e!1566701 () Bool)

(assert (=> b!2470103 (= e!1566701 true)))

(declare-fun b!2470102 () Bool)

(declare-fun e!1566700 () Bool)

(assert (=> b!2470102 (= e!1566700 e!1566701)))

(declare-fun b!2470101 () Bool)

(declare-fun e!1566699 () Bool)

(assert (=> b!2470101 (= e!1566699 e!1566700)))

(assert (=> b!2468754 e!1566699))

(assert (= b!2470102 b!2470103))

(assert (= b!2470101 b!2470102))

(assert (= (and b!2468754 ((_ is Cons!28783) (t!209628 (t!209628 rules!4472)))) b!2470101))

(assert (=> b!2470103 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472)))))) (dynLambda!12353 order!15593 lambda!93255))))

(assert (=> b!2470103 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472)))))) (dynLambda!12353 order!15593 lambda!93255))))

(declare-fun b!2470109 () Bool)

(declare-fun e!1566704 () Bool)

(declare-fun tp!788420 () Bool)

(assert (=> b!2470109 (= e!1566704 tp!788420)))

(declare-fun b!2470108 () Bool)

(declare-fun tp!788421 () Bool)

(declare-fun tp!788418 () Bool)

(assert (=> b!2470108 (= e!1566704 (and tp!788421 tp!788418))))

(assert (=> b!2468763 (= tp!787863 e!1566704)))

(declare-fun b!2470107 () Bool)

(assert (=> b!2470107 (= e!1566704 tp_is_empty!11951)))

(declare-fun b!2470110 () Bool)

(declare-fun tp!788419 () Bool)

(declare-fun tp!788417 () Bool)

(assert (=> b!2470110 (= e!1566704 (and tp!788419 tp!788417))))

(assert (= (and b!2468763 ((_ is ElementMatch!7271) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470107))

(assert (= (and b!2468763 ((_ is Concat!11941) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470108))

(assert (= (and b!2468763 ((_ is Star!7271) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470109))

(assert (= (and b!2468763 ((_ is Union!7271) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470110))

(declare-fun b!2470113 () Bool)

(declare-fun e!1566705 () Bool)

(declare-fun tp!788425 () Bool)

(assert (=> b!2470113 (= e!1566705 tp!788425)))

(declare-fun b!2470112 () Bool)

(declare-fun tp!788426 () Bool)

(declare-fun tp!788423 () Bool)

(assert (=> b!2470112 (= e!1566705 (and tp!788426 tp!788423))))

(assert (=> b!2468868 (= tp!787974 e!1566705)))

(declare-fun b!2470111 () Bool)

(assert (=> b!2470111 (= e!1566705 tp_is_empty!11951)))

(declare-fun b!2470114 () Bool)

(declare-fun tp!788424 () Bool)

(declare-fun tp!788422 () Bool)

(assert (=> b!2470114 (= e!1566705 (and tp!788424 tp!788422))))

(assert (= (and b!2468868 ((_ is ElementMatch!7271) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470111))

(assert (= (and b!2468868 ((_ is Concat!11941) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470112))

(assert (= (and b!2468868 ((_ is Star!7271) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470113))

(assert (= (and b!2468868 ((_ is Union!7271) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470114))

(declare-fun b!2470117 () Bool)

(declare-fun e!1566706 () Bool)

(declare-fun tp!788430 () Bool)

(assert (=> b!2470117 (= e!1566706 tp!788430)))

(declare-fun b!2470116 () Bool)

(declare-fun tp!788431 () Bool)

(declare-fun tp!788428 () Bool)

(assert (=> b!2470116 (= e!1566706 (and tp!788431 tp!788428))))

(assert (=> b!2468868 (= tp!787972 e!1566706)))

(declare-fun b!2470115 () Bool)

(assert (=> b!2470115 (= e!1566706 tp_is_empty!11951)))

(declare-fun b!2470118 () Bool)

(declare-fun tp!788429 () Bool)

(declare-fun tp!788427 () Bool)

(assert (=> b!2470118 (= e!1566706 (and tp!788429 tp!788427))))

(assert (= (and b!2468868 ((_ is ElementMatch!7271) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470115))

(assert (= (and b!2468868 ((_ is Concat!11941) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470116))

(assert (= (and b!2468868 ((_ is Star!7271) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470117))

(assert (= (and b!2468868 ((_ is Union!7271) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470118))

(declare-fun b!2470119 () Bool)

(declare-fun e!1566707 () Bool)

(declare-fun tp!788432 () Bool)

(assert (=> b!2470119 (= e!1566707 (and tp_is_empty!11951 tp!788432))))

(assert (=> b!2468814 (= tp!787912 e!1566707)))

(assert (= (and b!2468814 ((_ is Cons!28781) (innerList!9257 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (value!143171 (h!34183 l!6611)))))))) b!2470119))

(declare-fun b!2470124 () Bool)

(declare-fun e!1566712 () Bool)

(assert (=> b!2470124 (= e!1566712 true)))

(declare-fun b!2470123 () Bool)

(declare-fun e!1566711 () Bool)

(assert (=> b!2470123 (= e!1566711 e!1566712)))

(declare-fun b!2470122 () Bool)

(declare-fun e!1566710 () Bool)

(assert (=> b!2470122 (= e!1566710 e!1566711)))

(assert (=> b!2468561 e!1566710))

(assert (= b!2470123 b!2470124))

(assert (= b!2470122 b!2470123))

(assert (= (and b!2468561 ((_ is Cons!28783) (t!209628 rules!4472))) b!2470122))

(assert (=> b!2470124 (< (dynLambda!12352 order!15591 (toValue!6343 (transformation!4483 (h!34184 (t!209628 rules!4472))))) (dynLambda!12353 order!15593 lambda!93256))))

(assert (=> b!2470124 (< (dynLambda!12354 order!15595 (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472))))) (dynLambda!12353 order!15593 lambda!93256))))

(declare-fun b!2470125 () Bool)

(declare-fun e!1566713 () Bool)

(declare-fun tp!788433 () Bool)

(assert (=> b!2470125 (= e!1566713 (and tp_is_empty!11951 tp!788433))))

(assert (=> b!2468784 (= tp!787884 e!1566713)))

(assert (= (and b!2468784 ((_ is Cons!28781) (t!209626 (t!209626 (originalCharacters!5249 (h!34183 l!6611)))))) b!2470125))

(declare-fun b!2470128 () Bool)

(declare-fun e!1566714 () Bool)

(declare-fun tp!788437 () Bool)

(assert (=> b!2470128 (= e!1566714 tp!788437)))

(declare-fun b!2470127 () Bool)

(declare-fun tp!788438 () Bool)

(declare-fun tp!788435 () Bool)

(assert (=> b!2470127 (= e!1566714 (and tp!788438 tp!788435))))

(assert (=> b!2468791 (= tp!787895 e!1566714)))

(declare-fun b!2470126 () Bool)

(assert (=> b!2470126 (= e!1566714 tp_is_empty!11951)))

(declare-fun b!2470129 () Bool)

(declare-fun tp!788436 () Bool)

(declare-fun tp!788434 () Bool)

(assert (=> b!2470129 (= e!1566714 (and tp!788436 tp!788434))))

(assert (= (and b!2468791 ((_ is ElementMatch!7271) (regOne!15054 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470126))

(assert (= (and b!2468791 ((_ is Concat!11941) (regOne!15054 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470127))

(assert (= (and b!2468791 ((_ is Star!7271) (regOne!15054 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470128))

(assert (= (and b!2468791 ((_ is Union!7271) (regOne!15054 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470129))

(declare-fun b!2470134 () Bool)

(declare-fun e!1566716 () Bool)

(declare-fun tp!788442 () Bool)

(assert (=> b!2470134 (= e!1566716 tp!788442)))

(declare-fun b!2470133 () Bool)

(declare-fun tp!788443 () Bool)

(declare-fun tp!788440 () Bool)

(assert (=> b!2470133 (= e!1566716 (and tp!788443 tp!788440))))

(assert (=> b!2468791 (= tp!787892 e!1566716)))

(declare-fun b!2470132 () Bool)

(assert (=> b!2470132 (= e!1566716 tp_is_empty!11951)))

(declare-fun b!2470135 () Bool)

(declare-fun tp!788441 () Bool)

(declare-fun tp!788439 () Bool)

(assert (=> b!2470135 (= e!1566716 (and tp!788441 tp!788439))))

(assert (= (and b!2468791 ((_ is ElementMatch!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470132))

(assert (= (and b!2468791 ((_ is Concat!11941) (regTwo!15054 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470133))

(assert (= (and b!2468791 ((_ is Star!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470134))

(assert (= (and b!2468791 ((_ is Union!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470135))

(declare-fun b!2470138 () Bool)

(declare-fun e!1566717 () Bool)

(declare-fun tp!788447 () Bool)

(assert (=> b!2470138 (= e!1566717 tp!788447)))

(declare-fun b!2470137 () Bool)

(declare-fun tp!788448 () Bool)

(declare-fun tp!788445 () Bool)

(assert (=> b!2470137 (= e!1566717 (and tp!788448 tp!788445))))

(assert (=> b!2468863 (= tp!787970 e!1566717)))

(declare-fun b!2470136 () Bool)

(assert (=> b!2470136 (= e!1566717 tp_is_empty!11951)))

(declare-fun b!2470139 () Bool)

(declare-fun tp!788446 () Bool)

(declare-fun tp!788444 () Bool)

(assert (=> b!2470139 (= e!1566717 (and tp!788446 tp!788444))))

(assert (= (and b!2468863 ((_ is ElementMatch!7271) (reg!7600 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470136))

(assert (= (and b!2468863 ((_ is Concat!11941) (reg!7600 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470137))

(assert (= (and b!2468863 ((_ is Star!7271) (reg!7600 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470138))

(assert (= (and b!2468863 ((_ is Union!7271) (reg!7600 (reg!7600 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470139))

(declare-fun b!2470144 () Bool)

(declare-fun e!1566720 () Bool)

(declare-fun tp!788452 () Bool)

(assert (=> b!2470144 (= e!1566720 tp!788452)))

(declare-fun b!2470143 () Bool)

(declare-fun tp!788453 () Bool)

(declare-fun tp!788450 () Bool)

(assert (=> b!2470143 (= e!1566720 (and tp!788453 tp!788450))))

(assert (=> b!2468828 (= tp!787933 e!1566720)))

(declare-fun b!2470142 () Bool)

(assert (=> b!2470142 (= e!1566720 tp_is_empty!11951)))

(declare-fun b!2470145 () Bool)

(declare-fun tp!788451 () Bool)

(declare-fun tp!788449 () Bool)

(assert (=> b!2470145 (= e!1566720 (and tp!788451 tp!788449))))

(assert (= (and b!2468828 ((_ is ElementMatch!7271) (regOne!15054 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470142))

(assert (= (and b!2468828 ((_ is Concat!11941) (regOne!15054 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470143))

(assert (= (and b!2468828 ((_ is Star!7271) (regOne!15054 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470144))

(assert (= (and b!2468828 ((_ is Union!7271) (regOne!15054 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470145))

(declare-fun b!2470148 () Bool)

(declare-fun e!1566721 () Bool)

(declare-fun tp!788457 () Bool)

(assert (=> b!2470148 (= e!1566721 tp!788457)))

(declare-fun b!2470147 () Bool)

(declare-fun tp!788458 () Bool)

(declare-fun tp!788455 () Bool)

(assert (=> b!2470147 (= e!1566721 (and tp!788458 tp!788455))))

(assert (=> b!2468828 (= tp!787930 e!1566721)))

(declare-fun b!2470146 () Bool)

(assert (=> b!2470146 (= e!1566721 tp_is_empty!11951)))

(declare-fun b!2470149 () Bool)

(declare-fun tp!788456 () Bool)

(declare-fun tp!788454 () Bool)

(assert (=> b!2470149 (= e!1566721 (and tp!788456 tp!788454))))

(assert (= (and b!2468828 ((_ is ElementMatch!7271) (regTwo!15054 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470146))

(assert (= (and b!2468828 ((_ is Concat!11941) (regTwo!15054 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470147))

(assert (= (and b!2468828 ((_ is Star!7271) (regTwo!15054 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470148))

(assert (= (and b!2468828 ((_ is Union!7271) (regTwo!15054 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470149))

(declare-fun b!2470152 () Bool)

(declare-fun e!1566722 () Bool)

(declare-fun tp!788462 () Bool)

(assert (=> b!2470152 (= e!1566722 tp!788462)))

(declare-fun b!2470151 () Bool)

(declare-fun tp!788463 () Bool)

(declare-fun tp!788460 () Bool)

(assert (=> b!2470151 (= e!1566722 (and tp!788463 tp!788460))))

(assert (=> b!2468771 (= tp!787873 e!1566722)))

(declare-fun b!2470150 () Bool)

(assert (=> b!2470150 (= e!1566722 tp_is_empty!11951)))

(declare-fun b!2470153 () Bool)

(declare-fun tp!788461 () Bool)

(declare-fun tp!788459 () Bool)

(assert (=> b!2470153 (= e!1566722 (and tp!788461 tp!788459))))

(assert (= (and b!2468771 ((_ is ElementMatch!7271) (reg!7600 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2470150))

(assert (= (and b!2468771 ((_ is Concat!11941) (reg!7600 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2470151))

(assert (= (and b!2468771 ((_ is Star!7271) (reg!7600 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2470152))

(assert (= (and b!2468771 ((_ is Union!7271) (reg!7600 (reg!7600 (regex!4483 (rule!6841 t2!67)))))) b!2470153))

(declare-fun b!2470156 () Bool)

(declare-fun e!1566723 () Bool)

(declare-fun tp!788467 () Bool)

(assert (=> b!2470156 (= e!1566723 tp!788467)))

(declare-fun b!2470155 () Bool)

(declare-fun tp!788468 () Bool)

(declare-fun tp!788465 () Bool)

(assert (=> b!2470155 (= e!1566723 (and tp!788468 tp!788465))))

(assert (=> b!2468793 (= tp!787893 e!1566723)))

(declare-fun b!2470154 () Bool)

(assert (=> b!2470154 (= e!1566723 tp_is_empty!11951)))

(declare-fun b!2470157 () Bool)

(declare-fun tp!788466 () Bool)

(declare-fun tp!788464 () Bool)

(assert (=> b!2470157 (= e!1566723 (and tp!788466 tp!788464))))

(assert (= (and b!2468793 ((_ is ElementMatch!7271) (regOne!15055 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470154))

(assert (= (and b!2468793 ((_ is Concat!11941) (regOne!15055 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470155))

(assert (= (and b!2468793 ((_ is Star!7271) (regOne!15055 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470156))

(assert (= (and b!2468793 ((_ is Union!7271) (regOne!15055 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470157))

(declare-fun b!2470160 () Bool)

(declare-fun e!1566724 () Bool)

(declare-fun tp!788472 () Bool)

(assert (=> b!2470160 (= e!1566724 tp!788472)))

(declare-fun b!2470159 () Bool)

(declare-fun tp!788473 () Bool)

(declare-fun tp!788470 () Bool)

(assert (=> b!2470159 (= e!1566724 (and tp!788473 tp!788470))))

(assert (=> b!2468793 (= tp!787891 e!1566724)))

(declare-fun b!2470158 () Bool)

(assert (=> b!2470158 (= e!1566724 tp_is_empty!11951)))

(declare-fun b!2470161 () Bool)

(declare-fun tp!788471 () Bool)

(declare-fun tp!788469 () Bool)

(assert (=> b!2470161 (= e!1566724 (and tp!788471 tp!788469))))

(assert (= (and b!2468793 ((_ is ElementMatch!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470158))

(assert (= (and b!2468793 ((_ is Concat!11941) (regTwo!15055 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470159))

(assert (= (and b!2468793 ((_ is Star!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470160))

(assert (= (and b!2468793 ((_ is Union!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470161))

(declare-fun b!2470164 () Bool)

(declare-fun e!1566725 () Bool)

(declare-fun tp!788477 () Bool)

(assert (=> b!2470164 (= e!1566725 tp!788477)))

(declare-fun b!2470163 () Bool)

(declare-fun tp!788478 () Bool)

(declare-fun tp!788475 () Bool)

(assert (=> b!2470163 (= e!1566725 (and tp!788478 tp!788475))))

(assert (=> b!2468844 (= tp!787944 e!1566725)))

(declare-fun b!2470162 () Bool)

(assert (=> b!2470162 (= e!1566725 tp_is_empty!11951)))

(declare-fun b!2470165 () Bool)

(declare-fun tp!788476 () Bool)

(declare-fun tp!788474 () Bool)

(assert (=> b!2470165 (= e!1566725 (and tp!788476 tp!788474))))

(assert (= (and b!2468844 ((_ is ElementMatch!7271) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470162))

(assert (= (and b!2468844 ((_ is Concat!11941) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470163))

(assert (= (and b!2468844 ((_ is Star!7271) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470164))

(assert (= (and b!2468844 ((_ is Union!7271) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470165))

(declare-fun b!2470168 () Bool)

(declare-fun e!1566726 () Bool)

(declare-fun tp!788482 () Bool)

(assert (=> b!2470168 (= e!1566726 tp!788482)))

(declare-fun b!2470167 () Bool)

(declare-fun tp!788483 () Bool)

(declare-fun tp!788480 () Bool)

(assert (=> b!2470167 (= e!1566726 (and tp!788483 tp!788480))))

(assert (=> b!2468844 (= tp!787942 e!1566726)))

(declare-fun b!2470166 () Bool)

(assert (=> b!2470166 (= e!1566726 tp_is_empty!11951)))

(declare-fun b!2470169 () Bool)

(declare-fun tp!788481 () Bool)

(declare-fun tp!788479 () Bool)

(assert (=> b!2470169 (= e!1566726 (and tp!788481 tp!788479))))

(assert (= (and b!2468844 ((_ is ElementMatch!7271) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470166))

(assert (= (and b!2468844 ((_ is Concat!11941) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470167))

(assert (= (and b!2468844 ((_ is Star!7271) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470168))

(assert (= (and b!2468844 ((_ is Union!7271) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470169))

(declare-fun b!2470174 () Bool)

(declare-fun e!1566728 () Bool)

(declare-fun tp!788487 () Bool)

(assert (=> b!2470174 (= e!1566728 tp!788487)))

(declare-fun b!2470173 () Bool)

(declare-fun tp!788488 () Bool)

(declare-fun tp!788485 () Bool)

(assert (=> b!2470173 (= e!1566728 (and tp!788488 tp!788485))))

(assert (=> b!2468830 (= tp!787931 e!1566728)))

(declare-fun b!2470172 () Bool)

(assert (=> b!2470172 (= e!1566728 tp_is_empty!11951)))

(declare-fun b!2470175 () Bool)

(declare-fun tp!788486 () Bool)

(declare-fun tp!788484 () Bool)

(assert (=> b!2470175 (= e!1566728 (and tp!788486 tp!788484))))

(assert (= (and b!2468830 ((_ is ElementMatch!7271) (regOne!15055 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470172))

(assert (= (and b!2468830 ((_ is Concat!11941) (regOne!15055 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470173))

(assert (= (and b!2468830 ((_ is Star!7271) (regOne!15055 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470174))

(assert (= (and b!2468830 ((_ is Union!7271) (regOne!15055 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470175))

(declare-fun b!2470178 () Bool)

(declare-fun e!1566729 () Bool)

(declare-fun tp!788492 () Bool)

(assert (=> b!2470178 (= e!1566729 tp!788492)))

(declare-fun b!2470177 () Bool)

(declare-fun tp!788493 () Bool)

(declare-fun tp!788490 () Bool)

(assert (=> b!2470177 (= e!1566729 (and tp!788493 tp!788490))))

(assert (=> b!2468830 (= tp!787929 e!1566729)))

(declare-fun b!2470176 () Bool)

(assert (=> b!2470176 (= e!1566729 tp_is_empty!11951)))

(declare-fun b!2470179 () Bool)

(declare-fun tp!788491 () Bool)

(declare-fun tp!788489 () Bool)

(assert (=> b!2470179 (= e!1566729 (and tp!788491 tp!788489))))

(assert (= (and b!2468830 ((_ is ElementMatch!7271) (regTwo!15055 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470176))

(assert (= (and b!2468830 ((_ is Concat!11941) (regTwo!15055 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470177))

(assert (= (and b!2468830 ((_ is Star!7271) (regTwo!15055 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470178))

(assert (= (and b!2468830 ((_ is Union!7271) (regTwo!15055 (regex!4483 (rule!6841 (h!34183 (t!209627 l!6611))))))) b!2470179))

(declare-fun b!2470182 () Bool)

(declare-fun e!1566730 () Bool)

(declare-fun tp!788497 () Bool)

(assert (=> b!2470182 (= e!1566730 tp!788497)))

(declare-fun b!2470181 () Bool)

(declare-fun tp!788498 () Bool)

(declare-fun tp!788495 () Bool)

(assert (=> b!2470181 (= e!1566730 (and tp!788498 tp!788495))))

(assert (=> b!2468842 (= tp!787946 e!1566730)))

(declare-fun b!2470180 () Bool)

(assert (=> b!2470180 (= e!1566730 tp_is_empty!11951)))

(declare-fun b!2470183 () Bool)

(declare-fun tp!788496 () Bool)

(declare-fun tp!788494 () Bool)

(assert (=> b!2470183 (= e!1566730 (and tp!788496 tp!788494))))

(assert (= (and b!2468842 ((_ is ElementMatch!7271) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470180))

(assert (= (and b!2468842 ((_ is Concat!11941) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470181))

(assert (= (and b!2468842 ((_ is Star!7271) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470182))

(assert (= (and b!2468842 ((_ is Union!7271) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470183))

(declare-fun b!2470186 () Bool)

(declare-fun e!1566731 () Bool)

(declare-fun tp!788502 () Bool)

(assert (=> b!2470186 (= e!1566731 tp!788502)))

(declare-fun b!2470185 () Bool)

(declare-fun tp!788503 () Bool)

(declare-fun tp!788500 () Bool)

(assert (=> b!2470185 (= e!1566731 (and tp!788503 tp!788500))))

(assert (=> b!2468842 (= tp!787943 e!1566731)))

(declare-fun b!2470184 () Bool)

(assert (=> b!2470184 (= e!1566731 tp_is_empty!11951)))

(declare-fun b!2470187 () Bool)

(declare-fun tp!788501 () Bool)

(declare-fun tp!788499 () Bool)

(assert (=> b!2470187 (= e!1566731 (and tp!788501 tp!788499))))

(assert (= (and b!2468842 ((_ is ElementMatch!7271) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470184))

(assert (= (and b!2468842 ((_ is Concat!11941) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470185))

(assert (= (and b!2468842 ((_ is Star!7271) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470186))

(assert (= (and b!2468842 ((_ is Union!7271) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470187))

(declare-fun b!2470190 () Bool)

(declare-fun e!1566732 () Bool)

(declare-fun tp!788507 () Bool)

(assert (=> b!2470190 (= e!1566732 tp!788507)))

(declare-fun b!2470189 () Bool)

(declare-fun tp!788508 () Bool)

(declare-fun tp!788505 () Bool)

(assert (=> b!2470189 (= e!1566732 (and tp!788508 tp!788505))))

(assert (=> b!2468748 (= tp!787848 e!1566732)))

(declare-fun b!2470188 () Bool)

(assert (=> b!2470188 (= e!1566732 tp_is_empty!11951)))

(declare-fun b!2470191 () Bool)

(declare-fun tp!788506 () Bool)

(declare-fun tp!788504 () Bool)

(assert (=> b!2470191 (= e!1566732 (and tp!788506 tp!788504))))

(assert (= (and b!2468748 ((_ is ElementMatch!7271) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470188))

(assert (= (and b!2468748 ((_ is Concat!11941) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470189))

(assert (= (and b!2468748 ((_ is Star!7271) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470190))

(assert (= (and b!2468748 ((_ is Union!7271) (reg!7600 (regOne!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470191))

(declare-fun b!2470194 () Bool)

(declare-fun e!1566733 () Bool)

(declare-fun tp!788512 () Bool)

(assert (=> b!2470194 (= e!1566733 tp!788512)))

(declare-fun b!2470193 () Bool)

(declare-fun tp!788513 () Bool)

(declare-fun tp!788510 () Bool)

(assert (=> b!2470193 (= e!1566733 (and tp!788513 tp!788510))))

(assert (=> b!2468851 (= tp!787955 e!1566733)))

(declare-fun b!2470192 () Bool)

(assert (=> b!2470192 (= e!1566733 tp_is_empty!11951)))

(declare-fun b!2470195 () Bool)

(declare-fun tp!788511 () Bool)

(declare-fun tp!788509 () Bool)

(assert (=> b!2470195 (= e!1566733 (and tp!788511 tp!788509))))

(assert (= (and b!2468851 ((_ is ElementMatch!7271) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470192))

(assert (= (and b!2468851 ((_ is Concat!11941) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470193))

(assert (= (and b!2468851 ((_ is Star!7271) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470194))

(assert (= (and b!2468851 ((_ is Union!7271) (reg!7600 (regOne!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470195))

(declare-fun b!2470198 () Bool)

(declare-fun e!1566734 () Bool)

(declare-fun tp!788517 () Bool)

(assert (=> b!2470198 (= e!1566734 tp!788517)))

(declare-fun b!2470197 () Bool)

(declare-fun tp!788518 () Bool)

(declare-fun tp!788515 () Bool)

(assert (=> b!2470197 (= e!1566734 (and tp!788518 tp!788515))))

(assert (=> b!2468821 (= tp!787922 e!1566734)))

(declare-fun b!2470196 () Bool)

(assert (=> b!2470196 (= e!1566734 tp_is_empty!11951)))

(declare-fun b!2470199 () Bool)

(declare-fun tp!788516 () Bool)

(declare-fun tp!788514 () Bool)

(assert (=> b!2470199 (= e!1566734 (and tp!788516 tp!788514))))

(assert (= (and b!2468821 ((_ is ElementMatch!7271) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470196))

(assert (= (and b!2468821 ((_ is Concat!11941) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470197))

(assert (= (and b!2468821 ((_ is Star!7271) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470198))

(assert (= (and b!2468821 ((_ is Union!7271) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470199))

(declare-fun b!2470202 () Bool)

(declare-fun e!1566735 () Bool)

(declare-fun tp!788522 () Bool)

(assert (=> b!2470202 (= e!1566735 tp!788522)))

(declare-fun b!2470201 () Bool)

(declare-fun tp!788523 () Bool)

(declare-fun tp!788520 () Bool)

(assert (=> b!2470201 (= e!1566735 (and tp!788523 tp!788520))))

(assert (=> b!2468870 (= tp!787981 e!1566735)))

(declare-fun b!2470200 () Bool)

(assert (=> b!2470200 (= e!1566735 tp_is_empty!11951)))

(declare-fun b!2470203 () Bool)

(declare-fun tp!788521 () Bool)

(declare-fun tp!788519 () Bool)

(assert (=> b!2470203 (= e!1566735 (and tp!788521 tp!788519))))

(assert (= (and b!2468870 ((_ is ElementMatch!7271) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470200))

(assert (= (and b!2468870 ((_ is Concat!11941) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470201))

(assert (= (and b!2468870 ((_ is Star!7271) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470202))

(assert (= (and b!2468870 ((_ is Union!7271) (regOne!15054 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470203))

(declare-fun b!2470206 () Bool)

(declare-fun e!1566736 () Bool)

(declare-fun tp!788527 () Bool)

(assert (=> b!2470206 (= e!1566736 tp!788527)))

(declare-fun b!2470205 () Bool)

(declare-fun tp!788528 () Bool)

(declare-fun tp!788525 () Bool)

(assert (=> b!2470205 (= e!1566736 (and tp!788528 tp!788525))))

(assert (=> b!2468870 (= tp!787978 e!1566736)))

(declare-fun b!2470204 () Bool)

(assert (=> b!2470204 (= e!1566736 tp_is_empty!11951)))

(declare-fun b!2470207 () Bool)

(declare-fun tp!788526 () Bool)

(declare-fun tp!788524 () Bool)

(assert (=> b!2470207 (= e!1566736 (and tp!788526 tp!788524))))

(assert (= (and b!2468870 ((_ is ElementMatch!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470204))

(assert (= (and b!2468870 ((_ is Concat!11941) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470205))

(assert (= (and b!2468870 ((_ is Star!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470206))

(assert (= (and b!2468870 ((_ is Union!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470207))

(declare-fun b!2470210 () Bool)

(declare-fun e!1566737 () Bool)

(declare-fun tp!788532 () Bool)

(assert (=> b!2470210 (= e!1566737 tp!788532)))

(declare-fun b!2470209 () Bool)

(declare-fun tp!788533 () Bool)

(declare-fun tp!788530 () Bool)

(assert (=> b!2470209 (= e!1566737 (and tp!788533 tp!788530))))

(assert (=> b!2468758 (= tp!787859 e!1566737)))

(declare-fun b!2470208 () Bool)

(assert (=> b!2470208 (= e!1566737 tp_is_empty!11951)))

(declare-fun b!2470211 () Bool)

(declare-fun tp!788531 () Bool)

(declare-fun tp!788529 () Bool)

(assert (=> b!2470211 (= e!1566737 (and tp!788531 tp!788529))))

(assert (= (and b!2468758 ((_ is ElementMatch!7271) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470208))

(assert (= (and b!2468758 ((_ is Concat!11941) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470209))

(assert (= (and b!2468758 ((_ is Star!7271) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470210))

(assert (= (and b!2468758 ((_ is Union!7271) (regOne!15054 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470211))

(declare-fun b!2470214 () Bool)

(declare-fun e!1566738 () Bool)

(declare-fun tp!788537 () Bool)

(assert (=> b!2470214 (= e!1566738 tp!788537)))

(declare-fun b!2470213 () Bool)

(declare-fun tp!788538 () Bool)

(declare-fun tp!788535 () Bool)

(assert (=> b!2470213 (= e!1566738 (and tp!788538 tp!788535))))

(assert (=> b!2468758 (= tp!787856 e!1566738)))

(declare-fun b!2470212 () Bool)

(assert (=> b!2470212 (= e!1566738 tp_is_empty!11951)))

(declare-fun b!2470215 () Bool)

(declare-fun tp!788536 () Bool)

(declare-fun tp!788534 () Bool)

(assert (=> b!2470215 (= e!1566738 (and tp!788536 tp!788534))))

(assert (= (and b!2468758 ((_ is ElementMatch!7271) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470212))

(assert (= (and b!2468758 ((_ is Concat!11941) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470213))

(assert (= (and b!2468758 ((_ is Star!7271) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470214))

(assert (= (and b!2468758 ((_ is Union!7271) (regTwo!15054 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470215))

(declare-fun b!2470218 () Bool)

(declare-fun e!1566739 () Bool)

(declare-fun tp!788542 () Bool)

(assert (=> b!2470218 (= e!1566739 tp!788542)))

(declare-fun b!2470217 () Bool)

(declare-fun tp!788543 () Bool)

(declare-fun tp!788540 () Bool)

(assert (=> b!2470217 (= e!1566739 (and tp!788543 tp!788540))))

(assert (=> b!2468858 (= tp!787966 e!1566739)))

(declare-fun b!2470216 () Bool)

(assert (=> b!2470216 (= e!1566739 tp_is_empty!11951)))

(declare-fun b!2470219 () Bool)

(declare-fun tp!788541 () Bool)

(declare-fun tp!788539 () Bool)

(assert (=> b!2470219 (= e!1566739 (and tp!788541 tp!788539))))

(assert (= (and b!2468858 ((_ is ElementMatch!7271) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470216))

(assert (= (and b!2468858 ((_ is Concat!11941) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470217))

(assert (= (and b!2468858 ((_ is Star!7271) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470218))

(assert (= (and b!2468858 ((_ is Union!7271) (regOne!15054 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470219))

(declare-fun b!2470222 () Bool)

(declare-fun e!1566740 () Bool)

(declare-fun tp!788547 () Bool)

(assert (=> b!2470222 (= e!1566740 tp!788547)))

(declare-fun b!2470221 () Bool)

(declare-fun tp!788548 () Bool)

(declare-fun tp!788545 () Bool)

(assert (=> b!2470221 (= e!1566740 (and tp!788548 tp!788545))))

(assert (=> b!2468858 (= tp!787963 e!1566740)))

(declare-fun b!2470220 () Bool)

(assert (=> b!2470220 (= e!1566740 tp_is_empty!11951)))

(declare-fun b!2470223 () Bool)

(declare-fun tp!788546 () Bool)

(declare-fun tp!788544 () Bool)

(assert (=> b!2470223 (= e!1566740 (and tp!788546 tp!788544))))

(assert (= (and b!2468858 ((_ is ElementMatch!7271) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470220))

(assert (= (and b!2468858 ((_ is Concat!11941) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470221))

(assert (= (and b!2468858 ((_ is Star!7271) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470222))

(assert (= (and b!2468858 ((_ is Union!7271) (regTwo!15054 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470223))

(declare-fun b!2470226 () Bool)

(declare-fun e!1566741 () Bool)

(declare-fun tp!788552 () Bool)

(assert (=> b!2470226 (= e!1566741 tp!788552)))

(declare-fun b!2470225 () Bool)

(declare-fun tp!788553 () Bool)

(declare-fun tp!788550 () Bool)

(assert (=> b!2470225 (= e!1566741 (and tp!788553 tp!788550))))

(assert (=> b!2468788 (= tp!787889 e!1566741)))

(declare-fun b!2470224 () Bool)

(assert (=> b!2470224 (= e!1566741 tp_is_empty!11951)))

(declare-fun b!2470227 () Bool)

(declare-fun tp!788551 () Bool)

(declare-fun tp!788549 () Bool)

(assert (=> b!2470227 (= e!1566741 (and tp!788551 tp!788549))))

(assert (= (and b!2468788 ((_ is ElementMatch!7271) (reg!7600 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470224))

(assert (= (and b!2468788 ((_ is Concat!11941) (reg!7600 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470225))

(assert (= (and b!2468788 ((_ is Star!7271) (reg!7600 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470226))

(assert (= (and b!2468788 ((_ is Union!7271) (reg!7600 (regOne!15054 (regex!4483 (h!34184 rules!4472)))))) b!2470227))

(declare-fun b!2470228 () Bool)

(declare-fun e!1566742 () Bool)

(declare-fun tp!788554 () Bool)

(assert (=> b!2470228 (= e!1566742 (and tp_is_empty!11951 tp!788554))))

(assert (=> b!2468766 (= tp!787868 e!1566742)))

(assert (= (and b!2468766 ((_ is Cons!28781) (originalCharacters!5249 (h!34183 (t!209627 (t!209627 l!6611)))))) b!2470228))

(declare-fun b!2470231 () Bool)

(declare-fun e!1566743 () Bool)

(declare-fun tp!788558 () Bool)

(assert (=> b!2470231 (= e!1566743 tp!788558)))

(declare-fun b!2470230 () Bool)

(declare-fun tp!788559 () Bool)

(declare-fun tp!788556 () Bool)

(assert (=> b!2470230 (= e!1566743 (and tp!788559 tp!788556))))

(assert (=> b!2468872 (= tp!787979 e!1566743)))

(declare-fun b!2470229 () Bool)

(assert (=> b!2470229 (= e!1566743 tp_is_empty!11951)))

(declare-fun b!2470232 () Bool)

(declare-fun tp!788557 () Bool)

(declare-fun tp!788555 () Bool)

(assert (=> b!2470232 (= e!1566743 (and tp!788557 tp!788555))))

(assert (= (and b!2468872 ((_ is ElementMatch!7271) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470229))

(assert (= (and b!2468872 ((_ is Concat!11941) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470230))

(assert (= (and b!2468872 ((_ is Star!7271) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470231))

(assert (= (and b!2468872 ((_ is Union!7271) (regOne!15055 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470232))

(declare-fun b!2470235 () Bool)

(declare-fun e!1566744 () Bool)

(declare-fun tp!788563 () Bool)

(assert (=> b!2470235 (= e!1566744 tp!788563)))

(declare-fun b!2470234 () Bool)

(declare-fun tp!788564 () Bool)

(declare-fun tp!788561 () Bool)

(assert (=> b!2470234 (= e!1566744 (and tp!788564 tp!788561))))

(assert (=> b!2468872 (= tp!787977 e!1566744)))

(declare-fun b!2470233 () Bool)

(assert (=> b!2470233 (= e!1566744 tp_is_empty!11951)))

(declare-fun b!2470236 () Bool)

(declare-fun tp!788562 () Bool)

(declare-fun tp!788560 () Bool)

(assert (=> b!2470236 (= e!1566744 (and tp!788562 tp!788560))))

(assert (= (and b!2468872 ((_ is ElementMatch!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470233))

(assert (= (and b!2468872 ((_ is Concat!11941) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470234))

(assert (= (and b!2468872 ((_ is Star!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470235))

(assert (= (and b!2468872 ((_ is Union!7271) (regTwo!15055 (regTwo!15055 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470236))

(declare-fun b!2470239 () Bool)

(declare-fun e!1566745 () Bool)

(declare-fun tp!788568 () Bool)

(assert (=> b!2470239 (= e!1566745 tp!788568)))

(declare-fun b!2470238 () Bool)

(declare-fun tp!788569 () Bool)

(declare-fun tp!788566 () Bool)

(assert (=> b!2470238 (= e!1566745 (and tp!788569 tp!788566))))

(assert (=> b!2468808 (= tp!787910 e!1566745)))

(declare-fun b!2470237 () Bool)

(assert (=> b!2470237 (= e!1566745 tp_is_empty!11951)))

(declare-fun b!2470240 () Bool)

(declare-fun tp!788567 () Bool)

(declare-fun tp!788565 () Bool)

(assert (=> b!2470240 (= e!1566745 (and tp!788567 tp!788565))))

(assert (= (and b!2468808 ((_ is ElementMatch!7271) (regOne!15054 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470237))

(assert (= (and b!2468808 ((_ is Concat!11941) (regOne!15054 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470238))

(assert (= (and b!2468808 ((_ is Star!7271) (regOne!15054 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470239))

(assert (= (and b!2468808 ((_ is Union!7271) (regOne!15054 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470240))

(declare-fun b!2470243 () Bool)

(declare-fun e!1566746 () Bool)

(declare-fun tp!788573 () Bool)

(assert (=> b!2470243 (= e!1566746 tp!788573)))

(declare-fun b!2470242 () Bool)

(declare-fun tp!788574 () Bool)

(declare-fun tp!788571 () Bool)

(assert (=> b!2470242 (= e!1566746 (and tp!788574 tp!788571))))

(assert (=> b!2468808 (= tp!787907 e!1566746)))

(declare-fun b!2470241 () Bool)

(assert (=> b!2470241 (= e!1566746 tp_is_empty!11951)))

(declare-fun b!2470244 () Bool)

(declare-fun tp!788572 () Bool)

(declare-fun tp!788570 () Bool)

(assert (=> b!2470244 (= e!1566746 (and tp!788572 tp!788570))))

(assert (= (and b!2468808 ((_ is ElementMatch!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470241))

(assert (= (and b!2468808 ((_ is Concat!11941) (regTwo!15054 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470242))

(assert (= (and b!2468808 ((_ is Star!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470243))

(assert (= (and b!2468808 ((_ is Union!7271) (regTwo!15054 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470244))

(declare-fun b!2470245 () Bool)

(declare-fun e!1566747 () Bool)

(declare-fun tp!788575 () Bool)

(declare-fun tp!788577 () Bool)

(assert (=> b!2470245 (= e!1566747 (and (inv!38872 (left!22085 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) tp!788577 (inv!38872 (right!22415 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) tp!788575))))

(declare-fun b!2470247 () Bool)

(declare-fun e!1566748 () Bool)

(declare-fun tp!788576 () Bool)

(assert (=> b!2470247 (= e!1566748 tp!788576)))

(declare-fun b!2470246 () Bool)

(assert (=> b!2470246 (= e!1566747 (and (inv!38878 (xs!12177 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) e!1566748))))

(assert (=> b!2468781 (= tp!787883 (and (inv!38872 (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) e!1566747))))

(assert (= (and b!2468781 ((_ is Node!9197) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) b!2470245))

(assert (= b!2470246 b!2470247))

(assert (= (and b!2468781 ((_ is Leaf!13746) (left!22085 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) b!2470246))

(declare-fun m!2839763 () Bool)

(assert (=> b!2470245 m!2839763))

(declare-fun m!2839765 () Bool)

(assert (=> b!2470245 m!2839765))

(declare-fun m!2839767 () Bool)

(assert (=> b!2470246 m!2839767))

(assert (=> b!2468781 m!2838161))

(declare-fun b!2470248 () Bool)

(declare-fun tp!788580 () Bool)

(declare-fun e!1566749 () Bool)

(declare-fun tp!788578 () Bool)

(assert (=> b!2470248 (= e!1566749 (and (inv!38872 (left!22085 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) tp!788580 (inv!38872 (right!22415 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) tp!788578))))

(declare-fun b!2470250 () Bool)

(declare-fun e!1566750 () Bool)

(declare-fun tp!788579 () Bool)

(assert (=> b!2470250 (= e!1566750 tp!788579)))

(declare-fun b!2470249 () Bool)

(assert (=> b!2470249 (= e!1566749 (and (inv!38878 (xs!12177 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) e!1566750))))

(assert (=> b!2468781 (= tp!787881 (and (inv!38872 (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))) e!1566749))))

(assert (= (and b!2468781 ((_ is Node!9197) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) b!2470248))

(assert (= b!2470249 b!2470250))

(assert (= (and b!2468781 ((_ is Leaf!13746) (right!22415 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67)))))) b!2470249))

(declare-fun m!2839769 () Bool)

(assert (=> b!2470248 m!2839769))

(declare-fun m!2839771 () Bool)

(assert (=> b!2470248 m!2839771))

(declare-fun m!2839773 () Bool)

(assert (=> b!2470249 m!2839773))

(assert (=> b!2468781 m!2838163))

(declare-fun b!2470253 () Bool)

(declare-fun e!1566751 () Bool)

(declare-fun tp!788584 () Bool)

(assert (=> b!2470253 (= e!1566751 tp!788584)))

(declare-fun b!2470252 () Bool)

(declare-fun tp!788585 () Bool)

(declare-fun tp!788582 () Bool)

(assert (=> b!2470252 (= e!1566751 (and tp!788585 tp!788582))))

(assert (=> b!2468760 (= tp!787857 e!1566751)))

(declare-fun b!2470251 () Bool)

(assert (=> b!2470251 (= e!1566751 tp_is_empty!11951)))

(declare-fun b!2470254 () Bool)

(declare-fun tp!788583 () Bool)

(declare-fun tp!788581 () Bool)

(assert (=> b!2470254 (= e!1566751 (and tp!788583 tp!788581))))

(assert (= (and b!2468760 ((_ is ElementMatch!7271) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470251))

(assert (= (and b!2468760 ((_ is Concat!11941) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470252))

(assert (= (and b!2468760 ((_ is Star!7271) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470253))

(assert (= (and b!2468760 ((_ is Union!7271) (regOne!15055 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470254))

(declare-fun b!2470257 () Bool)

(declare-fun e!1566752 () Bool)

(declare-fun tp!788589 () Bool)

(assert (=> b!2470257 (= e!1566752 tp!788589)))

(declare-fun b!2470256 () Bool)

(declare-fun tp!788590 () Bool)

(declare-fun tp!788587 () Bool)

(assert (=> b!2470256 (= e!1566752 (and tp!788590 tp!788587))))

(assert (=> b!2468760 (= tp!787855 e!1566752)))

(declare-fun b!2470255 () Bool)

(assert (=> b!2470255 (= e!1566752 tp_is_empty!11951)))

(declare-fun b!2470258 () Bool)

(declare-fun tp!788588 () Bool)

(declare-fun tp!788586 () Bool)

(assert (=> b!2470258 (= e!1566752 (and tp!788588 tp!788586))))

(assert (= (and b!2468760 ((_ is ElementMatch!7271) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470255))

(assert (= (and b!2468760 ((_ is Concat!11941) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470256))

(assert (= (and b!2468760 ((_ is Star!7271) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470257))

(assert (= (and b!2468760 ((_ is Union!7271) (regTwo!15055 (regOne!15054 (regex!4483 (rule!6841 t2!67)))))) b!2470258))

(declare-fun b!2470261 () Bool)

(declare-fun e!1566753 () Bool)

(declare-fun tp!788594 () Bool)

(assert (=> b!2470261 (= e!1566753 tp!788594)))

(declare-fun b!2470260 () Bool)

(declare-fun tp!788595 () Bool)

(declare-fun tp!788592 () Bool)

(assert (=> b!2470260 (= e!1566753 (and tp!788595 tp!788592))))

(assert (=> b!2468860 (= tp!787964 e!1566753)))

(declare-fun b!2470259 () Bool)

(assert (=> b!2470259 (= e!1566753 tp_is_empty!11951)))

(declare-fun b!2470262 () Bool)

(declare-fun tp!788593 () Bool)

(declare-fun tp!788591 () Bool)

(assert (=> b!2470262 (= e!1566753 (and tp!788593 tp!788591))))

(assert (= (and b!2468860 ((_ is ElementMatch!7271) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470259))

(assert (= (and b!2468860 ((_ is Concat!11941) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470260))

(assert (= (and b!2468860 ((_ is Star!7271) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470261))

(assert (= (and b!2468860 ((_ is Union!7271) (regOne!15055 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470262))

(declare-fun b!2470265 () Bool)

(declare-fun e!1566754 () Bool)

(declare-fun tp!788599 () Bool)

(assert (=> b!2470265 (= e!1566754 tp!788599)))

(declare-fun b!2470264 () Bool)

(declare-fun tp!788600 () Bool)

(declare-fun tp!788597 () Bool)

(assert (=> b!2470264 (= e!1566754 (and tp!788600 tp!788597))))

(assert (=> b!2468860 (= tp!787962 e!1566754)))

(declare-fun b!2470263 () Bool)

(assert (=> b!2470263 (= e!1566754 tp_is_empty!11951)))

(declare-fun b!2470266 () Bool)

(declare-fun tp!788598 () Bool)

(declare-fun tp!788596 () Bool)

(assert (=> b!2470266 (= e!1566754 (and tp!788598 tp!788596))))

(assert (= (and b!2468860 ((_ is ElementMatch!7271) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470263))

(assert (= (and b!2468860 ((_ is Concat!11941) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470264))

(assert (= (and b!2468860 ((_ is Star!7271) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470265))

(assert (= (and b!2468860 ((_ is Union!7271) (regTwo!15055 (reg!7600 (regex!4483 (rule!6841 t1!67)))))) b!2470266))

(declare-fun b!2470269 () Bool)

(declare-fun e!1566755 () Bool)

(declare-fun tp!788604 () Bool)

(assert (=> b!2470269 (= e!1566755 tp!788604)))

(declare-fun b!2470268 () Bool)

(declare-fun tp!788605 () Bool)

(declare-fun tp!788602 () Bool)

(assert (=> b!2470268 (= e!1566755 (and tp!788605 tp!788602))))

(assert (=> b!2468795 (= tp!787900 e!1566755)))

(declare-fun b!2470267 () Bool)

(assert (=> b!2470267 (= e!1566755 tp_is_empty!11951)))

(declare-fun b!2470270 () Bool)

(declare-fun tp!788603 () Bool)

(declare-fun tp!788601 () Bool)

(assert (=> b!2470270 (= e!1566755 (and tp!788603 tp!788601))))

(assert (= (and b!2468795 ((_ is ElementMatch!7271) (regOne!15054 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470267))

(assert (= (and b!2468795 ((_ is Concat!11941) (regOne!15054 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470268))

(assert (= (and b!2468795 ((_ is Star!7271) (regOne!15054 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470269))

(assert (= (and b!2468795 ((_ is Union!7271) (regOne!15054 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470270))

(declare-fun b!2470273 () Bool)

(declare-fun e!1566756 () Bool)

(declare-fun tp!788609 () Bool)

(assert (=> b!2470273 (= e!1566756 tp!788609)))

(declare-fun b!2470272 () Bool)

(declare-fun tp!788610 () Bool)

(declare-fun tp!788607 () Bool)

(assert (=> b!2470272 (= e!1566756 (and tp!788610 tp!788607))))

(assert (=> b!2468795 (= tp!787897 e!1566756)))

(declare-fun b!2470271 () Bool)

(assert (=> b!2470271 (= e!1566756 tp_is_empty!11951)))

(declare-fun b!2470274 () Bool)

(declare-fun tp!788608 () Bool)

(declare-fun tp!788606 () Bool)

(assert (=> b!2470274 (= e!1566756 (and tp!788608 tp!788606))))

(assert (= (and b!2468795 ((_ is ElementMatch!7271) (regTwo!15054 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470271))

(assert (= (and b!2468795 ((_ is Concat!11941) (regTwo!15054 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470272))

(assert (= (and b!2468795 ((_ is Star!7271) (regTwo!15054 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470273))

(assert (= (and b!2468795 ((_ is Union!7271) (regTwo!15054 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470274))

(declare-fun b!2470277 () Bool)

(declare-fun e!1566757 () Bool)

(declare-fun tp!788614 () Bool)

(assert (=> b!2470277 (= e!1566757 tp!788614)))

(declare-fun b!2470276 () Bool)

(declare-fun tp!788615 () Bool)

(declare-fun tp!788612 () Bool)

(assert (=> b!2470276 (= e!1566757 (and tp!788615 tp!788612))))

(assert (=> b!2468846 (= tp!787951 e!1566757)))

(declare-fun b!2470275 () Bool)

(assert (=> b!2470275 (= e!1566757 tp_is_empty!11951)))

(declare-fun b!2470278 () Bool)

(declare-fun tp!788613 () Bool)

(declare-fun tp!788611 () Bool)

(assert (=> b!2470278 (= e!1566757 (and tp!788613 tp!788611))))

(assert (= (and b!2468846 ((_ is ElementMatch!7271) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470275))

(assert (= (and b!2468846 ((_ is Concat!11941) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470276))

(assert (= (and b!2468846 ((_ is Star!7271) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470277))

(assert (= (and b!2468846 ((_ is Union!7271) (regOne!15054 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470278))

(declare-fun b!2470281 () Bool)

(declare-fun e!1566758 () Bool)

(declare-fun tp!788619 () Bool)

(assert (=> b!2470281 (= e!1566758 tp!788619)))

(declare-fun b!2470280 () Bool)

(declare-fun tp!788620 () Bool)

(declare-fun tp!788617 () Bool)

(assert (=> b!2470280 (= e!1566758 (and tp!788620 tp!788617))))

(assert (=> b!2468846 (= tp!787948 e!1566758)))

(declare-fun b!2470279 () Bool)

(assert (=> b!2470279 (= e!1566758 tp_is_empty!11951)))

(declare-fun b!2470282 () Bool)

(declare-fun tp!788618 () Bool)

(declare-fun tp!788616 () Bool)

(assert (=> b!2470282 (= e!1566758 (and tp!788618 tp!788616))))

(assert (= (and b!2468846 ((_ is ElementMatch!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470279))

(assert (= (and b!2468846 ((_ is Concat!11941) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470280))

(assert (= (and b!2468846 ((_ is Star!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470281))

(assert (= (and b!2468846 ((_ is Union!7271) (regTwo!15054 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470282))

(declare-fun b!2470285 () Bool)

(declare-fun e!1566759 () Bool)

(declare-fun tp!788624 () Bool)

(assert (=> b!2470285 (= e!1566759 tp!788624)))

(declare-fun b!2470284 () Bool)

(declare-fun tp!788625 () Bool)

(declare-fun tp!788622 () Bool)

(assert (=> b!2470284 (= e!1566759 (and tp!788625 tp!788622))))

(assert (=> b!2468816 (= tp!787918 e!1566759)))

(declare-fun b!2470283 () Bool)

(assert (=> b!2470283 (= e!1566759 tp_is_empty!11951)))

(declare-fun b!2470286 () Bool)

(declare-fun tp!788623 () Bool)

(declare-fun tp!788621 () Bool)

(assert (=> b!2470286 (= e!1566759 (and tp!788623 tp!788621))))

(assert (= (and b!2468816 ((_ is ElementMatch!7271) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470283))

(assert (= (and b!2468816 ((_ is Concat!11941) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470284))

(assert (= (and b!2468816 ((_ is Star!7271) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470285))

(assert (= (and b!2468816 ((_ is Union!7271) (regOne!15054 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470286))

(declare-fun b!2470289 () Bool)

(declare-fun e!1566760 () Bool)

(declare-fun tp!788629 () Bool)

(assert (=> b!2470289 (= e!1566760 tp!788629)))

(declare-fun b!2470288 () Bool)

(declare-fun tp!788630 () Bool)

(declare-fun tp!788627 () Bool)

(assert (=> b!2470288 (= e!1566760 (and tp!788630 tp!788627))))

(assert (=> b!2468816 (= tp!787915 e!1566760)))

(declare-fun b!2470287 () Bool)

(assert (=> b!2470287 (= e!1566760 tp_is_empty!11951)))

(declare-fun b!2470290 () Bool)

(declare-fun tp!788628 () Bool)

(declare-fun tp!788626 () Bool)

(assert (=> b!2470290 (= e!1566760 (and tp!788628 tp!788626))))

(assert (= (and b!2468816 ((_ is ElementMatch!7271) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470287))

(assert (= (and b!2468816 ((_ is Concat!11941) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470288))

(assert (= (and b!2468816 ((_ is Star!7271) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470289))

(assert (= (and b!2468816 ((_ is Union!7271) (regTwo!15054 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470290))

(declare-fun b!2470293 () Bool)

(declare-fun e!1566761 () Bool)

(declare-fun tp!788634 () Bool)

(assert (=> b!2470293 (= e!1566761 tp!788634)))

(declare-fun b!2470292 () Bool)

(declare-fun tp!788635 () Bool)

(declare-fun tp!788632 () Bool)

(assert (=> b!2470292 (= e!1566761 (and tp!788635 tp!788632))))

(assert (=> b!2468752 (= tp!787853 e!1566761)))

(declare-fun b!2470291 () Bool)

(assert (=> b!2470291 (= e!1566761 tp_is_empty!11951)))

(declare-fun b!2470294 () Bool)

(declare-fun tp!788633 () Bool)

(declare-fun tp!788631 () Bool)

(assert (=> b!2470294 (= e!1566761 (and tp!788633 tp!788631))))

(assert (= (and b!2468752 ((_ is ElementMatch!7271) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470291))

(assert (= (and b!2468752 ((_ is Concat!11941) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470292))

(assert (= (and b!2468752 ((_ is Star!7271) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470293))

(assert (= (and b!2468752 ((_ is Union!7271) (reg!7600 (regTwo!15055 (regex!4483 (rule!6841 t1!67)))))) b!2470294))

(declare-fun b!2470297 () Bool)

(declare-fun e!1566762 () Bool)

(declare-fun tp!788639 () Bool)

(assert (=> b!2470297 (= e!1566762 tp!788639)))

(declare-fun b!2470296 () Bool)

(declare-fun tp!788640 () Bool)

(declare-fun tp!788637 () Bool)

(assert (=> b!2470296 (= e!1566762 (and tp!788640 tp!788637))))

(assert (=> b!2468855 (= tp!787960 e!1566762)))

(declare-fun b!2470295 () Bool)

(assert (=> b!2470295 (= e!1566762 tp_is_empty!11951)))

(declare-fun b!2470298 () Bool)

(declare-fun tp!788638 () Bool)

(declare-fun tp!788636 () Bool)

(assert (=> b!2470298 (= e!1566762 (and tp!788638 tp!788636))))

(assert (= (and b!2468855 ((_ is ElementMatch!7271) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470295))

(assert (= (and b!2468855 ((_ is Concat!11941) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470296))

(assert (= (and b!2468855 ((_ is Star!7271) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470297))

(assert (= (and b!2468855 ((_ is Union!7271) (reg!7600 (regTwo!15054 (regex!4483 (rule!6841 t1!67)))))) b!2470298))

(declare-fun b!2470301 () Bool)

(declare-fun b_free!71289 () Bool)

(declare-fun b_next!71993 () Bool)

(assert (=> b!2470301 (= b_free!71289 (not b_next!71993))))

(declare-fun tp!788641 () Bool)

(declare-fun b_and!187113 () Bool)

(assert (=> b!2470301 (= tp!788641 b_and!187113)))

(declare-fun b_free!71291 () Bool)

(declare-fun b_next!71995 () Bool)

(assert (=> b!2470301 (= b_free!71291 (not b_next!71995))))

(declare-fun t!209865 () Bool)

(declare-fun tb!139741 () Bool)

(assert (=> (and b!2470301 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611)))))) t!209865) tb!139741))

(declare-fun result!172452 () Bool)

(assert (= result!172452 result!172316))

(assert (=> b!2468725 t!209865))

(declare-fun tb!139743 () Bool)

(declare-fun t!209867 () Bool)

(assert (=> (and b!2470301 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611))))) t!209867) tb!139743))

(declare-fun result!172454 () Bool)

(assert (= result!172454 result!172288))

(assert (=> d!710999 t!209867))

(declare-fun t!209869 () Bool)

(declare-fun tb!139745 () Bool)

(assert (=> (and b!2470301 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611))))))) t!209869) tb!139745))

(declare-fun result!172456 () Bool)

(assert (= result!172456 result!172376))

(assert (=> b!2469082 t!209869))

(declare-fun t!209871 () Bool)

(declare-fun tb!139747 () Bool)

(assert (=> (and b!2470301 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67)))) t!209871) tb!139747))

(declare-fun result!172458 () Bool)

(assert (= result!172458 result!172280))

(assert (=> d!710611 t!209871))

(assert (=> b!2468474 t!209871))

(declare-fun tb!139749 () Bool)

(declare-fun t!209873 () Bool)

(assert (=> (and b!2470301 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67)))) t!209873) tb!139749))

(declare-fun result!172460 () Bool)

(assert (= result!172460 result!172270))

(assert (=> d!710621 t!209873))

(assert (=> b!2468481 t!209867))

(assert (=> d!710475 t!209865))

(declare-fun t!209875 () Bool)

(declare-fun tb!139751 () Bool)

(assert (=> (and b!2470301 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (Cons!28782 (h!34183 (t!209627 l!6611)) (t!209627 (t!209627 l!6611))))))))) t!209875) tb!139751))

(declare-fun result!172462 () Bool)

(assert (= result!172462 result!172392))

(assert (=> d!710761 t!209875))

(assert (=> b!2468467 t!209873))

(declare-fun tp!788643 () Bool)

(declare-fun b_and!187115 () Bool)

(assert (=> b!2470301 (= tp!788643 (and (=> t!209873 result!172460) (=> t!209865 result!172452) (=> t!209869 result!172456) (=> t!209867 result!172454) (=> t!209875 result!172462) (=> t!209871 result!172458) b_and!187115))))

(declare-fun e!1566763 () Bool)

(assert (=> b!2470301 (= e!1566763 (and tp!788641 tp!788643))))

(declare-fun e!1566765 () Bool)

(declare-fun b!2470300 () Bool)

(declare-fun tp!788644 () Bool)

(assert (=> b!2470300 (= e!1566765 (and tp!788644 (inv!38865 (tag!4973 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (inv!38868 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) e!1566763))))

(declare-fun b!2470299 () Bool)

(declare-fun e!1566764 () Bool)

(declare-fun tp!788642 () Bool)

(assert (=> b!2470299 (= e!1566764 (and e!1566765 tp!788642))))

(assert (=> b!2468823 (= tp!787925 e!1566764)))

(assert (= b!2470300 b!2470301))

(assert (= b!2470299 b!2470300))

(assert (= (and b!2468823 ((_ is Cons!28783) (t!209628 (t!209628 (t!209628 rules!4472))))) b!2470299))

(declare-fun m!2839775 () Bool)

(assert (=> b!2470300 m!2839775))

(declare-fun m!2839777 () Bool)

(assert (=> b!2470300 m!2839777))

(declare-fun b!2470304 () Bool)

(declare-fun e!1566767 () Bool)

(declare-fun tp!788648 () Bool)

(assert (=> b!2470304 (= e!1566767 tp!788648)))

(declare-fun b!2470303 () Bool)

(declare-fun tp!788649 () Bool)

(declare-fun tp!788646 () Bool)

(assert (=> b!2470303 (= e!1566767 (and tp!788649 tp!788646))))

(assert (=> b!2468797 (= tp!787898 e!1566767)))

(declare-fun b!2470302 () Bool)

(assert (=> b!2470302 (= e!1566767 tp_is_empty!11951)))

(declare-fun b!2470305 () Bool)

(declare-fun tp!788647 () Bool)

(declare-fun tp!788645 () Bool)

(assert (=> b!2470305 (= e!1566767 (and tp!788647 tp!788645))))

(assert (= (and b!2468797 ((_ is ElementMatch!7271) (regOne!15055 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470302))

(assert (= (and b!2468797 ((_ is Concat!11941) (regOne!15055 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470303))

(assert (= (and b!2468797 ((_ is Star!7271) (regOne!15055 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470304))

(assert (= (and b!2468797 ((_ is Union!7271) (regOne!15055 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470305))

(declare-fun b!2470308 () Bool)

(declare-fun e!1566768 () Bool)

(declare-fun tp!788653 () Bool)

(assert (=> b!2470308 (= e!1566768 tp!788653)))

(declare-fun b!2470307 () Bool)

(declare-fun tp!788654 () Bool)

(declare-fun tp!788651 () Bool)

(assert (=> b!2470307 (= e!1566768 (and tp!788654 tp!788651))))

(assert (=> b!2468797 (= tp!787896 e!1566768)))

(declare-fun b!2470306 () Bool)

(assert (=> b!2470306 (= e!1566768 tp_is_empty!11951)))

(declare-fun b!2470309 () Bool)

(declare-fun tp!788652 () Bool)

(declare-fun tp!788650 () Bool)

(assert (=> b!2470309 (= e!1566768 (and tp!788652 tp!788650))))

(assert (= (and b!2468797 ((_ is ElementMatch!7271) (regTwo!15055 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470306))

(assert (= (and b!2468797 ((_ is Concat!11941) (regTwo!15055 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470307))

(assert (= (and b!2468797 ((_ is Star!7271) (regTwo!15055 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470308))

(assert (= (and b!2468797 ((_ is Union!7271) (regTwo!15055 (reg!7600 (regex!4483 (h!34184 rules!4472)))))) b!2470309))

(declare-fun b!2470312 () Bool)

(declare-fun e!1566769 () Bool)

(declare-fun tp!788658 () Bool)

(assert (=> b!2470312 (= e!1566769 tp!788658)))

(declare-fun b!2470311 () Bool)

(declare-fun tp!788659 () Bool)

(declare-fun tp!788656 () Bool)

(assert (=> b!2470311 (= e!1566769 (and tp!788659 tp!788656))))

(assert (=> b!2468801 (= tp!787905 e!1566769)))

(declare-fun b!2470310 () Bool)

(assert (=> b!2470310 (= e!1566769 tp_is_empty!11951)))

(declare-fun b!2470313 () Bool)

(declare-fun tp!788657 () Bool)

(declare-fun tp!788655 () Bool)

(assert (=> b!2470313 (= e!1566769 (and tp!788657 tp!788655))))

(assert (= (and b!2468801 ((_ is ElementMatch!7271) (regOne!15054 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470310))

(assert (= (and b!2468801 ((_ is Concat!11941) (regOne!15054 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470311))

(assert (= (and b!2468801 ((_ is Star!7271) (regOne!15054 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470312))

(assert (= (and b!2468801 ((_ is Union!7271) (regOne!15054 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470313))

(declare-fun b!2470316 () Bool)

(declare-fun e!1566770 () Bool)

(declare-fun tp!788663 () Bool)

(assert (=> b!2470316 (= e!1566770 tp!788663)))

(declare-fun b!2470315 () Bool)

(declare-fun tp!788664 () Bool)

(declare-fun tp!788661 () Bool)

(assert (=> b!2470315 (= e!1566770 (and tp!788664 tp!788661))))

(assert (=> b!2468801 (= tp!787902 e!1566770)))

(declare-fun b!2470314 () Bool)

(assert (=> b!2470314 (= e!1566770 tp_is_empty!11951)))

(declare-fun b!2470317 () Bool)

(declare-fun tp!788662 () Bool)

(declare-fun tp!788660 () Bool)

(assert (=> b!2470317 (= e!1566770 (and tp!788662 tp!788660))))

(assert (= (and b!2468801 ((_ is ElementMatch!7271) (regTwo!15054 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470314))

(assert (= (and b!2468801 ((_ is Concat!11941) (regTwo!15054 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470315))

(assert (= (and b!2468801 ((_ is Star!7271) (regTwo!15054 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470316))

(assert (= (and b!2468801 ((_ is Union!7271) (regTwo!15054 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470317))

(declare-fun b!2470320 () Bool)

(declare-fun e!1566771 () Bool)

(declare-fun tp!788668 () Bool)

(assert (=> b!2470320 (= e!1566771 tp!788668)))

(declare-fun b!2470319 () Bool)

(declare-fun tp!788669 () Bool)

(declare-fun tp!788666 () Bool)

(assert (=> b!2470319 (= e!1566771 (and tp!788669 tp!788666))))

(assert (=> b!2468832 (= tp!787938 e!1566771)))

(declare-fun b!2470318 () Bool)

(assert (=> b!2470318 (= e!1566771 tp_is_empty!11951)))

(declare-fun b!2470321 () Bool)

(declare-fun tp!788667 () Bool)

(declare-fun tp!788665 () Bool)

(assert (=> b!2470321 (= e!1566771 (and tp!788667 tp!788665))))

(assert (= (and b!2468832 ((_ is ElementMatch!7271) (regOne!15054 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470318))

(assert (= (and b!2468832 ((_ is Concat!11941) (regOne!15054 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470319))

(assert (= (and b!2468832 ((_ is Star!7271) (regOne!15054 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470320))

(assert (= (and b!2468832 ((_ is Union!7271) (regOne!15054 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470321))

(declare-fun b!2470324 () Bool)

(declare-fun e!1566772 () Bool)

(declare-fun tp!788673 () Bool)

(assert (=> b!2470324 (= e!1566772 tp!788673)))

(declare-fun b!2470323 () Bool)

(declare-fun tp!788674 () Bool)

(declare-fun tp!788671 () Bool)

(assert (=> b!2470323 (= e!1566772 (and tp!788674 tp!788671))))

(assert (=> b!2468832 (= tp!787935 e!1566772)))

(declare-fun b!2470322 () Bool)

(assert (=> b!2470322 (= e!1566772 tp_is_empty!11951)))

(declare-fun b!2470325 () Bool)

(declare-fun tp!788672 () Bool)

(declare-fun tp!788670 () Bool)

(assert (=> b!2470325 (= e!1566772 (and tp!788672 tp!788670))))

(assert (= (and b!2468832 ((_ is ElementMatch!7271) (regTwo!15054 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470322))

(assert (= (and b!2468832 ((_ is Concat!11941) (regTwo!15054 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470323))

(assert (= (and b!2468832 ((_ is Star!7271) (regTwo!15054 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470324))

(assert (= (and b!2468832 ((_ is Union!7271) (regTwo!15054 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470325))

(declare-fun b!2470328 () Bool)

(declare-fun e!1566773 () Bool)

(declare-fun tp!788678 () Bool)

(assert (=> b!2470328 (= e!1566773 tp!788678)))

(declare-fun b!2470327 () Bool)

(declare-fun tp!788679 () Bool)

(declare-fun tp!788676 () Bool)

(assert (=> b!2470327 (= e!1566773 (and tp!788679 tp!788676))))

(assert (=> b!2468810 (= tp!787909 e!1566773)))

(declare-fun b!2470326 () Bool)

(assert (=> b!2470326 (= e!1566773 tp_is_empty!11951)))

(declare-fun b!2470329 () Bool)

(declare-fun tp!788677 () Bool)

(declare-fun tp!788675 () Bool)

(assert (=> b!2470329 (= e!1566773 (and tp!788677 tp!788675))))

(assert (= (and b!2468810 ((_ is ElementMatch!7271) (reg!7600 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470326))

(assert (= (and b!2468810 ((_ is Concat!11941) (reg!7600 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470327))

(assert (= (and b!2468810 ((_ is Star!7271) (reg!7600 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470328))

(assert (= (and b!2468810 ((_ is Union!7271) (reg!7600 (regTwo!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470329))

(declare-fun b!2470330 () Bool)

(declare-fun e!1566774 () Bool)

(declare-fun tp!788680 () Bool)

(assert (=> b!2470330 (= e!1566774 (and tp_is_empty!11951 tp!788680))))

(assert (=> b!2468783 (= tp!787882 e!1566774)))

(assert (= (and b!2468783 ((_ is Cons!28781) (innerList!9257 (xs!12177 (c!393380 (dynLambda!12355 (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (value!143171 t2!67))))))) b!2470330))

(declare-fun b!2470331 () Bool)

(declare-fun e!1566775 () Bool)

(declare-fun tp!788681 () Bool)

(assert (=> b!2470331 (= e!1566775 (and tp_is_empty!11951 tp!788681))))

(assert (=> b!2468745 (= tp!787844 e!1566775)))

(assert (= (and b!2468745 ((_ is Cons!28781) (t!209626 (t!209626 (originalCharacters!5249 t2!67))))) b!2470331))

(declare-fun b!2470334 () Bool)

(declare-fun e!1566776 () Bool)

(declare-fun tp!788685 () Bool)

(assert (=> b!2470334 (= e!1566776 tp!788685)))

(declare-fun b!2470333 () Bool)

(declare-fun tp!788686 () Bool)

(declare-fun tp!788683 () Bool)

(assert (=> b!2470333 (= e!1566776 (and tp!788686 tp!788683))))

(assert (=> b!2468848 (= tp!787949 e!1566776)))

(declare-fun b!2470332 () Bool)

(assert (=> b!2470332 (= e!1566776 tp_is_empty!11951)))

(declare-fun b!2470335 () Bool)

(declare-fun tp!788684 () Bool)

(declare-fun tp!788682 () Bool)

(assert (=> b!2470335 (= e!1566776 (and tp!788684 tp!788682))))

(assert (= (and b!2468848 ((_ is ElementMatch!7271) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470332))

(assert (= (and b!2468848 ((_ is Concat!11941) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470333))

(assert (= (and b!2468848 ((_ is Star!7271) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470334))

(assert (= (and b!2468848 ((_ is Union!7271) (regOne!15055 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470335))

(declare-fun b!2470338 () Bool)

(declare-fun e!1566777 () Bool)

(declare-fun tp!788690 () Bool)

(assert (=> b!2470338 (= e!1566777 tp!788690)))

(declare-fun b!2470337 () Bool)

(declare-fun tp!788691 () Bool)

(declare-fun tp!788688 () Bool)

(assert (=> b!2470337 (= e!1566777 (and tp!788691 tp!788688))))

(assert (=> b!2468848 (= tp!787947 e!1566777)))

(declare-fun b!2470336 () Bool)

(assert (=> b!2470336 (= e!1566777 tp_is_empty!11951)))

(declare-fun b!2470339 () Bool)

(declare-fun tp!788689 () Bool)

(declare-fun tp!788687 () Bool)

(assert (=> b!2470339 (= e!1566777 (and tp!788689 tp!788687))))

(assert (= (and b!2468848 ((_ is ElementMatch!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470336))

(assert (= (and b!2468848 ((_ is Concat!11941) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470337))

(assert (= (and b!2468848 ((_ is Star!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470338))

(assert (= (and b!2468848 ((_ is Union!7271) (regTwo!15055 (regTwo!15054 (regex!4483 (rule!6841 (h!34183 l!6611))))))) b!2470339))

(declare-fun b!2470342 () Bool)

(declare-fun e!1566778 () Bool)

(declare-fun tp!788695 () Bool)

(assert (=> b!2470342 (= e!1566778 tp!788695)))

(declare-fun b!2470341 () Bool)

(declare-fun tp!788696 () Bool)

(declare-fun tp!788693 () Bool)

(assert (=> b!2470341 (= e!1566778 (and tp!788696 tp!788693))))

(assert (=> b!2468818 (= tp!787916 e!1566778)))

(declare-fun b!2470340 () Bool)

(assert (=> b!2470340 (= e!1566778 tp_is_empty!11951)))

(declare-fun b!2470343 () Bool)

(declare-fun tp!788694 () Bool)

(declare-fun tp!788692 () Bool)

(assert (=> b!2470343 (= e!1566778 (and tp!788694 tp!788692))))

(assert (= (and b!2468818 ((_ is ElementMatch!7271) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470340))

(assert (= (and b!2468818 ((_ is Concat!11941) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470341))

(assert (= (and b!2468818 ((_ is Star!7271) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470342))

(assert (= (and b!2468818 ((_ is Union!7271) (regOne!15055 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470343))

(declare-fun b!2470346 () Bool)

(declare-fun e!1566779 () Bool)

(declare-fun tp!788700 () Bool)

(assert (=> b!2470346 (= e!1566779 tp!788700)))

(declare-fun b!2470345 () Bool)

(declare-fun tp!788701 () Bool)

(declare-fun tp!788698 () Bool)

(assert (=> b!2470345 (= e!1566779 (and tp!788701 tp!788698))))

(assert (=> b!2468818 (= tp!787914 e!1566779)))

(declare-fun b!2470344 () Bool)

(assert (=> b!2470344 (= e!1566779 tp_is_empty!11951)))

(declare-fun b!2470347 () Bool)

(declare-fun tp!788699 () Bool)

(declare-fun tp!788697 () Bool)

(assert (=> b!2470347 (= e!1566779 (and tp!788699 tp!788697))))

(assert (= (and b!2468818 ((_ is ElementMatch!7271) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470344))

(assert (= (and b!2468818 ((_ is Concat!11941) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470345))

(assert (= (and b!2468818 ((_ is Star!7271) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470346))

(assert (= (and b!2468818 ((_ is Union!7271) (regTwo!15055 (regOne!15055 (regex!4483 (rule!6841 t2!67)))))) b!2470347))

(declare-fun b!2470350 () Bool)

(declare-fun e!1566780 () Bool)

(declare-fun tp!788705 () Bool)

(assert (=> b!2470350 (= e!1566780 tp!788705)))

(declare-fun b!2470349 () Bool)

(declare-fun tp!788706 () Bool)

(declare-fun tp!788703 () Bool)

(assert (=> b!2470349 (= e!1566780 (and tp!788706 tp!788703))))

(assert (=> b!2468803 (= tp!787903 e!1566780)))

(declare-fun b!2470348 () Bool)

(assert (=> b!2470348 (= e!1566780 tp_is_empty!11951)))

(declare-fun b!2470351 () Bool)

(declare-fun tp!788704 () Bool)

(declare-fun tp!788702 () Bool)

(assert (=> b!2470351 (= e!1566780 (and tp!788704 tp!788702))))

(assert (= (and b!2468803 ((_ is ElementMatch!7271) (regOne!15055 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470348))

(assert (= (and b!2468803 ((_ is Concat!11941) (regOne!15055 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470349))

(assert (= (and b!2468803 ((_ is Star!7271) (regOne!15055 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470350))

(assert (= (and b!2468803 ((_ is Union!7271) (regOne!15055 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470351))

(declare-fun b!2470354 () Bool)

(declare-fun e!1566781 () Bool)

(declare-fun tp!788710 () Bool)

(assert (=> b!2470354 (= e!1566781 tp!788710)))

(declare-fun b!2470353 () Bool)

(declare-fun tp!788711 () Bool)

(declare-fun tp!788708 () Bool)

(assert (=> b!2470353 (= e!1566781 (and tp!788711 tp!788708))))

(assert (=> b!2468803 (= tp!787901 e!1566781)))

(declare-fun b!2470352 () Bool)

(assert (=> b!2470352 (= e!1566781 tp_is_empty!11951)))

(declare-fun b!2470355 () Bool)

(declare-fun tp!788709 () Bool)

(declare-fun tp!788707 () Bool)

(assert (=> b!2470355 (= e!1566781 (and tp!788709 tp!788707))))

(assert (= (and b!2468803 ((_ is ElementMatch!7271) (regTwo!15055 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470352))

(assert (= (and b!2468803 ((_ is Concat!11941) (regTwo!15055 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470353))

(assert (= (and b!2468803 ((_ is Star!7271) (regTwo!15055 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470354))

(assert (= (and b!2468803 ((_ is Union!7271) (regTwo!15055 (regOne!15055 (regex!4483 (h!34184 rules!4472)))))) b!2470355))

(declare-fun b!2470358 () Bool)

(declare-fun e!1566782 () Bool)

(declare-fun tp!788715 () Bool)

(assert (=> b!2470358 (= e!1566782 tp!788715)))

(declare-fun b!2470357 () Bool)

(declare-fun tp!788716 () Bool)

(declare-fun tp!788713 () Bool)

(assert (=> b!2470357 (= e!1566782 (and tp!788716 tp!788713))))

(assert (=> b!2468834 (= tp!787936 e!1566782)))

(declare-fun b!2470356 () Bool)

(assert (=> b!2470356 (= e!1566782 tp_is_empty!11951)))

(declare-fun b!2470359 () Bool)

(declare-fun tp!788714 () Bool)

(declare-fun tp!788712 () Bool)

(assert (=> b!2470359 (= e!1566782 (and tp!788714 tp!788712))))

(assert (= (and b!2468834 ((_ is ElementMatch!7271) (regOne!15055 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470356))

(assert (= (and b!2468834 ((_ is Concat!11941) (regOne!15055 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470357))

(assert (= (and b!2468834 ((_ is Star!7271) (regOne!15055 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470358))

(assert (= (and b!2468834 ((_ is Union!7271) (regOne!15055 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470359))

(declare-fun b!2470362 () Bool)

(declare-fun e!1566783 () Bool)

(declare-fun tp!788720 () Bool)

(assert (=> b!2470362 (= e!1566783 tp!788720)))

(declare-fun b!2470361 () Bool)

(declare-fun tp!788721 () Bool)

(declare-fun tp!788718 () Bool)

(assert (=> b!2470361 (= e!1566783 (and tp!788721 tp!788718))))

(assert (=> b!2468834 (= tp!787934 e!1566783)))

(declare-fun b!2470360 () Bool)

(assert (=> b!2470360 (= e!1566783 tp_is_empty!11951)))

(declare-fun b!2470363 () Bool)

(declare-fun tp!788719 () Bool)

(declare-fun tp!788717 () Bool)

(assert (=> b!2470363 (= e!1566783 (and tp!788719 tp!788717))))

(assert (= (and b!2468834 ((_ is ElementMatch!7271) (regTwo!15055 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470360))

(assert (= (and b!2468834 ((_ is Concat!11941) (regTwo!15055 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470361))

(assert (= (and b!2468834 ((_ is Star!7271) (regTwo!15055 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470362))

(assert (= (and b!2468834 ((_ is Union!7271) (regTwo!15055 (regex!4483 (h!34184 (t!209628 rules!4472)))))) b!2470363))

(declare-fun b_lambda!75751 () Bool)

(assert (= b_lambda!75739 (or d!710625 b_lambda!75751)))

(declare-fun bs!466926 () Bool)

(declare-fun d!711251 () Bool)

(assert (= bs!466926 (and d!711251 d!710625)))

(assert (=> bs!466926 (= (dynLambda!12364 lambda!93282 (h!34184 rules!4472)) (regex!4483 (h!34184 rules!4472)))))

(assert (=> b!2469464 d!711251))

(declare-fun b_lambda!75753 () Bool)

(assert (= b_lambda!75683 (or (and b!2468768 b_free!71271 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2468825 b_free!71275 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2469987 b_free!71287 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) (and b!2470301 b_free!71291 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (toChars!6202 (transformation!4483 (rule!6841 t1!67))))) b_lambda!75753)))

(declare-fun b_lambda!75755 () Bool)

(assert (= b_lambda!75741 (or (and b!2468228 b_free!71239 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2468223 b_free!71243 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2468235 b_free!71251) (and b!2468239 b_free!71247 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2468768 b_free!71271 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2468530 b_free!71263 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2468544 b_free!71267 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2468825 b_free!71275 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2469987 b_free!71287 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2470301 b_free!71291 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) b_lambda!75755)))

(declare-fun b_lambda!75757 () Bool)

(assert (= b_lambda!75735 (or d!710401 b_lambda!75757)))

(declare-fun bs!466927 () Bool)

(declare-fun d!711253 () Bool)

(assert (= bs!466927 (and d!711253 d!710401)))

(assert (=> bs!466927 (= (dynLambda!12357 lambda!93255 (h!34183 (t!209627 l!6611))) (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 l!6611))))))

(assert (=> bs!466927 m!2837583))

(assert (=> b!2469346 d!711253))

(declare-fun b_lambda!75759 () Bool)

(assert (= b_lambda!75681 (or (and b!2468768 b_free!71271 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2468825 b_free!71275 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2469987 b_free!71287 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) (and b!2470301 b_free!71291 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (toChars!6202 (transformation!4483 (rule!6841 t2!67))))) b_lambda!75759)))

(declare-fun b_lambda!75761 () Bool)

(assert (= b_lambda!75729 (or (and b!2470301 b_free!71291 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))))) (and b!2468825 b_free!71275 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))))) (and b!2468768 b_free!71271) (and b!2468228 b_free!71239 (= (toChars!6202 (transformation!4483 (rule!6841 t2!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))))) (and b!2468530 b_free!71263 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 rules!4472)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))))) (and b!2468223 b_free!71243 (= (toChars!6202 (transformation!4483 (rule!6841 t1!67))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))))) (and b!2468544 b_free!71267 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 l!6611))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))))) (and b!2468235 b_free!71251 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))))) (and b!2469987 b_free!71287 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))))) (and b!2468239 b_free!71247 (= (toChars!6202 (transformation!4483 (h!34184 rules!4472))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))))) b_lambda!75761)))

(declare-fun b_lambda!75763 () Bool)

(assert (= b_lambda!75685 (or (and b!2468768 b_free!71271 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 l!6611)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2468825 b_free!71275 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 rules!4472))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2469987 b_free!71287 (= (toChars!6202 (transformation!4483 (rule!6841 (h!34183 (t!209627 (t!209627 (t!209627 l!6611))))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) (and b!2470301 b_free!71291 (= (toChars!6202 (transformation!4483 (h!34184 (t!209628 (t!209628 (t!209628 rules!4472)))))) (toChars!6202 (transformation!4483 (rule!6841 (h!34183 l!6611)))))) b_lambda!75763)))

(declare-fun b_lambda!75765 () Bool)

(assert (= b_lambda!75737 (or d!710467 b_lambda!75765)))

(declare-fun bs!466928 () Bool)

(declare-fun d!711255 () Bool)

(assert (= bs!466928 (and d!711255 d!710467)))

(assert (=> bs!466928 (= (dynLambda!12357 lambda!93256 (h!34183 (t!209627 l!6611))) (rulesProduceIndividualToken!1812 thiss!27932 rules!4472 (h!34183 (t!209627 l!6611))))))

(assert (=> bs!466928 m!2837583))

(assert (=> b!2469370 d!711255))

(declare-fun b_lambda!75767 () Bool)

(assert (= b_lambda!75727 (or d!710561 b_lambda!75767)))

(declare-fun bs!466929 () Bool)

(declare-fun d!711257 () Bool)

(assert (= bs!466929 (and d!711257 d!710561)))

(assert (=> bs!466929 (= (dynLambda!12362 lambda!93273 (h!34184 rules!4472)) (ruleValid!1514 thiss!27932 (h!34184 rules!4472)))))

(assert (=> bs!466929 m!2838287))

(assert (=> b!2469015 d!711257))

(check-sat (not b_next!71943) (not b!2469831) (not d!710847) (not b!2469218) (not b!2469965) (not d!710833) (not b!2470320) (not b!2470345) (not b!2469091) (not b!2470304) (not d!711225) (not b!2469982) b_and!187071 (not d!710945) (not b!2470292) (not b!2470022) (not b!2470197) b_and!186909 (not b!2469596) (not b!2469856) (not b!2470178) (not b!2470118) (not b!2469933) b_and!187113 (not b!2469762) (not b!2470050) (not b!2470030) (not b!2470223) (not b!2470044) (not d!710957) (not d!710819) (not d!710941) (not b!2470325) b_and!186837 (not b!2469938) b_and!187067 (not b!2469306) (not d!710759) (not b!2469715) (not d!710883) (not b!2469881) (not b!2470093) (not b!2470035) (not b!2469032) (not b!2470359) b_and!187069 b_and!187065 (not b!2470182) (not b!2469861) (not b!2470048) (not b!2469240) (not b!2470278) (not b!2470357) (not b_next!71969) (not d!710887) (not b!2469897) (not b!2470027) (not b!2470175) (not b!2469943) (not b!2469690) (not b!2469754) (not d!710989) (not b!2469953) (not b!2469059) (not b!2470174) (not d!710997) (not b!2470203) (not b!2470147) (not d!710975) (not b!2469016) (not d!710821) (not b!2469419) (not b!2470221) (not b!2470156) (not b!2469373) (not b!2469949) (not d!710749) (not b!2469127) (not b!2470276) (not b!2470250) (not d!711131) (not b!2469947) (not b!2469973) (not b!2470285) (not b!2469917) (not b_next!71977) (not b!2470266) (not b!2470349) (not b!2469347) (not b!2470249) (not d!710861) (not b_lambda!75751) (not b!2468781) (not b!2470193) (not b!2470110) (not b!2469354) (not d!710929) (not b!2470094) (not b!2469215) (not b!2470164) (not b!2470300) (not b!2469991) (not b!2470253) (not b!2469413) (not d!711227) (not d!710869) (not b!2470040) (not d!711207) (not d!710729) (not b!2470134) (not b!2470008) (not b!2469331) (not d!710877) (not b!2470149) (not b!2470059) (not b!2469134) (not b!2469930) (not b!2470230) (not b!2470047) (not d!710825) (not b!2470161) (not b!2469231) (not d!710987) (not tb!139665) (not b!2469809) (not b!2469256) (not b!2470100) (not d!710913) (not b!2470039) (not b!2470117) (not b!2469107) (not b!2469779) (not d!710971) (not b!2469848) (not b!2469889) (not d!710851) (not b!2469916) (not b_lambda!75755) (not b!2470362) b_and!186845 (not bs!466929) (not b!2469882) (not b!2470198) (not b!2470333) (not b!2468812) (not b!2470346) (not b_lambda!75715) (not d!710765) (not b!2469356) (not b!2470072) (not b!2469951) (not b!2470090) (not b!2470355) (not b!2470024) (not b!2470244) (not b!2469109) (not b!2469820) (not b!2470254) (not b!2470137) (not b!2469289) (not b!2469874) (not b!2470317) (not b!2470265) (not b!2469465) (not b!2469136) (not b!2469298) (not b!2470073) (not b!2469450) (not b!2470351) (not b!2469368) (not bm!151463) (not b!2470330) (not b!2469822) (not b!2469966) (not b!2469853) (not b!2470038) (not b!2469626) (not b!2470186) b_and!187063 (not b!2469321) (not b!2470091) (not b!2470113) (not b!2469821) (not d!710919) (not d!711183) (not b!2470308) (not b!2470173) (not b!2469410) (not b!2469986) (not b!2470334) (not b!2470071) (not b!2469360) (not d!710993) (not b!2469290) (not b!2469773) (not b!2470268) (not b!2469111) (not b!2469801) (not b!2470195) (not b!2469130) (not b!2469456) (not b!2469957) (not b!2470210) (not b!2470272) (not b!2469793) (not b!2469449) (not b!2469412) (not b!2470309) (not b!2470328) (not b!2469818) (not b!2469958) (not b!2468835) (not b!2469467) (not b!2470298) (not b!2469247) (not bm!151533) (not b!2469233) (not b!2470258) (not d!710753) (not b!2470148) (not b!2470079) (not d!710995) b_and!187075 (not b!2470227) (not b!2470329) (not b!2469845) (not b!2469858) (not d!711199) (not b!2469355) (not b!2469504) (not b!2469808) (not b!2470290) tp_is_empty!11951 (not b!2470217) (not b!2469364) (not b!2469794) (not b!2469790) (not b!2469414) (not b!2468564) (not b!2470002) (not b!2469978) (not b_next!71989) (not b!2470127) (not b!2469755) (not b!2469869) (not d!710853) (not b!2469009) (not b!2470338) (not b!2469990) (not b!2469984) (not b!2470167) (not b!2469883) (not b!2469867) (not b!2470018) (not b!2470065) (not b!2470218) (not b!2469810) (not b!2469971) (not b!2470012) (not b!2469090) (not b!2469977) (not b_next!71993) (not b!2469961) (not b_next!71971) (not d!710871) (not d!710823) (not b_lambda!75707) (not b!2470240) (not b!2469031) (not b!2469372) (not d!710743) (not b!2470034) (not b!2469854) (not b!2469453) (not b_lambda!75713) (not b!2470157) (not b!2469855) (not b!2469269) (not b!2470064) (not d!711045) (not b!2469108) (not b_next!71955) (not b!2470321) (not b!2470286) (not b!2470109) (not b!2469768) (not b!2469857) (not b!2469133) (not b!2470335) (not b!2470299) (not b!2470095) (not b_next!71967) (not b_lambda!75753) (not b!2470327) (not b!2469126) (not b!2469923) (not b!2469836) (not b!2469495) (not b!2469934) (not b!2470315) (not b!2470168) (not b!2470238) (not b!2469907) b_and!187109 (not d!710829) (not d!710903) (not b_lambda!75757) (not b!2469627) (not b!2469887) (not b!2470063) (not b!2470133) (not b!2470011) (not d!711181) (not b!2470128) (not d!710843) (not b!2470232) (not b!2469252) (not b!2470206) (not b!2469078) (not b!2470026) (not b!2470289) (not d!710817) (not d!710991) (not d!710865) (not b!2470056) (not d!710873) (not bm!151534) (not b!2469335) (not b!2470339) (not b!2470108) (not d!710999) (not b!2470341) (not b!2469304) (not b!2470014) (not b!2469341) (not b!2469950) (not b!2470061) (not b!2469358) b_and!187017 (not b!2469918) (not b!2470257) (not b!2470019) (not b_next!71995) (not b!2470163) (not d!710737) (not b!2470051) (not b!2470231) (not b!2469253) (not b!2469357) (not b!2469352) (not b_next!71953) (not b!2469454) (not b!2470245) (not b!2469866) (not b!2470213) (not b!2470069) (not b!2469922) (not bm!151451) (not b!2469847) (not b!2469919) (not b!2469314) (not b!2470331) (not d!710777) (not b!2470350) (not b!2470235) (not b!2469367) (not d!710925) (not b!2469106) (not b!2470363) (not d!710879) (not b!2469338) (not b!2470219) (not b!2469832) (not b!2469409) (not b!2469824) (not b!2470226) b_and!187013 (not b!2469004) (not b!2469339) (not b!2469962) (not d!710863) (not b!2470151) (not b!2469010) (not d!711031) (not b_next!71945) (not d!710849) (not b!2470144) (not b!2469083) (not b!2469085) (not b!2470076) (not b!2469365) (not b!2469865) (not b!2469224) (not b!2469451) (not d!710969) (not b!2470316) (not b!2470260) (not b!2470052) (not d!710779) (not d!710841) (not b!2470246) (not b!2469888) (not b!2469366) (not b!2470068) (not b!2469896) (not d!711107) (not b!2470261) (not b_next!71979) (not d!710797) (not b!2470177) (not bm!151450) (not b!2470077) (not d!710959) (not b!2470270) (not b!2469770) (not d!711143) (not d!710767) (not d!711137) (not b!2469959) (not b!2469955) (not b!2469359) (not b!2469707) (not b!2470277) (not b_lambda!75709) (not d!710875) (not b!2470247) (not b!2469254) (not b!2470205) (not b!2470080) (not b!2470152) (not b!2469804) (not b!2469714) (not b!2470122) b_and!186849 (not b!2470323) (not b!2469975) (not b!2470225) (not b_lambda!75765) (not b!2469863) (not d!710943) (not b!2469287) (not b!2470288) (not b!2469270) (not bm!151453) (not d!710739) (not d!710769) (not b!2470199) (not d!711211) (not b!2469875) (not b!2469464) (not b!2469336) (not d!710973) (not b!2469844) (not b!2470101) (not b!2470138) (not b!2469859) (not b!2469871) (not b!2469664) b_and!187061 (not b!2470189) (not b!2470036) (not b!2469344) (not b!2469271) (not b!2470313) (not d!710793) (not b_next!71975) (not b!2470006) (not b!2469827) (not b!2470324) (not b_next!71973) (not b_next!71951) b_and!187111 (not b!2470083) (not b!2469033) (not d!711051) (not b!2470139) (not b!2470242) (not b!2469937) (not b!2470169) (not b!2470075) (not d!711193) (not b!2469979) (not b!2470145) (not b!2470280) (not b!2469983) (not b!2470281) (not b!2469849) (not b!2470031) (not b_next!71949) (not d!710889) (not b!2469362) (not b!2470361) (not b!2469371) (not b!2470305) (not b!2470215) (not b_next!71947) (not b!2470153) (not b!2470303) (not b!2469837) (not b!2469345) (not b!2469243) (not b!2470054) (not d!711217) (not d!710895) (not b!2469763) (not b!2470183) (not b!2470185) (not b!2470347) (not b!2469259) (not b_next!71941) (not b!2469931) (not b!2469967) (not b!2469238) (not d!710857) (not b!2469927) (not b!2469089) (not d!710927) (not b!2469926) (not b!2470282) (not b!2469870) (not d!710891) (not d!710827) (not b!2470016) (not b!2470312) (not b!2469135) (not b!2470191) (not b!2469332) (not b!2470358) (not b!2470028) (not b!2469702) (not b!2470084) (not b!2470194) (not b!2469851) (not b!2470129) (not b_lambda!75711) (not b!2469349) (not b!2470284) (not d!710917) (not b!2469910) (not b!2469237) (not b!2469941) (not d!710757) (not b!2469843) (not b!2469942) (not b!2470135) (not bm!151465) (not b!2469879) (not bs!466927) (not b!2469825) b_and!187073 (not b!2470003) (not d!710761) (not b!2469241) (not b!2470236) (not d!710787) (not b!2470353) (not b!2470010) (not b_lambda!75731) (not b!2469852) (not b!2470209) (not b!2470201) (not b!2470081) (not d!710855) (not b!2470343) (not b!2469835) (not b!2470055) (not b!2469291) (not d!711195) (not d!710901) (not b!2469250) (not b!2470239) (not b!2469086) (not b!2469989) (not b!2470015) (not b!2469132) (not b!2469302) (not b!2469935) (not b!2470032) (not b!2470228) (not b!2469841) (not b_lambda!75761) (not b!2470004) (not d!711191) (not bm!151454) (not d!711083) (not b!2470125) (not b!2469084) (not b!2469970) (not b!2469034) (not b!2470319) (not d!711129) (not b!2469873) (not b!2470294) (not b!2469351) (not b!2470273) (not b!2469929) (not d!710839) (not d!711001) (not b!2470211) (not b!2470307) (not b!2469353) (not b!2469802) (not b_lambda!75759) (not b!2469939) (not bm!151468) (not d!710831) (not b!2469969) (not b!2470116) (not b!2469301) (not b!2469088) (not b!2469895) (not b!2469131) (not b!2469902) (not bm!151452) (not b!2469061) (not b!2469110) (not d!710835) (not d!711171) (not b!2469839) (not d!710897) (not b!2469840) (not b!2470190) (not b_next!71991) b_and!186841 (not b!2470023) (not b!2470342) (not b!2470114) (not b!2469246) (not b!2470269) (not b!2470274) (not b!2469985) (not b!2469369) (not b!2469963) (not b!2470243) (not tb!139681) (not b!2469708) (not b!2470042) (not b!2469833) (not b!2469689) (not b!2470060) (not bs!466928) (not b!2470099) (not b!2470160) (not b!2469374) (not b!2469417) (not b!2470214) (not b!2469087) (not b!2470119) (not b!2469251) (not b!2470155) (not b!2469946) (not d!710721) (not b!2469258) (not b!2470262) (not d!710715) (not b!2469877) (not b!2470181) (not b!2469428) (not b!2469954) (not b_next!71965) (not d!710773) (not b!2469945) (not b!2470085) (not b!2470252) (not b!2469082) (not b!2469452) (not b!2470256) (not d!710723) (not b!2470187) (not b!2469819) (not b!2469806) (not d!710939) (not b!2470159) (not b!2470020) (not b!2470112) (not b!2470337) (not b!2469223) (not d!710931) (not b!2469981) (not b!2470067) (not b!2469921) (not b!2470043) (not b!2470092) (not b!2470057) (not b!2470046) (not b!2470311) (not d!710837) (not b!2469826) (not d!711215) (not b!2469415) (not b!2469925) (not b!2470234) (not b!2470222) (not b!2470207) b_and!187115 (not b!2469823) (not b!2469074) (not b!2469799) (not d!710717) (not b!2470098) (not b!2470264) (not b!2469974) (not b!2470007) (not b!2470354) (not b!2470293) (not b!2469608) (not b!2469862) (not b!2469909) (not b!2470143) (not b!2469468) (not b!2470296) (not b!2470165) (not b!2470248) (not b_lambda!75763) (not b!2469262) (not b!2470297) (not b!2469303) (not d!710899) (not b!2469466) (not b!2470202) (not b!2469878) (not b!2470179) (not b_lambda!75767) b_and!186913)
(check-sat (not b_next!71977) b_and!186845 b_and!187063 b_and!187075 (not b_next!71971) (not b_next!71979) b_and!186849 b_and!187061 (not b_next!71949) b_and!187073 (not b_next!71965) b_and!187115 b_and!186913 (not b_next!71943) b_and!187071 b_and!186909 b_and!187113 b_and!186837 b_and!187067 b_and!187069 (not b_next!71969) b_and!187065 (not b_next!71989) (not b_next!71993) (not b_next!71967) (not b_next!71955) b_and!187109 b_and!187017 (not b_next!71995) (not b_next!71953) b_and!187013 (not b_next!71945) (not b_next!71975) (not b_next!71973) (not b_next!71951) b_and!187111 (not b_next!71947) (not b_next!71941) (not b_next!71991) b_and!186841)
