; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110762 () Bool)

(assert start!110762)

(declare-fun b!1256448 () Bool)

(declare-fun b_free!29723 () Bool)

(declare-fun b_next!30427 () Bool)

(assert (=> b!1256448 (= b_free!29723 (not b_next!30427))))

(declare-fun tp!370507 () Bool)

(declare-fun b_and!84867 () Bool)

(assert (=> b!1256448 (= tp!370507 b_and!84867)))

(declare-fun b!1256445 () Bool)

(declare-fun e!799668 () Bool)

(declare-fun e!799667 () Bool)

(assert (=> b!1256445 (= e!799668 e!799667)))

(declare-fun mapIsEmpty!6234 () Bool)

(declare-fun mapRes!6234 () Bool)

(assert (=> mapIsEmpty!6234 mapRes!6234))

(declare-fun res!556338 () Bool)

(declare-fun e!799671 () Bool)

(assert (=> start!110762 (=> (not res!556338) (not e!799671))))

(declare-datatypes ((V!2923 0))(
  ( (V!2924 (val!4174 Int)) )
))
(declare-datatypes ((array!4586 0))(
  ( (array!4587 (arr!2045 (Array (_ BitVec 32) (_ BitVec 64))) (size!9936 (_ BitVec 32))) )
))
(declare-datatypes ((array!4588 0))(
  ( (array!4589 (arr!2046 (Array (_ BitVec 32) V!2923)) (size!9937 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2592 0))(
  ( (LongMapFixedSize!2593 (defaultEntry!1656 Int) (mask!4100 (_ BitVec 32)) (extraKeys!1543 (_ BitVec 32)) (zeroValue!1553 V!2923) (minValue!1553 V!2923) (_size!2690 (_ BitVec 32)) (_keys!1590 array!4586) (_values!1575 array!4588) (_vacant!1357 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5103 0))(
  ( (Cell!5104 (v!20751 LongMapFixedSize!2592)) )
))
(declare-datatypes ((MutLongMap!1296 0))(
  ( (LongMap!1296 (underlying!2814 Cell!5103)) (MutLongMapExt!1295 (__x!8190 Int)) )
))
(declare-fun thiss!47531 () MutLongMap!1296)

(declare-fun valid!1028 (MutLongMap!1296) Bool)

(assert (=> start!110762 (= res!556338 (valid!1028 thiss!47531))))

(assert (=> start!110762 e!799671))

(assert (=> start!110762 e!799668))

(assert (=> start!110762 true))

(declare-fun tp_is_empty!6487 () Bool)

(assert (=> start!110762 tp_is_empty!6487))

(declare-fun b!1256446 () Bool)

(declare-fun e!799670 () Bool)

(assert (=> b!1256446 (= e!799670 (and tp_is_empty!6487 mapRes!6234))))

(declare-fun condMapEmpty!6234 () Bool)

(declare-fun mapDefault!6234 () V!2923)

(assert (=> b!1256446 (= condMapEmpty!6234 (= (arr!2046 (_values!1575 (v!20751 (underlying!2814 thiss!47531)))) ((as const (Array (_ BitVec 32) V!2923)) mapDefault!6234)))))

(declare-fun b!1256447 () Bool)

(declare-fun e!799669 () Bool)

(assert (=> b!1256447 (= e!799667 e!799669)))

(declare-fun mapNonEmpty!6234 () Bool)

(declare-fun tp!370506 () Bool)

(assert (=> mapNonEmpty!6234 (= mapRes!6234 (and tp!370506 tp_is_empty!6487))))

(declare-fun mapValue!6234 () V!2923)

(declare-fun mapKey!6234 () (_ BitVec 32))

(declare-fun mapRest!6234 () (Array (_ BitVec 32) V!2923))

(assert (=> mapNonEmpty!6234 (= (arr!2046 (_values!1575 (v!20751 (underlying!2814 thiss!47531)))) (store mapRest!6234 mapKey!6234 mapValue!6234))))

(declare-fun array_inv!1485 (array!4586) Bool)

(declare-fun array_inv!1486 (array!4588) Bool)

(assert (=> b!1256448 (= e!799669 (and tp!370507 tp_is_empty!6487 (array_inv!1485 (_keys!1590 (v!20751 (underlying!2814 thiss!47531)))) (array_inv!1486 (_values!1575 (v!20751 (underlying!2814 thiss!47531)))) e!799670))))

(declare-fun b!1256449 () Bool)

(assert (=> b!1256449 (= e!799671 false)))

(declare-fun key!7099 () (_ BitVec 64))

(declare-fun v!11775 () V!2923)

(declare-fun lt!420549 () Bool)

(declare-datatypes ((tuple2!12440 0))(
  ( (tuple2!12441 (_1!7067 Bool) (_2!7067 MutLongMap!1296)) )
))
(declare-fun update!70 (MutLongMap!1296 (_ BitVec 64) V!2923) tuple2!12440)

(assert (=> b!1256449 (= lt!420549 (valid!1028 (_2!7067 (update!70 thiss!47531 key!7099 v!11775))))))

(declare-fun b!1256450 () Bool)

(declare-fun res!556339 () Bool)

(assert (=> b!1256450 (=> (not res!556339) (not e!799671))))

(get-info :version)

(assert (=> b!1256450 (= res!556339 (not ((_ is LongMap!1296) thiss!47531)))))

(assert (= (and start!110762 res!556338) b!1256450))

(assert (= (and b!1256450 res!556339) b!1256449))

(assert (= (and b!1256446 condMapEmpty!6234) mapIsEmpty!6234))

(assert (= (and b!1256446 (not condMapEmpty!6234)) mapNonEmpty!6234))

(assert (= b!1256448 b!1256446))

(assert (= b!1256447 b!1256448))

(assert (= b!1256445 b!1256447))

(assert (= (and start!110762 ((_ is LongMap!1296) thiss!47531)) b!1256445))

(declare-fun m!1414823 () Bool)

(assert (=> start!110762 m!1414823))

(declare-fun m!1414825 () Bool)

(assert (=> mapNonEmpty!6234 m!1414825))

(declare-fun m!1414827 () Bool)

(assert (=> b!1256448 m!1414827))

(declare-fun m!1414829 () Bool)

(assert (=> b!1256448 m!1414829))

(declare-fun m!1414831 () Bool)

(assert (=> b!1256449 m!1414831))

(declare-fun m!1414833 () Bool)

(assert (=> b!1256449 m!1414833))

(check-sat (not b_next!30427) tp_is_empty!6487 (not b!1256448) (not start!110762) (not mapNonEmpty!6234) (not b!1256449) b_and!84867)
(check-sat b_and!84867 (not b_next!30427))
