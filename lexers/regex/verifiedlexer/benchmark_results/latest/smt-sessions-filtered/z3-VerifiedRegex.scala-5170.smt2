; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266282 () Bool)

(assert start!266282)

(declare-fun b!2746780 () Bool)

(declare-fun b_free!77417 () Bool)

(declare-fun b_next!78121 () Bool)

(assert (=> b!2746780 (= b_free!77417 (not b_next!78121))))

(declare-fun tp!865562 () Bool)

(declare-fun b_and!202137 () Bool)

(assert (=> b!2746780 (= tp!865562 b_and!202137)))

(declare-fun b!2746794 () Bool)

(declare-fun b_free!77419 () Bool)

(declare-fun b_next!78123 () Bool)

(assert (=> b!2746794 (= b_free!77419 (not b_next!78123))))

(declare-fun tp!865551 () Bool)

(declare-fun b_and!202139 () Bool)

(assert (=> b!2746794 (= tp!865551 b_and!202139)))

(declare-fun b_free!77421 () Bool)

(declare-fun b_next!78125 () Bool)

(assert (=> b!2746794 (= b_free!77421 (not b_next!78125))))

(declare-fun tp!865572 () Bool)

(declare-fun b_and!202141 () Bool)

(assert (=> b!2746794 (= tp!865572 b_and!202141)))

(declare-fun b!2746795 () Bool)

(declare-fun b_free!77423 () Bool)

(declare-fun b_next!78127 () Bool)

(assert (=> b!2746795 (= b_free!77423 (not b_next!78127))))

(declare-fun tp!865550 () Bool)

(declare-fun b_and!202143 () Bool)

(assert (=> b!2746795 (= tp!865550 b_and!202143)))

(declare-fun b!2746772 () Bool)

(declare-fun b_free!77425 () Bool)

(declare-fun b_next!78129 () Bool)

(assert (=> b!2746772 (= b_free!77425 (not b_next!78129))))

(declare-fun tp!865579 () Bool)

(declare-fun b_and!202145 () Bool)

(assert (=> b!2746772 (= tp!865579 b_and!202145)))

(declare-fun b_free!77427 () Bool)

(declare-fun b_next!78131 () Bool)

(assert (=> b!2746772 (= b_free!77427 (not b_next!78131))))

(declare-fun tp!865569 () Bool)

(declare-fun b_and!202147 () Bool)

(assert (=> b!2746772 (= tp!865569 b_and!202147)))

(declare-fun b!2746786 () Bool)

(declare-fun b_free!77429 () Bool)

(declare-fun b_next!78133 () Bool)

(assert (=> b!2746786 (= b_free!77429 (not b_next!78133))))

(declare-fun tp!865552 () Bool)

(declare-fun b_and!202149 () Bool)

(assert (=> b!2746786 (= tp!865552 b_and!202149)))

(declare-fun b!2746774 () Bool)

(declare-fun b_free!77431 () Bool)

(declare-fun b_next!78135 () Bool)

(assert (=> b!2746774 (= b_free!77431 (not b_next!78135))))

(declare-fun tp!865563 () Bool)

(declare-fun b_and!202151 () Bool)

(assert (=> b!2746774 (= tp!865563 b_and!202151)))

(declare-fun b!2746782 () Bool)

(declare-fun b_free!77433 () Bool)

(declare-fun b_next!78137 () Bool)

(assert (=> b!2746782 (= b_free!77433 (not b_next!78137))))

(declare-fun tp!865560 () Bool)

(declare-fun b_and!202153 () Bool)

(assert (=> b!2746782 (= tp!865560 b_and!202153)))

(declare-fun b!2746793 () Bool)

(declare-fun b_free!77435 () Bool)

(declare-fun b_next!78139 () Bool)

(assert (=> b!2746793 (= b_free!77435 (not b_next!78139))))

(declare-fun tp!865581 () Bool)

(declare-fun b_and!202155 () Bool)

(assert (=> b!2746793 (= tp!865581 b_and!202155)))

(declare-fun b!2746777 () Bool)

(declare-fun b_free!77437 () Bool)

(declare-fun b_next!78141 () Bool)

(assert (=> b!2746777 (= b_free!77437 (not b_next!78141))))

(declare-fun tp!865570 () Bool)

(declare-fun b_and!202157 () Bool)

(assert (=> b!2746777 (= tp!865570 b_and!202157)))

(declare-fun b!2746808 () Bool)

(declare-fun b_free!77439 () Bool)

(declare-fun b_next!78143 () Bool)

(assert (=> b!2746808 (= b_free!77439 (not b_next!78143))))

(declare-fun tp!865586 () Bool)

(declare-fun b_and!202159 () Bool)

(assert (=> b!2746808 (= tp!865586 b_and!202159)))

(declare-fun b!2746770 () Bool)

(declare-fun e!1730688 () Bool)

(declare-fun e!1730679 () Bool)

(assert (=> b!2746770 (= e!1730688 e!1730679)))

(declare-fun b!2746771 () Bool)

(declare-fun e!1730709 () Bool)

(assert (=> b!2746771 (= e!1730679 e!1730709)))

(declare-fun e!1730673 () Bool)

(assert (=> b!2746772 (= e!1730673 (and tp!865579 tp!865569))))

(declare-fun b!2746773 () Bool)

(declare-fun e!1730689 () Bool)

(declare-fun tp!865561 () Bool)

(declare-fun mapRes!16535 () Bool)

(assert (=> b!2746773 (= e!1730689 (and tp!865561 mapRes!16535))))

(declare-fun condMapEmpty!16536 () Bool)

(declare-datatypes ((array!12908 0))(
  ( (array!12909 (arr!5761 (Array (_ BitVec 32) (_ BitVec 64))) (size!24440 (_ BitVec 32))) )
))
(declare-datatypes ((C!16168 0))(
  ( (C!16169 (val!10018 Int)) )
))
(declare-datatypes ((Regex!8005 0))(
  ( (ElementMatch!8005 (c!444878 C!16168)) (Concat!13077 (regOne!16522 Regex!8005) (regTwo!16522 Regex!8005)) (EmptyExpr!8005) (Star!8005 (reg!8334 Regex!8005)) (EmptyLang!8005) (Union!8005 (regOne!16523 Regex!8005) (regTwo!16523 Regex!8005)) )
))
(declare-datatypes ((List!31755 0))(
  ( (Nil!31655) (Cons!31655 (h!37075 Regex!8005) (t!227843 List!31755)) )
))
(declare-datatypes ((Context!4446 0))(
  ( (Context!4447 (exprs!2723 List!31755)) )
))
(declare-datatypes ((tuple2!31492 0))(
  ( (tuple2!31493 (_1!18437 Context!4446) (_2!18437 C!16168)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31494 0))(
  ( (tuple2!31495 (_1!18438 tuple2!31492) (_2!18438 (InoxSet Context!4446))) )
))
(declare-datatypes ((List!31756 0))(
  ( (Nil!31656) (Cons!31656 (h!37076 tuple2!31494) (t!227844 List!31756)) )
))
(declare-datatypes ((array!12910 0))(
  ( (array!12911 (arr!5762 (Array (_ BitVec 32) List!31756)) (size!24441 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7246 0))(
  ( (LongMapFixedSize!7247 (defaultEntry!4008 Int) (mask!9362 (_ BitVec 32)) (extraKeys!3872 (_ BitVec 32)) (zeroValue!3882 List!31756) (minValue!3882 List!31756) (_size!7289 (_ BitVec 32)) (_keys!3923 array!12908) (_values!3904 array!12910) (_vacant!3684 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14301 0))(
  ( (Cell!14302 (v!33280 LongMapFixedSize!7246)) )
))
(declare-datatypes ((MutLongMap!3623 0))(
  ( (LongMap!3623 (underlying!7449 Cell!14301)) (MutLongMapExt!3622 (__x!20489 Int)) )
))
(declare-datatypes ((Cell!14303 0))(
  ( (Cell!14304 (v!33281 MutLongMap!3623)) )
))
(declare-datatypes ((Hashable!3539 0))(
  ( (HashableExt!3538 (__x!20490 Int)) )
))
(declare-datatypes ((MutableMap!3529 0))(
  ( (MutableMapExt!3528 (__x!20491 Int)) (HashMap!3529 (underlying!7450 Cell!14303) (hashF!5571 Hashable!3539) (_size!7290 (_ BitVec 32)) (defaultValue!3700 Int)) )
))
(declare-datatypes ((CacheUp!2236 0))(
  ( (CacheUp!2237 (cache!3672 MutableMap!3529)) )
))
(declare-fun cacheUp!633 () CacheUp!2236)

(declare-fun mapDefault!16533 () List!31756)

(assert (=> b!2746773 (= condMapEmpty!16536 (= (arr!5762 (_values!3904 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31756)) mapDefault!16533)))))

(declare-fun tp!865568 () Bool)

(declare-datatypes ((tuple3!4442 0))(
  ( (tuple3!4443 (_1!18439 Regex!8005) (_2!18439 Context!4446) (_3!2691 C!16168)) )
))
(declare-datatypes ((tuple2!31496 0))(
  ( (tuple2!31497 (_1!18440 tuple3!4442) (_2!18440 (InoxSet Context!4446))) )
))
(declare-datatypes ((List!31757 0))(
  ( (Nil!31657) (Cons!31657 (h!37077 tuple2!31496) (t!227845 List!31757)) )
))
(declare-datatypes ((array!12912 0))(
  ( (array!12913 (arr!5763 (Array (_ BitVec 32) List!31757)) (size!24442 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7248 0))(
  ( (LongMapFixedSize!7249 (defaultEntry!4009 Int) (mask!9363 (_ BitVec 32)) (extraKeys!3873 (_ BitVec 32)) (zeroValue!3883 List!31757) (minValue!3883 List!31757) (_size!7291 (_ BitVec 32)) (_keys!3924 array!12908) (_values!3905 array!12912) (_vacant!3685 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14305 0))(
  ( (Cell!14306 (v!33282 LongMapFixedSize!7248)) )
))
(declare-datatypes ((MutLongMap!3624 0))(
  ( (LongMap!3624 (underlying!7451 Cell!14305)) (MutLongMapExt!3623 (__x!20492 Int)) )
))
(declare-datatypes ((Cell!14307 0))(
  ( (Cell!14308 (v!33283 MutLongMap!3624)) )
))
(declare-datatypes ((Hashable!3540 0))(
  ( (HashableExt!3539 (__x!20493 Int)) )
))
(declare-datatypes ((MutableMap!3530 0))(
  ( (MutableMapExt!3529 (__x!20494 Int)) (HashMap!3530 (underlying!7452 Cell!14307) (hashF!5572 Hashable!3540) (_size!7292 (_ BitVec 32)) (defaultValue!3701 Int)) )
))
(declare-datatypes ((CacheDown!2354 0))(
  ( (CacheDown!2355 (cache!3673 MutableMap!3530)) )
))
(declare-fun cacheDown!646 () CacheDown!2354)

(declare-fun tp!865574 () Bool)

(declare-fun e!1730699 () Bool)

(declare-fun e!1730713 () Bool)

(declare-fun array_inv!4117 (array!12908) Bool)

(declare-fun array_inv!4118 (array!12912) Bool)

(assert (=> b!2746774 (= e!1730699 (and tp!865563 tp!865574 tp!865568 (array_inv!4117 (_keys!3924 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646))))))) (array_inv!4118 (_values!3905 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646))))))) e!1730713))))

(declare-fun e!1730700 () Bool)

(declare-datatypes ((List!31758 0))(
  ( (Nil!31658) (Cons!31658 (h!37078 (_ BitVec 16)) (t!227846 List!31758)) )
))
(declare-datatypes ((TokenValue!5072 0))(
  ( (FloatLiteralValue!10144 (text!35949 List!31758)) (TokenValueExt!5071 (__x!20495 Int)) (Broken!25360 (value!155797 List!31758)) (Object!5171) (End!5072) (Def!5072) (Underscore!5072) (Match!5072) (Else!5072) (Error!5072) (Case!5072) (If!5072) (Extends!5072) (Abstract!5072) (Class!5072) (Val!5072) (DelimiterValue!10144 (del!5132 List!31758)) (KeywordValue!5078 (value!155798 List!31758)) (CommentValue!10144 (value!155799 List!31758)) (WhitespaceValue!10144 (value!155800 List!31758)) (IndentationValue!5072 (value!155801 List!31758)) (String!35265) (Int32!5072) (Broken!25361 (value!155802 List!31758)) (Boolean!5073) (Unit!45540) (OperatorValue!5075 (op!5132 List!31758)) (IdentifierValue!10144 (value!155803 List!31758)) (IdentifierValue!10145 (value!155804 List!31758)) (WhitespaceValue!10145 (value!155805 List!31758)) (True!10144) (False!10144) (Broken!25362 (value!155806 List!31758)) (Broken!25363 (value!155807 List!31758)) (True!10145) (RightBrace!5072) (RightBracket!5072) (Colon!5072) (Null!5072) (Comma!5072) (LeftBracket!5072) (False!10145) (LeftBrace!5072) (ImaginaryLiteralValue!5072 (text!35950 List!31758)) (StringLiteralValue!15216 (value!155808 List!31758)) (EOFValue!5072 (value!155809 List!31758)) (IdentValue!5072 (value!155810 List!31758)) (DelimiterValue!10145 (value!155811 List!31758)) (DedentValue!5072 (value!155812 List!31758)) (NewLineValue!5072 (value!155813 List!31758)) (IntegerValue!15216 (value!155814 (_ BitVec 32)) (text!35951 List!31758)) (IntegerValue!15217 (value!155815 Int) (text!35952 List!31758)) (Times!5072) (Or!5072) (Equal!5072) (Minus!5072) (Broken!25364 (value!155816 List!31758)) (And!5072) (Div!5072) (LessEqual!5072) (Mod!5072) (Concat!13078) (Not!5072) (Plus!5072) (SpaceValue!5072 (value!155817 List!31758)) (IntegerValue!15218 (value!155818 Int) (text!35953 List!31758)) (StringLiteralValue!15217 (text!35954 List!31758)) (FloatLiteralValue!10145 (text!35955 List!31758)) (BytesLiteralValue!5072 (value!155819 List!31758)) (CommentValue!10145 (value!155820 List!31758)) (StringLiteralValue!15218 (value!155821 List!31758)) (ErrorTokenValue!5072 (msg!5133 List!31758)) )
))
(declare-datatypes ((List!31759 0))(
  ( (Nil!31659) (Cons!31659 (h!37079 C!16168) (t!227847 List!31759)) )
))
(declare-datatypes ((IArray!19791 0))(
  ( (IArray!19792 (innerList!9953 List!31759)) )
))
(declare-datatypes ((Conc!9893 0))(
  ( (Node!9893 (left!24251 Conc!9893) (right!24581 Conc!9893) (csize!20016 Int) (cheight!10104 Int)) (Leaf!15064 (xs!13000 IArray!19791) (csize!20017 Int)) (Empty!9893) )
))
(declare-datatypes ((BalanceConc!19400 0))(
  ( (BalanceConc!19401 (c!444879 Conc!9893)) )
))
(declare-datatypes ((String!35266 0))(
  ( (String!35267 (value!155822 String)) )
))
(declare-datatypes ((TokenValueInjection!9584 0))(
  ( (TokenValueInjection!9585 (toValue!6848 Int) (toChars!6707 Int)) )
))
(declare-datatypes ((Rule!9500 0))(
  ( (Rule!9501 (regex!4850 Regex!8005) (tag!5354 String!35266) (isSeparator!4850 Bool) (transformation!4850 TokenValueInjection!9584)) )
))
(declare-datatypes ((Token!9124 0))(
  ( (Token!9125 (value!155823 TokenValue!5072) (rule!7288 Rule!9500) (size!24443 Int) (originalCharacters!5593 List!31759)) )
))
(declare-datatypes ((tuple2!31498 0))(
  ( (tuple2!31499 (_1!18441 Token!9124) (_2!18441 BalanceConc!19400)) )
))
(declare-datatypes ((Option!6243 0))(
  ( (None!6242) (Some!6242 (v!33284 tuple2!31498)) )
))
(declare-datatypes ((tuple3!4444 0))(
  ( (tuple3!4445 (_1!18442 Option!6243) (_2!18442 CacheUp!2236) (_3!2692 CacheDown!2354)) )
))
(declare-fun err!4161 () tuple3!4444)

(declare-fun tp!865567 () Bool)

(declare-fun e!1730715 () Bool)

(declare-fun b!2746775 () Bool)

(declare-fun inv!43007 (String!35266) Bool)

(declare-fun inv!43009 (TokenValueInjection!9584) Bool)

(assert (=> b!2746775 (= e!1730700 (and tp!865567 (inv!43007 (tag!5354 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))) (inv!43009 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))) e!1730715))))

(declare-fun mapIsEmpty!16533 () Bool)

(declare-fun mapRes!16534 () Bool)

(assert (=> mapIsEmpty!16533 mapRes!16534))

(declare-fun b!2746776 () Bool)

(declare-fun e!1730678 () Bool)

(declare-fun e!1730669 () Bool)

(assert (=> b!2746776 (= e!1730678 e!1730669)))

(declare-fun res!1152533 () Bool)

(assert (=> b!2746776 (=> (not res!1152533) (not e!1730669))))

(declare-fun input!1326 () BalanceConc!19400)

(declare-datatypes ((List!31760 0))(
  ( (Nil!31660) (Cons!31660 (h!37080 Rule!9500) (t!227848 List!31760)) )
))
(declare-fun rulesArg!249 () List!31760)

(declare-fun lt!971818 () tuple3!4444)

(declare-datatypes ((LexerInterface!4443 0))(
  ( (LexerInterfaceExt!4440 (__x!20496 Int)) (Lexer!4441) )
))
(declare-fun thiss!15207 () LexerInterface!4443)

(declare-fun maxPrefixZipperSequence!1064 (LexerInterface!4443 List!31760 BalanceConc!19400) Option!6243)

(assert (=> b!2746776 (= res!1152533 (= (_1!18442 lt!971818) (maxPrefixZipperSequence!1064 thiss!15207 rulesArg!249 input!1326)))))

(assert (=> b!2746776 (= lt!971818 err!4161)))

(assert (=> b!2746776 true))

(declare-fun e!1730672 () Bool)

(declare-fun e!1730682 () Bool)

(declare-fun e!1730703 () Bool)

(declare-fun inv!43010 (CacheUp!2236) Bool)

(declare-fun inv!43011 (CacheDown!2354) Bool)

(assert (=> b!2746776 (and e!1730672 (inv!43010 (_2!18442 err!4161)) e!1730703 (inv!43011 (_3!2692 err!4161)) e!1730682)))

(declare-fun e!1730696 () Bool)

(declare-fun e!1730698 () Bool)

(assert (=> b!2746777 (= e!1730696 (and e!1730698 tp!865570))))

(declare-fun b!2746778 () Bool)

(declare-fun e!1730707 () Bool)

(declare-fun e!1730712 () Bool)

(assert (=> b!2746778 (= e!1730707 e!1730712)))

(declare-fun mapIsEmpty!16534 () Bool)

(assert (=> mapIsEmpty!16534 mapRes!16535))

(declare-fun b!2746779 () Bool)

(declare-fun e!1730694 () Bool)

(declare-fun e!1730695 () Bool)

(assert (=> b!2746779 (= e!1730694 e!1730695)))

(declare-fun tp!865559 () Bool)

(declare-fun tp!865578 () Bool)

(declare-fun array_inv!4119 (array!12910) Bool)

(assert (=> b!2746780 (= e!1730709 (and tp!865562 tp!865578 tp!865559 (array_inv!4117 (_keys!3923 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633))))))) (array_inv!4119 (_values!3904 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633))))))) e!1730689))))

(declare-fun b!2746781 () Bool)

(declare-fun e!1730702 () Bool)

(declare-fun e!1730675 () Bool)

(assert (=> b!2746781 (= e!1730702 e!1730675)))

(declare-fun e!1730674 () Bool)

(declare-fun e!1730670 () Bool)

(assert (=> b!2746782 (= e!1730674 (and e!1730670 tp!865560))))

(declare-fun mapNonEmpty!16533 () Bool)

(declare-fun mapRes!16533 () Bool)

(declare-fun tp!865575 () Bool)

(declare-fun tp!865582 () Bool)

(assert (=> mapNonEmpty!16533 (= mapRes!16533 (and tp!865575 tp!865582))))

(declare-fun mapRest!16534 () (Array (_ BitVec 32) List!31756))

(declare-fun mapKey!16536 () (_ BitVec 32))

(declare-fun mapValue!16534 () List!31756)

(assert (=> mapNonEmpty!16533 (= (arr!5762 (_values!3904 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161)))))))) (store mapRest!16534 mapKey!16536 mapValue!16534))))

(declare-fun b!2746783 () Bool)

(declare-fun res!1152535 () Bool)

(declare-fun e!1730685 () Bool)

(assert (=> b!2746783 (=> (not res!1152535) (not e!1730685))))

(declare-fun rulesValidInductive!1713 (LexerInterface!4443 List!31760) Bool)

(assert (=> b!2746783 (= res!1152535 (rulesValidInductive!1713 thiss!15207 rulesArg!249))))

(declare-fun b!2746784 () Bool)

(declare-fun e!1730687 () Bool)

(declare-fun tp!865556 () Bool)

(assert (=> b!2746784 (= e!1730687 (and tp!865556 mapRes!16533))))

(declare-fun condMapEmpty!16533 () Bool)

(declare-fun mapDefault!16536 () List!31756)

(assert (=> b!2746784 (= condMapEmpty!16533 (= (arr!5762 (_values!3904 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161)))))))) ((as const (Array (_ BitVec 32) List!31756)) mapDefault!16536)))))

(declare-fun b!2746785 () Bool)

(assert (=> b!2746785 (= e!1730703 e!1730674)))

(declare-fun tp!865585 () Bool)

(declare-fun tp!865553 () Bool)

(declare-fun e!1730683 () Bool)

(assert (=> b!2746786 (= e!1730683 (and tp!865552 tp!865553 tp!865585 (array_inv!4117 (_keys!3923 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161)))))))) (array_inv!4119 (_values!3904 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161)))))))) e!1730687))))

(declare-fun mapNonEmpty!16534 () Bool)

(declare-fun tp!865576 () Bool)

(declare-fun tp!865554 () Bool)

(assert (=> mapNonEmpty!16534 (= mapRes!16535 (and tp!865576 tp!865554))))

(declare-fun mapKey!16533 () (_ BitVec 32))

(declare-fun mapValue!16535 () List!31756)

(declare-fun mapRest!16533 () (Array (_ BitVec 32) List!31756))

(assert (=> mapNonEmpty!16534 (= (arr!5762 (_values!3904 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633))))))) (store mapRest!16533 mapKey!16533 mapValue!16535))))

(declare-fun b!2746787 () Bool)

(declare-fun res!1152529 () Bool)

(assert (=> b!2746787 (=> (not res!1152529) (not e!1730685))))

(declare-fun valid!2810 (CacheDown!2354) Bool)

(assert (=> b!2746787 (= res!1152529 (valid!2810 cacheDown!646))))

(declare-fun b!2746788 () Bool)

(declare-fun e!1730711 () Bool)

(declare-fun e!1730705 () Bool)

(declare-fun lt!971819 () MutLongMap!3624)

(get-info :version)

(assert (=> b!2746788 (= e!1730711 (and e!1730705 ((_ is LongMap!3624) lt!971819)))))

(assert (=> b!2746788 (= lt!971819 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161)))))))

(declare-fun b!2746789 () Bool)

(declare-fun e!1730704 () Bool)

(declare-fun lt!971820 () MutLongMap!3623)

(assert (=> b!2746789 (= e!1730670 (and e!1730704 ((_ is LongMap!3623) lt!971820)))))

(assert (=> b!2746789 (= lt!971820 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161)))))))

(declare-fun res!1152532 () Bool)

(assert (=> start!266282 (=> (not res!1152532) (not e!1730685))))

(assert (=> start!266282 (= res!1152532 ((_ is Lexer!4441) thiss!15207))))

(assert (=> start!266282 e!1730685))

(declare-fun e!1730697 () Bool)

(assert (=> start!266282 (and (inv!43011 cacheDown!646) e!1730697)))

(declare-fun e!1730706 () Bool)

(declare-fun inv!43012 (BalanceConc!19400) Bool)

(assert (=> start!266282 (and (inv!43012 input!1326) e!1730706)))

(declare-fun e!1730714 () Bool)

(assert (=> start!266282 e!1730714))

(assert (=> start!266282 (and (inv!43010 cacheUp!633) e!1730707)))

(assert (=> start!266282 true))

(declare-fun b!2746790 () Bool)

(declare-fun e!1730691 () Bool)

(assert (=> b!2746790 (= e!1730704 e!1730691)))

(declare-fun b!2746791 () Bool)

(assert (=> b!2746791 (= e!1730697 e!1730696)))

(declare-fun b!2746792 () Bool)

(declare-fun res!1152530 () Bool)

(assert (=> b!2746792 (=> (not res!1152530) (not e!1730669))))

(declare-fun valid!2811 (CacheUp!2236) Bool)

(assert (=> b!2746792 (= res!1152530 (valid!2811 (_2!18442 lt!971818)))))

(declare-fun mapNonEmpty!16535 () Bool)

(declare-fun mapRes!16536 () Bool)

(declare-fun tp!865583 () Bool)

(declare-fun tp!865565 () Bool)

(assert (=> mapNonEmpty!16535 (= mapRes!16536 (and tp!865583 tp!865565))))

(declare-fun mapKey!16535 () (_ BitVec 32))

(declare-fun mapRest!16535 () (Array (_ BitVec 32) List!31757))

(declare-fun mapValue!16536 () List!31757)

(assert (=> mapNonEmpty!16535 (= (arr!5763 (_values!3905 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161)))))))) (store mapRest!16535 mapKey!16535 mapValue!16536))))

(declare-fun e!1730692 () Bool)

(assert (=> b!2746793 (= e!1730692 (and e!1730711 tp!865581))))

(assert (=> b!2746794 (= e!1730715 (and tp!865551 tp!865572))))

(declare-fun tp!865564 () Bool)

(declare-fun tp!865573 () Bool)

(declare-fun e!1730680 () Bool)

(assert (=> b!2746795 (= e!1730695 (and tp!865550 tp!865564 tp!865573 (array_inv!4117 (_keys!3924 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161)))))))) (array_inv!4118 (_values!3905 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161)))))))) e!1730680))))

(declare-fun b!2746796 () Bool)

(declare-fun tp!865566 () Bool)

(assert (=> b!2746796 (= e!1730713 (and tp!865566 mapRes!16534))))

(declare-fun condMapEmpty!16535 () Bool)

(declare-fun mapDefault!16534 () List!31757)

(assert (=> b!2746796 (= condMapEmpty!16535 (= (arr!5763 (_values!3905 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31757)) mapDefault!16534)))))

(declare-fun mapIsEmpty!16535 () Bool)

(assert (=> mapIsEmpty!16535 mapRes!16533))

(declare-fun b!2746797 () Bool)

(declare-fun lt!971824 () MutLongMap!3624)

(assert (=> b!2746797 (= e!1730698 (and e!1730702 ((_ is LongMap!3624) lt!971824)))))

(assert (=> b!2746797 (= lt!971824 (v!33283 (underlying!7452 (cache!3673 cacheDown!646))))))

(declare-fun b!2746798 () Bool)

(assert (=> b!2746798 (= e!1730682 e!1730692)))

(declare-fun e!1730710 () Bool)

(declare-fun e!1730701 () Bool)

(declare-fun b!2746799 () Bool)

(declare-fun inv!43013 (Token!9124) Bool)

(assert (=> b!2746799 (= e!1730672 (and (inv!43013 (_1!18441 (v!33284 (_1!18442 err!4161)))) e!1730710 (inv!43012 (_2!18441 (v!33284 (_1!18442 err!4161)))) e!1730701))))

(declare-fun tp!865584 () Bool)

(declare-fun b!2746800 () Bool)

(declare-fun e!1730690 () Bool)

(assert (=> b!2746800 (= e!1730690 (and tp!865584 (inv!43007 (tag!5354 (h!37080 rulesArg!249))) (inv!43009 (transformation!4850 (h!37080 rulesArg!249))) e!1730673))))

(declare-fun b!2746801 () Bool)

(assert (=> b!2746801 (= e!1730705 e!1730694)))

(declare-fun b!2746802 () Bool)

(declare-fun res!1152534 () Bool)

(assert (=> b!2746802 (=> (not res!1152534) (not e!1730685))))

(assert (=> b!2746802 (= res!1152534 (valid!2811 cacheUp!633))))

(declare-fun b!2746803 () Bool)

(declare-fun tp!865558 () Bool)

(assert (=> b!2746803 (= e!1730714 (and e!1730690 tp!865558))))

(declare-fun tp!865577 () Bool)

(declare-fun b!2746804 () Bool)

(declare-fun inv!21 (TokenValue!5072) Bool)

(assert (=> b!2746804 (= e!1730710 (and (inv!21 (value!155823 (_1!18441 (v!33284 (_1!18442 err!4161))))) e!1730700 tp!865577))))

(declare-fun b!2746805 () Bool)

(declare-fun tp!865571 () Bool)

(declare-fun inv!43014 (Conc!9893) Bool)

(assert (=> b!2746805 (= e!1730706 (and (inv!43014 (c!444879 input!1326)) tp!865571))))

(declare-fun b!2746806 () Bool)

(assert (=> b!2746806 (= e!1730685 (not e!1730678))))

(declare-fun res!1152528 () Bool)

(assert (=> b!2746806 (=> res!1152528 e!1730678)))

(assert (=> b!2746806 (= res!1152528 (or (and ((_ is Cons!31660) rulesArg!249) ((_ is Nil!31660) (t!227848 rulesArg!249))) ((_ is Cons!31660) rulesArg!249)))))

(declare-fun lt!971821 () List!31759)

(declare-fun isPrefix!2521 (List!31759 List!31759) Bool)

(assert (=> b!2746806 (isPrefix!2521 lt!971821 lt!971821)))

(declare-datatypes ((Unit!45541 0))(
  ( (Unit!45542) )
))
(declare-fun lt!971822 () Unit!45541)

(declare-fun lemmaIsPrefixRefl!1647 (List!31759 List!31759) Unit!45541)

(assert (=> b!2746806 (= lt!971822 (lemmaIsPrefixRefl!1647 lt!971821 lt!971821))))

(declare-fun list!12002 (BalanceConc!19400) List!31759)

(assert (=> b!2746806 (= lt!971821 (list!12002 input!1326))))

(declare-fun b!2746807 () Bool)

(declare-fun tp!865549 () Bool)

(assert (=> b!2746807 (= e!1730701 (and (inv!43014 (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161))))) tp!865549))))

(declare-fun mapIsEmpty!16536 () Bool)

(assert (=> mapIsEmpty!16536 mapRes!16536))

(declare-fun e!1730676 () Bool)

(assert (=> b!2746808 (= e!1730712 (and e!1730676 tp!865586))))

(declare-fun b!2746809 () Bool)

(declare-fun res!1152531 () Bool)

(assert (=> b!2746809 (=> (not res!1152531) (not e!1730685))))

(declare-fun isEmpty!18046 (List!31760) Bool)

(assert (=> b!2746809 (= res!1152531 (not (isEmpty!18046 rulesArg!249)))))

(declare-fun mapNonEmpty!16536 () Bool)

(declare-fun tp!865580 () Bool)

(declare-fun tp!865557 () Bool)

(assert (=> mapNonEmpty!16536 (= mapRes!16534 (and tp!865580 tp!865557))))

(declare-fun mapValue!16533 () List!31757)

(declare-fun mapKey!16534 () (_ BitVec 32))

(declare-fun mapRest!16536 () (Array (_ BitVec 32) List!31757))

(assert (=> mapNonEmpty!16536 (= (arr!5763 (_values!3905 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646))))))) (store mapRest!16536 mapKey!16534 mapValue!16533))))

(declare-fun b!2746810 () Bool)

(declare-fun tp!865555 () Bool)

(assert (=> b!2746810 (= e!1730680 (and tp!865555 mapRes!16536))))

(declare-fun condMapEmpty!16534 () Bool)

(declare-fun mapDefault!16535 () List!31757)

(assert (=> b!2746810 (= condMapEmpty!16534 (= (arr!5763 (_values!3905 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161)))))))) ((as const (Array (_ BitVec 32) List!31757)) mapDefault!16535)))))

(declare-fun b!2746811 () Bool)

(assert (=> b!2746811 (= e!1730675 e!1730699)))

(declare-fun b!2746812 () Bool)

(assert (=> b!2746812 (= e!1730669 (valid!2810 (_3!2692 lt!971818)))))

(declare-fun b!2746813 () Bool)

(assert (=> b!2746813 (= e!1730691 e!1730683)))

(declare-fun b!2746814 () Bool)

(declare-fun lt!971823 () MutLongMap!3623)

(assert (=> b!2746814 (= e!1730676 (and e!1730688 ((_ is LongMap!3623) lt!971823)))))

(assert (=> b!2746814 (= lt!971823 (v!33281 (underlying!7450 (cache!3672 cacheUp!633))))))

(assert (= (and start!266282 res!1152532) b!2746783))

(assert (= (and b!2746783 res!1152535) b!2746809))

(assert (= (and b!2746809 res!1152531) b!2746802))

(assert (= (and b!2746802 res!1152534) b!2746787))

(assert (= (and b!2746787 res!1152529) b!2746806))

(assert (= (and b!2746806 (not res!1152528)) b!2746776))

(assert (= b!2746775 b!2746794))

(assert (= b!2746804 b!2746775))

(assert (= b!2746799 b!2746804))

(assert (= b!2746799 b!2746807))

(assert (= (and b!2746776 ((_ is Some!6242) (_1!18442 err!4161))) b!2746799))

(assert (= (and b!2746784 condMapEmpty!16533) mapIsEmpty!16535))

(assert (= (and b!2746784 (not condMapEmpty!16533)) mapNonEmpty!16533))

(assert (= b!2746786 b!2746784))

(assert (= b!2746813 b!2746786))

(assert (= b!2746790 b!2746813))

(assert (= (and b!2746789 ((_ is LongMap!3623) (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161)))))) b!2746790))

(assert (= b!2746782 b!2746789))

(assert (= (and b!2746785 ((_ is HashMap!3529) (cache!3672 (_2!18442 err!4161)))) b!2746782))

(assert (= b!2746776 b!2746785))

(assert (= (and b!2746810 condMapEmpty!16534) mapIsEmpty!16536))

(assert (= (and b!2746810 (not condMapEmpty!16534)) mapNonEmpty!16535))

(assert (= b!2746795 b!2746810))

(assert (= b!2746779 b!2746795))

(assert (= b!2746801 b!2746779))

(assert (= (and b!2746788 ((_ is LongMap!3624) (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161)))))) b!2746801))

(assert (= b!2746793 b!2746788))

(assert (= (and b!2746798 ((_ is HashMap!3530) (cache!3673 (_3!2692 err!4161)))) b!2746793))

(assert (= b!2746776 b!2746798))

(assert (= (and b!2746776 res!1152533) b!2746792))

(assert (= (and b!2746792 res!1152530) b!2746812))

(assert (= (and b!2746796 condMapEmpty!16535) mapIsEmpty!16533))

(assert (= (and b!2746796 (not condMapEmpty!16535)) mapNonEmpty!16536))

(assert (= b!2746774 b!2746796))

(assert (= b!2746811 b!2746774))

(assert (= b!2746781 b!2746811))

(assert (= (and b!2746797 ((_ is LongMap!3624) (v!33283 (underlying!7452 (cache!3673 cacheDown!646))))) b!2746781))

(assert (= b!2746777 b!2746797))

(assert (= (and b!2746791 ((_ is HashMap!3530) (cache!3673 cacheDown!646))) b!2746777))

(assert (= start!266282 b!2746791))

(assert (= start!266282 b!2746805))

(assert (= b!2746800 b!2746772))

(assert (= b!2746803 b!2746800))

(assert (= (and start!266282 ((_ is Cons!31660) rulesArg!249)) b!2746803))

(assert (= (and b!2746773 condMapEmpty!16536) mapIsEmpty!16534))

(assert (= (and b!2746773 (not condMapEmpty!16536)) mapNonEmpty!16534))

(assert (= b!2746780 b!2746773))

(assert (= b!2746771 b!2746780))

(assert (= b!2746770 b!2746771))

(assert (= (and b!2746814 ((_ is LongMap!3623) (v!33281 (underlying!7450 (cache!3672 cacheUp!633))))) b!2746770))

(assert (= b!2746808 b!2746814))

(assert (= (and b!2746778 ((_ is HashMap!3529) (cache!3672 cacheUp!633))) b!2746808))

(assert (= start!266282 b!2746778))

(declare-fun m!3163073 () Bool)

(assert (=> b!2746812 m!3163073))

(declare-fun m!3163075 () Bool)

(assert (=> b!2746800 m!3163075))

(declare-fun m!3163077 () Bool)

(assert (=> b!2746800 m!3163077))

(declare-fun m!3163079 () Bool)

(assert (=> mapNonEmpty!16534 m!3163079))

(declare-fun m!3163081 () Bool)

(assert (=> b!2746780 m!3163081))

(declare-fun m!3163083 () Bool)

(assert (=> b!2746780 m!3163083))

(declare-fun m!3163085 () Bool)

(assert (=> b!2746802 m!3163085))

(declare-fun m!3163087 () Bool)

(assert (=> b!2746799 m!3163087))

(declare-fun m!3163089 () Bool)

(assert (=> b!2746799 m!3163089))

(declare-fun m!3163091 () Bool)

(assert (=> b!2746775 m!3163091))

(declare-fun m!3163093 () Bool)

(assert (=> b!2746775 m!3163093))

(declare-fun m!3163095 () Bool)

(assert (=> b!2746792 m!3163095))

(declare-fun m!3163097 () Bool)

(assert (=> b!2746807 m!3163097))

(declare-fun m!3163099 () Bool)

(assert (=> b!2746809 m!3163099))

(declare-fun m!3163101 () Bool)

(assert (=> b!2746806 m!3163101))

(declare-fun m!3163103 () Bool)

(assert (=> b!2746806 m!3163103))

(declare-fun m!3163105 () Bool)

(assert (=> b!2746806 m!3163105))

(declare-fun m!3163107 () Bool)

(assert (=> b!2746783 m!3163107))

(declare-fun m!3163109 () Bool)

(assert (=> mapNonEmpty!16536 m!3163109))

(declare-fun m!3163111 () Bool)

(assert (=> b!2746805 m!3163111))

(declare-fun m!3163113 () Bool)

(assert (=> b!2746787 m!3163113))

(declare-fun m!3163115 () Bool)

(assert (=> start!266282 m!3163115))

(declare-fun m!3163117 () Bool)

(assert (=> start!266282 m!3163117))

(declare-fun m!3163119 () Bool)

(assert (=> start!266282 m!3163119))

(declare-fun m!3163121 () Bool)

(assert (=> b!2746795 m!3163121))

(declare-fun m!3163123 () Bool)

(assert (=> b!2746795 m!3163123))

(declare-fun m!3163125 () Bool)

(assert (=> mapNonEmpty!16535 m!3163125))

(declare-fun m!3163127 () Bool)

(assert (=> mapNonEmpty!16533 m!3163127))

(declare-fun m!3163129 () Bool)

(assert (=> b!2746786 m!3163129))

(declare-fun m!3163131 () Bool)

(assert (=> b!2746786 m!3163131))

(declare-fun m!3163133 () Bool)

(assert (=> b!2746774 m!3163133))

(declare-fun m!3163135 () Bool)

(assert (=> b!2746774 m!3163135))

(declare-fun m!3163137 () Bool)

(assert (=> b!2746804 m!3163137))

(declare-fun m!3163139 () Bool)

(assert (=> b!2746776 m!3163139))

(declare-fun m!3163141 () Bool)

(assert (=> b!2746776 m!3163141))

(declare-fun m!3163143 () Bool)

(assert (=> b!2746776 m!3163143))

(check-sat (not b_next!78141) b_and!202141 (not mapNonEmpty!16533) (not b!2746774) b_and!202153 (not b_next!78143) (not b_next!78125) (not b!2746809) (not b_next!78129) (not b!2746805) b_and!202155 (not b!2746773) (not b_next!78139) b_and!202149 (not b!2746776) (not b_next!78121) (not b_next!78127) (not b!2746786) b_and!202159 (not b!2746787) (not start!266282) (not b!2746807) (not b!2746799) (not b!2746795) (not b!2746796) (not b!2746792) (not b!2746810) b_and!202151 (not b!2746775) (not b_next!78135) (not b!2746802) b_and!202139 (not b_next!78123) (not b!2746806) (not b_next!78131) b_and!202143 (not mapNonEmpty!16534) (not mapNonEmpty!16535) (not b!2746812) (not b!2746780) (not b_next!78137) (not b!2746804) (not b!2746800) b_and!202137 (not b_next!78133) b_and!202157 b_and!202147 (not b!2746803) (not b!2746783) b_and!202145 (not mapNonEmpty!16536) (not b!2746784))
(check-sat (not b_next!78141) (not b_next!78129) b_and!202155 b_and!202159 b_and!202141 b_and!202151 (not b_next!78135) b_and!202139 b_and!202153 (not b_next!78143) (not b_next!78125) b_and!202145 b_and!202149 (not b_next!78139) (not b_next!78121) (not b_next!78127) (not b_next!78123) (not b_next!78131) b_and!202143 (not b_next!78137) b_and!202137 (not b_next!78133) b_and!202157 b_and!202147)
(get-model)

(declare-fun d!796107 () Bool)

(declare-fun validCacheMapUp!341 (MutableMap!3529) Bool)

(assert (=> d!796107 (= (valid!2811 (_2!18442 lt!971818)) (validCacheMapUp!341 (cache!3672 (_2!18442 lt!971818))))))

(declare-fun bs!490297 () Bool)

(assert (= bs!490297 d!796107))

(declare-fun m!3163145 () Bool)

(assert (=> bs!490297 m!3163145))

(assert (=> b!2746792 d!796107))

(declare-fun d!796109 () Bool)

(assert (=> d!796109 (= (inv!43007 (tag!5354 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))) (= (mod (str.len (value!155822 (tag!5354 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161))))))) 2) 0))))

(assert (=> b!2746775 d!796109))

(declare-fun d!796111 () Bool)

(declare-fun res!1152538 () Bool)

(declare-fun e!1730718 () Bool)

(assert (=> d!796111 (=> (not res!1152538) (not e!1730718))))

(declare-fun semiInverseModEq!2003 (Int Int) Bool)

(assert (=> d!796111 (= res!1152538 (semiInverseModEq!2003 (toChars!6707 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))) (toValue!6848 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161))))))))))

(assert (=> d!796111 (= (inv!43009 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))) e!1730718)))

(declare-fun b!2746817 () Bool)

(declare-fun equivClasses!1904 (Int Int) Bool)

(assert (=> b!2746817 (= e!1730718 (equivClasses!1904 (toChars!6707 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))) (toValue!6848 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161))))))))))

(assert (= (and d!796111 res!1152538) b!2746817))

(declare-fun m!3163147 () Bool)

(assert (=> d!796111 m!3163147))

(declare-fun m!3163149 () Bool)

(assert (=> b!2746817 m!3163149))

(assert (=> b!2746775 d!796111))

(declare-fun d!796113 () Bool)

(assert (=> d!796113 (= (inv!43007 (tag!5354 (h!37080 rulesArg!249))) (= (mod (str.len (value!155822 (tag!5354 (h!37080 rulesArg!249)))) 2) 0))))

(assert (=> b!2746800 d!796113))

(declare-fun d!796115 () Bool)

(declare-fun res!1152539 () Bool)

(declare-fun e!1730719 () Bool)

(assert (=> d!796115 (=> (not res!1152539) (not e!1730719))))

(assert (=> d!796115 (= res!1152539 (semiInverseModEq!2003 (toChars!6707 (transformation!4850 (h!37080 rulesArg!249))) (toValue!6848 (transformation!4850 (h!37080 rulesArg!249)))))))

(assert (=> d!796115 (= (inv!43009 (transformation!4850 (h!37080 rulesArg!249))) e!1730719)))

(declare-fun b!2746818 () Bool)

(assert (=> b!2746818 (= e!1730719 (equivClasses!1904 (toChars!6707 (transformation!4850 (h!37080 rulesArg!249))) (toValue!6848 (transformation!4850 (h!37080 rulesArg!249)))))))

(assert (= (and d!796115 res!1152539) b!2746818))

(declare-fun m!3163151 () Bool)

(assert (=> d!796115 m!3163151))

(declare-fun m!3163153 () Bool)

(assert (=> b!2746818 m!3163153))

(assert (=> b!2746800 d!796115))

(declare-fun d!796117 () Bool)

(assert (=> d!796117 (= (array_inv!4117 (_keys!3924 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646))))))) (bvsge (size!24440 (_keys!3924 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746774 d!796117))

(declare-fun d!796119 () Bool)

(assert (=> d!796119 (= (array_inv!4118 (_values!3905 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646))))))) (bvsge (size!24442 (_values!3905 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746774 d!796119))

(declare-fun d!796121 () Bool)

(assert (=> d!796121 (= (isEmpty!18046 rulesArg!249) ((_ is Nil!31660) rulesArg!249))))

(assert (=> b!2746809 d!796121))

(declare-fun d!796123 () Bool)

(declare-fun res!1152544 () Bool)

(declare-fun e!1730722 () Bool)

(assert (=> d!796123 (=> (not res!1152544) (not e!1730722))))

(declare-fun isEmpty!18047 (List!31759) Bool)

(assert (=> d!796123 (= res!1152544 (not (isEmpty!18047 (originalCharacters!5593 (_1!18441 (v!33284 (_1!18442 err!4161)))))))))

(assert (=> d!796123 (= (inv!43013 (_1!18441 (v!33284 (_1!18442 err!4161)))) e!1730722)))

(declare-fun b!2746823 () Bool)

(declare-fun res!1152545 () Bool)

(assert (=> b!2746823 (=> (not res!1152545) (not e!1730722))))

(declare-fun dynLambda!13581 (Int TokenValue!5072) BalanceConc!19400)

(assert (=> b!2746823 (= res!1152545 (= (originalCharacters!5593 (_1!18441 (v!33284 (_1!18442 err!4161)))) (list!12002 (dynLambda!13581 (toChars!6707 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))) (value!155823 (_1!18441 (v!33284 (_1!18442 err!4161))))))))))

(declare-fun b!2746824 () Bool)

(declare-fun size!24444 (List!31759) Int)

(assert (=> b!2746824 (= e!1730722 (= (size!24443 (_1!18441 (v!33284 (_1!18442 err!4161)))) (size!24444 (originalCharacters!5593 (_1!18441 (v!33284 (_1!18442 err!4161)))))))))

(assert (= (and d!796123 res!1152544) b!2746823))

(assert (= (and b!2746823 res!1152545) b!2746824))

(declare-fun b_lambda!82919 () Bool)

(assert (=> (not b_lambda!82919) (not b!2746823)))

(declare-fun t!227850 () Bool)

(declare-fun tb!152965 () Bool)

(assert (=> (and b!2746794 (= (toChars!6707 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))) (toChars!6707 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161))))))) t!227850) tb!152965))

(declare-fun b!2746829 () Bool)

(declare-fun e!1730725 () Bool)

(declare-fun tp!865589 () Bool)

(assert (=> b!2746829 (= e!1730725 (and (inv!43014 (c!444879 (dynLambda!13581 (toChars!6707 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))) (value!155823 (_1!18441 (v!33284 (_1!18442 err!4161))))))) tp!865589))))

(declare-fun result!189082 () Bool)

(assert (=> tb!152965 (= result!189082 (and (inv!43012 (dynLambda!13581 (toChars!6707 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))) (value!155823 (_1!18441 (v!33284 (_1!18442 err!4161)))))) e!1730725))))

(assert (= tb!152965 b!2746829))

(declare-fun m!3163155 () Bool)

(assert (=> b!2746829 m!3163155))

(declare-fun m!3163157 () Bool)

(assert (=> tb!152965 m!3163157))

(assert (=> b!2746823 t!227850))

(declare-fun b_and!202161 () Bool)

(assert (= b_and!202141 (and (=> t!227850 result!189082) b_and!202161)))

(declare-fun t!227852 () Bool)

(declare-fun tb!152967 () Bool)

(assert (=> (and b!2746772 (= (toChars!6707 (transformation!4850 (h!37080 rulesArg!249))) (toChars!6707 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161))))))) t!227852) tb!152967))

(declare-fun result!189086 () Bool)

(assert (= result!189086 result!189082))

(assert (=> b!2746823 t!227852))

(declare-fun b_and!202163 () Bool)

(assert (= b_and!202147 (and (=> t!227852 result!189086) b_and!202163)))

(declare-fun m!3163159 () Bool)

(assert (=> d!796123 m!3163159))

(declare-fun m!3163161 () Bool)

(assert (=> b!2746823 m!3163161))

(assert (=> b!2746823 m!3163161))

(declare-fun m!3163163 () Bool)

(assert (=> b!2746823 m!3163163))

(declare-fun m!3163165 () Bool)

(assert (=> b!2746824 m!3163165))

(assert (=> b!2746799 d!796123))

(declare-fun d!796125 () Bool)

(declare-fun isBalanced!3015 (Conc!9893) Bool)

(assert (=> d!796125 (= (inv!43012 (_2!18441 (v!33284 (_1!18442 err!4161)))) (isBalanced!3015 (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161))))))))

(declare-fun bs!490298 () Bool)

(assert (= bs!490298 d!796125))

(declare-fun m!3163167 () Bool)

(assert (=> bs!490298 m!3163167))

(assert (=> b!2746799 d!796125))

(declare-fun d!796127 () Bool)

(assert (=> d!796127 (= (array_inv!4117 (_keys!3923 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633))))))) (bvsge (size!24440 (_keys!3923 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746780 d!796127))

(declare-fun d!796129 () Bool)

(assert (=> d!796129 (= (array_inv!4119 (_values!3904 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633))))))) (bvsge (size!24441 (_values!3904 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746780 d!796129))

(declare-fun d!796131 () Bool)

(declare-fun c!444882 () Bool)

(assert (=> d!796131 (= c!444882 ((_ is Node!9893) (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161))))))))

(declare-fun e!1730730 () Bool)

(assert (=> d!796131 (= (inv!43014 (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161))))) e!1730730)))

(declare-fun b!2746836 () Bool)

(declare-fun inv!43015 (Conc!9893) Bool)

(assert (=> b!2746836 (= e!1730730 (inv!43015 (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161))))))))

(declare-fun b!2746837 () Bool)

(declare-fun e!1730731 () Bool)

(assert (=> b!2746837 (= e!1730730 e!1730731)))

(declare-fun res!1152548 () Bool)

(assert (=> b!2746837 (= res!1152548 (not ((_ is Leaf!15064) (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161)))))))))

(assert (=> b!2746837 (=> res!1152548 e!1730731)))

(declare-fun b!2746838 () Bool)

(declare-fun inv!43016 (Conc!9893) Bool)

(assert (=> b!2746838 (= e!1730731 (inv!43016 (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161))))))))

(assert (= (and d!796131 c!444882) b!2746836))

(assert (= (and d!796131 (not c!444882)) b!2746837))

(assert (= (and b!2746837 (not res!1152548)) b!2746838))

(declare-fun m!3163169 () Bool)

(assert (=> b!2746836 m!3163169))

(declare-fun m!3163171 () Bool)

(assert (=> b!2746838 m!3163171))

(assert (=> b!2746807 d!796131))

(declare-fun b!2746850 () Bool)

(declare-fun e!1730738 () Bool)

(assert (=> b!2746850 (= e!1730738 (>= (size!24444 lt!971821) (size!24444 lt!971821)))))

(declare-fun d!796133 () Bool)

(assert (=> d!796133 e!1730738))

(declare-fun res!1152560 () Bool)

(assert (=> d!796133 (=> res!1152560 e!1730738)))

(declare-fun lt!971827 () Bool)

(assert (=> d!796133 (= res!1152560 (not lt!971827))))

(declare-fun e!1730739 () Bool)

(assert (=> d!796133 (= lt!971827 e!1730739)))

(declare-fun res!1152559 () Bool)

(assert (=> d!796133 (=> res!1152559 e!1730739)))

(assert (=> d!796133 (= res!1152559 ((_ is Nil!31659) lt!971821))))

(assert (=> d!796133 (= (isPrefix!2521 lt!971821 lt!971821) lt!971827)))

(declare-fun b!2746848 () Bool)

(declare-fun res!1152558 () Bool)

(declare-fun e!1730740 () Bool)

(assert (=> b!2746848 (=> (not res!1152558) (not e!1730740))))

(declare-fun head!6117 (List!31759) C!16168)

(assert (=> b!2746848 (= res!1152558 (= (head!6117 lt!971821) (head!6117 lt!971821)))))

(declare-fun b!2746847 () Bool)

(assert (=> b!2746847 (= e!1730739 e!1730740)))

(declare-fun res!1152557 () Bool)

(assert (=> b!2746847 (=> (not res!1152557) (not e!1730740))))

(assert (=> b!2746847 (= res!1152557 (not ((_ is Nil!31659) lt!971821)))))

(declare-fun b!2746849 () Bool)

(declare-fun tail!4355 (List!31759) List!31759)

(assert (=> b!2746849 (= e!1730740 (isPrefix!2521 (tail!4355 lt!971821) (tail!4355 lt!971821)))))

(assert (= (and d!796133 (not res!1152559)) b!2746847))

(assert (= (and b!2746847 res!1152557) b!2746848))

(assert (= (and b!2746848 res!1152558) b!2746849))

(assert (= (and d!796133 (not res!1152560)) b!2746850))

(declare-fun m!3163173 () Bool)

(assert (=> b!2746850 m!3163173))

(assert (=> b!2746850 m!3163173))

(declare-fun m!3163175 () Bool)

(assert (=> b!2746848 m!3163175))

(assert (=> b!2746848 m!3163175))

(declare-fun m!3163177 () Bool)

(assert (=> b!2746849 m!3163177))

(assert (=> b!2746849 m!3163177))

(assert (=> b!2746849 m!3163177))

(assert (=> b!2746849 m!3163177))

(declare-fun m!3163179 () Bool)

(assert (=> b!2746849 m!3163179))

(assert (=> b!2746806 d!796133))

(declare-fun d!796135 () Bool)

(assert (=> d!796135 (isPrefix!2521 lt!971821 lt!971821)))

(declare-fun lt!971830 () Unit!45541)

(declare-fun choose!16070 (List!31759 List!31759) Unit!45541)

(assert (=> d!796135 (= lt!971830 (choose!16070 lt!971821 lt!971821))))

(assert (=> d!796135 (= (lemmaIsPrefixRefl!1647 lt!971821 lt!971821) lt!971830)))

(declare-fun bs!490299 () Bool)

(assert (= bs!490299 d!796135))

(assert (=> bs!490299 m!3163101))

(declare-fun m!3163181 () Bool)

(assert (=> bs!490299 m!3163181))

(assert (=> b!2746806 d!796135))

(declare-fun d!796137 () Bool)

(declare-fun list!12003 (Conc!9893) List!31759)

(assert (=> d!796137 (= (list!12002 input!1326) (list!12003 (c!444879 input!1326)))))

(declare-fun bs!490300 () Bool)

(assert (= bs!490300 d!796137))

(declare-fun m!3163183 () Bool)

(assert (=> bs!490300 m!3163183))

(assert (=> b!2746806 d!796137))

(declare-fun d!796139 () Bool)

(declare-fun validCacheMapDown!372 (MutableMap!3530) Bool)

(assert (=> d!796139 (= (valid!2810 cacheDown!646) (validCacheMapDown!372 (cache!3673 cacheDown!646)))))

(declare-fun bs!490301 () Bool)

(assert (= bs!490301 d!796139))

(declare-fun m!3163185 () Bool)

(assert (=> bs!490301 m!3163185))

(assert (=> b!2746787 d!796139))

(declare-fun d!796141 () Bool)

(assert (=> d!796141 (= (array_inv!4117 (_keys!3924 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161)))))))) (bvsge (size!24440 (_keys!3924 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746795 d!796141))

(declare-fun d!796143 () Bool)

(assert (=> d!796143 (= (array_inv!4118 (_values!3905 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161)))))))) (bvsge (size!24442 (_values!3905 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746795 d!796143))

(declare-fun d!796145 () Bool)

(declare-fun res!1152563 () Bool)

(declare-fun e!1730743 () Bool)

(assert (=> d!796145 (=> (not res!1152563) (not e!1730743))))

(assert (=> d!796145 (= res!1152563 ((_ is HashMap!3530) (cache!3673 cacheDown!646)))))

(assert (=> d!796145 (= (inv!43011 cacheDown!646) e!1730743)))

(declare-fun b!2746853 () Bool)

(assert (=> b!2746853 (= e!1730743 (validCacheMapDown!372 (cache!3673 cacheDown!646)))))

(assert (= (and d!796145 res!1152563) b!2746853))

(assert (=> b!2746853 m!3163185))

(assert (=> start!266282 d!796145))

(declare-fun d!796147 () Bool)

(assert (=> d!796147 (= (inv!43012 input!1326) (isBalanced!3015 (c!444879 input!1326)))))

(declare-fun bs!490302 () Bool)

(assert (= bs!490302 d!796147))

(declare-fun m!3163187 () Bool)

(assert (=> bs!490302 m!3163187))

(assert (=> start!266282 d!796147))

(declare-fun d!796149 () Bool)

(declare-fun res!1152566 () Bool)

(declare-fun e!1730746 () Bool)

(assert (=> d!796149 (=> (not res!1152566) (not e!1730746))))

(assert (=> d!796149 (= res!1152566 ((_ is HashMap!3529) (cache!3672 cacheUp!633)))))

(assert (=> d!796149 (= (inv!43010 cacheUp!633) e!1730746)))

(declare-fun b!2746856 () Bool)

(assert (=> b!2746856 (= e!1730746 (validCacheMapUp!341 (cache!3672 cacheUp!633)))))

(assert (= (and d!796149 res!1152566) b!2746856))

(declare-fun m!3163189 () Bool)

(assert (=> b!2746856 m!3163189))

(assert (=> start!266282 d!796149))

(declare-fun d!796151 () Bool)

(declare-fun c!444883 () Bool)

(assert (=> d!796151 (= c!444883 ((_ is Node!9893) (c!444879 input!1326)))))

(declare-fun e!1730747 () Bool)

(assert (=> d!796151 (= (inv!43014 (c!444879 input!1326)) e!1730747)))

(declare-fun b!2746857 () Bool)

(assert (=> b!2746857 (= e!1730747 (inv!43015 (c!444879 input!1326)))))

(declare-fun b!2746858 () Bool)

(declare-fun e!1730748 () Bool)

(assert (=> b!2746858 (= e!1730747 e!1730748)))

(declare-fun res!1152567 () Bool)

(assert (=> b!2746858 (= res!1152567 (not ((_ is Leaf!15064) (c!444879 input!1326))))))

(assert (=> b!2746858 (=> res!1152567 e!1730748)))

(declare-fun b!2746859 () Bool)

(assert (=> b!2746859 (= e!1730748 (inv!43016 (c!444879 input!1326)))))

(assert (= (and d!796151 c!444883) b!2746857))

(assert (= (and d!796151 (not c!444883)) b!2746858))

(assert (= (and b!2746858 (not res!1152567)) b!2746859))

(declare-fun m!3163191 () Bool)

(assert (=> b!2746857 m!3163191))

(declare-fun m!3163193 () Bool)

(assert (=> b!2746859 m!3163193))

(assert (=> b!2746805 d!796151))

(declare-fun b!2746870 () Bool)

(declare-fun res!1152570 () Bool)

(declare-fun e!1730755 () Bool)

(assert (=> b!2746870 (=> res!1152570 e!1730755)))

(assert (=> b!2746870 (= res!1152570 (not ((_ is IntegerValue!15218) (value!155823 (_1!18441 (v!33284 (_1!18442 err!4161)))))))))

(declare-fun e!1730756 () Bool)

(assert (=> b!2746870 (= e!1730756 e!1730755)))

(declare-fun b!2746871 () Bool)

(declare-fun e!1730757 () Bool)

(assert (=> b!2746871 (= e!1730757 e!1730756)))

(declare-fun c!444889 () Bool)

(assert (=> b!2746871 (= c!444889 ((_ is IntegerValue!15217) (value!155823 (_1!18441 (v!33284 (_1!18442 err!4161))))))))

(declare-fun b!2746872 () Bool)

(declare-fun inv!16 (TokenValue!5072) Bool)

(assert (=> b!2746872 (= e!1730757 (inv!16 (value!155823 (_1!18441 (v!33284 (_1!18442 err!4161))))))))

(declare-fun b!2746873 () Bool)

(declare-fun inv!15 (TokenValue!5072) Bool)

(assert (=> b!2746873 (= e!1730755 (inv!15 (value!155823 (_1!18441 (v!33284 (_1!18442 err!4161))))))))

(declare-fun b!2746874 () Bool)

(declare-fun inv!17 (TokenValue!5072) Bool)

(assert (=> b!2746874 (= e!1730756 (inv!17 (value!155823 (_1!18441 (v!33284 (_1!18442 err!4161))))))))

(declare-fun d!796153 () Bool)

(declare-fun c!444888 () Bool)

(assert (=> d!796153 (= c!444888 ((_ is IntegerValue!15216) (value!155823 (_1!18441 (v!33284 (_1!18442 err!4161))))))))

(assert (=> d!796153 (= (inv!21 (value!155823 (_1!18441 (v!33284 (_1!18442 err!4161))))) e!1730757)))

(assert (= (and d!796153 c!444888) b!2746872))

(assert (= (and d!796153 (not c!444888)) b!2746871))

(assert (= (and b!2746871 c!444889) b!2746874))

(assert (= (and b!2746871 (not c!444889)) b!2746870))

(assert (= (and b!2746870 (not res!1152570)) b!2746873))

(declare-fun m!3163195 () Bool)

(assert (=> b!2746872 m!3163195))

(declare-fun m!3163197 () Bool)

(assert (=> b!2746873 m!3163197))

(declare-fun m!3163199 () Bool)

(assert (=> b!2746874 m!3163199))

(assert (=> b!2746804 d!796153))

(declare-fun d!796155 () Bool)

(assert (=> d!796155 (= (array_inv!4117 (_keys!3923 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161)))))))) (bvsge (size!24440 (_keys!3923 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746786 d!796155))

(declare-fun d!796157 () Bool)

(assert (=> d!796157 (= (array_inv!4119 (_values!3904 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161)))))))) (bvsge (size!24441 (_values!3904 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2746786 d!796157))

(declare-fun d!796159 () Bool)

(assert (=> d!796159 (= (valid!2810 (_3!2692 lt!971818)) (validCacheMapDown!372 (cache!3673 (_3!2692 lt!971818))))))

(declare-fun bs!490303 () Bool)

(assert (= bs!490303 d!796159))

(declare-fun m!3163201 () Bool)

(assert (=> bs!490303 m!3163201))

(assert (=> b!2746812 d!796159))

(declare-fun d!796161 () Bool)

(declare-fun e!1730773 () Bool)

(assert (=> d!796161 e!1730773))

(declare-fun res!1152584 () Bool)

(assert (=> d!796161 (=> (not res!1152584) (not e!1730773))))

(declare-fun lt!971846 () Option!6243)

(declare-fun isDefined!4931 (Option!6243) Bool)

(declare-datatypes ((tuple2!31500 0))(
  ( (tuple2!31501 (_1!18443 Token!9124) (_2!18443 List!31759)) )
))
(declare-datatypes ((Option!6244 0))(
  ( (None!6243) (Some!6243 (v!33285 tuple2!31500)) )
))
(declare-fun isDefined!4932 (Option!6244) Bool)

(declare-fun maxPrefixZipper!489 (LexerInterface!4443 List!31760 List!31759) Option!6244)

(assert (=> d!796161 (= res!1152584 (= (isDefined!4931 lt!971846) (isDefined!4932 (maxPrefixZipper!489 thiss!15207 rulesArg!249 (list!12002 input!1326)))))))

(declare-fun e!1730772 () Option!6243)

(assert (=> d!796161 (= lt!971846 e!1730772)))

(declare-fun c!444893 () Bool)

(assert (=> d!796161 (= c!444893 (and ((_ is Cons!31660) rulesArg!249) ((_ is Nil!31660) (t!227848 rulesArg!249))))))

(declare-fun lt!971851 () Unit!45541)

(declare-fun lt!971850 () Unit!45541)

(assert (=> d!796161 (= lt!971851 lt!971850)))

(declare-fun lt!971845 () List!31759)

(declare-fun lt!971848 () List!31759)

(assert (=> d!796161 (isPrefix!2521 lt!971845 lt!971848)))

(assert (=> d!796161 (= lt!971850 (lemmaIsPrefixRefl!1647 lt!971845 lt!971848))))

(assert (=> d!796161 (= lt!971848 (list!12002 input!1326))))

(assert (=> d!796161 (= lt!971845 (list!12002 input!1326))))

(assert (=> d!796161 (rulesValidInductive!1713 thiss!15207 rulesArg!249)))

(assert (=> d!796161 (= (maxPrefixZipperSequence!1064 thiss!15207 rulesArg!249 input!1326) lt!971846)))

(declare-fun e!1730774 () Bool)

(declare-fun b!2746891 () Bool)

(declare-fun get!9845 (Option!6243) tuple2!31498)

(declare-fun get!9846 (Option!6244) tuple2!31500)

(declare-fun maxPrefix!2385 (LexerInterface!4443 List!31760 List!31759) Option!6244)

(assert (=> b!2746891 (= e!1730774 (= (list!12002 (_2!18441 (get!9845 lt!971846))) (_2!18443 (get!9846 (maxPrefix!2385 thiss!15207 rulesArg!249 (list!12002 input!1326))))))))

(declare-fun b!2746892 () Bool)

(declare-fun e!1730770 () Bool)

(assert (=> b!2746892 (= e!1730770 (= (list!12002 (_2!18441 (get!9845 lt!971846))) (_2!18443 (get!9846 (maxPrefixZipper!489 thiss!15207 rulesArg!249 (list!12002 input!1326))))))))

(declare-fun b!2746893 () Bool)

(declare-fun lt!971849 () Option!6243)

(declare-fun lt!971847 () Option!6243)

(assert (=> b!2746893 (= e!1730772 (ite (and ((_ is None!6242) lt!971849) ((_ is None!6242) lt!971847)) None!6242 (ite ((_ is None!6242) lt!971847) lt!971849 (ite ((_ is None!6242) lt!971849) lt!971847 (ite (>= (size!24443 (_1!18441 (v!33284 lt!971849))) (size!24443 (_1!18441 (v!33284 lt!971847)))) lt!971849 lt!971847)))))))

(declare-fun call!177424 () Option!6243)

(assert (=> b!2746893 (= lt!971849 call!177424)))

(assert (=> b!2746893 (= lt!971847 (maxPrefixZipperSequence!1064 thiss!15207 (t!227848 rulesArg!249) input!1326))))

(declare-fun b!2746894 () Bool)

(declare-fun e!1730775 () Bool)

(assert (=> b!2746894 (= e!1730773 e!1730775)))

(declare-fun res!1152588 () Bool)

(assert (=> b!2746894 (=> res!1152588 e!1730775)))

(assert (=> b!2746894 (= res!1152588 (not (isDefined!4931 lt!971846)))))

(declare-fun b!2746895 () Bool)

(assert (=> b!2746895 (= e!1730775 e!1730774)))

(declare-fun res!1152587 () Bool)

(assert (=> b!2746895 (=> (not res!1152587) (not e!1730774))))

(assert (=> b!2746895 (= res!1152587 (= (_1!18441 (get!9845 lt!971846)) (_1!18443 (get!9846 (maxPrefix!2385 thiss!15207 rulesArg!249 (list!12002 input!1326))))))))

(declare-fun b!2746896 () Bool)

(declare-fun e!1730771 () Bool)

(assert (=> b!2746896 (= e!1730771 e!1730770)))

(declare-fun res!1152583 () Bool)

(assert (=> b!2746896 (=> (not res!1152583) (not e!1730770))))

(assert (=> b!2746896 (= res!1152583 (= (_1!18441 (get!9845 lt!971846)) (_1!18443 (get!9846 (maxPrefixZipper!489 thiss!15207 rulesArg!249 (list!12002 input!1326))))))))

(declare-fun b!2746897 () Bool)

(assert (=> b!2746897 (= e!1730772 call!177424)))

(declare-fun bm!177419 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!503 (LexerInterface!4443 Rule!9500 BalanceConc!19400) Option!6243)

(assert (=> bm!177419 (= call!177424 (maxPrefixOneRuleZipperSequence!503 thiss!15207 (h!37080 rulesArg!249) input!1326))))

(declare-fun b!2746898 () Bool)

(declare-fun res!1152585 () Bool)

(assert (=> b!2746898 (=> (not res!1152585) (not e!1730773))))

(assert (=> b!2746898 (= res!1152585 e!1730771)))

(declare-fun res!1152586 () Bool)

(assert (=> b!2746898 (=> res!1152586 e!1730771)))

(assert (=> b!2746898 (= res!1152586 (not (isDefined!4931 lt!971846)))))

(assert (= (and d!796161 c!444893) b!2746897))

(assert (= (and d!796161 (not c!444893)) b!2746893))

(assert (= (or b!2746897 b!2746893) bm!177419))

(assert (= (and d!796161 res!1152584) b!2746898))

(assert (= (and b!2746898 (not res!1152586)) b!2746896))

(assert (= (and b!2746896 res!1152583) b!2746892))

(assert (= (and b!2746898 res!1152585) b!2746894))

(assert (= (and b!2746894 (not res!1152588)) b!2746895))

(assert (= (and b!2746895 res!1152587) b!2746891))

(assert (=> b!2746891 m!3163105))

(declare-fun m!3163203 () Bool)

(assert (=> b!2746891 m!3163203))

(declare-fun m!3163205 () Bool)

(assert (=> b!2746891 m!3163205))

(assert (=> b!2746891 m!3163105))

(declare-fun m!3163207 () Bool)

(assert (=> b!2746891 m!3163207))

(assert (=> b!2746891 m!3163207))

(declare-fun m!3163209 () Bool)

(assert (=> b!2746891 m!3163209))

(declare-fun m!3163211 () Bool)

(assert (=> d!796161 m!3163211))

(assert (=> d!796161 m!3163105))

(declare-fun m!3163213 () Bool)

(assert (=> d!796161 m!3163213))

(assert (=> d!796161 m!3163213))

(declare-fun m!3163215 () Bool)

(assert (=> d!796161 m!3163215))

(assert (=> d!796161 m!3163105))

(declare-fun m!3163217 () Bool)

(assert (=> d!796161 m!3163217))

(assert (=> d!796161 m!3163107))

(declare-fun m!3163219 () Bool)

(assert (=> d!796161 m!3163219))

(assert (=> b!2746894 m!3163211))

(assert (=> b!2746895 m!3163203))

(assert (=> b!2746895 m!3163105))

(assert (=> b!2746895 m!3163105))

(assert (=> b!2746895 m!3163207))

(assert (=> b!2746895 m!3163207))

(assert (=> b!2746895 m!3163209))

(declare-fun m!3163221 () Bool)

(assert (=> b!2746893 m!3163221))

(assert (=> b!2746892 m!3163213))

(declare-fun m!3163223 () Bool)

(assert (=> b!2746892 m!3163223))

(assert (=> b!2746892 m!3163105))

(assert (=> b!2746892 m!3163203))

(assert (=> b!2746892 m!3163205))

(assert (=> b!2746892 m!3163105))

(assert (=> b!2746892 m!3163213))

(declare-fun m!3163225 () Bool)

(assert (=> bm!177419 m!3163225))

(assert (=> b!2746898 m!3163211))

(assert (=> b!2746896 m!3163203))

(assert (=> b!2746896 m!3163105))

(assert (=> b!2746896 m!3163105))

(assert (=> b!2746896 m!3163213))

(assert (=> b!2746896 m!3163213))

(assert (=> b!2746896 m!3163223))

(assert (=> b!2746776 d!796161))

(declare-fun d!796163 () Bool)

(declare-fun res!1152589 () Bool)

(declare-fun e!1730776 () Bool)

(assert (=> d!796163 (=> (not res!1152589) (not e!1730776))))

(assert (=> d!796163 (= res!1152589 ((_ is HashMap!3529) (cache!3672 (_2!18442 err!4161))))))

(assert (=> d!796163 (= (inv!43010 (_2!18442 err!4161)) e!1730776)))

(declare-fun b!2746899 () Bool)

(assert (=> b!2746899 (= e!1730776 (validCacheMapUp!341 (cache!3672 (_2!18442 err!4161))))))

(assert (= (and d!796163 res!1152589) b!2746899))

(declare-fun m!3163227 () Bool)

(assert (=> b!2746899 m!3163227))

(assert (=> b!2746776 d!796163))

(declare-fun d!796165 () Bool)

(declare-fun res!1152590 () Bool)

(declare-fun e!1730777 () Bool)

(assert (=> d!796165 (=> (not res!1152590) (not e!1730777))))

(assert (=> d!796165 (= res!1152590 ((_ is HashMap!3530) (cache!3673 (_3!2692 err!4161))))))

(assert (=> d!796165 (= (inv!43011 (_3!2692 err!4161)) e!1730777)))

(declare-fun b!2746900 () Bool)

(assert (=> b!2746900 (= e!1730777 (validCacheMapDown!372 (cache!3673 (_3!2692 err!4161))))))

(assert (= (and d!796165 res!1152590) b!2746900))

(declare-fun m!3163229 () Bool)

(assert (=> b!2746900 m!3163229))

(assert (=> b!2746776 d!796165))

(declare-fun d!796167 () Bool)

(assert (=> d!796167 (= (valid!2811 cacheUp!633) (validCacheMapUp!341 (cache!3672 cacheUp!633)))))

(declare-fun bs!490304 () Bool)

(assert (= bs!490304 d!796167))

(assert (=> bs!490304 m!3163189))

(assert (=> b!2746802 d!796167))

(declare-fun d!796169 () Bool)

(assert (=> d!796169 true))

(declare-fun lt!971854 () Bool)

(declare-fun lambda!100867 () Int)

(declare-fun forall!6583 (List!31760 Int) Bool)

(assert (=> d!796169 (= lt!971854 (forall!6583 rulesArg!249 lambda!100867))))

(declare-fun e!1730783 () Bool)

(assert (=> d!796169 (= lt!971854 e!1730783)))

(declare-fun res!1152596 () Bool)

(assert (=> d!796169 (=> res!1152596 e!1730783)))

(assert (=> d!796169 (= res!1152596 (not ((_ is Cons!31660) rulesArg!249)))))

(assert (=> d!796169 (= (rulesValidInductive!1713 thiss!15207 rulesArg!249) lt!971854)))

(declare-fun b!2746905 () Bool)

(declare-fun e!1730782 () Bool)

(assert (=> b!2746905 (= e!1730783 e!1730782)))

(declare-fun res!1152595 () Bool)

(assert (=> b!2746905 (=> (not res!1152595) (not e!1730782))))

(declare-fun ruleValid!1591 (LexerInterface!4443 Rule!9500) Bool)

(assert (=> b!2746905 (= res!1152595 (ruleValid!1591 thiss!15207 (h!37080 rulesArg!249)))))

(declare-fun b!2746906 () Bool)

(assert (=> b!2746906 (= e!1730782 (rulesValidInductive!1713 thiss!15207 (t!227848 rulesArg!249)))))

(assert (= (and d!796169 (not res!1152596)) b!2746905))

(assert (= (and b!2746905 res!1152595) b!2746906))

(declare-fun m!3163231 () Bool)

(assert (=> d!796169 m!3163231))

(declare-fun m!3163233 () Bool)

(assert (=> b!2746905 m!3163233))

(declare-fun m!3163235 () Bool)

(assert (=> b!2746906 m!3163235))

(assert (=> b!2746783 d!796169))

(declare-fun b!2746920 () Bool)

(declare-fun e!1730786 () Bool)

(declare-fun tp!865600 () Bool)

(declare-fun tp!865602 () Bool)

(assert (=> b!2746920 (= e!1730786 (and tp!865600 tp!865602))))

(declare-fun b!2746922 () Bool)

(declare-fun tp!865601 () Bool)

(declare-fun tp!865604 () Bool)

(assert (=> b!2746922 (= e!1730786 (and tp!865601 tp!865604))))

(declare-fun b!2746919 () Bool)

(declare-fun tp_is_empty!13937 () Bool)

(assert (=> b!2746919 (= e!1730786 tp_is_empty!13937)))

(assert (=> b!2746775 (= tp!865567 e!1730786)))

(declare-fun b!2746921 () Bool)

(declare-fun tp!865603 () Bool)

(assert (=> b!2746921 (= e!1730786 tp!865603)))

(assert (= (and b!2746775 ((_ is ElementMatch!8005) (regex!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161))))))) b!2746919))

(assert (= (and b!2746775 ((_ is Concat!13077) (regex!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161))))))) b!2746920))

(assert (= (and b!2746775 ((_ is Star!8005) (regex!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161))))))) b!2746921))

(assert (= (and b!2746775 ((_ is Union!8005) (regex!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161))))))) b!2746922))

(declare-fun b!2746924 () Bool)

(declare-fun e!1730787 () Bool)

(declare-fun tp!865605 () Bool)

(declare-fun tp!865607 () Bool)

(assert (=> b!2746924 (= e!1730787 (and tp!865605 tp!865607))))

(declare-fun b!2746926 () Bool)

(declare-fun tp!865606 () Bool)

(declare-fun tp!865609 () Bool)

(assert (=> b!2746926 (= e!1730787 (and tp!865606 tp!865609))))

(declare-fun b!2746923 () Bool)

(assert (=> b!2746923 (= e!1730787 tp_is_empty!13937)))

(assert (=> b!2746800 (= tp!865584 e!1730787)))

(declare-fun b!2746925 () Bool)

(declare-fun tp!865608 () Bool)

(assert (=> b!2746925 (= e!1730787 tp!865608)))

(assert (= (and b!2746800 ((_ is ElementMatch!8005) (regex!4850 (h!37080 rulesArg!249)))) b!2746923))

(assert (= (and b!2746800 ((_ is Concat!13077) (regex!4850 (h!37080 rulesArg!249)))) b!2746924))

(assert (= (and b!2746800 ((_ is Star!8005) (regex!4850 (h!37080 rulesArg!249)))) b!2746925))

(assert (= (and b!2746800 ((_ is Union!8005) (regex!4850 (h!37080 rulesArg!249)))) b!2746926))

(declare-fun b!2746935 () Bool)

(declare-fun e!1730796 () Bool)

(declare-fun tp!865621 () Bool)

(assert (=> b!2746935 (= e!1730796 tp!865621)))

(declare-fun e!1730794 () Bool)

(assert (=> b!2746774 (= tp!865574 e!1730794)))

(declare-fun b!2746936 () Bool)

(declare-fun e!1730795 () Bool)

(declare-fun tp!865623 () Bool)

(assert (=> b!2746936 (= e!1730795 tp!865623)))

(declare-fun tp!865622 () Bool)

(declare-fun setRes!21717 () Bool)

(declare-fun setNonEmpty!21717 () Bool)

(declare-fun setElem!21717 () Context!4446)

(declare-fun inv!43017 (Context!4446) Bool)

(assert (=> setNonEmpty!21717 (= setRes!21717 (and tp!865622 (inv!43017 setElem!21717) e!1730795))))

(declare-fun setRest!21717 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21717 (= (_2!18440 (h!37077 (zeroValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21717 true) setRest!21717))))

(declare-fun setIsEmpty!21717 () Bool)

(assert (=> setIsEmpty!21717 setRes!21717))

(declare-fun tp!865620 () Bool)

(declare-fun tp!865624 () Bool)

(declare-fun b!2746937 () Bool)

(assert (=> b!2746937 (= e!1730794 (and tp!865624 (inv!43017 (_2!18439 (_1!18440 (h!37077 (zeroValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646)))))))))) e!1730796 tp_is_empty!13937 setRes!21717 tp!865620))))

(declare-fun condSetEmpty!21717 () Bool)

(assert (=> b!2746937 (= condSetEmpty!21717 (= (_2!18440 (h!37077 (zeroValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646)))))))) ((as const (Array Context!4446 Bool)) false)))))

(assert (= b!2746937 b!2746935))

(assert (= (and b!2746937 condSetEmpty!21717) setIsEmpty!21717))

(assert (= (and b!2746937 (not condSetEmpty!21717)) setNonEmpty!21717))

(assert (= setNonEmpty!21717 b!2746936))

(assert (= (and b!2746774 ((_ is Cons!31657) (zeroValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646)))))))) b!2746937))

(declare-fun m!3163237 () Bool)

(assert (=> setNonEmpty!21717 m!3163237))

(declare-fun m!3163239 () Bool)

(assert (=> b!2746937 m!3163239))

(declare-fun b!2746938 () Bool)

(declare-fun e!1730799 () Bool)

(declare-fun tp!865626 () Bool)

(assert (=> b!2746938 (= e!1730799 tp!865626)))

(declare-fun e!1730797 () Bool)

(assert (=> b!2746774 (= tp!865568 e!1730797)))

(declare-fun b!2746939 () Bool)

(declare-fun e!1730798 () Bool)

(declare-fun tp!865628 () Bool)

(assert (=> b!2746939 (= e!1730798 tp!865628)))

(declare-fun setElem!21718 () Context!4446)

(declare-fun tp!865627 () Bool)

(declare-fun setRes!21718 () Bool)

(declare-fun setNonEmpty!21718 () Bool)

(assert (=> setNonEmpty!21718 (= setRes!21718 (and tp!865627 (inv!43017 setElem!21718) e!1730798))))

(declare-fun setRest!21718 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21718 (= (_2!18440 (h!37077 (minValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21718 true) setRest!21718))))

(declare-fun setIsEmpty!21718 () Bool)

(assert (=> setIsEmpty!21718 setRes!21718))

(declare-fun tp!865629 () Bool)

(declare-fun b!2746940 () Bool)

(declare-fun tp!865625 () Bool)

(assert (=> b!2746940 (= e!1730797 (and tp!865629 (inv!43017 (_2!18439 (_1!18440 (h!37077 (minValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646)))))))))) e!1730799 tp_is_empty!13937 setRes!21718 tp!865625))))

(declare-fun condSetEmpty!21718 () Bool)

(assert (=> b!2746940 (= condSetEmpty!21718 (= (_2!18440 (h!37077 (minValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646)))))))) ((as const (Array Context!4446 Bool)) false)))))

(assert (= b!2746940 b!2746938))

(assert (= (and b!2746940 condSetEmpty!21718) setIsEmpty!21718))

(assert (= (and b!2746940 (not condSetEmpty!21718)) setNonEmpty!21718))

(assert (= setNonEmpty!21718 b!2746939))

(assert (= (and b!2746774 ((_ is Cons!31657) (minValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 cacheDown!646)))))))) b!2746940))

(declare-fun m!3163241 () Bool)

(assert (=> setNonEmpty!21718 m!3163241))

(declare-fun m!3163243 () Bool)

(assert (=> b!2746940 m!3163243))

(declare-fun setNonEmpty!21723 () Bool)

(declare-fun setElem!21724 () Context!4446)

(declare-fun tp!865651 () Bool)

(declare-fun e!1730814 () Bool)

(declare-fun setRes!21723 () Bool)

(assert (=> setNonEmpty!21723 (= setRes!21723 (and tp!865651 (inv!43017 setElem!21724) e!1730814))))

(declare-fun mapValue!16539 () List!31756)

(declare-fun setRest!21723 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21723 (= (_2!18438 (h!37076 mapValue!16539)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21724 true) setRest!21723))))

(declare-fun mapNonEmpty!16539 () Bool)

(declare-fun mapRes!16539 () Bool)

(declare-fun tp!865656 () Bool)

(declare-fun e!1730812 () Bool)

(assert (=> mapNonEmpty!16539 (= mapRes!16539 (and tp!865656 e!1730812))))

(declare-fun mapKey!16539 () (_ BitVec 32))

(declare-fun mapRest!16539 () (Array (_ BitVec 32) List!31756))

(assert (=> mapNonEmpty!16539 (= mapRest!16534 (store mapRest!16539 mapKey!16539 mapValue!16539))))

(declare-fun setIsEmpty!21723 () Bool)

(declare-fun setRes!21724 () Bool)

(assert (=> setIsEmpty!21723 setRes!21724))

(declare-fun condMapEmpty!16539 () Bool)

(declare-fun mapDefault!16539 () List!31756)

(assert (=> mapNonEmpty!16533 (= condMapEmpty!16539 (= mapRest!16534 ((as const (Array (_ BitVec 32) List!31756)) mapDefault!16539)))))

(declare-fun e!1730813 () Bool)

(assert (=> mapNonEmpty!16533 (= tp!865575 (and e!1730813 mapRes!16539))))

(declare-fun b!2746955 () Bool)

(declare-fun e!1730816 () Bool)

(declare-fun tp!865653 () Bool)

(assert (=> b!2746955 (= e!1730816 tp!865653)))

(declare-fun mapIsEmpty!16539 () Bool)

(assert (=> mapIsEmpty!16539 mapRes!16539))

(declare-fun b!2746956 () Bool)

(declare-fun e!1730815 () Bool)

(declare-fun tp!865648 () Bool)

(assert (=> b!2746956 (= e!1730815 tp!865648)))

(declare-fun e!1730817 () Bool)

(declare-fun setNonEmpty!21724 () Bool)

(declare-fun tp!865649 () Bool)

(declare-fun setElem!21723 () Context!4446)

(assert (=> setNonEmpty!21724 (= setRes!21724 (and tp!865649 (inv!43017 setElem!21723) e!1730817))))

(declare-fun setRest!21724 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21724 (= (_2!18438 (h!37076 mapDefault!16539)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21723 true) setRest!21724))))

(declare-fun setIsEmpty!21724 () Bool)

(assert (=> setIsEmpty!21724 setRes!21723))

(declare-fun b!2746957 () Bool)

(declare-fun tp!865655 () Bool)

(assert (=> b!2746957 (= e!1730814 tp!865655)))

(declare-fun b!2746958 () Bool)

(declare-fun tp!865650 () Bool)

(assert (=> b!2746958 (= e!1730817 tp!865650)))

(declare-fun tp!865652 () Bool)

(declare-fun b!2746959 () Bool)

(assert (=> b!2746959 (= e!1730813 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 mapDefault!16539)))) e!1730815 tp_is_empty!13937 setRes!21724 tp!865652))))

(declare-fun condSetEmpty!21723 () Bool)

(assert (=> b!2746959 (= condSetEmpty!21723 (= (_2!18438 (h!37076 mapDefault!16539)) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun tp!865654 () Bool)

(declare-fun b!2746960 () Bool)

(assert (=> b!2746960 (= e!1730812 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 mapValue!16539)))) e!1730816 tp_is_empty!13937 setRes!21723 tp!865654))))

(declare-fun condSetEmpty!21724 () Bool)

(assert (=> b!2746960 (= condSetEmpty!21724 (= (_2!18438 (h!37076 mapValue!16539)) ((as const (Array Context!4446 Bool)) false)))))

(assert (= (and mapNonEmpty!16533 condMapEmpty!16539) mapIsEmpty!16539))

(assert (= (and mapNonEmpty!16533 (not condMapEmpty!16539)) mapNonEmpty!16539))

(assert (= b!2746960 b!2746955))

(assert (= (and b!2746960 condSetEmpty!21724) setIsEmpty!21724))

(assert (= (and b!2746960 (not condSetEmpty!21724)) setNonEmpty!21723))

(assert (= setNonEmpty!21723 b!2746957))

(assert (= (and mapNonEmpty!16539 ((_ is Cons!31656) mapValue!16539)) b!2746960))

(assert (= b!2746959 b!2746956))

(assert (= (and b!2746959 condSetEmpty!21723) setIsEmpty!21723))

(assert (= (and b!2746959 (not condSetEmpty!21723)) setNonEmpty!21724))

(assert (= setNonEmpty!21724 b!2746958))

(assert (= (and mapNonEmpty!16533 ((_ is Cons!31656) mapDefault!16539)) b!2746959))

(declare-fun m!3163245 () Bool)

(assert (=> b!2746960 m!3163245))

(declare-fun m!3163247 () Bool)

(assert (=> b!2746959 m!3163247))

(declare-fun m!3163249 () Bool)

(assert (=> mapNonEmpty!16539 m!3163249))

(declare-fun m!3163251 () Bool)

(assert (=> setNonEmpty!21724 m!3163251))

(declare-fun m!3163253 () Bool)

(assert (=> setNonEmpty!21723 m!3163253))

(declare-fun e!1730824 () Bool)

(declare-fun b!2746969 () Bool)

(declare-fun tp!865666 () Bool)

(declare-fun setRes!21727 () Bool)

(declare-fun e!1730826 () Bool)

(assert (=> b!2746969 (= e!1730824 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 mapValue!16534)))) e!1730826 tp_is_empty!13937 setRes!21727 tp!865666))))

(declare-fun condSetEmpty!21727 () Bool)

(assert (=> b!2746969 (= condSetEmpty!21727 (= (_2!18438 (h!37076 mapValue!16534)) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun setNonEmpty!21727 () Bool)

(declare-fun tp!865665 () Bool)

(declare-fun setElem!21727 () Context!4446)

(declare-fun e!1730825 () Bool)

(assert (=> setNonEmpty!21727 (= setRes!21727 (and tp!865665 (inv!43017 setElem!21727) e!1730825))))

(declare-fun setRest!21727 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21727 (= (_2!18438 (h!37076 mapValue!16534)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21727 true) setRest!21727))))

(declare-fun setIsEmpty!21727 () Bool)

(assert (=> setIsEmpty!21727 setRes!21727))

(declare-fun b!2746970 () Bool)

(declare-fun tp!865668 () Bool)

(assert (=> b!2746970 (= e!1730825 tp!865668)))

(assert (=> mapNonEmpty!16533 (= tp!865582 e!1730824)))

(declare-fun b!2746971 () Bool)

(declare-fun tp!865667 () Bool)

(assert (=> b!2746971 (= e!1730826 tp!865667)))

(assert (= b!2746969 b!2746971))

(assert (= (and b!2746969 condSetEmpty!21727) setIsEmpty!21727))

(assert (= (and b!2746969 (not condSetEmpty!21727)) setNonEmpty!21727))

(assert (= setNonEmpty!21727 b!2746970))

(assert (= (and mapNonEmpty!16533 ((_ is Cons!31656) mapValue!16534)) b!2746969))

(declare-fun m!3163255 () Bool)

(assert (=> b!2746969 m!3163255))

(declare-fun m!3163257 () Bool)

(assert (=> setNonEmpty!21727 m!3163257))

(declare-fun b!2746986 () Bool)

(declare-fun e!1730839 () Bool)

(declare-fun tp!865697 () Bool)

(assert (=> b!2746986 (= e!1730839 tp!865697)))

(declare-fun setIsEmpty!21732 () Bool)

(declare-fun setRes!21732 () Bool)

(assert (=> setIsEmpty!21732 setRes!21732))

(declare-fun setElem!21733 () Context!4446)

(declare-fun e!1730841 () Bool)

(declare-fun tp!865691 () Bool)

(declare-fun setNonEmpty!21732 () Bool)

(assert (=> setNonEmpty!21732 (= setRes!21732 (and tp!865691 (inv!43017 setElem!21733) e!1730841))))

(declare-fun mapDefault!16542 () List!31757)

(declare-fun setRest!21732 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21732 (= (_2!18440 (h!37077 mapDefault!16542)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21733 true) setRest!21732))))

(declare-fun b!2746987 () Bool)

(declare-fun tp!865693 () Bool)

(assert (=> b!2746987 (= e!1730841 tp!865693)))

(declare-fun condMapEmpty!16542 () Bool)

(assert (=> mapNonEmpty!16536 (= condMapEmpty!16542 (= mapRest!16536 ((as const (Array (_ BitVec 32) List!31757)) mapDefault!16542)))))

(declare-fun e!1730842 () Bool)

(declare-fun mapRes!16542 () Bool)

(assert (=> mapNonEmpty!16536 (= tp!865580 (and e!1730842 mapRes!16542))))

(declare-fun b!2746988 () Bool)

(declare-fun e!1730840 () Bool)

(declare-fun tp!865700 () Bool)

(assert (=> b!2746988 (= e!1730840 tp!865700)))

(declare-fun setNonEmpty!21733 () Bool)

(declare-fun setRes!21733 () Bool)

(declare-fun tp!865698 () Bool)

(declare-fun setElem!21732 () Context!4446)

(assert (=> setNonEmpty!21733 (= setRes!21733 (and tp!865698 (inv!43017 setElem!21732) e!1730839))))

(declare-fun mapValue!16542 () List!31757)

(declare-fun setRest!21733 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21733 (= (_2!18440 (h!37077 mapValue!16542)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21732 true) setRest!21733))))

(declare-fun mapNonEmpty!16542 () Bool)

(declare-fun tp!865701 () Bool)

(declare-fun e!1730844 () Bool)

(assert (=> mapNonEmpty!16542 (= mapRes!16542 (and tp!865701 e!1730844))))

(declare-fun mapKey!16542 () (_ BitVec 32))

(declare-fun mapRest!16542 () (Array (_ BitVec 32) List!31757))

(assert (=> mapNonEmpty!16542 (= mapRest!16536 (store mapRest!16542 mapKey!16542 mapValue!16542))))

(declare-fun tp!865692 () Bool)

(declare-fun b!2746989 () Bool)

(declare-fun tp!865695 () Bool)

(assert (=> b!2746989 (= e!1730842 (and tp!865695 (inv!43017 (_2!18439 (_1!18440 (h!37077 mapDefault!16542)))) e!1730840 tp_is_empty!13937 setRes!21732 tp!865692))))

(declare-fun condSetEmpty!21733 () Bool)

(assert (=> b!2746989 (= condSetEmpty!21733 (= (_2!18440 (h!37077 mapDefault!16542)) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun b!2746990 () Bool)

(declare-fun e!1730843 () Bool)

(declare-fun tp!865694 () Bool)

(assert (=> b!2746990 (= e!1730843 tp!865694)))

(declare-fun tp!865699 () Bool)

(declare-fun b!2746991 () Bool)

(declare-fun tp!865696 () Bool)

(assert (=> b!2746991 (= e!1730844 (and tp!865699 (inv!43017 (_2!18439 (_1!18440 (h!37077 mapValue!16542)))) e!1730843 tp_is_empty!13937 setRes!21733 tp!865696))))

(declare-fun condSetEmpty!21732 () Bool)

(assert (=> b!2746991 (= condSetEmpty!21732 (= (_2!18440 (h!37077 mapValue!16542)) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun mapIsEmpty!16542 () Bool)

(assert (=> mapIsEmpty!16542 mapRes!16542))

(declare-fun setIsEmpty!21733 () Bool)

(assert (=> setIsEmpty!21733 setRes!21733))

(assert (= (and mapNonEmpty!16536 condMapEmpty!16542) mapIsEmpty!16542))

(assert (= (and mapNonEmpty!16536 (not condMapEmpty!16542)) mapNonEmpty!16542))

(assert (= b!2746991 b!2746990))

(assert (= (and b!2746991 condSetEmpty!21732) setIsEmpty!21733))

(assert (= (and b!2746991 (not condSetEmpty!21732)) setNonEmpty!21733))

(assert (= setNonEmpty!21733 b!2746986))

(assert (= (and mapNonEmpty!16542 ((_ is Cons!31657) mapValue!16542)) b!2746991))

(assert (= b!2746989 b!2746988))

(assert (= (and b!2746989 condSetEmpty!21733) setIsEmpty!21732))

(assert (= (and b!2746989 (not condSetEmpty!21733)) setNonEmpty!21732))

(assert (= setNonEmpty!21732 b!2746987))

(assert (= (and mapNonEmpty!16536 ((_ is Cons!31657) mapDefault!16542)) b!2746989))

(declare-fun m!3163259 () Bool)

(assert (=> b!2746991 m!3163259))

(declare-fun m!3163261 () Bool)

(assert (=> setNonEmpty!21732 m!3163261))

(declare-fun m!3163263 () Bool)

(assert (=> b!2746989 m!3163263))

(declare-fun m!3163265 () Bool)

(assert (=> mapNonEmpty!16542 m!3163265))

(declare-fun m!3163267 () Bool)

(assert (=> setNonEmpty!21733 m!3163267))

(declare-fun b!2746992 () Bool)

(declare-fun e!1730847 () Bool)

(declare-fun tp!865703 () Bool)

(assert (=> b!2746992 (= e!1730847 tp!865703)))

(declare-fun e!1730845 () Bool)

(assert (=> mapNonEmpty!16536 (= tp!865557 e!1730845)))

(declare-fun b!2746993 () Bool)

(declare-fun e!1730846 () Bool)

(declare-fun tp!865705 () Bool)

(assert (=> b!2746993 (= e!1730846 tp!865705)))

(declare-fun setElem!21734 () Context!4446)

(declare-fun tp!865704 () Bool)

(declare-fun setRes!21734 () Bool)

(declare-fun setNonEmpty!21734 () Bool)

(assert (=> setNonEmpty!21734 (= setRes!21734 (and tp!865704 (inv!43017 setElem!21734) e!1730846))))

(declare-fun setRest!21734 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21734 (= (_2!18440 (h!37077 mapValue!16533)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21734 true) setRest!21734))))

(declare-fun setIsEmpty!21734 () Bool)

(assert (=> setIsEmpty!21734 setRes!21734))

(declare-fun b!2746994 () Bool)

(declare-fun tp!865706 () Bool)

(declare-fun tp!865702 () Bool)

(assert (=> b!2746994 (= e!1730845 (and tp!865706 (inv!43017 (_2!18439 (_1!18440 (h!37077 mapValue!16533)))) e!1730847 tp_is_empty!13937 setRes!21734 tp!865702))))

(declare-fun condSetEmpty!21734 () Bool)

(assert (=> b!2746994 (= condSetEmpty!21734 (= (_2!18440 (h!37077 mapValue!16533)) ((as const (Array Context!4446 Bool)) false)))))

(assert (= b!2746994 b!2746992))

(assert (= (and b!2746994 condSetEmpty!21734) setIsEmpty!21734))

(assert (= (and b!2746994 (not condSetEmpty!21734)) setNonEmpty!21734))

(assert (= setNonEmpty!21734 b!2746993))

(assert (= (and mapNonEmpty!16536 ((_ is Cons!31657) mapValue!16533)) b!2746994))

(declare-fun m!3163269 () Bool)

(assert (=> setNonEmpty!21734 m!3163269))

(declare-fun m!3163271 () Bool)

(assert (=> b!2746994 m!3163271))

(declare-fun setRes!21735 () Bool)

(declare-fun e!1730850 () Bool)

(declare-fun tp!865708 () Bool)

(declare-fun e!1730848 () Bool)

(declare-fun b!2746995 () Bool)

(assert (=> b!2746995 (= e!1730848 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 mapDefault!16533)))) e!1730850 tp_is_empty!13937 setRes!21735 tp!865708))))

(declare-fun condSetEmpty!21735 () Bool)

(assert (=> b!2746995 (= condSetEmpty!21735 (= (_2!18438 (h!37076 mapDefault!16533)) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun e!1730849 () Bool)

(declare-fun setElem!21735 () Context!4446)

(declare-fun tp!865707 () Bool)

(declare-fun setNonEmpty!21735 () Bool)

(assert (=> setNonEmpty!21735 (= setRes!21735 (and tp!865707 (inv!43017 setElem!21735) e!1730849))))

(declare-fun setRest!21735 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21735 (= (_2!18438 (h!37076 mapDefault!16533)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21735 true) setRest!21735))))

(declare-fun setIsEmpty!21735 () Bool)

(assert (=> setIsEmpty!21735 setRes!21735))

(declare-fun b!2746996 () Bool)

(declare-fun tp!865710 () Bool)

(assert (=> b!2746996 (= e!1730849 tp!865710)))

(assert (=> b!2746773 (= tp!865561 e!1730848)))

(declare-fun b!2746997 () Bool)

(declare-fun tp!865709 () Bool)

(assert (=> b!2746997 (= e!1730850 tp!865709)))

(assert (= b!2746995 b!2746997))

(assert (= (and b!2746995 condSetEmpty!21735) setIsEmpty!21735))

(assert (= (and b!2746995 (not condSetEmpty!21735)) setNonEmpty!21735))

(assert (= setNonEmpty!21735 b!2746996))

(assert (= (and b!2746773 ((_ is Cons!31656) mapDefault!16533)) b!2746995))

(declare-fun m!3163273 () Bool)

(assert (=> b!2746995 m!3163273))

(declare-fun m!3163275 () Bool)

(assert (=> setNonEmpty!21735 m!3163275))

(declare-fun e!1730851 () Bool)

(declare-fun b!2746998 () Bool)

(declare-fun tp!865712 () Bool)

(declare-fun setRes!21736 () Bool)

(declare-fun e!1730853 () Bool)

(assert (=> b!2746998 (= e!1730851 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 (zeroValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633)))))))))) e!1730853 tp_is_empty!13937 setRes!21736 tp!865712))))

(declare-fun condSetEmpty!21736 () Bool)

(assert (=> b!2746998 (= condSetEmpty!21736 (= (_2!18438 (h!37076 (zeroValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633)))))))) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun setElem!21736 () Context!4446)

(declare-fun tp!865711 () Bool)

(declare-fun e!1730852 () Bool)

(declare-fun setNonEmpty!21736 () Bool)

(assert (=> setNonEmpty!21736 (= setRes!21736 (and tp!865711 (inv!43017 setElem!21736) e!1730852))))

(declare-fun setRest!21736 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21736 (= (_2!18438 (h!37076 (zeroValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21736 true) setRest!21736))))

(declare-fun setIsEmpty!21736 () Bool)

(assert (=> setIsEmpty!21736 setRes!21736))

(declare-fun b!2746999 () Bool)

(declare-fun tp!865714 () Bool)

(assert (=> b!2746999 (= e!1730852 tp!865714)))

(assert (=> b!2746780 (= tp!865578 e!1730851)))

(declare-fun b!2747000 () Bool)

(declare-fun tp!865713 () Bool)

(assert (=> b!2747000 (= e!1730853 tp!865713)))

(assert (= b!2746998 b!2747000))

(assert (= (and b!2746998 condSetEmpty!21736) setIsEmpty!21736))

(assert (= (and b!2746998 (not condSetEmpty!21736)) setNonEmpty!21736))

(assert (= setNonEmpty!21736 b!2746999))

(assert (= (and b!2746780 ((_ is Cons!31656) (zeroValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633)))))))) b!2746998))

(declare-fun m!3163277 () Bool)

(assert (=> b!2746998 m!3163277))

(declare-fun m!3163279 () Bool)

(assert (=> setNonEmpty!21736 m!3163279))

(declare-fun tp!865716 () Bool)

(declare-fun b!2747001 () Bool)

(declare-fun setRes!21737 () Bool)

(declare-fun e!1730856 () Bool)

(declare-fun e!1730854 () Bool)

(assert (=> b!2747001 (= e!1730854 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 (minValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633)))))))))) e!1730856 tp_is_empty!13937 setRes!21737 tp!865716))))

(declare-fun condSetEmpty!21737 () Bool)

(assert (=> b!2747001 (= condSetEmpty!21737 (= (_2!18438 (h!37076 (minValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633)))))))) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun e!1730855 () Bool)

(declare-fun setElem!21737 () Context!4446)

(declare-fun tp!865715 () Bool)

(declare-fun setNonEmpty!21737 () Bool)

(assert (=> setNonEmpty!21737 (= setRes!21737 (and tp!865715 (inv!43017 setElem!21737) e!1730855))))

(declare-fun setRest!21737 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21737 (= (_2!18438 (h!37076 (minValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21737 true) setRest!21737))))

(declare-fun setIsEmpty!21737 () Bool)

(assert (=> setIsEmpty!21737 setRes!21737))

(declare-fun b!2747002 () Bool)

(declare-fun tp!865718 () Bool)

(assert (=> b!2747002 (= e!1730855 tp!865718)))

(assert (=> b!2746780 (= tp!865559 e!1730854)))

(declare-fun b!2747003 () Bool)

(declare-fun tp!865717 () Bool)

(assert (=> b!2747003 (= e!1730856 tp!865717)))

(assert (= b!2747001 b!2747003))

(assert (= (and b!2747001 condSetEmpty!21737) setIsEmpty!21737))

(assert (= (and b!2747001 (not condSetEmpty!21737)) setNonEmpty!21737))

(assert (= setNonEmpty!21737 b!2747002))

(assert (= (and b!2746780 ((_ is Cons!31656) (minValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 cacheUp!633)))))))) b!2747001))

(declare-fun m!3163281 () Bool)

(assert (=> b!2747001 m!3163281))

(declare-fun m!3163283 () Bool)

(assert (=> setNonEmpty!21737 m!3163283))

(declare-fun b!2747012 () Bool)

(declare-fun tp!865727 () Bool)

(declare-fun e!1730861 () Bool)

(declare-fun tp!865726 () Bool)

(assert (=> b!2747012 (= e!1730861 (and (inv!43014 (left!24251 (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161)))))) tp!865726 (inv!43014 (right!24581 (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161)))))) tp!865727))))

(declare-fun b!2747014 () Bool)

(declare-fun e!1730862 () Bool)

(declare-fun tp!865725 () Bool)

(assert (=> b!2747014 (= e!1730862 tp!865725)))

(declare-fun b!2747013 () Bool)

(declare-fun inv!43018 (IArray!19791) Bool)

(assert (=> b!2747013 (= e!1730861 (and (inv!43018 (xs!13000 (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161)))))) e!1730862))))

(assert (=> b!2746807 (= tp!865549 (and (inv!43014 (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161))))) e!1730861))))

(assert (= (and b!2746807 ((_ is Node!9893) (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161)))))) b!2747012))

(assert (= b!2747013 b!2747014))

(assert (= (and b!2746807 ((_ is Leaf!15064) (c!444879 (_2!18441 (v!33284 (_1!18442 err!4161)))))) b!2747013))

(declare-fun m!3163285 () Bool)

(assert (=> b!2747012 m!3163285))

(declare-fun m!3163287 () Bool)

(assert (=> b!2747012 m!3163287))

(declare-fun m!3163289 () Bool)

(assert (=> b!2747013 m!3163289))

(assert (=> b!2746807 m!3163097))

(declare-fun e!1730865 () Bool)

(declare-fun setNonEmpty!21738 () Bool)

(declare-fun setRes!21738 () Bool)

(declare-fun setElem!21739 () Context!4446)

(declare-fun tp!865731 () Bool)

(assert (=> setNonEmpty!21738 (= setRes!21738 (and tp!865731 (inv!43017 setElem!21739) e!1730865))))

(declare-fun mapValue!16543 () List!31756)

(declare-fun setRest!21738 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21738 (= (_2!18438 (h!37076 mapValue!16543)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21739 true) setRest!21738))))

(declare-fun mapNonEmpty!16543 () Bool)

(declare-fun mapRes!16543 () Bool)

(declare-fun tp!865736 () Bool)

(declare-fun e!1730863 () Bool)

(assert (=> mapNonEmpty!16543 (= mapRes!16543 (and tp!865736 e!1730863))))

(declare-fun mapRest!16543 () (Array (_ BitVec 32) List!31756))

(declare-fun mapKey!16543 () (_ BitVec 32))

(assert (=> mapNonEmpty!16543 (= mapRest!16533 (store mapRest!16543 mapKey!16543 mapValue!16543))))

(declare-fun setIsEmpty!21738 () Bool)

(declare-fun setRes!21739 () Bool)

(assert (=> setIsEmpty!21738 setRes!21739))

(declare-fun condMapEmpty!16543 () Bool)

(declare-fun mapDefault!16543 () List!31756)

(assert (=> mapNonEmpty!16534 (= condMapEmpty!16543 (= mapRest!16533 ((as const (Array (_ BitVec 32) List!31756)) mapDefault!16543)))))

(declare-fun e!1730864 () Bool)

(assert (=> mapNonEmpty!16534 (= tp!865576 (and e!1730864 mapRes!16543))))

(declare-fun b!2747015 () Bool)

(declare-fun e!1730867 () Bool)

(declare-fun tp!865733 () Bool)

(assert (=> b!2747015 (= e!1730867 tp!865733)))

(declare-fun mapIsEmpty!16543 () Bool)

(assert (=> mapIsEmpty!16543 mapRes!16543))

(declare-fun b!2747016 () Bool)

(declare-fun e!1730866 () Bool)

(declare-fun tp!865728 () Bool)

(assert (=> b!2747016 (= e!1730866 tp!865728)))

(declare-fun tp!865729 () Bool)

(declare-fun setNonEmpty!21739 () Bool)

(declare-fun e!1730868 () Bool)

(declare-fun setElem!21738 () Context!4446)

(assert (=> setNonEmpty!21739 (= setRes!21739 (and tp!865729 (inv!43017 setElem!21738) e!1730868))))

(declare-fun setRest!21739 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21739 (= (_2!18438 (h!37076 mapDefault!16543)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21738 true) setRest!21739))))

(declare-fun setIsEmpty!21739 () Bool)

(assert (=> setIsEmpty!21739 setRes!21738))

(declare-fun b!2747017 () Bool)

(declare-fun tp!865735 () Bool)

(assert (=> b!2747017 (= e!1730865 tp!865735)))

(declare-fun b!2747018 () Bool)

(declare-fun tp!865730 () Bool)

(assert (=> b!2747018 (= e!1730868 tp!865730)))

(declare-fun tp!865732 () Bool)

(declare-fun b!2747019 () Bool)

(assert (=> b!2747019 (= e!1730864 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 mapDefault!16543)))) e!1730866 tp_is_empty!13937 setRes!21739 tp!865732))))

(declare-fun condSetEmpty!21738 () Bool)

(assert (=> b!2747019 (= condSetEmpty!21738 (= (_2!18438 (h!37076 mapDefault!16543)) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun tp!865734 () Bool)

(declare-fun b!2747020 () Bool)

(assert (=> b!2747020 (= e!1730863 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 mapValue!16543)))) e!1730867 tp_is_empty!13937 setRes!21738 tp!865734))))

(declare-fun condSetEmpty!21739 () Bool)

(assert (=> b!2747020 (= condSetEmpty!21739 (= (_2!18438 (h!37076 mapValue!16543)) ((as const (Array Context!4446 Bool)) false)))))

(assert (= (and mapNonEmpty!16534 condMapEmpty!16543) mapIsEmpty!16543))

(assert (= (and mapNonEmpty!16534 (not condMapEmpty!16543)) mapNonEmpty!16543))

(assert (= b!2747020 b!2747015))

(assert (= (and b!2747020 condSetEmpty!21739) setIsEmpty!21739))

(assert (= (and b!2747020 (not condSetEmpty!21739)) setNonEmpty!21738))

(assert (= setNonEmpty!21738 b!2747017))

(assert (= (and mapNonEmpty!16543 ((_ is Cons!31656) mapValue!16543)) b!2747020))

(assert (= b!2747019 b!2747016))

(assert (= (and b!2747019 condSetEmpty!21738) setIsEmpty!21738))

(assert (= (and b!2747019 (not condSetEmpty!21738)) setNonEmpty!21739))

(assert (= setNonEmpty!21739 b!2747018))

(assert (= (and mapNonEmpty!16534 ((_ is Cons!31656) mapDefault!16543)) b!2747019))

(declare-fun m!3163291 () Bool)

(assert (=> b!2747020 m!3163291))

(declare-fun m!3163293 () Bool)

(assert (=> b!2747019 m!3163293))

(declare-fun m!3163295 () Bool)

(assert (=> mapNonEmpty!16543 m!3163295))

(declare-fun m!3163297 () Bool)

(assert (=> setNonEmpty!21739 m!3163297))

(declare-fun m!3163299 () Bool)

(assert (=> setNonEmpty!21738 m!3163299))

(declare-fun setRes!21740 () Bool)

(declare-fun e!1730871 () Bool)

(declare-fun tp!865738 () Bool)

(declare-fun e!1730869 () Bool)

(declare-fun b!2747021 () Bool)

(assert (=> b!2747021 (= e!1730869 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 mapValue!16535)))) e!1730871 tp_is_empty!13937 setRes!21740 tp!865738))))

(declare-fun condSetEmpty!21740 () Bool)

(assert (=> b!2747021 (= condSetEmpty!21740 (= (_2!18438 (h!37076 mapValue!16535)) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun e!1730870 () Bool)

(declare-fun setElem!21740 () Context!4446)

(declare-fun tp!865737 () Bool)

(declare-fun setNonEmpty!21740 () Bool)

(assert (=> setNonEmpty!21740 (= setRes!21740 (and tp!865737 (inv!43017 setElem!21740) e!1730870))))

(declare-fun setRest!21740 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21740 (= (_2!18438 (h!37076 mapValue!16535)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21740 true) setRest!21740))))

(declare-fun setIsEmpty!21740 () Bool)

(assert (=> setIsEmpty!21740 setRes!21740))

(declare-fun b!2747022 () Bool)

(declare-fun tp!865740 () Bool)

(assert (=> b!2747022 (= e!1730870 tp!865740)))

(assert (=> mapNonEmpty!16534 (= tp!865554 e!1730869)))

(declare-fun b!2747023 () Bool)

(declare-fun tp!865739 () Bool)

(assert (=> b!2747023 (= e!1730871 tp!865739)))

(assert (= b!2747021 b!2747023))

(assert (= (and b!2747021 condSetEmpty!21740) setIsEmpty!21740))

(assert (= (and b!2747021 (not condSetEmpty!21740)) setNonEmpty!21740))

(assert (= setNonEmpty!21740 b!2747022))

(assert (= (and mapNonEmpty!16534 ((_ is Cons!31656) mapValue!16535)) b!2747021))

(declare-fun m!3163301 () Bool)

(assert (=> b!2747021 m!3163301))

(declare-fun m!3163303 () Bool)

(assert (=> setNonEmpty!21740 m!3163303))

(declare-fun b!2747024 () Bool)

(declare-fun e!1730874 () Bool)

(declare-fun tp!865742 () Bool)

(assert (=> b!2747024 (= e!1730874 tp!865742)))

(declare-fun e!1730872 () Bool)

(assert (=> b!2746796 (= tp!865566 e!1730872)))

(declare-fun b!2747025 () Bool)

(declare-fun e!1730873 () Bool)

(declare-fun tp!865744 () Bool)

(assert (=> b!2747025 (= e!1730873 tp!865744)))

(declare-fun setElem!21741 () Context!4446)

(declare-fun setRes!21741 () Bool)

(declare-fun setNonEmpty!21741 () Bool)

(declare-fun tp!865743 () Bool)

(assert (=> setNonEmpty!21741 (= setRes!21741 (and tp!865743 (inv!43017 setElem!21741) e!1730873))))

(declare-fun setRest!21741 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21741 (= (_2!18440 (h!37077 mapDefault!16534)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21741 true) setRest!21741))))

(declare-fun setIsEmpty!21741 () Bool)

(assert (=> setIsEmpty!21741 setRes!21741))

(declare-fun tp!865741 () Bool)

(declare-fun tp!865745 () Bool)

(declare-fun b!2747026 () Bool)

(assert (=> b!2747026 (= e!1730872 (and tp!865745 (inv!43017 (_2!18439 (_1!18440 (h!37077 mapDefault!16534)))) e!1730874 tp_is_empty!13937 setRes!21741 tp!865741))))

(declare-fun condSetEmpty!21741 () Bool)

(assert (=> b!2747026 (= condSetEmpty!21741 (= (_2!18440 (h!37077 mapDefault!16534)) ((as const (Array Context!4446 Bool)) false)))))

(assert (= b!2747026 b!2747024))

(assert (= (and b!2747026 condSetEmpty!21741) setIsEmpty!21741))

(assert (= (and b!2747026 (not condSetEmpty!21741)) setNonEmpty!21741))

(assert (= setNonEmpty!21741 b!2747025))

(assert (= (and b!2746796 ((_ is Cons!31657) mapDefault!16534)) b!2747026))

(declare-fun m!3163305 () Bool)

(assert (=> setNonEmpty!21741 m!3163305))

(declare-fun m!3163307 () Bool)

(assert (=> b!2747026 m!3163307))

(declare-fun b!2747027 () Bool)

(declare-fun e!1730877 () Bool)

(declare-fun tp!865747 () Bool)

(assert (=> b!2747027 (= e!1730877 tp!865747)))

(declare-fun e!1730875 () Bool)

(assert (=> b!2746795 (= tp!865564 e!1730875)))

(declare-fun b!2747028 () Bool)

(declare-fun e!1730876 () Bool)

(declare-fun tp!865749 () Bool)

(assert (=> b!2747028 (= e!1730876 tp!865749)))

(declare-fun tp!865748 () Bool)

(declare-fun setNonEmpty!21742 () Bool)

(declare-fun setElem!21742 () Context!4446)

(declare-fun setRes!21742 () Bool)

(assert (=> setNonEmpty!21742 (= setRes!21742 (and tp!865748 (inv!43017 setElem!21742) e!1730876))))

(declare-fun setRest!21742 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21742 (= (_2!18440 (h!37077 (zeroValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161))))))))) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21742 true) setRest!21742))))

(declare-fun setIsEmpty!21742 () Bool)

(assert (=> setIsEmpty!21742 setRes!21742))

(declare-fun tp!865750 () Bool)

(declare-fun b!2747029 () Bool)

(declare-fun tp!865746 () Bool)

(assert (=> b!2747029 (= e!1730875 (and tp!865750 (inv!43017 (_2!18439 (_1!18440 (h!37077 (zeroValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161))))))))))) e!1730877 tp_is_empty!13937 setRes!21742 tp!865746))))

(declare-fun condSetEmpty!21742 () Bool)

(assert (=> b!2747029 (= condSetEmpty!21742 (= (_2!18440 (h!37077 (zeroValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161))))))))) ((as const (Array Context!4446 Bool)) false)))))

(assert (= b!2747029 b!2747027))

(assert (= (and b!2747029 condSetEmpty!21742) setIsEmpty!21742))

(assert (= (and b!2747029 (not condSetEmpty!21742)) setNonEmpty!21742))

(assert (= setNonEmpty!21742 b!2747028))

(assert (= (and b!2746795 ((_ is Cons!31657) (zeroValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161))))))))) b!2747029))

(declare-fun m!3163309 () Bool)

(assert (=> setNonEmpty!21742 m!3163309))

(declare-fun m!3163311 () Bool)

(assert (=> b!2747029 m!3163311))

(declare-fun b!2747030 () Bool)

(declare-fun e!1730880 () Bool)

(declare-fun tp!865752 () Bool)

(assert (=> b!2747030 (= e!1730880 tp!865752)))

(declare-fun e!1730878 () Bool)

(assert (=> b!2746795 (= tp!865573 e!1730878)))

(declare-fun b!2747031 () Bool)

(declare-fun e!1730879 () Bool)

(declare-fun tp!865754 () Bool)

(assert (=> b!2747031 (= e!1730879 tp!865754)))

(declare-fun setElem!21743 () Context!4446)

(declare-fun tp!865753 () Bool)

(declare-fun setNonEmpty!21743 () Bool)

(declare-fun setRes!21743 () Bool)

(assert (=> setNonEmpty!21743 (= setRes!21743 (and tp!865753 (inv!43017 setElem!21743) e!1730879))))

(declare-fun setRest!21743 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21743 (= (_2!18440 (h!37077 (minValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161))))))))) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21743 true) setRest!21743))))

(declare-fun setIsEmpty!21743 () Bool)

(assert (=> setIsEmpty!21743 setRes!21743))

(declare-fun tp!865751 () Bool)

(declare-fun tp!865755 () Bool)

(declare-fun b!2747032 () Bool)

(assert (=> b!2747032 (= e!1730878 (and tp!865755 (inv!43017 (_2!18439 (_1!18440 (h!37077 (minValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161))))))))))) e!1730880 tp_is_empty!13937 setRes!21743 tp!865751))))

(declare-fun condSetEmpty!21743 () Bool)

(assert (=> b!2747032 (= condSetEmpty!21743 (= (_2!18440 (h!37077 (minValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161))))))))) ((as const (Array Context!4446 Bool)) false)))))

(assert (= b!2747032 b!2747030))

(assert (= (and b!2747032 condSetEmpty!21743) setIsEmpty!21743))

(assert (= (and b!2747032 (not condSetEmpty!21743)) setNonEmpty!21743))

(assert (= setNonEmpty!21743 b!2747031))

(assert (= (and b!2746795 ((_ is Cons!31657) (minValue!3883 (v!33282 (underlying!7451 (v!33283 (underlying!7452 (cache!3673 (_3!2692 err!4161))))))))) b!2747032))

(declare-fun m!3163313 () Bool)

(assert (=> setNonEmpty!21743 m!3163313))

(declare-fun m!3163315 () Bool)

(assert (=> b!2747032 m!3163315))

(declare-fun tp!865758 () Bool)

(declare-fun b!2747033 () Bool)

(declare-fun e!1730881 () Bool)

(declare-fun tp!865757 () Bool)

(assert (=> b!2747033 (= e!1730881 (and (inv!43014 (left!24251 (c!444879 input!1326))) tp!865757 (inv!43014 (right!24581 (c!444879 input!1326))) tp!865758))))

(declare-fun b!2747035 () Bool)

(declare-fun e!1730882 () Bool)

(declare-fun tp!865756 () Bool)

(assert (=> b!2747035 (= e!1730882 tp!865756)))

(declare-fun b!2747034 () Bool)

(assert (=> b!2747034 (= e!1730881 (and (inv!43018 (xs!13000 (c!444879 input!1326))) e!1730882))))

(assert (=> b!2746805 (= tp!865571 (and (inv!43014 (c!444879 input!1326)) e!1730881))))

(assert (= (and b!2746805 ((_ is Node!9893) (c!444879 input!1326))) b!2747033))

(assert (= b!2747034 b!2747035))

(assert (= (and b!2746805 ((_ is Leaf!15064) (c!444879 input!1326))) b!2747034))

(declare-fun m!3163317 () Bool)

(assert (=> b!2747033 m!3163317))

(declare-fun m!3163319 () Bool)

(assert (=> b!2747033 m!3163319))

(declare-fun m!3163321 () Bool)

(assert (=> b!2747034 m!3163321))

(assert (=> b!2746805 m!3163111))

(declare-fun b!2747040 () Bool)

(declare-fun e!1730885 () Bool)

(declare-fun tp!865761 () Bool)

(assert (=> b!2747040 (= e!1730885 (and tp_is_empty!13937 tp!865761))))

(assert (=> b!2746804 (= tp!865577 e!1730885)))

(assert (= (and b!2746804 ((_ is Cons!31659) (originalCharacters!5593 (_1!18441 (v!33284 (_1!18442 err!4161)))))) b!2747040))

(declare-fun e!1730886 () Bool)

(declare-fun e!1730888 () Bool)

(declare-fun tp!865763 () Bool)

(declare-fun b!2747041 () Bool)

(declare-fun setRes!21744 () Bool)

(assert (=> b!2747041 (= e!1730886 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 (zeroValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161))))))))))) e!1730888 tp_is_empty!13937 setRes!21744 tp!865763))))

(declare-fun condSetEmpty!21744 () Bool)

(assert (=> b!2747041 (= condSetEmpty!21744 (= (_2!18438 (h!37076 (zeroValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161))))))))) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun setElem!21744 () Context!4446)

(declare-fun setNonEmpty!21744 () Bool)

(declare-fun e!1730887 () Bool)

(declare-fun tp!865762 () Bool)

(assert (=> setNonEmpty!21744 (= setRes!21744 (and tp!865762 (inv!43017 setElem!21744) e!1730887))))

(declare-fun setRest!21744 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21744 (= (_2!18438 (h!37076 (zeroValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161))))))))) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21744 true) setRest!21744))))

(declare-fun setIsEmpty!21744 () Bool)

(assert (=> setIsEmpty!21744 setRes!21744))

(declare-fun b!2747042 () Bool)

(declare-fun tp!865765 () Bool)

(assert (=> b!2747042 (= e!1730887 tp!865765)))

(assert (=> b!2746786 (= tp!865553 e!1730886)))

(declare-fun b!2747043 () Bool)

(declare-fun tp!865764 () Bool)

(assert (=> b!2747043 (= e!1730888 tp!865764)))

(assert (= b!2747041 b!2747043))

(assert (= (and b!2747041 condSetEmpty!21744) setIsEmpty!21744))

(assert (= (and b!2747041 (not condSetEmpty!21744)) setNonEmpty!21744))

(assert (= setNonEmpty!21744 b!2747042))

(assert (= (and b!2746786 ((_ is Cons!31656) (zeroValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161))))))))) b!2747041))

(declare-fun m!3163323 () Bool)

(assert (=> b!2747041 m!3163323))

(declare-fun m!3163325 () Bool)

(assert (=> setNonEmpty!21744 m!3163325))

(declare-fun e!1730889 () Bool)

(declare-fun tp!865767 () Bool)

(declare-fun e!1730891 () Bool)

(declare-fun setRes!21745 () Bool)

(declare-fun b!2747044 () Bool)

(assert (=> b!2747044 (= e!1730889 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 (minValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161))))))))))) e!1730891 tp_is_empty!13937 setRes!21745 tp!865767))))

(declare-fun condSetEmpty!21745 () Bool)

(assert (=> b!2747044 (= condSetEmpty!21745 (= (_2!18438 (h!37076 (minValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161))))))))) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun tp!865766 () Bool)

(declare-fun setElem!21745 () Context!4446)

(declare-fun setNonEmpty!21745 () Bool)

(declare-fun e!1730890 () Bool)

(assert (=> setNonEmpty!21745 (= setRes!21745 (and tp!865766 (inv!43017 setElem!21745) e!1730890))))

(declare-fun setRest!21745 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21745 (= (_2!18438 (h!37076 (minValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161))))))))) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21745 true) setRest!21745))))

(declare-fun setIsEmpty!21745 () Bool)

(assert (=> setIsEmpty!21745 setRes!21745))

(declare-fun b!2747045 () Bool)

(declare-fun tp!865769 () Bool)

(assert (=> b!2747045 (= e!1730890 tp!865769)))

(assert (=> b!2746786 (= tp!865585 e!1730889)))

(declare-fun b!2747046 () Bool)

(declare-fun tp!865768 () Bool)

(assert (=> b!2747046 (= e!1730891 tp!865768)))

(assert (= b!2747044 b!2747046))

(assert (= (and b!2747044 condSetEmpty!21745) setIsEmpty!21745))

(assert (= (and b!2747044 (not condSetEmpty!21745)) setNonEmpty!21745))

(assert (= setNonEmpty!21745 b!2747045))

(assert (= (and b!2746786 ((_ is Cons!31656) (minValue!3882 (v!33280 (underlying!7449 (v!33281 (underlying!7450 (cache!3672 (_2!18442 err!4161))))))))) b!2747044))

(declare-fun m!3163327 () Bool)

(assert (=> b!2747044 m!3163327))

(declare-fun m!3163329 () Bool)

(assert (=> setNonEmpty!21745 m!3163329))

(declare-fun b!2747057 () Bool)

(declare-fun b_free!77441 () Bool)

(declare-fun b_next!78145 () Bool)

(assert (=> b!2747057 (= b_free!77441 (not b_next!78145))))

(declare-fun tp!865778 () Bool)

(declare-fun b_and!202165 () Bool)

(assert (=> b!2747057 (= tp!865778 b_and!202165)))

(declare-fun b_free!77443 () Bool)

(declare-fun b_next!78147 () Bool)

(assert (=> b!2747057 (= b_free!77443 (not b_next!78147))))

(declare-fun t!227854 () Bool)

(declare-fun tb!152969 () Bool)

(assert (=> (and b!2747057 (= (toChars!6707 (transformation!4850 (h!37080 (t!227848 rulesArg!249)))) (toChars!6707 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161))))))) t!227854) tb!152969))

(declare-fun result!189104 () Bool)

(assert (= result!189104 result!189082))

(assert (=> b!2746823 t!227854))

(declare-fun tp!865781 () Bool)

(declare-fun b_and!202167 () Bool)

(assert (=> b!2747057 (= tp!865781 (and (=> t!227854 result!189104) b_and!202167))))

(declare-fun e!1730901 () Bool)

(assert (=> b!2747057 (= e!1730901 (and tp!865778 tp!865781))))

(declare-fun e!1730903 () Bool)

(declare-fun b!2747056 () Bool)

(declare-fun tp!865780 () Bool)

(assert (=> b!2747056 (= e!1730903 (and tp!865780 (inv!43007 (tag!5354 (h!37080 (t!227848 rulesArg!249)))) (inv!43009 (transformation!4850 (h!37080 (t!227848 rulesArg!249)))) e!1730901))))

(declare-fun b!2747055 () Bool)

(declare-fun e!1730902 () Bool)

(declare-fun tp!865779 () Bool)

(assert (=> b!2747055 (= e!1730902 (and e!1730903 tp!865779))))

(assert (=> b!2746803 (= tp!865558 e!1730902)))

(assert (= b!2747056 b!2747057))

(assert (= b!2747055 b!2747056))

(assert (= (and b!2746803 ((_ is Cons!31660) (t!227848 rulesArg!249))) b!2747055))

(declare-fun m!3163331 () Bool)

(assert (=> b!2747056 m!3163331))

(declare-fun m!3163333 () Bool)

(assert (=> b!2747056 m!3163333))

(declare-fun setRes!21746 () Bool)

(declare-fun e!1730906 () Bool)

(declare-fun e!1730904 () Bool)

(declare-fun b!2747058 () Bool)

(declare-fun tp!865783 () Bool)

(assert (=> b!2747058 (= e!1730904 (and (inv!43017 (_1!18437 (_1!18438 (h!37076 mapDefault!16536)))) e!1730906 tp_is_empty!13937 setRes!21746 tp!865783))))

(declare-fun condSetEmpty!21746 () Bool)

(assert (=> b!2747058 (= condSetEmpty!21746 (= (_2!18438 (h!37076 mapDefault!16536)) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun tp!865782 () Bool)

(declare-fun e!1730905 () Bool)

(declare-fun setElem!21746 () Context!4446)

(declare-fun setNonEmpty!21746 () Bool)

(assert (=> setNonEmpty!21746 (= setRes!21746 (and tp!865782 (inv!43017 setElem!21746) e!1730905))))

(declare-fun setRest!21746 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21746 (= (_2!18438 (h!37076 mapDefault!16536)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21746 true) setRest!21746))))

(declare-fun setIsEmpty!21746 () Bool)

(assert (=> setIsEmpty!21746 setRes!21746))

(declare-fun b!2747059 () Bool)

(declare-fun tp!865785 () Bool)

(assert (=> b!2747059 (= e!1730905 tp!865785)))

(assert (=> b!2746784 (= tp!865556 e!1730904)))

(declare-fun b!2747060 () Bool)

(declare-fun tp!865784 () Bool)

(assert (=> b!2747060 (= e!1730906 tp!865784)))

(assert (= b!2747058 b!2747060))

(assert (= (and b!2747058 condSetEmpty!21746) setIsEmpty!21746))

(assert (= (and b!2747058 (not condSetEmpty!21746)) setNonEmpty!21746))

(assert (= setNonEmpty!21746 b!2747059))

(assert (= (and b!2746784 ((_ is Cons!31656) mapDefault!16536)) b!2747058))

(declare-fun m!3163335 () Bool)

(assert (=> b!2747058 m!3163335))

(declare-fun m!3163337 () Bool)

(assert (=> setNonEmpty!21746 m!3163337))

(declare-fun b!2747061 () Bool)

(declare-fun e!1730909 () Bool)

(declare-fun tp!865787 () Bool)

(assert (=> b!2747061 (= e!1730909 tp!865787)))

(declare-fun e!1730907 () Bool)

(assert (=> b!2746810 (= tp!865555 e!1730907)))

(declare-fun b!2747062 () Bool)

(declare-fun e!1730908 () Bool)

(declare-fun tp!865789 () Bool)

(assert (=> b!2747062 (= e!1730908 tp!865789)))

(declare-fun setElem!21747 () Context!4446)

(declare-fun setNonEmpty!21747 () Bool)

(declare-fun tp!865788 () Bool)

(declare-fun setRes!21747 () Bool)

(assert (=> setNonEmpty!21747 (= setRes!21747 (and tp!865788 (inv!43017 setElem!21747) e!1730908))))

(declare-fun setRest!21747 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21747 (= (_2!18440 (h!37077 mapDefault!16535)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21747 true) setRest!21747))))

(declare-fun setIsEmpty!21747 () Bool)

(assert (=> setIsEmpty!21747 setRes!21747))

(declare-fun tp!865786 () Bool)

(declare-fun tp!865790 () Bool)

(declare-fun b!2747063 () Bool)

(assert (=> b!2747063 (= e!1730907 (and tp!865790 (inv!43017 (_2!18439 (_1!18440 (h!37077 mapDefault!16535)))) e!1730909 tp_is_empty!13937 setRes!21747 tp!865786))))

(declare-fun condSetEmpty!21747 () Bool)

(assert (=> b!2747063 (= condSetEmpty!21747 (= (_2!18440 (h!37077 mapDefault!16535)) ((as const (Array Context!4446 Bool)) false)))))

(assert (= b!2747063 b!2747061))

(assert (= (and b!2747063 condSetEmpty!21747) setIsEmpty!21747))

(assert (= (and b!2747063 (not condSetEmpty!21747)) setNonEmpty!21747))

(assert (= setNonEmpty!21747 b!2747062))

(assert (= (and b!2746810 ((_ is Cons!31657) mapDefault!16535)) b!2747063))

(declare-fun m!3163339 () Bool)

(assert (=> setNonEmpty!21747 m!3163339))

(declare-fun m!3163341 () Bool)

(assert (=> b!2747063 m!3163341))

(declare-fun b!2747064 () Bool)

(declare-fun e!1730910 () Bool)

(declare-fun tp!865797 () Bool)

(assert (=> b!2747064 (= e!1730910 tp!865797)))

(declare-fun setIsEmpty!21748 () Bool)

(declare-fun setRes!21748 () Bool)

(assert (=> setIsEmpty!21748 setRes!21748))

(declare-fun e!1730912 () Bool)

(declare-fun setNonEmpty!21748 () Bool)

(declare-fun setElem!21749 () Context!4446)

(declare-fun tp!865791 () Bool)

(assert (=> setNonEmpty!21748 (= setRes!21748 (and tp!865791 (inv!43017 setElem!21749) e!1730912))))

(declare-fun mapDefault!16544 () List!31757)

(declare-fun setRest!21748 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21748 (= (_2!18440 (h!37077 mapDefault!16544)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21749 true) setRest!21748))))

(declare-fun b!2747065 () Bool)

(declare-fun tp!865793 () Bool)

(assert (=> b!2747065 (= e!1730912 tp!865793)))

(declare-fun condMapEmpty!16544 () Bool)

(assert (=> mapNonEmpty!16535 (= condMapEmpty!16544 (= mapRest!16535 ((as const (Array (_ BitVec 32) List!31757)) mapDefault!16544)))))

(declare-fun e!1730913 () Bool)

(declare-fun mapRes!16544 () Bool)

(assert (=> mapNonEmpty!16535 (= tp!865583 (and e!1730913 mapRes!16544))))

(declare-fun b!2747066 () Bool)

(declare-fun e!1730911 () Bool)

(declare-fun tp!865800 () Bool)

(assert (=> b!2747066 (= e!1730911 tp!865800)))

(declare-fun setElem!21748 () Context!4446)

(declare-fun setNonEmpty!21749 () Bool)

(declare-fun setRes!21749 () Bool)

(declare-fun tp!865798 () Bool)

(assert (=> setNonEmpty!21749 (= setRes!21749 (and tp!865798 (inv!43017 setElem!21748) e!1730910))))

(declare-fun mapValue!16544 () List!31757)

(declare-fun setRest!21749 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21749 (= (_2!18440 (h!37077 mapValue!16544)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21748 true) setRest!21749))))

(declare-fun mapNonEmpty!16544 () Bool)

(declare-fun tp!865801 () Bool)

(declare-fun e!1730915 () Bool)

(assert (=> mapNonEmpty!16544 (= mapRes!16544 (and tp!865801 e!1730915))))

(declare-fun mapKey!16544 () (_ BitVec 32))

(declare-fun mapRest!16544 () (Array (_ BitVec 32) List!31757))

(assert (=> mapNonEmpty!16544 (= mapRest!16535 (store mapRest!16544 mapKey!16544 mapValue!16544))))

(declare-fun b!2747067 () Bool)

(declare-fun tp!865795 () Bool)

(declare-fun tp!865792 () Bool)

(assert (=> b!2747067 (= e!1730913 (and tp!865795 (inv!43017 (_2!18439 (_1!18440 (h!37077 mapDefault!16544)))) e!1730911 tp_is_empty!13937 setRes!21748 tp!865792))))

(declare-fun condSetEmpty!21749 () Bool)

(assert (=> b!2747067 (= condSetEmpty!21749 (= (_2!18440 (h!37077 mapDefault!16544)) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun b!2747068 () Bool)

(declare-fun e!1730914 () Bool)

(declare-fun tp!865794 () Bool)

(assert (=> b!2747068 (= e!1730914 tp!865794)))

(declare-fun tp!865796 () Bool)

(declare-fun tp!865799 () Bool)

(declare-fun b!2747069 () Bool)

(assert (=> b!2747069 (= e!1730915 (and tp!865799 (inv!43017 (_2!18439 (_1!18440 (h!37077 mapValue!16544)))) e!1730914 tp_is_empty!13937 setRes!21749 tp!865796))))

(declare-fun condSetEmpty!21748 () Bool)

(assert (=> b!2747069 (= condSetEmpty!21748 (= (_2!18440 (h!37077 mapValue!16544)) ((as const (Array Context!4446 Bool)) false)))))

(declare-fun mapIsEmpty!16544 () Bool)

(assert (=> mapIsEmpty!16544 mapRes!16544))

(declare-fun setIsEmpty!21749 () Bool)

(assert (=> setIsEmpty!21749 setRes!21749))

(assert (= (and mapNonEmpty!16535 condMapEmpty!16544) mapIsEmpty!16544))

(assert (= (and mapNonEmpty!16535 (not condMapEmpty!16544)) mapNonEmpty!16544))

(assert (= b!2747069 b!2747068))

(assert (= (and b!2747069 condSetEmpty!21748) setIsEmpty!21749))

(assert (= (and b!2747069 (not condSetEmpty!21748)) setNonEmpty!21749))

(assert (= setNonEmpty!21749 b!2747064))

(assert (= (and mapNonEmpty!16544 ((_ is Cons!31657) mapValue!16544)) b!2747069))

(assert (= b!2747067 b!2747066))

(assert (= (and b!2747067 condSetEmpty!21749) setIsEmpty!21748))

(assert (= (and b!2747067 (not condSetEmpty!21749)) setNonEmpty!21748))

(assert (= setNonEmpty!21748 b!2747065))

(assert (= (and mapNonEmpty!16535 ((_ is Cons!31657) mapDefault!16544)) b!2747067))

(declare-fun m!3163343 () Bool)

(assert (=> b!2747069 m!3163343))

(declare-fun m!3163345 () Bool)

(assert (=> setNonEmpty!21748 m!3163345))

(declare-fun m!3163347 () Bool)

(assert (=> b!2747067 m!3163347))

(declare-fun m!3163349 () Bool)

(assert (=> mapNonEmpty!16544 m!3163349))

(declare-fun m!3163351 () Bool)

(assert (=> setNonEmpty!21749 m!3163351))

(declare-fun b!2747070 () Bool)

(declare-fun e!1730918 () Bool)

(declare-fun tp!865803 () Bool)

(assert (=> b!2747070 (= e!1730918 tp!865803)))

(declare-fun e!1730916 () Bool)

(assert (=> mapNonEmpty!16535 (= tp!865565 e!1730916)))

(declare-fun b!2747071 () Bool)

(declare-fun e!1730917 () Bool)

(declare-fun tp!865805 () Bool)

(assert (=> b!2747071 (= e!1730917 tp!865805)))

(declare-fun setNonEmpty!21750 () Bool)

(declare-fun setElem!21750 () Context!4446)

(declare-fun tp!865804 () Bool)

(declare-fun setRes!21750 () Bool)

(assert (=> setNonEmpty!21750 (= setRes!21750 (and tp!865804 (inv!43017 setElem!21750) e!1730917))))

(declare-fun setRest!21750 () (InoxSet Context!4446))

(assert (=> setNonEmpty!21750 (= (_2!18440 (h!37077 mapValue!16536)) ((_ map or) (store ((as const (Array Context!4446 Bool)) false) setElem!21750 true) setRest!21750))))

(declare-fun setIsEmpty!21750 () Bool)

(assert (=> setIsEmpty!21750 setRes!21750))

(declare-fun tp!865806 () Bool)

(declare-fun tp!865802 () Bool)

(declare-fun b!2747072 () Bool)

(assert (=> b!2747072 (= e!1730916 (and tp!865806 (inv!43017 (_2!18439 (_1!18440 (h!37077 mapValue!16536)))) e!1730918 tp_is_empty!13937 setRes!21750 tp!865802))))

(declare-fun condSetEmpty!21750 () Bool)

(assert (=> b!2747072 (= condSetEmpty!21750 (= (_2!18440 (h!37077 mapValue!16536)) ((as const (Array Context!4446 Bool)) false)))))

(assert (= b!2747072 b!2747070))

(assert (= (and b!2747072 condSetEmpty!21750) setIsEmpty!21750))

(assert (= (and b!2747072 (not condSetEmpty!21750)) setNonEmpty!21750))

(assert (= setNonEmpty!21750 b!2747071))

(assert (= (and mapNonEmpty!16535 ((_ is Cons!31657) mapValue!16536)) b!2747072))

(declare-fun m!3163353 () Bool)

(assert (=> setNonEmpty!21750 m!3163353))

(declare-fun m!3163355 () Bool)

(assert (=> b!2747072 m!3163355))

(declare-fun b_lambda!82921 () Bool)

(assert (= b_lambda!82919 (or (and b!2746794 b_free!77421) (and b!2746772 b_free!77427 (= (toChars!6707 (transformation!4850 (h!37080 rulesArg!249))) (toChars!6707 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))))) (and b!2747057 b_free!77443 (= (toChars!6707 (transformation!4850 (h!37080 (t!227848 rulesArg!249)))) (toChars!6707 (transformation!4850 (rule!7288 (_1!18441 (v!33284 (_1!18442 err!4161)))))))) b_lambda!82921)))

(check-sat (not d!796139) (not b!2747024) (not b_next!78141) (not b!2746998) (not b!2746895) (not b!2746836) (not b!2747000) (not b!2747035) (not b!2747067) (not b_next!78129) (not b!2746805) (not b!2747063) b_and!202155 (not b!2746856) b_and!202165 (not d!796147) (not b!2747023) b_and!202149 (not mapNonEmpty!16542) (not b_next!78139) (not b_next!78121) (not b!2746824) (not b!2746925) (not b!2746817) (not b!2746995) (not b_next!78127) (not b!2746920) (not b!2747066) (not b!2747017) (not b!2746987) (not setNonEmpty!21749) (not b!2747019) (not b!2746988) b_and!202159 (not b!2747012) (not b!2747042) (not b!2746971) (not d!796137) (not b!2747056) (not d!796107) (not b!2746859) (not b_next!78145) (not b!2746906) (not b!2747014) (not mapNonEmpty!16539) (not b!2747027) (not b!2746899) tp_is_empty!13937 (not b!2747046) (not d!796125) (not bm!177419) (not setNonEmpty!21738) (not b!2747055) (not b!2747002) (not b!2747032) (not d!796159) (not b!2746873) (not b!2746935) (not b!2746818) (not setNonEmpty!21746) (not setNonEmpty!21744) (not setNonEmpty!21724) (not b!2746807) (not b!2747015) (not d!796115) (not b!2746924) (not b_next!78147) (not setNonEmpty!21735) b_and!202163 (not b!2746990) (not setNonEmpty!21733) (not b!2746936) (not setNonEmpty!21727) (not setNonEmpty!21717) (not b!2746922) (not setNonEmpty!21742) (not b!2746996) (not b!2747034) (not b!2746955) (not b!2746848) (not b!2747061) (not setNonEmpty!21718) (not b!2746959) (not b!2747022) (not d!796169) (not b!2746894) (not setNonEmpty!21740) (not mapNonEmpty!16544) (not b!2746823) (not d!796123) (not d!796167) (not b!2747028) b_and!202151 (not b!2747041) (not setNonEmpty!21743) (not setNonEmpty!21741) (not b!2747003) (not b!2747020) (not b!2747045) (not d!796135) (not b_next!78135) b_and!202161 (not mapNonEmpty!16543) (not b!2747040) (not b!2746872) (not b!2747044) (not setNonEmpty!21732) (not b!2746874) (not b!2746994) (not b!2746853) b_and!202139 (not b!2746989) (not b_next!78123) (not b!2747033) (not b_lambda!82921) (not b!2746937) (not b!2746997) b_and!202143 (not b!2746850) (not b_next!78131) (not b!2746905) (not b!2747031) (not b!2747069) (not setNonEmpty!21739) (not b!2746893) (not setNonEmpty!21750) (not d!796111) (not b!2746857) (not b!2746921) (not tb!152965) (not b!2746957) (not setNonEmpty!21747) (not b!2747016) (not setNonEmpty!21723) (not b!2747021) (not b!2747064) (not b!2746958) (not b!2747068) (not b!2747065) (not setNonEmpty!21734) (not b!2746838) b_and!202153 (not b!2746900) (not b!2746992) (not b_next!78143) (not b!2747025) (not b!2747058) (not b!2747070) (not setNonEmpty!21737) (not d!796161) (not b!2747060) (not b!2747059) (not b!2746898) (not b!2746993) (not b!2747062) (not b!2746991) (not b!2746926) (not b!2747001) (not b!2747018) (not setNonEmpty!21745) (not b_next!78137) (not setNonEmpty!21748) (not b!2747013) (not b!2747043) (not b!2746891) (not b!2747071) b_and!202137 (not b!2746829) (not b_next!78125) (not b!2746849) (not b!2746940) (not b!2747026) (not b!2746999) (not b!2746892) (not b_next!78133) (not b!2746970) (not b!2746960) b_and!202157 (not b!2746956) (not b!2747029) (not b!2746896) (not b!2747072) b_and!202167 (not b!2746969) (not b!2746986) (not setNonEmpty!21736) b_and!202145 (not b!2746939) (not b!2746938) (not b!2747030))
(check-sat (not b_next!78141) (not b_next!78129) b_and!202159 (not b_next!78145) b_and!202151 b_and!202139 b_and!202153 (not b_next!78143) (not b_next!78125) b_and!202167 b_and!202145 b_and!202155 b_and!202165 b_and!202149 (not b_next!78139) (not b_next!78121) (not b_next!78127) (not b_next!78147) b_and!202163 (not b_next!78135) b_and!202161 (not b_next!78123) (not b_next!78131) b_and!202143 (not b_next!78137) b_and!202137 (not b_next!78133) b_and!202157)
