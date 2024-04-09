; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13148 () Bool)

(assert start!13148)

(declare-fun b!115412 () Bool)

(declare-fun b_free!2681 () Bool)

(declare-fun b_next!2681 () Bool)

(assert (=> b!115412 (= b_free!2681 (not b_next!2681))))

(declare-fun tp!10408 () Bool)

(declare-fun b_and!7173 () Bool)

(assert (=> b!115412 (= tp!10408 b_and!7173)))

(declare-fun b!115417 () Bool)

(declare-fun b_free!2683 () Bool)

(declare-fun b_next!2683 () Bool)

(assert (=> b!115417 (= b_free!2683 (not b_next!2683))))

(declare-fun tp!10406 () Bool)

(declare-fun b_and!7175 () Bool)

(assert (=> b!115417 (= tp!10406 b_and!7175)))

(declare-fun mapNonEmpty!4203 () Bool)

(declare-fun mapRes!4204 () Bool)

(declare-fun tp!10407 () Bool)

(declare-fun e!75219 () Bool)

(assert (=> mapNonEmpty!4203 (= mapRes!4204 (and tp!10407 e!75219))))

(declare-datatypes ((V!3323 0))(
  ( (V!3324 (val!1423 Int)) )
))
(declare-datatypes ((array!4516 0))(
  ( (array!4517 (arr!2140 (Array (_ BitVec 32) (_ BitVec 64))) (size!2400 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1035 0))(
  ( (ValueCellFull!1035 (v!3012 V!3323)) (EmptyCell!1035) )
))
(declare-datatypes ((array!4518 0))(
  ( (array!4519 (arr!2141 (Array (_ BitVec 32) ValueCell!1035)) (size!2401 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!978 0))(
  ( (LongMapFixedSize!979 (defaultEntry!2698 Int) (mask!6902 (_ BitVec 32)) (extraKeys!2487 (_ BitVec 32)) (zeroValue!2565 V!3323) (minValue!2565 V!3323) (_size!538 (_ BitVec 32)) (_keys!4420 array!4516) (_values!2681 array!4518) (_vacant!538 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!774 0))(
  ( (Cell!775 (v!3013 LongMapFixedSize!978)) )
))
(declare-datatypes ((LongMap!774 0))(
  ( (LongMap!775 (underlying!398 Cell!774)) )
))
(declare-fun thiss!992 () LongMap!774)

(declare-fun mapValue!4203 () ValueCell!1035)

(declare-fun mapRest!4203 () (Array (_ BitVec 32) ValueCell!1035))

(declare-fun mapKey!4204 () (_ BitVec 32))

(assert (=> mapNonEmpty!4203 (= (arr!2141 (_values!2681 (v!3013 (underlying!398 thiss!992)))) (store mapRest!4203 mapKey!4204 mapValue!4203))))

(declare-fun res!56653 () Bool)

(declare-fun e!75216 () Bool)

(assert (=> start!13148 (=> (not res!56653) (not e!75216))))

(declare-fun valid!454 (LongMap!774) Bool)

(assert (=> start!13148 (= res!56653 (valid!454 thiss!992))))

(assert (=> start!13148 e!75216))

(declare-fun e!75212 () Bool)

(assert (=> start!13148 e!75212))

(assert (=> start!13148 true))

(declare-fun e!75223 () Bool)

(assert (=> start!13148 e!75223))

(declare-fun b!115405 () Bool)

(declare-fun e!75218 () Bool)

(declare-fun tp_is_empty!2757 () Bool)

(assert (=> b!115405 (= e!75218 tp_is_empty!2757)))

(declare-fun b!115406 () Bool)

(declare-fun e!75215 () Bool)

(declare-fun e!75220 () Bool)

(declare-fun mapRes!4203 () Bool)

(assert (=> b!115406 (= e!75215 (and e!75220 mapRes!4203))))

(declare-fun condMapEmpty!4203 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!978)

(declare-fun mapDefault!4204 () ValueCell!1035)

(assert (=> b!115406 (= condMapEmpty!4203 (= (arr!2141 (_values!2681 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1035)) mapDefault!4204)))))

(declare-fun b!115407 () Bool)

(assert (=> b!115407 (= e!75219 tp_is_empty!2757)))

(declare-fun mapNonEmpty!4204 () Bool)

(declare-fun tp!10405 () Bool)

(assert (=> mapNonEmpty!4204 (= mapRes!4203 (and tp!10405 e!75218))))

(declare-fun mapRest!4204 () (Array (_ BitVec 32) ValueCell!1035))

(declare-fun mapKey!4203 () (_ BitVec 32))

(declare-fun mapValue!4204 () ValueCell!1035)

(assert (=> mapNonEmpty!4204 (= (arr!2141 (_values!2681 newMap!16)) (store mapRest!4204 mapKey!4203 mapValue!4204))))

(declare-fun b!115408 () Bool)

(declare-fun e!75222 () Bool)

(assert (=> b!115408 (= e!75212 e!75222)))

(declare-fun mapIsEmpty!4203 () Bool)

(assert (=> mapIsEmpty!4203 mapRes!4203))

(declare-fun b!115409 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!115409 (= e!75216 (and (or (= (select (arr!2140 (_keys!4420 (v!3013 (underlying!398 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2140 (_keys!4420 (v!3013 (underlying!398 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!355 #b00000000000000000000000000000000) (bvsge (bvsub from!355 #b00000000000000000000000000000001) (size!2400 (_keys!4420 (v!3013 (underlying!398 thiss!992)))))))))

(declare-fun b!115410 () Bool)

(declare-fun e!75214 () Bool)

(assert (=> b!115410 (= e!75222 e!75214)))

(declare-fun b!115411 () Bool)

(declare-fun e!75221 () Bool)

(assert (=> b!115411 (= e!75221 tp_is_empty!2757)))

(declare-fun e!75211 () Bool)

(declare-fun array_inv!1295 (array!4516) Bool)

(declare-fun array_inv!1296 (array!4518) Bool)

(assert (=> b!115412 (= e!75214 (and tp!10408 tp_is_empty!2757 (array_inv!1295 (_keys!4420 (v!3013 (underlying!398 thiss!992)))) (array_inv!1296 (_values!2681 (v!3013 (underlying!398 thiss!992)))) e!75211))))

(declare-fun b!115413 () Bool)

(declare-fun res!56650 () Bool)

(assert (=> b!115413 (=> (not res!56650) (not e!75216))))

(declare-fun valid!455 (LongMapFixedSize!978) Bool)

(assert (=> b!115413 (= res!56650 (valid!455 newMap!16))))

(declare-fun b!115414 () Bool)

(declare-fun res!56649 () Bool)

(assert (=> b!115414 (=> (not res!56649) (not e!75216))))

(assert (=> b!115414 (= res!56649 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6902 newMap!16)) (_size!538 (v!3013 (underlying!398 thiss!992)))))))

(declare-fun b!115415 () Bool)

(assert (=> b!115415 (= e!75211 (and e!75221 mapRes!4204))))

(declare-fun condMapEmpty!4204 () Bool)

(declare-fun mapDefault!4203 () ValueCell!1035)

(assert (=> b!115415 (= condMapEmpty!4204 (= (arr!2141 (_values!2681 (v!3013 (underlying!398 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1035)) mapDefault!4203)))))

(declare-fun b!115416 () Bool)

(declare-fun res!56652 () Bool)

(assert (=> b!115416 (=> (not res!56652) (not e!75216))))

(declare-datatypes ((tuple2!2494 0))(
  ( (tuple2!2495 (_1!1257 (_ BitVec 64)) (_2!1257 V!3323)) )
))
(declare-datatypes ((List!1686 0))(
  ( (Nil!1683) (Cons!1682 (h!2282 tuple2!2494) (t!5952 List!1686)) )
))
(declare-datatypes ((ListLongMap!1633 0))(
  ( (ListLongMap!1634 (toList!832 List!1686)) )
))
(declare-fun getCurrentListMap!505 (array!4516 array!4518 (_ BitVec 32) (_ BitVec 32) V!3323 V!3323 (_ BitVec 32) Int) ListLongMap!1633)

(declare-fun map!1330 (LongMapFixedSize!978) ListLongMap!1633)

(assert (=> b!115416 (= res!56652 (= (getCurrentListMap!505 (_keys!4420 (v!3013 (underlying!398 thiss!992))) (_values!2681 (v!3013 (underlying!398 thiss!992))) (mask!6902 (v!3013 (underlying!398 thiss!992))) (extraKeys!2487 (v!3013 (underlying!398 thiss!992))) (zeroValue!2565 (v!3013 (underlying!398 thiss!992))) (minValue!2565 (v!3013 (underlying!398 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2698 (v!3013 (underlying!398 thiss!992)))) (map!1330 newMap!16)))))

(assert (=> b!115417 (= e!75223 (and tp!10406 tp_is_empty!2757 (array_inv!1295 (_keys!4420 newMap!16)) (array_inv!1296 (_values!2681 newMap!16)) e!75215))))

(declare-fun mapIsEmpty!4204 () Bool)

(assert (=> mapIsEmpty!4204 mapRes!4204))

(declare-fun b!115418 () Bool)

(declare-fun res!56651 () Bool)

(assert (=> b!115418 (=> (not res!56651) (not e!75216))))

(assert (=> b!115418 (= res!56651 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2400 (_keys!4420 (v!3013 (underlying!398 thiss!992)))))))))

(declare-fun b!115419 () Bool)

(assert (=> b!115419 (= e!75220 tp_is_empty!2757)))

(assert (= (and start!13148 res!56653) b!115418))

(assert (= (and b!115418 res!56651) b!115413))

(assert (= (and b!115413 res!56650) b!115414))

(assert (= (and b!115414 res!56649) b!115416))

(assert (= (and b!115416 res!56652) b!115409))

(assert (= (and b!115415 condMapEmpty!4204) mapIsEmpty!4204))

(assert (= (and b!115415 (not condMapEmpty!4204)) mapNonEmpty!4203))

(get-info :version)

(assert (= (and mapNonEmpty!4203 ((_ is ValueCellFull!1035) mapValue!4203)) b!115407))

(assert (= (and b!115415 ((_ is ValueCellFull!1035) mapDefault!4203)) b!115411))

(assert (= b!115412 b!115415))

(assert (= b!115410 b!115412))

(assert (= b!115408 b!115410))

(assert (= start!13148 b!115408))

(assert (= (and b!115406 condMapEmpty!4203) mapIsEmpty!4203))

(assert (= (and b!115406 (not condMapEmpty!4203)) mapNonEmpty!4204))

(assert (= (and mapNonEmpty!4204 ((_ is ValueCellFull!1035) mapValue!4204)) b!115405))

(assert (= (and b!115406 ((_ is ValueCellFull!1035) mapDefault!4204)) b!115419))

(assert (= b!115417 b!115406))

(assert (= start!13148 b!115417))

(declare-fun m!131737 () Bool)

(assert (=> b!115409 m!131737))

(declare-fun m!131739 () Bool)

(assert (=> mapNonEmpty!4204 m!131739))

(declare-fun m!131741 () Bool)

(assert (=> start!13148 m!131741))

(declare-fun m!131743 () Bool)

(assert (=> mapNonEmpty!4203 m!131743))

(declare-fun m!131745 () Bool)

(assert (=> b!115416 m!131745))

(declare-fun m!131747 () Bool)

(assert (=> b!115416 m!131747))

(declare-fun m!131749 () Bool)

(assert (=> b!115417 m!131749))

(declare-fun m!131751 () Bool)

(assert (=> b!115417 m!131751))

(declare-fun m!131753 () Bool)

(assert (=> b!115413 m!131753))

(declare-fun m!131755 () Bool)

(assert (=> b!115412 m!131755))

(declare-fun m!131757 () Bool)

(assert (=> b!115412 m!131757))

(check-sat (not b!115417) b_and!7173 (not b_next!2681) (not start!13148) (not b!115416) (not b_next!2683) (not b!115412) tp_is_empty!2757 b_and!7175 (not mapNonEmpty!4203) (not mapNonEmpty!4204) (not b!115413))
(check-sat b_and!7173 b_and!7175 (not b_next!2681) (not b_next!2683))
