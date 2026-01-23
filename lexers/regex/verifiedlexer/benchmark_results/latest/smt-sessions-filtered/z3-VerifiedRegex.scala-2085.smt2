; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105776 () Bool)

(assert start!105776)

(declare-fun b!1190415 () Bool)

(declare-fun b_free!28787 () Bool)

(declare-fun b_next!29491 () Bool)

(assert (=> b!1190415 (= b_free!28787 (not b_next!29491))))

(declare-fun tp!339720 () Bool)

(declare-fun b_and!81987 () Bool)

(assert (=> b!1190415 (= tp!339720 b_and!81987)))

(declare-fun e!765349 () Bool)

(declare-fun e!765354 () Bool)

(declare-datatypes ((V!2732 0))(
  ( (V!2733 (val!3834 Int)) )
))
(declare-datatypes ((array!4554 0))(
  ( (array!4555 (arr!2029 (Array (_ BitVec 32) (_ BitVec 64))) (size!9458 (_ BitVec 32))) )
))
(declare-datatypes ((array!4556 0))(
  ( (array!4557 (arr!2030 (Array (_ BitVec 32) V!2732)) (size!9459 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2576 0))(
  ( (LongMapFixedSize!2577 (defaultEntry!1648 Int) (mask!3917 (_ BitVec 32)) (extraKeys!1535 (_ BitVec 32)) (zeroValue!1545 V!2732) (minValue!1545 V!2732) (_size!2682 (_ BitVec 32)) (_keys!1582 array!4554) (_values!1567 array!4556) (_vacant!1349 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5087 0))(
  ( (Cell!5088 (v!20563 LongMapFixedSize!2576)) )
))
(declare-datatypes ((MutLongMap!1288 0))(
  ( (LongMap!1288 (underlying!2766 Cell!5087)) (MutLongMapExt!1287 (__x!8044 Int)) )
))
(declare-fun thiss!47226 () MutLongMap!1288)

(declare-fun tp_is_empty!5887 () Bool)

(declare-fun array_inv!1469 (array!4554) Bool)

(declare-fun array_inv!1470 (array!4556) Bool)

(assert (=> b!1190415 (= e!765354 (and tp!339720 tp_is_empty!5887 (array_inv!1469 (_keys!1582 (v!20563 (underlying!2766 thiss!47226)))) (array_inv!1470 (_values!1567 (v!20563 (underlying!2766 thiss!47226)))) e!765349))))

(declare-fun mapNonEmpty!6210 () Bool)

(declare-fun mapRes!6210 () Bool)

(declare-fun tp!339721 () Bool)

(assert (=> mapNonEmpty!6210 (= mapRes!6210 (and tp!339721 tp_is_empty!5887))))

(declare-fun mapRest!6210 () (Array (_ BitVec 32) V!2732))

(declare-fun mapValue!6210 () V!2732)

(declare-fun mapKey!6210 () (_ BitVec 32))

(assert (=> mapNonEmpty!6210 (= (arr!2030 (_values!1567 (v!20563 (underlying!2766 thiss!47226)))) (store mapRest!6210 mapKey!6210 mapValue!6210))))

(declare-fun b!1190416 () Bool)

(declare-fun e!765352 () Bool)

(declare-fun e!765350 () Bool)

(assert (=> b!1190416 (= e!765352 e!765350)))

(declare-fun mapIsEmpty!6210 () Bool)

(assert (=> mapIsEmpty!6210 mapRes!6210))

(declare-fun res!537757 () Bool)

(declare-fun e!765351 () Bool)

(assert (=> start!105776 (=> (not res!537757) (not e!765351))))

(get-info :version)

(assert (=> start!105776 (= res!537757 ((_ is LongMap!1288) thiss!47226))))

(assert (=> start!105776 e!765351))

(assert (=> start!105776 e!765352))

(declare-fun b!1190417 () Bool)

(assert (=> b!1190417 (= e!765350 e!765354)))

(declare-fun b!1190418 () Bool)

(assert (=> b!1190418 (= e!765351 false)))

(declare-fun lt!409178 () Bool)

(declare-fun isEmpty!7205 (LongMapFixedSize!2576) Bool)

(assert (=> b!1190418 (= lt!409178 (isEmpty!7205 (v!20563 (underlying!2766 thiss!47226))))))

(declare-fun b!1190419 () Bool)

(assert (=> b!1190419 (= e!765349 (and tp_is_empty!5887 mapRes!6210))))

(declare-fun condMapEmpty!6210 () Bool)

(declare-fun mapDefault!6210 () V!2732)

(assert (=> b!1190419 (= condMapEmpty!6210 (= (arr!2030 (_values!1567 (v!20563 (underlying!2766 thiss!47226)))) ((as const (Array (_ BitVec 32) V!2732)) mapDefault!6210)))))

(declare-fun b!1190420 () Bool)

(declare-fun res!537758 () Bool)

(assert (=> b!1190420 (=> (not res!537758) (not e!765351))))

(declare-fun valid!1020 (MutLongMap!1288) Bool)

(assert (=> b!1190420 (= res!537758 (valid!1020 thiss!47226))))

(assert (= (and start!105776 res!537757) b!1190420))

(assert (= (and b!1190420 res!537758) b!1190418))

(assert (= (and b!1190419 condMapEmpty!6210) mapIsEmpty!6210))

(assert (= (and b!1190419 (not condMapEmpty!6210)) mapNonEmpty!6210))

(assert (= b!1190415 b!1190419))

(assert (= b!1190417 b!1190415))

(assert (= b!1190416 b!1190417))

(assert (= (and start!105776 ((_ is LongMap!1288) thiss!47226)) b!1190416))

(declare-fun m!1365445 () Bool)

(assert (=> b!1190415 m!1365445))

(declare-fun m!1365447 () Bool)

(assert (=> b!1190415 m!1365447))

(declare-fun m!1365449 () Bool)

(assert (=> mapNonEmpty!6210 m!1365449))

(declare-fun m!1365451 () Bool)

(assert (=> b!1190418 m!1365451))

(declare-fun m!1365453 () Bool)

(assert (=> b!1190420 m!1365453))

(check-sat (not b!1190418) (not b_next!29491) tp_is_empty!5887 (not b!1190415) b_and!81987 (not b!1190420) (not mapNonEmpty!6210))
(check-sat b_and!81987 (not b_next!29491))
