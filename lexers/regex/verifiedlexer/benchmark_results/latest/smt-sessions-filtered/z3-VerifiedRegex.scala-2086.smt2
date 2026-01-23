; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105780 () Bool)

(assert start!105780)

(declare-fun b!1190446 () Bool)

(declare-fun b_free!28791 () Bool)

(declare-fun b_next!29495 () Bool)

(assert (=> b!1190446 (= b_free!28791 (not b_next!29495))))

(declare-fun tp!339733 () Bool)

(declare-fun b_and!81991 () Bool)

(assert (=> b!1190446 (= tp!339733 b_and!81991)))

(declare-fun e!765385 () Bool)

(declare-datatypes ((V!2737 0))(
  ( (V!2738 (val!3836 Int)) )
))
(declare-datatypes ((array!4562 0))(
  ( (array!4563 (arr!2033 (Array (_ BitVec 32) (_ BitVec 64))) (size!9462 (_ BitVec 32))) )
))
(declare-datatypes ((array!4564 0))(
  ( (array!4565 (arr!2034 (Array (_ BitVec 32) V!2737)) (size!9463 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2580 0))(
  ( (LongMapFixedSize!2581 (defaultEntry!1650 Int) (mask!3920 (_ BitVec 32)) (extraKeys!1537 (_ BitVec 32)) (zeroValue!1547 V!2737) (minValue!1547 V!2737) (_size!2684 (_ BitVec 32)) (_keys!1584 array!4562) (_values!1569 array!4564) (_vacant!1351 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5091 0))(
  ( (Cell!5092 (v!20565 LongMapFixedSize!2580)) )
))
(declare-datatypes ((MutLongMap!1290 0))(
  ( (LongMap!1290 (underlying!2768 Cell!5091)) (MutLongMapExt!1289 (__x!8046 Int)) )
))
(declare-fun thiss!47226 () MutLongMap!1290)

(declare-fun e!765386 () Bool)

(declare-fun tp_is_empty!5891 () Bool)

(declare-fun array_inv!1473 (array!4562) Bool)

(declare-fun array_inv!1474 (array!4564) Bool)

(assert (=> b!1190446 (= e!765385 (and tp!339733 tp_is_empty!5891 (array_inv!1473 (_keys!1584 (v!20565 (underlying!2768 thiss!47226)))) (array_inv!1474 (_values!1569 (v!20565 (underlying!2768 thiss!47226)))) e!765386))))

(declare-fun b!1190447 () Bool)

(declare-fun e!765389 () Bool)

(assert (=> b!1190447 (= e!765389 false)))

(declare-fun lt!409184 () Bool)

(declare-fun valid!1022 (MutLongMap!1290) Bool)

(assert (=> b!1190447 (= lt!409184 (valid!1022 thiss!47226))))

(declare-fun res!537764 () Bool)

(assert (=> start!105780 (=> (not res!537764) (not e!765389))))

(get-info :version)

(assert (=> start!105780 (= res!537764 ((_ is LongMap!1290) thiss!47226))))

(assert (=> start!105780 e!765389))

(declare-fun e!765388 () Bool)

(assert (=> start!105780 e!765388))

(declare-fun mapNonEmpty!6216 () Bool)

(declare-fun mapRes!6216 () Bool)

(declare-fun tp!339732 () Bool)

(assert (=> mapNonEmpty!6216 (= mapRes!6216 (and tp!339732 tp_is_empty!5891))))

(declare-fun mapRest!6216 () (Array (_ BitVec 32) V!2737))

(declare-fun mapKey!6216 () (_ BitVec 32))

(declare-fun mapValue!6216 () V!2737)

(assert (=> mapNonEmpty!6216 (= (arr!2034 (_values!1569 (v!20565 (underlying!2768 thiss!47226)))) (store mapRest!6216 mapKey!6216 mapValue!6216))))

(declare-fun mapIsEmpty!6216 () Bool)

(assert (=> mapIsEmpty!6216 mapRes!6216))

(declare-fun b!1190448 () Bool)

(assert (=> b!1190448 (= e!765386 (and tp_is_empty!5891 mapRes!6216))))

(declare-fun condMapEmpty!6216 () Bool)

(declare-fun mapDefault!6216 () V!2737)

(assert (=> b!1190448 (= condMapEmpty!6216 (= (arr!2034 (_values!1569 (v!20565 (underlying!2768 thiss!47226)))) ((as const (Array (_ BitVec 32) V!2737)) mapDefault!6216)))))

(declare-fun b!1190449 () Bool)

(declare-fun e!765387 () Bool)

(assert (=> b!1190449 (= e!765388 e!765387)))

(declare-fun b!1190450 () Bool)

(assert (=> b!1190450 (= e!765387 e!765385)))

(assert (= (and start!105780 res!537764) b!1190447))

(assert (= (and b!1190448 condMapEmpty!6216) mapIsEmpty!6216))

(assert (= (and b!1190448 (not condMapEmpty!6216)) mapNonEmpty!6216))

(assert (= b!1190446 b!1190448))

(assert (= b!1190450 b!1190446))

(assert (= b!1190449 b!1190450))

(assert (= (and start!105780 ((_ is LongMap!1290) thiss!47226)) b!1190449))

(declare-fun m!1365463 () Bool)

(assert (=> b!1190446 m!1365463))

(declare-fun m!1365465 () Bool)

(assert (=> b!1190446 m!1365465))

(declare-fun m!1365467 () Bool)

(assert (=> b!1190447 m!1365467))

(declare-fun m!1365469 () Bool)

(assert (=> mapNonEmpty!6216 m!1365469))

(check-sat tp_is_empty!5891 (not mapNonEmpty!6216) (not b!1190446) (not b!1190447) b_and!81991 (not b_next!29495))
(check-sat b_and!81991 (not b_next!29495))
