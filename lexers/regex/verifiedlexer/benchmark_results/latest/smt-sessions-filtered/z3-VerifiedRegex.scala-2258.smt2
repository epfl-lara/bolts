; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110754 () Bool)

(assert start!110754)

(declare-fun b!1256363 () Bool)

(declare-fun b_free!29715 () Bool)

(declare-fun b_next!30419 () Bool)

(assert (=> b!1256363 (= b_free!29715 (not b_next!30419))))

(declare-fun tp!370482 () Bool)

(declare-fun b_and!84859 () Bool)

(assert (=> b!1256363 (= tp!370482 b_and!84859)))

(declare-fun mapNonEmpty!6222 () Bool)

(declare-fun mapRes!6222 () Bool)

(declare-fun tp!370483 () Bool)

(declare-fun tp_is_empty!6479 () Bool)

(assert (=> mapNonEmpty!6222 (= mapRes!6222 (and tp!370483 tp_is_empty!6479))))

(declare-datatypes ((V!2913 0))(
  ( (V!2914 (val!4170 Int)) )
))
(declare-datatypes ((array!4570 0))(
  ( (array!4571 (arr!2037 (Array (_ BitVec 32) (_ BitVec 64))) (size!9928 (_ BitVec 32))) )
))
(declare-datatypes ((array!4572 0))(
  ( (array!4573 (arr!2038 (Array (_ BitVec 32) V!2913)) (size!9929 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2584 0))(
  ( (LongMapFixedSize!2585 (defaultEntry!1652 Int) (mask!4094 (_ BitVec 32)) (extraKeys!1539 (_ BitVec 32)) (zeroValue!1549 V!2913) (minValue!1549 V!2913) (_size!2686 (_ BitVec 32)) (_keys!1586 array!4570) (_values!1571 array!4572) (_vacant!1353 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5095 0))(
  ( (Cell!5096 (v!20747 LongMapFixedSize!2584)) )
))
(declare-datatypes ((MutLongMap!1292 0))(
  ( (LongMap!1292 (underlying!2810 Cell!5095)) (MutLongMapExt!1291 (__x!8186 Int)) )
))
(declare-fun thiss!47531 () MutLongMap!1292)

(declare-fun mapValue!6222 () V!2913)

(declare-fun mapRest!6222 () (Array (_ BitVec 32) V!2913))

(declare-fun mapKey!6222 () (_ BitVec 32))

(assert (=> mapNonEmpty!6222 (= (arr!2038 (_values!1571 (v!20747 (underlying!2810 thiss!47531)))) (store mapRest!6222 mapKey!6222 mapValue!6222))))

(declare-fun mapIsEmpty!6222 () Bool)

(assert (=> mapIsEmpty!6222 mapRes!6222))

(declare-fun b!1256361 () Bool)

(declare-fun res!556303 () Bool)

(declare-fun e!799592 () Bool)

(assert (=> b!1256361 (=> (not res!556303) (not e!799592))))

(get-info :version)

(assert (=> b!1256361 (= res!556303 ((_ is LongMap!1292) thiss!47531))))

(declare-fun b!1256362 () Bool)

(declare-fun e!799593 () Bool)

(declare-fun e!799588 () Bool)

(assert (=> b!1256362 (= e!799593 e!799588)))

(declare-fun res!556302 () Bool)

(assert (=> start!110754 (=> (not res!556302) (not e!799592))))

(declare-fun valid!1024 (MutLongMap!1292) Bool)

(assert (=> start!110754 (= res!556302 (valid!1024 thiss!47531))))

(assert (=> start!110754 e!799592))

(declare-fun e!799590 () Bool)

(assert (=> start!110754 e!799590))

(assert (=> start!110754 true))

(assert (=> start!110754 tp_is_empty!6479))

(declare-fun e!799591 () Bool)

(declare-fun array_inv!1477 (array!4570) Bool)

(declare-fun array_inv!1478 (array!4572) Bool)

(assert (=> b!1256363 (= e!799588 (and tp!370482 tp_is_empty!6479 (array_inv!1477 (_keys!1586 (v!20747 (underlying!2810 thiss!47531)))) (array_inv!1478 (_values!1571 (v!20747 (underlying!2810 thiss!47531)))) e!799591))))

(declare-fun b!1256364 () Bool)

(assert (=> b!1256364 (= e!799590 e!799593)))

(declare-fun b!1256365 () Bool)

(assert (=> b!1256365 (= e!799592 false)))

(declare-fun key!7099 () (_ BitVec 64))

(declare-fun lt!420531 () Bool)

(declare-fun v!11775 () V!2913)

(declare-datatypes ((tuple2!12428 0))(
  ( (tuple2!12429 (_1!7061 Bool) (_2!7061 MutLongMap!1292)) )
))
(declare-fun update!66 (MutLongMap!1292 (_ BitVec 64) V!2913) tuple2!12428)

(assert (=> b!1256365 (= lt!420531 (valid!1024 (_2!7061 (update!66 thiss!47531 key!7099 v!11775))))))

(declare-fun b!1256366 () Bool)

(assert (=> b!1256366 (= e!799591 (and tp_is_empty!6479 mapRes!6222))))

(declare-fun condMapEmpty!6222 () Bool)

(declare-fun mapDefault!6222 () V!2913)

(assert (=> b!1256366 (= condMapEmpty!6222 (= (arr!2038 (_values!1571 (v!20747 (underlying!2810 thiss!47531)))) ((as const (Array (_ BitVec 32) V!2913)) mapDefault!6222)))))

(assert (= (and start!110754 res!556302) b!1256361))

(assert (= (and b!1256361 res!556303) b!1256365))

(assert (= (and b!1256366 condMapEmpty!6222) mapIsEmpty!6222))

(assert (= (and b!1256366 (not condMapEmpty!6222)) mapNonEmpty!6222))

(assert (= b!1256363 b!1256366))

(assert (= b!1256362 b!1256363))

(assert (= b!1256364 b!1256362))

(assert (= (and start!110754 ((_ is LongMap!1292) thiss!47531)) b!1256364))

(declare-fun m!1414767 () Bool)

(assert (=> mapNonEmpty!6222 m!1414767))

(declare-fun m!1414769 () Bool)

(assert (=> start!110754 m!1414769))

(declare-fun m!1414771 () Bool)

(assert (=> b!1256363 m!1414771))

(declare-fun m!1414773 () Bool)

(assert (=> b!1256363 m!1414773))

(declare-fun m!1414775 () Bool)

(assert (=> b!1256365 m!1414775))

(declare-fun m!1414777 () Bool)

(assert (=> b!1256365 m!1414777))

(check-sat (not start!110754) (not b_next!30419) (not mapNonEmpty!6222) (not b!1256363) b_and!84859 tp_is_empty!6479 (not b!1256365))
(check-sat b_and!84859 (not b_next!30419))
