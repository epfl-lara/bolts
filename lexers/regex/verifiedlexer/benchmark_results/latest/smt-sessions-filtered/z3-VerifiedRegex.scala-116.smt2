; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!868 () Bool)

(assert start!868)

(declare-fun b!27377 () Bool)

(declare-fun b_free!5 () Bool)

(declare-fun b_next!5 () Bool)

(assert (=> b!27377 (= b_free!5 (not b_next!5))))

(declare-fun tp!18821 () Bool)

(declare-fun b_and!5 () Bool)

(assert (=> b!27377 (= tp!18821 b_and!5)))

(declare-fun b!27378 () Bool)

(declare-fun b_free!7 () Bool)

(declare-fun b_next!7 () Bool)

(assert (=> b!27378 (= b_free!7 (not b_next!7))))

(declare-fun tp!18817 () Bool)

(declare-fun b_and!7 () Bool)

(assert (=> b!27378 (= tp!18817 b_and!7)))

(declare-fun b!27373 () Bool)

(declare-fun e!10911 () Bool)

(declare-fun e!10909 () Bool)

(assert (=> b!27373 (= e!10911 e!10909)))

(declare-fun lt!1109 () Bool)

(declare-datatypes ((K!445 0))(
  ( (K!446 (val!142 Int)) )
))
(declare-datatypes ((V!491 0))(
  ( (V!492 (val!143 Int)) )
))
(declare-datatypes ((tuple2!2 0))(
  ( (tuple2!3 (_1!1 K!445) (_2!1 V!491)) )
))
(declare-datatypes ((List!125 0))(
  ( (Nil!123) (Cons!123 (h!5519 tuple2!2) (t!14604 List!125)) )
))
(declare-datatypes ((array!7 0))(
  ( (array!8 (arr!34 (Array (_ BitVec 32) (_ BitVec 64))) (size!232 (_ BitVec 32))) )
))
(declare-datatypes ((array!9 0))(
  ( (array!10 (arr!35 (Array (_ BitVec 32) List!125)) (size!233 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6 0))(
  ( (LongMapFixedSize!7 (defaultEntry!336 Int) (mask!636 (_ BitVec 32)) (extraKeys!248 (_ BitVec 32)) (zeroValue!258 List!125) (minValue!258 List!125) (_size!142 (_ BitVec 32)) (_keys!291 array!7) (_values!280 array!9) (_vacant!63 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9 0))(
  ( (Cell!10 (v!11899 LongMapFixedSize!6)) )
))
(declare-datatypes ((Hashable!3 0))(
  ( (HashableExt!2 (__x!376 Int)) )
))
(declare-datatypes ((MutLongMap!3 0))(
  ( (LongMap!3 (underlying!205 Cell!9)) (MutLongMapExt!2 (__x!377 Int)) )
))
(declare-datatypes ((Cell!11 0))(
  ( (Cell!12 (v!11900 MutLongMap!3)) )
))
(declare-datatypes ((MutableMap!3 0))(
  ( (MutableMapExt!2 (__x!378 Int)) (HashMap!3 (underlying!206 Cell!11) (hashF!1863 Hashable!3) (_size!143 (_ BitVec 32)) (defaultValue!149 Int)) )
))
(declare-fun thiss!47677 () MutableMap!3)

(declare-fun valid!13 (MutableMap!3) Bool)

(assert (=> start!868 (= lt!1109 (valid!13 thiss!47677))))

(assert (=> start!868 false))

(declare-fun e!10913 () Bool)

(assert (=> start!868 e!10913))

(declare-fun b!27374 () Bool)

(declare-fun e!10915 () Bool)

(declare-fun tp!18819 () Bool)

(declare-fun mapRes!5 () Bool)

(assert (=> b!27374 (= e!10915 (and tp!18819 mapRes!5))))

(declare-fun condMapEmpty!5 () Bool)

(declare-fun mapDefault!5 () List!125)

(assert (=> b!27374 (= condMapEmpty!5 (= (arr!35 (_values!280 (v!11899 (underlying!205 (v!11900 (underlying!206 thiss!47677)))))) ((as const (Array (_ BitVec 32) List!125)) mapDefault!5)))))

(declare-fun b!27375 () Bool)

(declare-fun e!10910 () Bool)

(declare-fun e!10912 () Bool)

(declare-fun lt!1108 () MutLongMap!3)

(get-info :version)

(assert (=> b!27375 (= e!10910 (and e!10912 ((_ is LongMap!3) lt!1108)))))

(assert (=> b!27375 (= lt!1108 (v!11900 (underlying!206 thiss!47677)))))

(declare-fun mapIsEmpty!5 () Bool)

(assert (=> mapIsEmpty!5 mapRes!5))

(declare-fun b!27376 () Bool)

(assert (=> b!27376 (= e!10912 e!10911)))

(declare-fun tp!18820 () Bool)

(declare-fun tp!18822 () Bool)

(declare-fun array_inv!1 (array!7) Bool)

(declare-fun array_inv!2 (array!9) Bool)

(assert (=> b!27377 (= e!10909 (and tp!18821 tp!18820 tp!18822 (array_inv!1 (_keys!291 (v!11899 (underlying!205 (v!11900 (underlying!206 thiss!47677)))))) (array_inv!2 (_values!280 (v!11899 (underlying!205 (v!11900 (underlying!206 thiss!47677)))))) e!10915))))

(declare-fun mapNonEmpty!5 () Bool)

(declare-fun tp!18818 () Bool)

(declare-fun tp!18823 () Bool)

(assert (=> mapNonEmpty!5 (= mapRes!5 (and tp!18818 tp!18823))))

(declare-fun mapKey!5 () (_ BitVec 32))

(declare-fun mapValue!5 () List!125)

(declare-fun mapRest!5 () (Array (_ BitVec 32) List!125))

(assert (=> mapNonEmpty!5 (= (arr!35 (_values!280 (v!11899 (underlying!205 (v!11900 (underlying!206 thiss!47677)))))) (store mapRest!5 mapKey!5 mapValue!5))))

(assert (=> b!27378 (= e!10913 (and e!10910 tp!18817))))

(assert (= (and b!27374 condMapEmpty!5) mapIsEmpty!5))

(assert (= (and b!27374 (not condMapEmpty!5)) mapNonEmpty!5))

(assert (= b!27377 b!27374))

(assert (= b!27373 b!27377))

(assert (= b!27376 b!27373))

(assert (= (and b!27375 ((_ is LongMap!3) (v!11900 (underlying!206 thiss!47677)))) b!27376))

(assert (= b!27378 b!27375))

(assert (= (and start!868 ((_ is HashMap!3) thiss!47677)) b!27378))

(declare-fun m!4171 () Bool)

(assert (=> start!868 m!4171))

(declare-fun m!4173 () Bool)

(assert (=> b!27377 m!4173))

(declare-fun m!4175 () Bool)

(assert (=> b!27377 m!4175))

(declare-fun m!4177 () Bool)

(assert (=> mapNonEmpty!5 m!4177))

(check-sat (not b!27374) (not b!27377) (not b_next!5) (not mapNonEmpty!5) (not start!868) b_and!5 b_and!7 (not b_next!7))
(check-sat b_and!5 b_and!7 (not b_next!5) (not b_next!7))
