; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266164 () Bool)

(assert start!266164)

(declare-fun b!2745704 () Bool)

(declare-fun b_free!77321 () Bool)

(declare-fun b_next!78025 () Bool)

(assert (=> b!2745704 (= b_free!77321 (not b_next!78025))))

(declare-fun tp!864665 () Bool)

(declare-fun b_and!202041 () Bool)

(assert (=> b!2745704 (= tp!864665 b_and!202041)))

(declare-fun b_free!77323 () Bool)

(declare-fun b_next!78027 () Bool)

(assert (=> b!2745704 (= b_free!77323 (not b_next!78027))))

(declare-fun tp!864667 () Bool)

(declare-fun b_and!202043 () Bool)

(assert (=> b!2745704 (= tp!864667 b_and!202043)))

(declare-fun b!2745702 () Bool)

(declare-fun b_free!77325 () Bool)

(declare-fun b_next!78029 () Bool)

(assert (=> b!2745702 (= b_free!77325 (not b_next!78029))))

(declare-fun tp!864677 () Bool)

(declare-fun b_and!202045 () Bool)

(assert (=> b!2745702 (= tp!864677 b_and!202045)))

(declare-fun b!2745694 () Bool)

(declare-fun b_free!77327 () Bool)

(declare-fun b_next!78031 () Bool)

(assert (=> b!2745694 (= b_free!77327 (not b_next!78031))))

(declare-fun tp!864670 () Bool)

(declare-fun b_and!202047 () Bool)

(assert (=> b!2745694 (= tp!864670 b_and!202047)))

(declare-fun b!2745700 () Bool)

(declare-fun b_free!77329 () Bool)

(declare-fun b_next!78033 () Bool)

(assert (=> b!2745700 (= b_free!77329 (not b_next!78033))))

(declare-fun tp!864671 () Bool)

(declare-fun b_and!202049 () Bool)

(assert (=> b!2745700 (= tp!864671 b_and!202049)))

(declare-fun b!2745713 () Bool)

(declare-fun b_free!77331 () Bool)

(declare-fun b_next!78035 () Bool)

(assert (=> b!2745713 (= b_free!77331 (not b_next!78035))))

(declare-fun tp!864674 () Bool)

(declare-fun b_and!202051 () Bool)

(assert (=> b!2745713 (= tp!864674 b_and!202051)))

(declare-fun b!2745691 () Bool)

(declare-fun e!1729732 () Bool)

(declare-datatypes ((C!16156 0))(
  ( (C!16157 (val!10012 Int)) )
))
(declare-datatypes ((List!31719 0))(
  ( (Nil!31619) (Cons!31619 (h!37039 C!16156) (t!227807 List!31719)) )
))
(declare-datatypes ((IArray!19779 0))(
  ( (IArray!19780 (innerList!9947 List!31719)) )
))
(declare-datatypes ((Conc!9887 0))(
  ( (Node!9887 (left!24236 Conc!9887) (right!24566 Conc!9887) (csize!20004 Int) (cheight!10098 Int)) (Leaf!15055 (xs!12994 IArray!19779) (csize!20005 Int)) (Empty!9887) )
))
(declare-datatypes ((BalanceConc!19388 0))(
  ( (BalanceConc!19389 (c!444840 Conc!9887)) )
))
(declare-fun input!1326 () BalanceConc!19388)

(declare-fun tp!864673 () Bool)

(declare-fun inv!42969 (Conc!9887) Bool)

(assert (=> b!2745691 (= e!1729732 (and (inv!42969 (c!444840 input!1326)) tp!864673))))

(declare-fun b!2745692 () Bool)

(declare-fun e!1729741 () Bool)

(declare-fun e!1729738 () Bool)

(assert (=> b!2745692 (= e!1729741 e!1729738)))

(declare-fun b!2745693 () Bool)

(declare-fun e!1729736 () Bool)

(declare-fun e!1729728 () Bool)

(assert (=> b!2745693 (= e!1729736 (not e!1729728))))

(declare-fun res!1152260 () Bool)

(assert (=> b!2745693 (=> res!1152260 e!1729728)))

(declare-datatypes ((List!31720 0))(
  ( (Nil!31620) (Cons!31620 (h!37040 (_ BitVec 16)) (t!227808 List!31720)) )
))
(declare-datatypes ((TokenValue!5066 0))(
  ( (FloatLiteralValue!10132 (text!35907 List!31720)) (TokenValueExt!5065 (__x!20441 Int)) (Broken!25330 (value!155628 List!31720)) (Object!5165) (End!5066) (Def!5066) (Underscore!5066) (Match!5066) (Else!5066) (Error!5066) (Case!5066) (If!5066) (Extends!5066) (Abstract!5066) (Class!5066) (Val!5066) (DelimiterValue!10132 (del!5126 List!31720)) (KeywordValue!5072 (value!155629 List!31720)) (CommentValue!10132 (value!155630 List!31720)) (WhitespaceValue!10132 (value!155631 List!31720)) (IndentationValue!5066 (value!155632 List!31720)) (String!35235) (Int32!5066) (Broken!25331 (value!155633 List!31720)) (Boolean!5067) (Unit!45526) (OperatorValue!5069 (op!5126 List!31720)) (IdentifierValue!10132 (value!155634 List!31720)) (IdentifierValue!10133 (value!155635 List!31720)) (WhitespaceValue!10133 (value!155636 List!31720)) (True!10132) (False!10132) (Broken!25332 (value!155637 List!31720)) (Broken!25333 (value!155638 List!31720)) (True!10133) (RightBrace!5066) (RightBracket!5066) (Colon!5066) (Null!5066) (Comma!5066) (LeftBracket!5066) (False!10133) (LeftBrace!5066) (ImaginaryLiteralValue!5066 (text!35908 List!31720)) (StringLiteralValue!15198 (value!155639 List!31720)) (EOFValue!5066 (value!155640 List!31720)) (IdentValue!5066 (value!155641 List!31720)) (DelimiterValue!10133 (value!155642 List!31720)) (DedentValue!5066 (value!155643 List!31720)) (NewLineValue!5066 (value!155644 List!31720)) (IntegerValue!15198 (value!155645 (_ BitVec 32)) (text!35909 List!31720)) (IntegerValue!15199 (value!155646 Int) (text!35910 List!31720)) (Times!5066) (Or!5066) (Equal!5066) (Minus!5066) (Broken!25334 (value!155647 List!31720)) (And!5066) (Div!5066) (LessEqual!5066) (Mod!5066) (Concat!13065) (Not!5066) (Plus!5066) (SpaceValue!5066 (value!155648 List!31720)) (IntegerValue!15200 (value!155649 Int) (text!35911 List!31720)) (StringLiteralValue!15199 (text!35912 List!31720)) (FloatLiteralValue!10133 (text!35913 List!31720)) (BytesLiteralValue!5066 (value!155650 List!31720)) (CommentValue!10133 (value!155651 List!31720)) (StringLiteralValue!15200 (value!155652 List!31720)) (ErrorTokenValue!5066 (msg!5127 List!31720)) )
))
(declare-datatypes ((TokenValueInjection!9572 0))(
  ( (TokenValueInjection!9573 (toValue!6842 Int) (toChars!6701 Int)) )
))
(declare-datatypes ((Regex!7999 0))(
  ( (ElementMatch!7999 (c!444841 C!16156)) (Concat!13066 (regOne!16510 Regex!7999) (regTwo!16510 Regex!7999)) (EmptyExpr!7999) (Star!7999 (reg!8328 Regex!7999)) (EmptyLang!7999) (Union!7999 (regOne!16511 Regex!7999) (regTwo!16511 Regex!7999)) )
))
(declare-datatypes ((String!35236 0))(
  ( (String!35237 (value!155653 String)) )
))
(declare-datatypes ((Rule!9488 0))(
  ( (Rule!9489 (regex!4844 Regex!7999) (tag!5348 String!35236) (isSeparator!4844 Bool) (transformation!4844 TokenValueInjection!9572)) )
))
(declare-datatypes ((List!31721 0))(
  ( (Nil!31621) (Cons!31621 (h!37041 Rule!9488) (t!227809 List!31721)) )
))
(declare-fun rulesArg!249 () List!31721)

(get-info :version)

(assert (=> b!2745693 (= res!1152260 (or (and ((_ is Cons!31621) rulesArg!249) ((_ is Nil!31621) (t!227809 rulesArg!249))) (not ((_ is Cons!31621) rulesArg!249))))))

(declare-fun lt!971606 () List!31719)

(declare-fun isPrefix!2517 (List!31719 List!31719) Bool)

(assert (=> b!2745693 (isPrefix!2517 lt!971606 lt!971606)))

(declare-datatypes ((Unit!45527 0))(
  ( (Unit!45528) )
))
(declare-fun lt!971610 () Unit!45527)

(declare-fun lemmaIsPrefixRefl!1643 (List!31719 List!31719) Unit!45527)

(assert (=> b!2745693 (= lt!971610 (lemmaIsPrefixRefl!1643 lt!971606 lt!971606))))

(declare-fun list!11995 (BalanceConc!19388) List!31719)

(assert (=> b!2745693 (= lt!971606 (list!11995 input!1326))))

(declare-fun mapIsEmpty!16469 () Bool)

(declare-fun mapRes!16470 () Bool)

(assert (=> mapIsEmpty!16469 mapRes!16470))

(declare-fun e!1729720 () Bool)

(declare-fun tp!864668 () Bool)

(declare-datatypes ((array!12863 0))(
  ( (array!12864 (arr!5743 (Array (_ BitVec 32) (_ BitVec 64))) (size!24412 (_ BitVec 32))) )
))
(declare-datatypes ((List!31722 0))(
  ( (Nil!31622) (Cons!31622 (h!37042 Regex!7999) (t!227810 List!31722)) )
))
(declare-datatypes ((Context!4434 0))(
  ( (Context!4435 (exprs!2717 List!31722)) )
))
(declare-datatypes ((tuple2!31438 0))(
  ( (tuple2!31439 (_1!18398 Context!4434) (_2!18398 C!16156)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31440 0))(
  ( (tuple2!31441 (_1!18399 tuple2!31438) (_2!18399 (InoxSet Context!4434))) )
))
(declare-datatypes ((List!31723 0))(
  ( (Nil!31623) (Cons!31623 (h!37043 tuple2!31440) (t!227811 List!31723)) )
))
(declare-datatypes ((array!12865 0))(
  ( (array!12866 (arr!5744 (Array (_ BitVec 32) List!31723)) (size!24413 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7222 0))(
  ( (LongMapFixedSize!7223 (defaultEntry!3996 Int) (mask!9347 (_ BitVec 32)) (extraKeys!3860 (_ BitVec 32)) (zeroValue!3870 List!31723) (minValue!3870 List!31723) (_size!7265 (_ BitVec 32)) (_keys!3911 array!12863) (_values!3892 array!12865) (_vacant!3672 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14253 0))(
  ( (Cell!14254 (v!33251 LongMapFixedSize!7222)) )
))
(declare-datatypes ((MutLongMap!3611 0))(
  ( (LongMap!3611 (underlying!7425 Cell!14253)) (MutLongMapExt!3610 (__x!20442 Int)) )
))
(declare-datatypes ((Cell!14255 0))(
  ( (Cell!14256 (v!33252 MutLongMap!3611)) )
))
(declare-datatypes ((Hashable!3527 0))(
  ( (HashableExt!3526 (__x!20443 Int)) )
))
(declare-datatypes ((MutableMap!3517 0))(
  ( (MutableMapExt!3516 (__x!20444 Int)) (HashMap!3517 (underlying!7426 Cell!14255) (hashF!5559 Hashable!3527) (_size!7266 (_ BitVec 32)) (defaultValue!3688 Int)) )
))
(declare-datatypes ((CacheUp!2224 0))(
  ( (CacheUp!2225 (cache!3660 MutableMap!3517)) )
))
(declare-fun cacheUp!633 () CacheUp!2224)

(declare-fun tp!864679 () Bool)

(declare-fun e!1729722 () Bool)

(declare-fun array_inv!4104 (array!12863) Bool)

(declare-fun array_inv!4105 (array!12865) Bool)

(assert (=> b!2745694 (= e!1729720 (and tp!864670 tp!864679 tp!864668 (array_inv!4104 (_keys!3911 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633))))))) (array_inv!4105 (_values!3892 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633))))))) e!1729722))))

(declare-fun b!2745695 () Bool)

(declare-fun e!1729730 () Bool)

(assert (=> b!2745695 (= e!1729730 e!1729741)))

(declare-fun b!2745696 () Bool)

(declare-fun e!1729742 () Bool)

(declare-datatypes ((tuple3!4418 0))(
  ( (tuple3!4419 (_1!18400 Regex!7999) (_2!18400 Context!4434) (_3!2679 C!16156)) )
))
(declare-datatypes ((tuple2!31442 0))(
  ( (tuple2!31443 (_1!18401 tuple3!4418) (_2!18401 (InoxSet Context!4434))) )
))
(declare-datatypes ((List!31724 0))(
  ( (Nil!31624) (Cons!31624 (h!37044 tuple2!31442) (t!227812 List!31724)) )
))
(declare-datatypes ((array!12867 0))(
  ( (array!12868 (arr!5745 (Array (_ BitVec 32) List!31724)) (size!24414 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7224 0))(
  ( (LongMapFixedSize!7225 (defaultEntry!3997 Int) (mask!9348 (_ BitVec 32)) (extraKeys!3861 (_ BitVec 32)) (zeroValue!3871 List!31724) (minValue!3871 List!31724) (_size!7267 (_ BitVec 32)) (_keys!3912 array!12863) (_values!3893 array!12867) (_vacant!3673 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14257 0))(
  ( (Cell!14258 (v!33253 LongMapFixedSize!7224)) )
))
(declare-datatypes ((MutLongMap!3612 0))(
  ( (LongMap!3612 (underlying!7427 Cell!14257)) (MutLongMapExt!3611 (__x!20445 Int)) )
))
(declare-fun lt!971608 () MutLongMap!3612)

(assert (=> b!2745696 (= e!1729742 (and e!1729730 ((_ is LongMap!3612) lt!971608)))))

(declare-datatypes ((Cell!14259 0))(
  ( (Cell!14260 (v!33254 MutLongMap!3612)) )
))
(declare-datatypes ((Hashable!3528 0))(
  ( (HashableExt!3527 (__x!20446 Int)) )
))
(declare-datatypes ((MutableMap!3518 0))(
  ( (MutableMapExt!3517 (__x!20447 Int)) (HashMap!3518 (underlying!7428 Cell!14259) (hashF!5560 Hashable!3528) (_size!7268 (_ BitVec 32)) (defaultValue!3689 Int)) )
))
(declare-datatypes ((CacheDown!2342 0))(
  ( (CacheDown!2343 (cache!3661 MutableMap!3518)) )
))
(declare-fun cacheDown!646 () CacheDown!2342)

(assert (=> b!2745696 (= lt!971608 (v!33254 (underlying!7428 (cache!3661 cacheDown!646))))))

(declare-fun b!2745697 () Bool)

(declare-fun e!1729723 () Bool)

(declare-fun e!1729731 () Bool)

(assert (=> b!2745697 (= e!1729723 e!1729731)))

(declare-fun b!2745698 () Bool)

(declare-fun res!1152264 () Bool)

(assert (=> b!2745698 (=> (not res!1152264) (not e!1729736))))

(declare-fun valid!2801 (CacheUp!2224) Bool)

(assert (=> b!2745698 (= res!1152264 (valid!2801 cacheUp!633))))

(declare-fun res!1152261 () Bool)

(assert (=> start!266164 (=> (not res!1152261) (not e!1729736))))

(declare-datatypes ((LexerInterface!4437 0))(
  ( (LexerInterfaceExt!4434 (__x!20448 Int)) (Lexer!4435) )
))
(declare-fun thiss!15207 () LexerInterface!4437)

(assert (=> start!266164 (= res!1152261 ((_ is Lexer!4435) thiss!15207))))

(assert (=> start!266164 e!1729736))

(declare-fun e!1729734 () Bool)

(declare-fun inv!42970 (CacheDown!2342) Bool)

(assert (=> start!266164 (and (inv!42970 cacheDown!646) e!1729734)))

(declare-fun inv!42971 (BalanceConc!19388) Bool)

(assert (=> start!266164 (and (inv!42971 input!1326) e!1729732)))

(declare-fun e!1729739 () Bool)

(assert (=> start!266164 e!1729739))

(declare-fun inv!42972 (CacheUp!2224) Bool)

(assert (=> start!266164 (and (inv!42972 cacheUp!633) e!1729723)))

(assert (=> start!266164 true))

(declare-fun mapNonEmpty!16469 () Bool)

(declare-fun mapRes!16469 () Bool)

(declare-fun tp!864663 () Bool)

(declare-fun tp!864676 () Bool)

(assert (=> mapNonEmpty!16469 (= mapRes!16469 (and tp!864663 tp!864676))))

(declare-fun mapKey!16470 () (_ BitVec 32))

(declare-fun mapRest!16470 () (Array (_ BitVec 32) List!31723))

(declare-fun mapValue!16470 () List!31723)

(assert (=> mapNonEmpty!16469 (= (arr!5744 (_values!3892 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633))))))) (store mapRest!16470 mapKey!16470 mapValue!16470))))

(declare-fun b!2745699 () Bool)

(declare-fun e!1729733 () Bool)

(assert (=> b!2745699 (= e!1729733 e!1729720)))

(declare-fun tp!864678 () Bool)

(declare-fun tp!864680 () Bool)

(declare-fun e!1729740 () Bool)

(declare-fun array_inv!4106 (array!12867) Bool)

(assert (=> b!2745700 (= e!1729738 (and tp!864671 tp!864678 tp!864680 (array_inv!4104 (_keys!3912 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646))))))) (array_inv!4106 (_values!3893 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646))))))) e!1729740))))

(declare-fun b!2745701 () Bool)

(declare-fun size!24415 (List!31721) Int)

(assert (=> b!2745701 (= e!1729728 (< (size!24415 (t!227809 rulesArg!249)) (size!24415 rulesArg!249)))))

(declare-datatypes ((Token!9116 0))(
  ( (Token!9117 (value!155654 TokenValue!5066) (rule!7282 Rule!9488) (size!24416 Int) (originalCharacters!5589 List!31719)) )
))
(declare-datatypes ((tuple2!31444 0))(
  ( (tuple2!31445 (_1!18402 Token!9116) (_2!18402 BalanceConc!19388)) )
))
(declare-datatypes ((Option!6238 0))(
  ( (None!6237) (Some!6237 (v!33255 tuple2!31444)) )
))
(declare-datatypes ((tuple3!4420 0))(
  ( (tuple3!4421 (_1!18403 Option!6238) (_2!18403 CacheUp!2224) (_3!2680 CacheDown!2342)) )
))
(declare-fun lt!971607 () tuple3!4420)

(declare-fun maxPrefixOneRuleZipperSequenceMem!23 (LexerInterface!4437 Rule!9488 BalanceConc!19388 CacheUp!2224 CacheDown!2342) tuple3!4420)

(assert (=> b!2745701 (= lt!971607 (maxPrefixOneRuleZipperSequenceMem!23 thiss!15207 (h!37041 rulesArg!249) input!1326 cacheUp!633 cacheDown!646))))

(declare-fun e!1729721 () Bool)

(assert (=> b!2745702 (= e!1729721 (and e!1729742 tp!864677))))

(declare-fun b!2745703 () Bool)

(declare-fun e!1729729 () Bool)

(declare-fun tp!864675 () Bool)

(assert (=> b!2745703 (= e!1729739 (and e!1729729 tp!864675))))

(declare-fun mapIsEmpty!16470 () Bool)

(assert (=> mapIsEmpty!16470 mapRes!16469))

(declare-fun e!1729737 () Bool)

(assert (=> b!2745704 (= e!1729737 (and tp!864665 tp!864667))))

(declare-fun b!2745705 () Bool)

(declare-fun tp!864662 () Bool)

(assert (=> b!2745705 (= e!1729722 (and tp!864662 mapRes!16469))))

(declare-fun condMapEmpty!16470 () Bool)

(declare-fun mapDefault!16469 () List!31723)

(assert (=> b!2745705 (= condMapEmpty!16470 (= (arr!5744 (_values!3892 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633))))))) ((as const (Array (_ BitVec 32) List!31723)) mapDefault!16469)))))

(declare-fun b!2745706 () Bool)

(declare-fun res!1152265 () Bool)

(assert (=> b!2745706 (=> (not res!1152265) (not e!1729736))))

(declare-fun rulesValidInductive!1707 (LexerInterface!4437 List!31721) Bool)

(assert (=> b!2745706 (= res!1152265 (rulesValidInductive!1707 thiss!15207 rulesArg!249))))

(declare-fun b!2745707 () Bool)

(declare-fun tp!864672 () Bool)

(declare-fun inv!42965 (String!35236) Bool)

(declare-fun inv!42973 (TokenValueInjection!9572) Bool)

(assert (=> b!2745707 (= e!1729729 (and tp!864672 (inv!42965 (tag!5348 (h!37041 rulesArg!249))) (inv!42973 (transformation!4844 (h!37041 rulesArg!249))) e!1729737))))

(declare-fun b!2745708 () Bool)

(declare-fun res!1152262 () Bool)

(assert (=> b!2745708 (=> (not res!1152262) (not e!1729736))))

(declare-fun valid!2802 (CacheDown!2342) Bool)

(assert (=> b!2745708 (= res!1152262 (valid!2802 cacheDown!646))))

(declare-fun b!2745709 () Bool)

(assert (=> b!2745709 (= e!1729734 e!1729721)))

(declare-fun b!2745710 () Bool)

(declare-fun e!1729735 () Bool)

(assert (=> b!2745710 (= e!1729735 e!1729733)))

(declare-fun b!2745711 () Bool)

(declare-fun e!1729726 () Bool)

(declare-fun lt!971609 () MutLongMap!3611)

(assert (=> b!2745711 (= e!1729726 (and e!1729735 ((_ is LongMap!3611) lt!971609)))))

(assert (=> b!2745711 (= lt!971609 (v!33252 (underlying!7426 (cache!3660 cacheUp!633))))))

(declare-fun mapNonEmpty!16470 () Bool)

(declare-fun tp!864669 () Bool)

(declare-fun tp!864664 () Bool)

(assert (=> mapNonEmpty!16470 (= mapRes!16470 (and tp!864669 tp!864664))))

(declare-fun mapRest!16469 () (Array (_ BitVec 32) List!31724))

(declare-fun mapValue!16469 () List!31724)

(declare-fun mapKey!16469 () (_ BitVec 32))

(assert (=> mapNonEmpty!16470 (= (arr!5745 (_values!3893 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646))))))) (store mapRest!16469 mapKey!16469 mapValue!16469))))

(declare-fun b!2745712 () Bool)

(declare-fun tp!864666 () Bool)

(assert (=> b!2745712 (= e!1729740 (and tp!864666 mapRes!16470))))

(declare-fun condMapEmpty!16469 () Bool)

(declare-fun mapDefault!16470 () List!31724)

(assert (=> b!2745712 (= condMapEmpty!16469 (= (arr!5745 (_values!3893 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646))))))) ((as const (Array (_ BitVec 32) List!31724)) mapDefault!16470)))))

(assert (=> b!2745713 (= e!1729731 (and e!1729726 tp!864674))))

(declare-fun b!2745714 () Bool)

(declare-fun res!1152263 () Bool)

(assert (=> b!2745714 (=> (not res!1152263) (not e!1729736))))

(declare-fun isEmpty!18038 (List!31721) Bool)

(assert (=> b!2745714 (= res!1152263 (not (isEmpty!18038 rulesArg!249)))))

(assert (= (and start!266164 res!1152261) b!2745706))

(assert (= (and b!2745706 res!1152265) b!2745714))

(assert (= (and b!2745714 res!1152263) b!2745698))

(assert (= (and b!2745698 res!1152264) b!2745708))

(assert (= (and b!2745708 res!1152262) b!2745693))

(assert (= (and b!2745693 (not res!1152260)) b!2745701))

(assert (= (and b!2745712 condMapEmpty!16469) mapIsEmpty!16469))

(assert (= (and b!2745712 (not condMapEmpty!16469)) mapNonEmpty!16470))

(assert (= b!2745700 b!2745712))

(assert (= b!2745692 b!2745700))

(assert (= b!2745695 b!2745692))

(assert (= (and b!2745696 ((_ is LongMap!3612) (v!33254 (underlying!7428 (cache!3661 cacheDown!646))))) b!2745695))

(assert (= b!2745702 b!2745696))

(assert (= (and b!2745709 ((_ is HashMap!3518) (cache!3661 cacheDown!646))) b!2745702))

(assert (= start!266164 b!2745709))

(assert (= start!266164 b!2745691))

(assert (= b!2745707 b!2745704))

(assert (= b!2745703 b!2745707))

(assert (= (and start!266164 ((_ is Cons!31621) rulesArg!249)) b!2745703))

(assert (= (and b!2745705 condMapEmpty!16470) mapIsEmpty!16470))

(assert (= (and b!2745705 (not condMapEmpty!16470)) mapNonEmpty!16469))

(assert (= b!2745694 b!2745705))

(assert (= b!2745699 b!2745694))

(assert (= b!2745710 b!2745699))

(assert (= (and b!2745711 ((_ is LongMap!3611) (v!33252 (underlying!7426 (cache!3660 cacheUp!633))))) b!2745710))

(assert (= b!2745713 b!2745711))

(assert (= (and b!2745697 ((_ is HashMap!3517) (cache!3660 cacheUp!633))) b!2745713))

(assert (= start!266164 b!2745697))

(declare-fun m!3162403 () Bool)

(assert (=> b!2745700 m!3162403))

(declare-fun m!3162405 () Bool)

(assert (=> b!2745700 m!3162405))

(declare-fun m!3162407 () Bool)

(assert (=> b!2745714 m!3162407))

(declare-fun m!3162409 () Bool)

(assert (=> b!2745698 m!3162409))

(declare-fun m!3162411 () Bool)

(assert (=> b!2745701 m!3162411))

(declare-fun m!3162413 () Bool)

(assert (=> b!2745701 m!3162413))

(declare-fun m!3162415 () Bool)

(assert (=> b!2745701 m!3162415))

(declare-fun m!3162417 () Bool)

(assert (=> mapNonEmpty!16469 m!3162417))

(declare-fun m!3162419 () Bool)

(assert (=> b!2745693 m!3162419))

(declare-fun m!3162421 () Bool)

(assert (=> b!2745693 m!3162421))

(declare-fun m!3162423 () Bool)

(assert (=> b!2745693 m!3162423))

(declare-fun m!3162425 () Bool)

(assert (=> b!2745707 m!3162425))

(declare-fun m!3162427 () Bool)

(assert (=> b!2745707 m!3162427))

(declare-fun m!3162429 () Bool)

(assert (=> b!2745706 m!3162429))

(declare-fun m!3162431 () Bool)

(assert (=> mapNonEmpty!16470 m!3162431))

(declare-fun m!3162433 () Bool)

(assert (=> start!266164 m!3162433))

(declare-fun m!3162435 () Bool)

(assert (=> start!266164 m!3162435))

(declare-fun m!3162437 () Bool)

(assert (=> start!266164 m!3162437))

(declare-fun m!3162439 () Bool)

(assert (=> b!2745708 m!3162439))

(declare-fun m!3162441 () Bool)

(assert (=> b!2745694 m!3162441))

(declare-fun m!3162443 () Bool)

(assert (=> b!2745694 m!3162443))

(declare-fun m!3162445 () Bool)

(assert (=> b!2745691 m!3162445))

(check-sat (not start!266164) (not b_next!78031) (not b_next!78027) (not b!2745694) b_and!202043 (not b!2745707) (not b!2745703) b_and!202049 (not b_next!78035) (not b!2745712) (not b!2745693) b_and!202041 b_and!202045 (not b!2745691) (not mapNonEmpty!16470) (not b!2745705) (not b!2745698) (not b!2745706) (not b_next!78025) (not mapNonEmpty!16469) b_and!202047 (not b!2745708) (not b_next!78029) b_and!202051 (not b!2745714) (not b!2745701) (not b!2745700) (not b_next!78033))
(check-sat b_and!202041 b_and!202045 (not b_next!78025) (not b_next!78031) (not b_next!78027) b_and!202043 b_and!202047 b_and!202049 (not b_next!78035) (not b_next!78033) (not b_next!78029) b_and!202051)
(get-model)

(declare-fun d!795986 () Bool)

(declare-fun res!1152272 () Bool)

(declare-fun e!1729745 () Bool)

(assert (=> d!795986 (=> (not res!1152272) (not e!1729745))))

(assert (=> d!795986 (= res!1152272 ((_ is HashMap!3518) (cache!3661 cacheDown!646)))))

(assert (=> d!795986 (= (inv!42970 cacheDown!646) e!1729745)))

(declare-fun b!2745717 () Bool)

(declare-fun validCacheMapDown!369 (MutableMap!3518) Bool)

(assert (=> b!2745717 (= e!1729745 (validCacheMapDown!369 (cache!3661 cacheDown!646)))))

(assert (= (and d!795986 res!1152272) b!2745717))

(declare-fun m!3162447 () Bool)

(assert (=> b!2745717 m!3162447))

(assert (=> start!266164 d!795986))

(declare-fun d!795988 () Bool)

(declare-fun isBalanced!3012 (Conc!9887) Bool)

(assert (=> d!795988 (= (inv!42971 input!1326) (isBalanced!3012 (c!444840 input!1326)))))

(declare-fun bs!490274 () Bool)

(assert (= bs!490274 d!795988))

(declare-fun m!3162449 () Bool)

(assert (=> bs!490274 m!3162449))

(assert (=> start!266164 d!795988))

(declare-fun d!795990 () Bool)

(declare-fun res!1152275 () Bool)

(declare-fun e!1729748 () Bool)

(assert (=> d!795990 (=> (not res!1152275) (not e!1729748))))

(assert (=> d!795990 (= res!1152275 ((_ is HashMap!3517) (cache!3660 cacheUp!633)))))

(assert (=> d!795990 (= (inv!42972 cacheUp!633) e!1729748)))

(declare-fun b!2745720 () Bool)

(declare-fun validCacheMapUp!338 (MutableMap!3517) Bool)

(assert (=> b!2745720 (= e!1729748 (validCacheMapUp!338 (cache!3660 cacheUp!633)))))

(assert (= (and d!795990 res!1152275) b!2745720))

(declare-fun m!3162451 () Bool)

(assert (=> b!2745720 m!3162451))

(assert (=> start!266164 d!795990))

(declare-fun d!795992 () Bool)

(assert (=> d!795992 (= (valid!2802 cacheDown!646) (validCacheMapDown!369 (cache!3661 cacheDown!646)))))

(declare-fun bs!490275 () Bool)

(assert (= bs!490275 d!795992))

(assert (=> bs!490275 m!3162447))

(assert (=> b!2745708 d!795992))

(declare-fun d!795994 () Bool)

(assert (=> d!795994 (= (valid!2801 cacheUp!633) (validCacheMapUp!338 (cache!3660 cacheUp!633)))))

(declare-fun bs!490276 () Bool)

(assert (= bs!490276 d!795994))

(assert (=> bs!490276 m!3162451))

(assert (=> b!2745698 d!795994))

(declare-fun d!795996 () Bool)

(assert (=> d!795996 (= (inv!42965 (tag!5348 (h!37041 rulesArg!249))) (= (mod (str.len (value!155653 (tag!5348 (h!37041 rulesArg!249)))) 2) 0))))

(assert (=> b!2745707 d!795996))

(declare-fun d!795998 () Bool)

(declare-fun res!1152278 () Bool)

(declare-fun e!1729751 () Bool)

(assert (=> d!795998 (=> (not res!1152278) (not e!1729751))))

(declare-fun semiInverseModEq!2000 (Int Int) Bool)

(assert (=> d!795998 (= res!1152278 (semiInverseModEq!2000 (toChars!6701 (transformation!4844 (h!37041 rulesArg!249))) (toValue!6842 (transformation!4844 (h!37041 rulesArg!249)))))))

(assert (=> d!795998 (= (inv!42973 (transformation!4844 (h!37041 rulesArg!249))) e!1729751)))

(declare-fun b!2745723 () Bool)

(declare-fun equivClasses!1901 (Int Int) Bool)

(assert (=> b!2745723 (= e!1729751 (equivClasses!1901 (toChars!6701 (transformation!4844 (h!37041 rulesArg!249))) (toValue!6842 (transformation!4844 (h!37041 rulesArg!249)))))))

(assert (= (and d!795998 res!1152278) b!2745723))

(declare-fun m!3162453 () Bool)

(assert (=> d!795998 m!3162453))

(declare-fun m!3162455 () Bool)

(assert (=> b!2745723 m!3162455))

(assert (=> b!2745707 d!795998))

(declare-fun b!2745733 () Bool)

(declare-fun res!1152290 () Bool)

(declare-fun e!1729759 () Bool)

(assert (=> b!2745733 (=> (not res!1152290) (not e!1729759))))

(declare-fun head!6114 (List!31719) C!16156)

(assert (=> b!2745733 (= res!1152290 (= (head!6114 lt!971606) (head!6114 lt!971606)))))

(declare-fun b!2745734 () Bool)

(declare-fun tail!4352 (List!31719) List!31719)

(assert (=> b!2745734 (= e!1729759 (isPrefix!2517 (tail!4352 lt!971606) (tail!4352 lt!971606)))))

(declare-fun b!2745735 () Bool)

(declare-fun e!1729760 () Bool)

(declare-fun size!24417 (List!31719) Int)

(assert (=> b!2745735 (= e!1729760 (>= (size!24417 lt!971606) (size!24417 lt!971606)))))

(declare-fun b!2745732 () Bool)

(declare-fun e!1729758 () Bool)

(assert (=> b!2745732 (= e!1729758 e!1729759)))

(declare-fun res!1152288 () Bool)

(assert (=> b!2745732 (=> (not res!1152288) (not e!1729759))))

(assert (=> b!2745732 (= res!1152288 (not ((_ is Nil!31619) lt!971606)))))

(declare-fun d!796000 () Bool)

(assert (=> d!796000 e!1729760))

(declare-fun res!1152289 () Bool)

(assert (=> d!796000 (=> res!1152289 e!1729760)))

(declare-fun lt!971613 () Bool)

(assert (=> d!796000 (= res!1152289 (not lt!971613))))

(assert (=> d!796000 (= lt!971613 e!1729758)))

(declare-fun res!1152287 () Bool)

(assert (=> d!796000 (=> res!1152287 e!1729758)))

(assert (=> d!796000 (= res!1152287 ((_ is Nil!31619) lt!971606))))

(assert (=> d!796000 (= (isPrefix!2517 lt!971606 lt!971606) lt!971613)))

(assert (= (and d!796000 (not res!1152287)) b!2745732))

(assert (= (and b!2745732 res!1152288) b!2745733))

(assert (= (and b!2745733 res!1152290) b!2745734))

(assert (= (and d!796000 (not res!1152289)) b!2745735))

(declare-fun m!3162457 () Bool)

(assert (=> b!2745733 m!3162457))

(assert (=> b!2745733 m!3162457))

(declare-fun m!3162459 () Bool)

(assert (=> b!2745734 m!3162459))

(assert (=> b!2745734 m!3162459))

(assert (=> b!2745734 m!3162459))

(assert (=> b!2745734 m!3162459))

(declare-fun m!3162461 () Bool)

(assert (=> b!2745734 m!3162461))

(declare-fun m!3162463 () Bool)

(assert (=> b!2745735 m!3162463))

(assert (=> b!2745735 m!3162463))

(assert (=> b!2745693 d!796000))

(declare-fun d!796002 () Bool)

(assert (=> d!796002 (isPrefix!2517 lt!971606 lt!971606)))

(declare-fun lt!971616 () Unit!45527)

(declare-fun choose!16067 (List!31719 List!31719) Unit!45527)

(assert (=> d!796002 (= lt!971616 (choose!16067 lt!971606 lt!971606))))

(assert (=> d!796002 (= (lemmaIsPrefixRefl!1643 lt!971606 lt!971606) lt!971616)))

(declare-fun bs!490277 () Bool)

(assert (= bs!490277 d!796002))

(assert (=> bs!490277 m!3162419))

(declare-fun m!3162465 () Bool)

(assert (=> bs!490277 m!3162465))

(assert (=> b!2745693 d!796002))

(declare-fun d!796004 () Bool)

(declare-fun list!11996 (Conc!9887) List!31719)

(assert (=> d!796004 (= (list!11995 input!1326) (list!11996 (c!444840 input!1326)))))

(declare-fun bs!490278 () Bool)

(assert (= bs!490278 d!796004))

(declare-fun m!3162467 () Bool)

(assert (=> bs!490278 m!3162467))

(assert (=> b!2745693 d!796004))

(declare-fun d!796006 () Bool)

(assert (=> d!796006 true))

(declare-fun lt!971619 () Bool)

(declare-fun lambda!100858 () Int)

(declare-fun forall!6580 (List!31721 Int) Bool)

(assert (=> d!796006 (= lt!971619 (forall!6580 rulesArg!249 lambda!100858))))

(declare-fun e!1729766 () Bool)

(assert (=> d!796006 (= lt!971619 e!1729766)))

(declare-fun res!1152296 () Bool)

(assert (=> d!796006 (=> res!1152296 e!1729766)))

(assert (=> d!796006 (= res!1152296 (not ((_ is Cons!31621) rulesArg!249)))))

(assert (=> d!796006 (= (rulesValidInductive!1707 thiss!15207 rulesArg!249) lt!971619)))

(declare-fun b!2745740 () Bool)

(declare-fun e!1729765 () Bool)

(assert (=> b!2745740 (= e!1729766 e!1729765)))

(declare-fun res!1152295 () Bool)

(assert (=> b!2745740 (=> (not res!1152295) (not e!1729765))))

(declare-fun ruleValid!1588 (LexerInterface!4437 Rule!9488) Bool)

(assert (=> b!2745740 (= res!1152295 (ruleValid!1588 thiss!15207 (h!37041 rulesArg!249)))))

(declare-fun b!2745741 () Bool)

(assert (=> b!2745741 (= e!1729765 (rulesValidInductive!1707 thiss!15207 (t!227809 rulesArg!249)))))

(assert (= (and d!796006 (not res!1152296)) b!2745740))

(assert (= (and b!2745740 res!1152295) b!2745741))

(declare-fun m!3162469 () Bool)

(assert (=> d!796006 m!3162469))

(declare-fun m!3162471 () Bool)

(assert (=> b!2745740 m!3162471))

(declare-fun m!3162473 () Bool)

(assert (=> b!2745741 m!3162473))

(assert (=> b!2745706 d!796006))

(declare-fun d!796008 () Bool)

(declare-fun lt!971622 () Int)

(assert (=> d!796008 (>= lt!971622 0)))

(declare-fun e!1729769 () Int)

(assert (=> d!796008 (= lt!971622 e!1729769)))

(declare-fun c!444844 () Bool)

(assert (=> d!796008 (= c!444844 ((_ is Nil!31621) (t!227809 rulesArg!249)))))

(assert (=> d!796008 (= (size!24415 (t!227809 rulesArg!249)) lt!971622)))

(declare-fun b!2745748 () Bool)

(assert (=> b!2745748 (= e!1729769 0)))

(declare-fun b!2745749 () Bool)

(assert (=> b!2745749 (= e!1729769 (+ 1 (size!24415 (t!227809 (t!227809 rulesArg!249)))))))

(assert (= (and d!796008 c!444844) b!2745748))

(assert (= (and d!796008 (not c!444844)) b!2745749))

(declare-fun m!3162475 () Bool)

(assert (=> b!2745749 m!3162475))

(assert (=> b!2745701 d!796008))

(declare-fun d!796010 () Bool)

(declare-fun lt!971623 () Int)

(assert (=> d!796010 (>= lt!971623 0)))

(declare-fun e!1729770 () Int)

(assert (=> d!796010 (= lt!971623 e!1729770)))

(declare-fun c!444845 () Bool)

(assert (=> d!796010 (= c!444845 ((_ is Nil!31621) rulesArg!249))))

(assert (=> d!796010 (= (size!24415 rulesArg!249) lt!971623)))

(declare-fun b!2745750 () Bool)

(assert (=> b!2745750 (= e!1729770 0)))

(declare-fun b!2745751 () Bool)

(assert (=> b!2745751 (= e!1729770 (+ 1 (size!24415 (t!227809 rulesArg!249))))))

(assert (= (and d!796010 c!444845) b!2745750))

(assert (= (and d!796010 (not c!444845)) b!2745751))

(assert (=> b!2745751 m!3162411))

(assert (=> b!2745701 d!796010))

(declare-fun d!796012 () Bool)

(declare-fun e!1729778 () Bool)

(assert (=> d!796012 e!1729778))

(declare-fun res!1152305 () Bool)

(assert (=> d!796012 (=> (not res!1152305) (not e!1729778))))

(declare-fun lt!971636 () tuple3!4420)

(declare-fun maxPrefixOneRuleZipperSequence!501 (LexerInterface!4437 Rule!9488 BalanceConc!19388) Option!6238)

(assert (=> d!796012 (= res!1152305 (= (_1!18403 lt!971636) (maxPrefixOneRuleZipperSequence!501 thiss!15207 (h!37041 rulesArg!249) input!1326)))))

(declare-fun e!1729777 () Option!6238)

(declare-datatypes ((tuple2!31446 0))(
  ( (tuple2!31447 (_1!18404 BalanceConc!19388) (_2!18404 BalanceConc!19388)) )
))
(declare-datatypes ((tuple3!4422 0))(
  ( (tuple3!4423 (_1!18405 tuple2!31446) (_2!18405 CacheUp!2224) (_3!2681 CacheDown!2342)) )
))
(declare-fun lt!971637 () tuple3!4422)

(assert (=> d!796012 (= lt!971636 (tuple3!4421 e!1729777 (_2!18405 lt!971637) (_3!2681 lt!971637)))))

(declare-fun c!444848 () Bool)

(declare-fun isEmpty!18039 (BalanceConc!19388) Bool)

(assert (=> d!796012 (= c!444848 (isEmpty!18039 (_1!18404 (_1!18405 lt!971637))))))

(declare-fun findLongestMatchWithZipperSequenceMem!9 (Regex!7999 BalanceConc!19388 CacheUp!2224 CacheDown!2342) tuple3!4422)

(assert (=> d!796012 (= lt!971637 (findLongestMatchWithZipperSequenceMem!9 (regex!4844 (h!37041 rulesArg!249)) input!1326 cacheUp!633 cacheDown!646))))

(assert (=> d!796012 (ruleValid!1588 thiss!15207 (h!37041 rulesArg!249))))

(assert (=> d!796012 (= (maxPrefixOneRuleZipperSequenceMem!23 thiss!15207 (h!37041 rulesArg!249) input!1326 cacheUp!633 cacheDown!646) lt!971636)))

(declare-fun b!2745762 () Bool)

(assert (=> b!2745762 (= e!1729777 None!6237)))

(declare-fun b!2745763 () Bool)

(declare-fun apply!7427 (TokenValueInjection!9572 BalanceConc!19388) TokenValue!5066)

(declare-fun size!24418 (BalanceConc!19388) Int)

(assert (=> b!2745763 (= e!1729777 (Some!6237 (tuple2!31445 (Token!9117 (apply!7427 (transformation!4844 (h!37041 rulesArg!249)) (_1!18404 (_1!18405 lt!971637))) (h!37041 rulesArg!249) (size!24418 (_1!18404 (_1!18405 lt!971637))) (list!11995 (_1!18404 (_1!18405 lt!971637)))) (_2!18404 (_1!18405 lt!971637)))))))

(declare-fun lt!971639 () List!31719)

(assert (=> b!2745763 (= lt!971639 (list!11995 input!1326))))

(declare-fun lt!971640 () Unit!45527)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!775 (Regex!7999 List!31719) Unit!45527)

(assert (=> b!2745763 (= lt!971640 (longestMatchIsAcceptedByMatchOrIsEmpty!775 (regex!4844 (h!37041 rulesArg!249)) lt!971639))))

(declare-fun res!1152303 () Bool)

(declare-fun isEmpty!18040 (List!31719) Bool)

(declare-datatypes ((tuple2!31448 0))(
  ( (tuple2!31449 (_1!18406 List!31719) (_2!18406 List!31719)) )
))
(declare-fun findLongestMatchInner!802 (Regex!7999 List!31719 Int List!31719 List!31719 Int) tuple2!31448)

(assert (=> b!2745763 (= res!1152303 (isEmpty!18040 (_1!18406 (findLongestMatchInner!802 (regex!4844 (h!37041 rulesArg!249)) Nil!31619 (size!24417 Nil!31619) lt!971639 lt!971639 (size!24417 lt!971639)))))))

(declare-fun e!1729779 () Bool)

(assert (=> b!2745763 (=> res!1152303 e!1729779)))

(assert (=> b!2745763 e!1729779))

(declare-fun lt!971641 () Unit!45527)

(assert (=> b!2745763 (= lt!971641 lt!971640)))

(declare-fun lt!971638 () Unit!45527)

(declare-fun lemmaSemiInverse!1142 (TokenValueInjection!9572 BalanceConc!19388) Unit!45527)

(assert (=> b!2745763 (= lt!971638 (lemmaSemiInverse!1142 (transformation!4844 (h!37041 rulesArg!249)) (_1!18404 (_1!18405 lt!971637))))))

(declare-fun b!2745764 () Bool)

(declare-fun matchR!3655 (Regex!7999 List!31719) Bool)

(assert (=> b!2745764 (= e!1729779 (matchR!3655 (regex!4844 (h!37041 rulesArg!249)) (_1!18406 (findLongestMatchInner!802 (regex!4844 (h!37041 rulesArg!249)) Nil!31619 (size!24417 Nil!31619) lt!971639 lt!971639 (size!24417 lt!971639)))))))

(declare-fun b!2745765 () Bool)

(declare-fun res!1152304 () Bool)

(assert (=> b!2745765 (=> (not res!1152304) (not e!1729778))))

(assert (=> b!2745765 (= res!1152304 (valid!2801 (_2!18403 lt!971636)))))

(declare-fun b!2745766 () Bool)

(assert (=> b!2745766 (= e!1729778 (valid!2802 (_3!2680 lt!971636)))))

(assert (= (and d!796012 c!444848) b!2745762))

(assert (= (and d!796012 (not c!444848)) b!2745763))

(assert (= (and b!2745763 (not res!1152303)) b!2745764))

(assert (= (and d!796012 res!1152305) b!2745765))

(assert (= (and b!2745765 res!1152304) b!2745766))

(declare-fun m!3162477 () Bool)

(assert (=> b!2745764 m!3162477))

(declare-fun m!3162479 () Bool)

(assert (=> b!2745764 m!3162479))

(assert (=> b!2745764 m!3162477))

(assert (=> b!2745764 m!3162479))

(declare-fun m!3162481 () Bool)

(assert (=> b!2745764 m!3162481))

(declare-fun m!3162483 () Bool)

(assert (=> b!2745764 m!3162483))

(declare-fun m!3162485 () Bool)

(assert (=> d!796012 m!3162485))

(declare-fun m!3162487 () Bool)

(assert (=> d!796012 m!3162487))

(declare-fun m!3162489 () Bool)

(assert (=> d!796012 m!3162489))

(assert (=> d!796012 m!3162471))

(declare-fun m!3162491 () Bool)

(assert (=> b!2745763 m!3162491))

(declare-fun m!3162493 () Bool)

(assert (=> b!2745763 m!3162493))

(declare-fun m!3162495 () Bool)

(assert (=> b!2745763 m!3162495))

(declare-fun m!3162497 () Bool)

(assert (=> b!2745763 m!3162497))

(assert (=> b!2745763 m!3162477))

(assert (=> b!2745763 m!3162479))

(assert (=> b!2745763 m!3162481))

(assert (=> b!2745763 m!3162477))

(assert (=> b!2745763 m!3162479))

(declare-fun m!3162499 () Bool)

(assert (=> b!2745763 m!3162499))

(assert (=> b!2745763 m!3162423))

(declare-fun m!3162501 () Bool)

(assert (=> b!2745763 m!3162501))

(declare-fun m!3162503 () Bool)

(assert (=> b!2745765 m!3162503))

(declare-fun m!3162505 () Bool)

(assert (=> b!2745766 m!3162505))

(assert (=> b!2745701 d!796012))

(declare-fun d!796014 () Bool)

(declare-fun c!444851 () Bool)

(assert (=> d!796014 (= c!444851 ((_ is Node!9887) (c!444840 input!1326)))))

(declare-fun e!1729784 () Bool)

(assert (=> d!796014 (= (inv!42969 (c!444840 input!1326)) e!1729784)))

(declare-fun b!2745773 () Bool)

(declare-fun inv!42974 (Conc!9887) Bool)

(assert (=> b!2745773 (= e!1729784 (inv!42974 (c!444840 input!1326)))))

(declare-fun b!2745774 () Bool)

(declare-fun e!1729785 () Bool)

(assert (=> b!2745774 (= e!1729784 e!1729785)))

(declare-fun res!1152308 () Bool)

(assert (=> b!2745774 (= res!1152308 (not ((_ is Leaf!15055) (c!444840 input!1326))))))

(assert (=> b!2745774 (=> res!1152308 e!1729785)))

(declare-fun b!2745775 () Bool)

(declare-fun inv!42975 (Conc!9887) Bool)

(assert (=> b!2745775 (= e!1729785 (inv!42975 (c!444840 input!1326)))))

(assert (= (and d!796014 c!444851) b!2745773))

(assert (= (and d!796014 (not c!444851)) b!2745774))

(assert (= (and b!2745774 (not res!1152308)) b!2745775))

(declare-fun m!3162507 () Bool)

(assert (=> b!2745773 m!3162507))

(declare-fun m!3162509 () Bool)

(assert (=> b!2745775 m!3162509))

(assert (=> b!2745691 d!796014))

(declare-fun d!796016 () Bool)

(assert (=> d!796016 (= (isEmpty!18038 rulesArg!249) ((_ is Nil!31621) rulesArg!249))))

(assert (=> b!2745714 d!796016))

(declare-fun d!796018 () Bool)

(assert (=> d!796018 (= (array_inv!4104 (_keys!3912 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646))))))) (bvsge (size!24412 (_keys!3912 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745700 d!796018))

(declare-fun d!796020 () Bool)

(assert (=> d!796020 (= (array_inv!4106 (_values!3893 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646))))))) (bvsge (size!24414 (_values!3893 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745700 d!796020))

(declare-fun d!796022 () Bool)

(assert (=> d!796022 (= (array_inv!4104 (_keys!3911 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633))))))) (bvsge (size!24412 (_keys!3911 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745694 d!796022))

(declare-fun d!796024 () Bool)

(assert (=> d!796024 (= (array_inv!4105 (_values!3892 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633))))))) (bvsge (size!24413 (_values!3892 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633))))))) #b00000000000000000000000000000000))))

(assert (=> b!2745694 d!796024))

(declare-fun b!2745786 () Bool)

(declare-fun b_free!77333 () Bool)

(declare-fun b_next!78037 () Bool)

(assert (=> b!2745786 (= b_free!77333 (not b_next!78037))))

(declare-fun tp!864692 () Bool)

(declare-fun b_and!202053 () Bool)

(assert (=> b!2745786 (= tp!864692 b_and!202053)))

(declare-fun b_free!77335 () Bool)

(declare-fun b_next!78039 () Bool)

(assert (=> b!2745786 (= b_free!77335 (not b_next!78039))))

(declare-fun tp!864691 () Bool)

(declare-fun b_and!202055 () Bool)

(assert (=> b!2745786 (= tp!864691 b_and!202055)))

(declare-fun e!1729797 () Bool)

(assert (=> b!2745786 (= e!1729797 (and tp!864692 tp!864691))))

(declare-fun b!2745785 () Bool)

(declare-fun e!1729796 () Bool)

(declare-fun tp!864690 () Bool)

(assert (=> b!2745785 (= e!1729796 (and tp!864690 (inv!42965 (tag!5348 (h!37041 (t!227809 rulesArg!249)))) (inv!42973 (transformation!4844 (h!37041 (t!227809 rulesArg!249)))) e!1729797))))

(declare-fun b!2745784 () Bool)

(declare-fun e!1729795 () Bool)

(declare-fun tp!864689 () Bool)

(assert (=> b!2745784 (= e!1729795 (and e!1729796 tp!864689))))

(assert (=> b!2745703 (= tp!864675 e!1729795)))

(assert (= b!2745785 b!2745786))

(assert (= b!2745784 b!2745785))

(assert (= (and b!2745703 ((_ is Cons!31621) (t!227809 rulesArg!249))) b!2745784))

(declare-fun m!3162511 () Bool)

(assert (=> b!2745785 m!3162511))

(declare-fun m!3162513 () Bool)

(assert (=> b!2745785 m!3162513))

(declare-fun e!1729805 () Bool)

(declare-fun b!2745795 () Bool)

(declare-fun tp_is_empty!13931 () Bool)

(declare-fun tp!864706 () Bool)

(declare-fun setRes!21645 () Bool)

(declare-fun e!1729804 () Bool)

(declare-fun tp!864707 () Bool)

(declare-fun inv!42976 (Context!4434) Bool)

(assert (=> b!2745795 (= e!1729804 (and tp!864706 (inv!42976 (_2!18400 (_1!18401 (h!37044 mapDefault!16470)))) e!1729805 tp_is_empty!13931 setRes!21645 tp!864707))))

(declare-fun condSetEmpty!21645 () Bool)

(assert (=> b!2745795 (= condSetEmpty!21645 (= (_2!18401 (h!37044 mapDefault!16470)) ((as const (Array Context!4434 Bool)) false)))))

(assert (=> b!2745712 (= tp!864666 e!1729804)))

(declare-fun setElem!21645 () Context!4434)

(declare-fun tp!864703 () Bool)

(declare-fun e!1729806 () Bool)

(declare-fun setNonEmpty!21645 () Bool)

(assert (=> setNonEmpty!21645 (= setRes!21645 (and tp!864703 (inv!42976 setElem!21645) e!1729806))))

(declare-fun setRest!21645 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21645 (= (_2!18401 (h!37044 mapDefault!16470)) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21645 true) setRest!21645))))

(declare-fun b!2745796 () Bool)

(declare-fun tp!864705 () Bool)

(assert (=> b!2745796 (= e!1729805 tp!864705)))

(declare-fun setIsEmpty!21645 () Bool)

(assert (=> setIsEmpty!21645 setRes!21645))

(declare-fun b!2745797 () Bool)

(declare-fun tp!864704 () Bool)

(assert (=> b!2745797 (= e!1729806 tp!864704)))

(assert (= b!2745795 b!2745796))

(assert (= (and b!2745795 condSetEmpty!21645) setIsEmpty!21645))

(assert (= (and b!2745795 (not condSetEmpty!21645)) setNonEmpty!21645))

(assert (= setNonEmpty!21645 b!2745797))

(assert (= (and b!2745712 ((_ is Cons!31624) mapDefault!16470)) b!2745795))

(declare-fun m!3162515 () Bool)

(assert (=> b!2745795 m!3162515))

(declare-fun m!3162517 () Bool)

(assert (=> setNonEmpty!21645 m!3162517))

(declare-fun e!1729822 () Bool)

(declare-fun tp!864739 () Bool)

(declare-fun setNonEmpty!21650 () Bool)

(declare-fun setElem!21651 () Context!4434)

(declare-fun setRes!21650 () Bool)

(assert (=> setNonEmpty!21650 (= setRes!21650 (and tp!864739 (inv!42976 setElem!21651) e!1729822))))

(declare-fun mapDefault!16473 () List!31724)

(declare-fun setRest!21651 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21650 (= (_2!18401 (h!37044 mapDefault!16473)) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21651 true) setRest!21651))))

(declare-fun setIsEmpty!21650 () Bool)

(declare-fun setRes!21651 () Bool)

(assert (=> setIsEmpty!21650 setRes!21651))

(declare-fun mapNonEmpty!16473 () Bool)

(declare-fun mapRes!16473 () Bool)

(declare-fun tp!864730 () Bool)

(declare-fun e!1729823 () Bool)

(assert (=> mapNonEmpty!16473 (= mapRes!16473 (and tp!864730 e!1729823))))

(declare-fun mapRest!16473 () (Array (_ BitVec 32) List!31724))

(declare-fun mapValue!16473 () List!31724)

(declare-fun mapKey!16473 () (_ BitVec 32))

(assert (=> mapNonEmpty!16473 (= mapRest!16469 (store mapRest!16473 mapKey!16473 mapValue!16473))))

(declare-fun e!1729821 () Bool)

(declare-fun b!2745812 () Bool)

(declare-fun tp!864731 () Bool)

(declare-fun tp!864732 () Bool)

(assert (=> b!2745812 (= e!1729823 (and tp!864731 (inv!42976 (_2!18400 (_1!18401 (h!37044 mapValue!16473)))) e!1729821 tp_is_empty!13931 setRes!21651 tp!864732))))

(declare-fun condSetEmpty!21650 () Bool)

(assert (=> b!2745812 (= condSetEmpty!21650 (= (_2!18401 (h!37044 mapValue!16473)) ((as const (Array Context!4434 Bool)) false)))))

(declare-fun b!2745813 () Bool)

(declare-fun tp!864738 () Bool)

(assert (=> b!2745813 (= e!1729822 tp!864738)))

(declare-fun e!1729820 () Bool)

(declare-fun e!1729819 () Bool)

(declare-fun tp!864737 () Bool)

(declare-fun tp!864734 () Bool)

(declare-fun b!2745814 () Bool)

(assert (=> b!2745814 (= e!1729819 (and tp!864734 (inv!42976 (_2!18400 (_1!18401 (h!37044 mapDefault!16473)))) e!1729820 tp_is_empty!13931 setRes!21650 tp!864737))))

(declare-fun condSetEmpty!21651 () Bool)

(assert (=> b!2745814 (= condSetEmpty!21651 (= (_2!18401 (h!37044 mapDefault!16473)) ((as const (Array Context!4434 Bool)) false)))))

(declare-fun condMapEmpty!16473 () Bool)

(assert (=> mapNonEmpty!16470 (= condMapEmpty!16473 (= mapRest!16469 ((as const (Array (_ BitVec 32) List!31724)) mapDefault!16473)))))

(assert (=> mapNonEmpty!16470 (= tp!864669 (and e!1729819 mapRes!16473))))

(declare-fun b!2745815 () Bool)

(declare-fun tp!864735 () Bool)

(assert (=> b!2745815 (= e!1729820 tp!864735)))

(declare-fun mapIsEmpty!16473 () Bool)

(assert (=> mapIsEmpty!16473 mapRes!16473))

(declare-fun b!2745816 () Bool)

(declare-fun e!1729824 () Bool)

(declare-fun tp!864733 () Bool)

(assert (=> b!2745816 (= e!1729824 tp!864733)))

(declare-fun b!2745817 () Bool)

(declare-fun tp!864740 () Bool)

(assert (=> b!2745817 (= e!1729821 tp!864740)))

(declare-fun tp!864736 () Bool)

(declare-fun setElem!21650 () Context!4434)

(declare-fun setNonEmpty!21651 () Bool)

(assert (=> setNonEmpty!21651 (= setRes!21651 (and tp!864736 (inv!42976 setElem!21650) e!1729824))))

(declare-fun setRest!21650 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21651 (= (_2!18401 (h!37044 mapValue!16473)) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21650 true) setRest!21650))))

(declare-fun setIsEmpty!21651 () Bool)

(assert (=> setIsEmpty!21651 setRes!21650))

(assert (= (and mapNonEmpty!16470 condMapEmpty!16473) mapIsEmpty!16473))

(assert (= (and mapNonEmpty!16470 (not condMapEmpty!16473)) mapNonEmpty!16473))

(assert (= b!2745812 b!2745817))

(assert (= (and b!2745812 condSetEmpty!21650) setIsEmpty!21650))

(assert (= (and b!2745812 (not condSetEmpty!21650)) setNonEmpty!21651))

(assert (= setNonEmpty!21651 b!2745816))

(assert (= (and mapNonEmpty!16473 ((_ is Cons!31624) mapValue!16473)) b!2745812))

(assert (= b!2745814 b!2745815))

(assert (= (and b!2745814 condSetEmpty!21651) setIsEmpty!21651))

(assert (= (and b!2745814 (not condSetEmpty!21651)) setNonEmpty!21650))

(assert (= setNonEmpty!21650 b!2745813))

(assert (= (and mapNonEmpty!16470 ((_ is Cons!31624) mapDefault!16473)) b!2745814))

(declare-fun m!3162519 () Bool)

(assert (=> b!2745814 m!3162519))

(declare-fun m!3162521 () Bool)

(assert (=> setNonEmpty!21651 m!3162521))

(declare-fun m!3162523 () Bool)

(assert (=> setNonEmpty!21650 m!3162523))

(declare-fun m!3162525 () Bool)

(assert (=> b!2745812 m!3162525))

(declare-fun m!3162527 () Bool)

(assert (=> mapNonEmpty!16473 m!3162527))

(declare-fun b!2745818 () Bool)

(declare-fun e!1729826 () Bool)

(declare-fun setRes!21652 () Bool)

(declare-fun tp!864744 () Bool)

(declare-fun e!1729825 () Bool)

(declare-fun tp!864745 () Bool)

(assert (=> b!2745818 (= e!1729825 (and tp!864744 (inv!42976 (_2!18400 (_1!18401 (h!37044 mapValue!16469)))) e!1729826 tp_is_empty!13931 setRes!21652 tp!864745))))

(declare-fun condSetEmpty!21652 () Bool)

(assert (=> b!2745818 (= condSetEmpty!21652 (= (_2!18401 (h!37044 mapValue!16469)) ((as const (Array Context!4434 Bool)) false)))))

(assert (=> mapNonEmpty!16470 (= tp!864664 e!1729825)))

(declare-fun e!1729827 () Bool)

(declare-fun setElem!21652 () Context!4434)

(declare-fun setNonEmpty!21652 () Bool)

(declare-fun tp!864741 () Bool)

(assert (=> setNonEmpty!21652 (= setRes!21652 (and tp!864741 (inv!42976 setElem!21652) e!1729827))))

(declare-fun setRest!21652 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21652 (= (_2!18401 (h!37044 mapValue!16469)) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21652 true) setRest!21652))))

(declare-fun b!2745819 () Bool)

(declare-fun tp!864743 () Bool)

(assert (=> b!2745819 (= e!1729826 tp!864743)))

(declare-fun setIsEmpty!21652 () Bool)

(assert (=> setIsEmpty!21652 setRes!21652))

(declare-fun b!2745820 () Bool)

(declare-fun tp!864742 () Bool)

(assert (=> b!2745820 (= e!1729827 tp!864742)))

(assert (= b!2745818 b!2745819))

(assert (= (and b!2745818 condSetEmpty!21652) setIsEmpty!21652))

(assert (= (and b!2745818 (not condSetEmpty!21652)) setNonEmpty!21652))

(assert (= setNonEmpty!21652 b!2745820))

(assert (= (and mapNonEmpty!16470 ((_ is Cons!31624) mapValue!16469)) b!2745818))

(declare-fun m!3162529 () Bool)

(assert (=> b!2745818 m!3162529))

(declare-fun m!3162531 () Bool)

(assert (=> setNonEmpty!21652 m!3162531))

(declare-fun b!2745832 () Bool)

(declare-fun e!1729830 () Bool)

(declare-fun tp!864757 () Bool)

(declare-fun tp!864756 () Bool)

(assert (=> b!2745832 (= e!1729830 (and tp!864757 tp!864756))))

(declare-fun b!2745834 () Bool)

(declare-fun tp!864760 () Bool)

(declare-fun tp!864758 () Bool)

(assert (=> b!2745834 (= e!1729830 (and tp!864760 tp!864758))))

(declare-fun b!2745833 () Bool)

(declare-fun tp!864759 () Bool)

(assert (=> b!2745833 (= e!1729830 tp!864759)))

(assert (=> b!2745707 (= tp!864672 e!1729830)))

(declare-fun b!2745831 () Bool)

(assert (=> b!2745831 (= e!1729830 tp_is_empty!13931)))

(assert (= (and b!2745707 ((_ is ElementMatch!7999) (regex!4844 (h!37041 rulesArg!249)))) b!2745831))

(assert (= (and b!2745707 ((_ is Concat!13066) (regex!4844 (h!37041 rulesArg!249)))) b!2745832))

(assert (= (and b!2745707 ((_ is Star!7999) (regex!4844 (h!37041 rulesArg!249)))) b!2745833))

(assert (= (and b!2745707 ((_ is Union!7999) (regex!4844 (h!37041 rulesArg!249)))) b!2745834))

(declare-fun setNonEmpty!21655 () Bool)

(declare-fun setRes!21655 () Bool)

(declare-fun e!1729837 () Bool)

(declare-fun setElem!21655 () Context!4434)

(declare-fun tp!864770 () Bool)

(assert (=> setNonEmpty!21655 (= setRes!21655 (and tp!864770 (inv!42976 setElem!21655) e!1729837))))

(declare-fun setRest!21655 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21655 (= (_2!18399 (h!37043 mapDefault!16469)) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21655 true) setRest!21655))))

(declare-fun setIsEmpty!21655 () Bool)

(assert (=> setIsEmpty!21655 setRes!21655))

(declare-fun e!1729839 () Bool)

(assert (=> b!2745705 (= tp!864662 e!1729839)))

(declare-fun b!2745843 () Bool)

(declare-fun tp!864769 () Bool)

(assert (=> b!2745843 (= e!1729837 tp!864769)))

(declare-fun b!2745844 () Bool)

(declare-fun e!1729838 () Bool)

(declare-fun tp!864771 () Bool)

(assert (=> b!2745844 (= e!1729838 tp!864771)))

(declare-fun b!2745845 () Bool)

(declare-fun tp!864772 () Bool)

(assert (=> b!2745845 (= e!1729839 (and (inv!42976 (_1!18398 (_1!18399 (h!37043 mapDefault!16469)))) e!1729838 tp_is_empty!13931 setRes!21655 tp!864772))))

(declare-fun condSetEmpty!21655 () Bool)

(assert (=> b!2745845 (= condSetEmpty!21655 (= (_2!18399 (h!37043 mapDefault!16469)) ((as const (Array Context!4434 Bool)) false)))))

(assert (= b!2745845 b!2745844))

(assert (= (and b!2745845 condSetEmpty!21655) setIsEmpty!21655))

(assert (= (and b!2745845 (not condSetEmpty!21655)) setNonEmpty!21655))

(assert (= setNonEmpty!21655 b!2745843))

(assert (= (and b!2745705 ((_ is Cons!31623) mapDefault!16469)) b!2745845))

(declare-fun m!3162533 () Bool)

(assert (=> setNonEmpty!21655 m!3162533))

(declare-fun m!3162535 () Bool)

(assert (=> b!2745845 m!3162535))

(declare-fun setRes!21660 () Bool)

(declare-fun tp!864792 () Bool)

(declare-fun e!1729852 () Bool)

(declare-fun setElem!21660 () Context!4434)

(declare-fun setNonEmpty!21660 () Bool)

(assert (=> setNonEmpty!21660 (= setRes!21660 (and tp!864792 (inv!42976 setElem!21660) e!1729852))))

(declare-fun mapValue!16476 () List!31723)

(declare-fun setRest!21660 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21660 (= (_2!18399 (h!37043 mapValue!16476)) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21660 true) setRest!21660))))

(declare-fun b!2745860 () Bool)

(declare-fun tp!864794 () Bool)

(assert (=> b!2745860 (= e!1729852 tp!864794)))

(declare-fun mapNonEmpty!16476 () Bool)

(declare-fun mapRes!16476 () Bool)

(declare-fun tp!864797 () Bool)

(declare-fun e!1729854 () Bool)

(assert (=> mapNonEmpty!16476 (= mapRes!16476 (and tp!864797 e!1729854))))

(declare-fun mapKey!16476 () (_ BitVec 32))

(declare-fun mapRest!16476 () (Array (_ BitVec 32) List!31723))

(assert (=> mapNonEmpty!16476 (= mapRest!16470 (store mapRest!16476 mapKey!16476 mapValue!16476))))

(declare-fun condMapEmpty!16476 () Bool)

(declare-fun mapDefault!16476 () List!31723)

(assert (=> mapNonEmpty!16469 (= condMapEmpty!16476 (= mapRest!16470 ((as const (Array (_ BitVec 32) List!31723)) mapDefault!16476)))))

(declare-fun e!1729855 () Bool)

(assert (=> mapNonEmpty!16469 (= tp!864663 (and e!1729855 mapRes!16476))))

(declare-fun e!1729853 () Bool)

(declare-fun b!2745861 () Bool)

(declare-fun tp!864798 () Bool)

(assert (=> b!2745861 (= e!1729854 (and (inv!42976 (_1!18398 (_1!18399 (h!37043 mapValue!16476)))) e!1729853 tp_is_empty!13931 setRes!21660 tp!864798))))

(declare-fun condSetEmpty!21660 () Bool)

(assert (=> b!2745861 (= condSetEmpty!21660 (= (_2!18399 (h!37043 mapValue!16476)) ((as const (Array Context!4434 Bool)) false)))))

(declare-fun setIsEmpty!21660 () Bool)

(assert (=> setIsEmpty!21660 setRes!21660))

(declare-fun b!2745862 () Bool)

(declare-fun e!1729857 () Bool)

(declare-fun tp!864795 () Bool)

(assert (=> b!2745862 (= e!1729857 tp!864795)))

(declare-fun b!2745863 () Bool)

(declare-fun tp!864793 () Bool)

(assert (=> b!2745863 (= e!1729853 tp!864793)))

(declare-fun tp!864791 () Bool)

(declare-fun setRes!21661 () Bool)

(declare-fun b!2745864 () Bool)

(assert (=> b!2745864 (= e!1729855 (and (inv!42976 (_1!18398 (_1!18399 (h!37043 mapDefault!16476)))) e!1729857 tp_is_empty!13931 setRes!21661 tp!864791))))

(declare-fun condSetEmpty!21661 () Bool)

(assert (=> b!2745864 (= condSetEmpty!21661 (= (_2!18399 (h!37043 mapDefault!16476)) ((as const (Array Context!4434 Bool)) false)))))

(declare-fun b!2745865 () Bool)

(declare-fun e!1729856 () Bool)

(declare-fun tp!864796 () Bool)

(assert (=> b!2745865 (= e!1729856 tp!864796)))

(declare-fun mapIsEmpty!16476 () Bool)

(assert (=> mapIsEmpty!16476 mapRes!16476))

(declare-fun setElem!21661 () Context!4434)

(declare-fun tp!864799 () Bool)

(declare-fun setNonEmpty!21661 () Bool)

(assert (=> setNonEmpty!21661 (= setRes!21661 (and tp!864799 (inv!42976 setElem!21661) e!1729856))))

(declare-fun setRest!21661 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21661 (= (_2!18399 (h!37043 mapDefault!16476)) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21661 true) setRest!21661))))

(declare-fun setIsEmpty!21661 () Bool)

(assert (=> setIsEmpty!21661 setRes!21661))

(assert (= (and mapNonEmpty!16469 condMapEmpty!16476) mapIsEmpty!16476))

(assert (= (and mapNonEmpty!16469 (not condMapEmpty!16476)) mapNonEmpty!16476))

(assert (= b!2745861 b!2745863))

(assert (= (and b!2745861 condSetEmpty!21660) setIsEmpty!21660))

(assert (= (and b!2745861 (not condSetEmpty!21660)) setNonEmpty!21660))

(assert (= setNonEmpty!21660 b!2745860))

(assert (= (and mapNonEmpty!16476 ((_ is Cons!31623) mapValue!16476)) b!2745861))

(assert (= b!2745864 b!2745862))

(assert (= (and b!2745864 condSetEmpty!21661) setIsEmpty!21661))

(assert (= (and b!2745864 (not condSetEmpty!21661)) setNonEmpty!21661))

(assert (= setNonEmpty!21661 b!2745865))

(assert (= (and mapNonEmpty!16469 ((_ is Cons!31623) mapDefault!16476)) b!2745864))

(declare-fun m!3162537 () Bool)

(assert (=> setNonEmpty!21660 m!3162537))

(declare-fun m!3162539 () Bool)

(assert (=> b!2745861 m!3162539))

(declare-fun m!3162541 () Bool)

(assert (=> setNonEmpty!21661 m!3162541))

(declare-fun m!3162543 () Bool)

(assert (=> b!2745864 m!3162543))

(declare-fun m!3162545 () Bool)

(assert (=> mapNonEmpty!16476 m!3162545))

(declare-fun setNonEmpty!21662 () Bool)

(declare-fun tp!864801 () Bool)

(declare-fun setRes!21662 () Bool)

(declare-fun setElem!21662 () Context!4434)

(declare-fun e!1729858 () Bool)

(assert (=> setNonEmpty!21662 (= setRes!21662 (and tp!864801 (inv!42976 setElem!21662) e!1729858))))

(declare-fun setRest!21662 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21662 (= (_2!18399 (h!37043 mapValue!16470)) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21662 true) setRest!21662))))

(declare-fun setIsEmpty!21662 () Bool)

(assert (=> setIsEmpty!21662 setRes!21662))

(declare-fun e!1729860 () Bool)

(assert (=> mapNonEmpty!16469 (= tp!864676 e!1729860)))

(declare-fun b!2745866 () Bool)

(declare-fun tp!864800 () Bool)

(assert (=> b!2745866 (= e!1729858 tp!864800)))

(declare-fun b!2745867 () Bool)

(declare-fun e!1729859 () Bool)

(declare-fun tp!864802 () Bool)

(assert (=> b!2745867 (= e!1729859 tp!864802)))

(declare-fun b!2745868 () Bool)

(declare-fun tp!864803 () Bool)

(assert (=> b!2745868 (= e!1729860 (and (inv!42976 (_1!18398 (_1!18399 (h!37043 mapValue!16470)))) e!1729859 tp_is_empty!13931 setRes!21662 tp!864803))))

(declare-fun condSetEmpty!21662 () Bool)

(assert (=> b!2745868 (= condSetEmpty!21662 (= (_2!18399 (h!37043 mapValue!16470)) ((as const (Array Context!4434 Bool)) false)))))

(assert (= b!2745868 b!2745867))

(assert (= (and b!2745868 condSetEmpty!21662) setIsEmpty!21662))

(assert (= (and b!2745868 (not condSetEmpty!21662)) setNonEmpty!21662))

(assert (= setNonEmpty!21662 b!2745866))

(assert (= (and mapNonEmpty!16469 ((_ is Cons!31623) mapValue!16470)) b!2745868))

(declare-fun m!3162547 () Bool)

(assert (=> setNonEmpty!21662 m!3162547))

(declare-fun m!3162549 () Bool)

(assert (=> b!2745868 m!3162549))

(declare-fun e!1729866 () Bool)

(declare-fun tp!864812 () Bool)

(declare-fun b!2745877 () Bool)

(declare-fun tp!864810 () Bool)

(assert (=> b!2745877 (= e!1729866 (and (inv!42969 (left!24236 (c!444840 input!1326))) tp!864810 (inv!42969 (right!24566 (c!444840 input!1326))) tp!864812))))

(declare-fun b!2745879 () Bool)

(declare-fun e!1729865 () Bool)

(declare-fun tp!864811 () Bool)

(assert (=> b!2745879 (= e!1729865 tp!864811)))

(declare-fun b!2745878 () Bool)

(declare-fun inv!42977 (IArray!19779) Bool)

(assert (=> b!2745878 (= e!1729866 (and (inv!42977 (xs!12994 (c!444840 input!1326))) e!1729865))))

(assert (=> b!2745691 (= tp!864673 (and (inv!42969 (c!444840 input!1326)) e!1729866))))

(assert (= (and b!2745691 ((_ is Node!9887) (c!444840 input!1326))) b!2745877))

(assert (= b!2745878 b!2745879))

(assert (= (and b!2745691 ((_ is Leaf!15055) (c!444840 input!1326))) b!2745878))

(declare-fun m!3162551 () Bool)

(assert (=> b!2745877 m!3162551))

(declare-fun m!3162553 () Bool)

(assert (=> b!2745877 m!3162553))

(declare-fun m!3162555 () Bool)

(assert (=> b!2745878 m!3162555))

(assert (=> b!2745691 m!3162445))

(declare-fun e!1729867 () Bool)

(declare-fun e!1729868 () Bool)

(declare-fun setRes!21663 () Bool)

(declare-fun b!2745880 () Bool)

(declare-fun tp!864816 () Bool)

(declare-fun tp!864817 () Bool)

(assert (=> b!2745880 (= e!1729867 (and tp!864816 (inv!42976 (_2!18400 (_1!18401 (h!37044 (zeroValue!3871 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646)))))))))) e!1729868 tp_is_empty!13931 setRes!21663 tp!864817))))

(declare-fun condSetEmpty!21663 () Bool)

(assert (=> b!2745880 (= condSetEmpty!21663 (= (_2!18401 (h!37044 (zeroValue!3871 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646)))))))) ((as const (Array Context!4434 Bool)) false)))))

(assert (=> b!2745700 (= tp!864678 e!1729867)))

(declare-fun setNonEmpty!21663 () Bool)

(declare-fun tp!864813 () Bool)

(declare-fun setElem!21663 () Context!4434)

(declare-fun e!1729869 () Bool)

(assert (=> setNonEmpty!21663 (= setRes!21663 (and tp!864813 (inv!42976 setElem!21663) e!1729869))))

(declare-fun setRest!21663 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21663 (= (_2!18401 (h!37044 (zeroValue!3871 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21663 true) setRest!21663))))

(declare-fun b!2745881 () Bool)

(declare-fun tp!864815 () Bool)

(assert (=> b!2745881 (= e!1729868 tp!864815)))

(declare-fun setIsEmpty!21663 () Bool)

(assert (=> setIsEmpty!21663 setRes!21663))

(declare-fun b!2745882 () Bool)

(declare-fun tp!864814 () Bool)

(assert (=> b!2745882 (= e!1729869 tp!864814)))

(assert (= b!2745880 b!2745881))

(assert (= (and b!2745880 condSetEmpty!21663) setIsEmpty!21663))

(assert (= (and b!2745880 (not condSetEmpty!21663)) setNonEmpty!21663))

(assert (= setNonEmpty!21663 b!2745882))

(assert (= (and b!2745700 ((_ is Cons!31624) (zeroValue!3871 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646)))))))) b!2745880))

(declare-fun m!3162557 () Bool)

(assert (=> b!2745880 m!3162557))

(declare-fun m!3162559 () Bool)

(assert (=> setNonEmpty!21663 m!3162559))

(declare-fun setRes!21664 () Bool)

(declare-fun e!1729871 () Bool)

(declare-fun b!2745883 () Bool)

(declare-fun e!1729870 () Bool)

(declare-fun tp!864821 () Bool)

(declare-fun tp!864822 () Bool)

(assert (=> b!2745883 (= e!1729870 (and tp!864821 (inv!42976 (_2!18400 (_1!18401 (h!37044 (minValue!3871 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646)))))))))) e!1729871 tp_is_empty!13931 setRes!21664 tp!864822))))

(declare-fun condSetEmpty!21664 () Bool)

(assert (=> b!2745883 (= condSetEmpty!21664 (= (_2!18401 (h!37044 (minValue!3871 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646)))))))) ((as const (Array Context!4434 Bool)) false)))))

(assert (=> b!2745700 (= tp!864680 e!1729870)))

(declare-fun e!1729872 () Bool)

(declare-fun setNonEmpty!21664 () Bool)

(declare-fun setElem!21664 () Context!4434)

(declare-fun tp!864818 () Bool)

(assert (=> setNonEmpty!21664 (= setRes!21664 (and tp!864818 (inv!42976 setElem!21664) e!1729872))))

(declare-fun setRest!21664 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21664 (= (_2!18401 (h!37044 (minValue!3871 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646)))))))) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21664 true) setRest!21664))))

(declare-fun b!2745884 () Bool)

(declare-fun tp!864820 () Bool)

(assert (=> b!2745884 (= e!1729871 tp!864820)))

(declare-fun setIsEmpty!21664 () Bool)

(assert (=> setIsEmpty!21664 setRes!21664))

(declare-fun b!2745885 () Bool)

(declare-fun tp!864819 () Bool)

(assert (=> b!2745885 (= e!1729872 tp!864819)))

(assert (= b!2745883 b!2745884))

(assert (= (and b!2745883 condSetEmpty!21664) setIsEmpty!21664))

(assert (= (and b!2745883 (not condSetEmpty!21664)) setNonEmpty!21664))

(assert (= setNonEmpty!21664 b!2745885))

(assert (= (and b!2745700 ((_ is Cons!31624) (minValue!3871 (v!33253 (underlying!7427 (v!33254 (underlying!7428 (cache!3661 cacheDown!646)))))))) b!2745883))

(declare-fun m!3162561 () Bool)

(assert (=> b!2745883 m!3162561))

(declare-fun m!3162563 () Bool)

(assert (=> setNonEmpty!21664 m!3162563))

(declare-fun setRes!21665 () Bool)

(declare-fun e!1729873 () Bool)

(declare-fun tp!864824 () Bool)

(declare-fun setElem!21665 () Context!4434)

(declare-fun setNonEmpty!21665 () Bool)

(assert (=> setNonEmpty!21665 (= setRes!21665 (and tp!864824 (inv!42976 setElem!21665) e!1729873))))

(declare-fun setRest!21665 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21665 (= (_2!18399 (h!37043 (zeroValue!3870 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21665 true) setRest!21665))))

(declare-fun setIsEmpty!21665 () Bool)

(assert (=> setIsEmpty!21665 setRes!21665))

(declare-fun e!1729875 () Bool)

(assert (=> b!2745694 (= tp!864679 e!1729875)))

(declare-fun b!2745886 () Bool)

(declare-fun tp!864823 () Bool)

(assert (=> b!2745886 (= e!1729873 tp!864823)))

(declare-fun b!2745887 () Bool)

(declare-fun e!1729874 () Bool)

(declare-fun tp!864825 () Bool)

(assert (=> b!2745887 (= e!1729874 tp!864825)))

(declare-fun tp!864826 () Bool)

(declare-fun b!2745888 () Bool)

(assert (=> b!2745888 (= e!1729875 (and (inv!42976 (_1!18398 (_1!18399 (h!37043 (zeroValue!3870 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633)))))))))) e!1729874 tp_is_empty!13931 setRes!21665 tp!864826))))

(declare-fun condSetEmpty!21665 () Bool)

(assert (=> b!2745888 (= condSetEmpty!21665 (= (_2!18399 (h!37043 (zeroValue!3870 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633)))))))) ((as const (Array Context!4434 Bool)) false)))))

(assert (= b!2745888 b!2745887))

(assert (= (and b!2745888 condSetEmpty!21665) setIsEmpty!21665))

(assert (= (and b!2745888 (not condSetEmpty!21665)) setNonEmpty!21665))

(assert (= setNonEmpty!21665 b!2745886))

(assert (= (and b!2745694 ((_ is Cons!31623) (zeroValue!3870 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633)))))))) b!2745888))

(declare-fun m!3162565 () Bool)

(assert (=> setNonEmpty!21665 m!3162565))

(declare-fun m!3162567 () Bool)

(assert (=> b!2745888 m!3162567))

(declare-fun e!1729876 () Bool)

(declare-fun setElem!21666 () Context!4434)

(declare-fun setRes!21666 () Bool)

(declare-fun tp!864828 () Bool)

(declare-fun setNonEmpty!21666 () Bool)

(assert (=> setNonEmpty!21666 (= setRes!21666 (and tp!864828 (inv!42976 setElem!21666) e!1729876))))

(declare-fun setRest!21666 () (InoxSet Context!4434))

(assert (=> setNonEmpty!21666 (= (_2!18399 (h!37043 (minValue!3870 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633)))))))) ((_ map or) (store ((as const (Array Context!4434 Bool)) false) setElem!21666 true) setRest!21666))))

(declare-fun setIsEmpty!21666 () Bool)

(assert (=> setIsEmpty!21666 setRes!21666))

(declare-fun e!1729878 () Bool)

(assert (=> b!2745694 (= tp!864668 e!1729878)))

(declare-fun b!2745889 () Bool)

(declare-fun tp!864827 () Bool)

(assert (=> b!2745889 (= e!1729876 tp!864827)))

(declare-fun b!2745890 () Bool)

(declare-fun e!1729877 () Bool)

(declare-fun tp!864829 () Bool)

(assert (=> b!2745890 (= e!1729877 tp!864829)))

(declare-fun tp!864830 () Bool)

(declare-fun b!2745891 () Bool)

(assert (=> b!2745891 (= e!1729878 (and (inv!42976 (_1!18398 (_1!18399 (h!37043 (minValue!3870 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633)))))))))) e!1729877 tp_is_empty!13931 setRes!21666 tp!864830))))

(declare-fun condSetEmpty!21666 () Bool)

(assert (=> b!2745891 (= condSetEmpty!21666 (= (_2!18399 (h!37043 (minValue!3870 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633)))))))) ((as const (Array Context!4434 Bool)) false)))))

(assert (= b!2745891 b!2745890))

(assert (= (and b!2745891 condSetEmpty!21666) setIsEmpty!21666))

(assert (= (and b!2745891 (not condSetEmpty!21666)) setNonEmpty!21666))

(assert (= setNonEmpty!21666 b!2745889))

(assert (= (and b!2745694 ((_ is Cons!31623) (minValue!3870 (v!33251 (underlying!7425 (v!33252 (underlying!7426 (cache!3660 cacheUp!633)))))))) b!2745891))

(declare-fun m!3162569 () Bool)

(assert (=> setNonEmpty!21666 m!3162569))

(declare-fun m!3162571 () Bool)

(assert (=> b!2745891 m!3162571))

(check-sat (not b!2745765) (not b!2745832) (not b!2745834) b_and!202055 (not d!795992) (not b!2745723) (not b!2745880) b_and!202041 b_and!202045 (not b!2745691) (not d!796004) (not b!2745741) (not setNonEmpty!21651) (not b!2745817) (not b!2745813) (not b!2745785) (not b!2745884) (not b!2745812) (not b!2745733) (not b!2745878) (not b!2745888) (not b!2745866) (not b!2745720) (not d!795994) (not b!2745877) (not b!2745882) (not b!2745887) (not b!2745766) (not b_next!78025) (not b!2745889) (not b!2745797) (not setNonEmpty!21662) (not b!2745815) (not b_next!78031) (not b!2745795) (not b!2745843) (not d!796006) (not b!2745862) (not b_next!78027) (not b!2745891) (not b!2745749) (not d!796002) tp_is_empty!13931 (not b!2745775) (not setNonEmpty!21661) (not b!2745819) (not b!2745867) (not b!2745861) (not b!2745734) b_and!202043 (not b!2745784) (not b!2745845) (not setNonEmpty!21655) (not b!2745763) (not b!2745717) (not b_next!78039) (not setNonEmpty!21652) (not d!795988) (not b!2745863) (not setNonEmpty!21663) (not setNonEmpty!21645) (not b!2745885) b_and!202047 (not b!2745814) (not b!2745735) (not mapNonEmpty!16473) (not setNonEmpty!21666) (not b!2745886) (not b!2745864) (not b!2745883) (not b!2745818) (not b!2745860) (not b_next!78029) b_and!202051 (not b!2745816) b_and!202053 b_and!202049 (not b!2745865) (not b_next!78037) (not b!2745740) (not b!2745833) (not b_next!78035) (not b!2745890) (not b!2745773) (not b!2745844) (not setNonEmpty!21650) (not b!2745764) (not b!2745820) (not setNonEmpty!21660) (not d!795998) (not b!2745796) (not b!2745881) (not b!2745868) (not setNonEmpty!21664) (not b_next!78033) (not mapNonEmpty!16476) (not d!796012) (not setNonEmpty!21665) (not b!2745751) (not b!2745879))
(check-sat b_and!202041 b_and!202045 (not b_next!78025) (not b_next!78031) (not b_next!78027) b_and!202043 (not b_next!78039) b_and!202047 b_and!202055 (not b_next!78035) (not b_next!78033) (not b_next!78029) b_and!202051 b_and!202053 b_and!202049 (not b_next!78037))
