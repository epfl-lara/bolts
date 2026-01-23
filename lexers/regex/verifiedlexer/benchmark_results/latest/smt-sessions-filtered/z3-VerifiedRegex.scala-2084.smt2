; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105764 () Bool)

(assert start!105764)

(declare-fun b!1190369 () Bool)

(declare-fun b_free!28783 () Bool)

(declare-fun b_next!29487 () Bool)

(assert (=> b!1190369 (= b_free!28783 (not b_next!29487))))

(declare-fun tp!339706 () Bool)

(declare-fun b_and!81983 () Bool)

(assert (=> b!1190369 (= tp!339706 b_and!81983)))

(declare-fun mapIsEmpty!6201 () Bool)

(declare-fun mapRes!6201 () Bool)

(assert (=> mapIsEmpty!6201 mapRes!6201))

(declare-fun mapNonEmpty!6201 () Bool)

(declare-fun tp!339705 () Bool)

(declare-fun tp_is_empty!5883 () Bool)

(assert (=> mapNonEmpty!6201 (= mapRes!6201 (and tp!339705 tp_is_empty!5883))))

(declare-datatypes ((V!2727 0))(
  ( (V!2728 (val!3832 Int)) )
))
(declare-datatypes ((array!4544 0))(
  ( (array!4545 (arr!2025 (Array (_ BitVec 32) (_ BitVec 64))) (size!9454 (_ BitVec 32))) )
))
(declare-datatypes ((array!4546 0))(
  ( (array!4547 (arr!2026 (Array (_ BitVec 32) V!2727)) (size!9455 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2572 0))(
  ( (LongMapFixedSize!2573 (defaultEntry!1646 Int) (mask!3914 (_ BitVec 32)) (extraKeys!1533 (_ BitVec 32)) (zeroValue!1543 V!2727) (minValue!1543 V!2727) (_size!2680 (_ BitVec 32)) (_keys!1580 array!4544) (_values!1565 array!4546) (_vacant!1347 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5083 0))(
  ( (Cell!5084 (v!20561 LongMapFixedSize!2572)) )
))
(declare-datatypes ((MutLongMap!1286 0))(
  ( (LongMap!1286 (underlying!2764 Cell!5083)) (MutLongMapExt!1285 (__x!8042 Int)) )
))
(declare-fun thiss!47226 () MutLongMap!1286)

(declare-fun mapRest!6201 () (Array (_ BitVec 32) V!2727))

(declare-fun mapValue!6201 () V!2727)

(declare-fun mapKey!6201 () (_ BitVec 32))

(assert (=> mapNonEmpty!6201 (= (arr!2026 (_values!1565 (v!20561 (underlying!2764 thiss!47226)))) (store mapRest!6201 mapKey!6201 mapValue!6201))))

(declare-fun b!1190368 () Bool)

(declare-fun e!765310 () Bool)

(assert (=> b!1190368 (= e!765310 (and tp_is_empty!5883 mapRes!6201))))

(declare-fun condMapEmpty!6201 () Bool)

(declare-fun mapDefault!6201 () V!2727)

(assert (=> b!1190368 (= condMapEmpty!6201 (= (arr!2026 (_values!1565 (v!20561 (underlying!2764 thiss!47226)))) ((as const (Array (_ BitVec 32) V!2727)) mapDefault!6201)))))

(declare-fun res!537737 () Bool)

(declare-fun e!765313 () Bool)

(assert (=> start!105764 (=> (not res!537737) (not e!765313))))

(get-info :version)

(assert (=> start!105764 (= res!537737 ((_ is LongMap!1286) thiss!47226))))

(assert (=> start!105764 e!765313))

(declare-fun e!765314 () Bool)

(assert (=> start!105764 e!765314))

(declare-fun e!765312 () Bool)

(declare-fun array_inv!1465 (array!4544) Bool)

(declare-fun array_inv!1466 (array!4546) Bool)

(assert (=> b!1190369 (= e!765312 (and tp!339706 tp_is_empty!5883 (array_inv!1465 (_keys!1580 (v!20561 (underlying!2764 thiss!47226)))) (array_inv!1466 (_values!1565 (v!20561 (underlying!2764 thiss!47226)))) e!765310))))

(declare-fun b!1190370 () Bool)

(declare-fun res!537736 () Bool)

(assert (=> b!1190370 (=> (not res!537736) (not e!765313))))

(declare-fun valid!1017 (MutLongMap!1286) Bool)

(assert (=> b!1190370 (= res!537736 (valid!1017 thiss!47226))))

(declare-fun b!1190371 () Bool)

(declare-fun e!765315 () Bool)

(assert (=> b!1190371 (= e!765314 e!765315)))

(declare-fun b!1190372 () Bool)

(declare-fun valid!1018 (LongMapFixedSize!2572) Bool)

(assert (=> b!1190372 (= e!765313 (not (valid!1018 (v!20561 (underlying!2764 thiss!47226)))))))

(declare-fun b!1190373 () Bool)

(assert (=> b!1190373 (= e!765315 e!765312)))

(assert (= (and start!105764 res!537737) b!1190370))

(assert (= (and b!1190370 res!537736) b!1190372))

(assert (= (and b!1190368 condMapEmpty!6201) mapIsEmpty!6201))

(assert (= (and b!1190368 (not condMapEmpty!6201)) mapNonEmpty!6201))

(assert (= b!1190369 b!1190368))

(assert (= b!1190373 b!1190369))

(assert (= b!1190371 b!1190373))

(assert (= (and start!105764 ((_ is LongMap!1286) thiss!47226)) b!1190371))

(declare-fun m!1365415 () Bool)

(assert (=> mapNonEmpty!6201 m!1365415))

(declare-fun m!1365417 () Bool)

(assert (=> b!1190369 m!1365417))

(declare-fun m!1365419 () Bool)

(assert (=> b!1190369 m!1365419))

(declare-fun m!1365421 () Bool)

(assert (=> b!1190370 m!1365421))

(declare-fun m!1365423 () Bool)

(assert (=> b!1190372 m!1365423))

(check-sat (not b!1190369) (not mapNonEmpty!6201) tp_is_empty!5883 b_and!81983 (not b!1190370) (not b_next!29487) (not b!1190372))
(check-sat b_and!81983 (not b_next!29487))
(get-model)

(declare-fun d!340183 () Bool)

(assert (=> d!340183 (= (valid!1017 thiss!47226) (valid!1018 (v!20561 (underlying!2764 thiss!47226))))))

(declare-fun bs!287854 () Bool)

(assert (= bs!287854 d!340183))

(assert (=> bs!287854 m!1365423))

(assert (=> b!1190370 d!340183))

(declare-fun d!340185 () Bool)

(assert (=> d!340185 (= (array_inv!1465 (_keys!1580 (v!20561 (underlying!2764 thiss!47226)))) (bvsge (size!9454 (_keys!1580 (v!20561 (underlying!2764 thiss!47226)))) #b00000000000000000000000000000000))))

(assert (=> b!1190369 d!340185))

(declare-fun d!340187 () Bool)

(assert (=> d!340187 (= (array_inv!1466 (_values!1565 (v!20561 (underlying!2764 thiss!47226)))) (bvsge (size!9455 (_values!1565 (v!20561 (underlying!2764 thiss!47226)))) #b00000000000000000000000000000000))))

(assert (=> b!1190369 d!340187))

(declare-fun d!340189 () Bool)

(declare-fun res!537744 () Bool)

(declare-fun e!765318 () Bool)

(assert (=> d!340189 (=> (not res!537744) (not e!765318))))

(declare-fun simpleValid!4 (LongMapFixedSize!2572) Bool)

(assert (=> d!340189 (= res!537744 (simpleValid!4 (v!20561 (underlying!2764 thiss!47226))))))

(assert (=> d!340189 (= (valid!1018 (v!20561 (underlying!2764 thiss!47226))) e!765318)))

(declare-fun b!1190380 () Bool)

(declare-fun res!537745 () Bool)

(assert (=> b!1190380 (=> (not res!537745) (not e!765318))))

(declare-fun arrayCountValidKeys!0 (array!4544 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1190380 (= res!537745 (= (arrayCountValidKeys!0 (_keys!1580 (v!20561 (underlying!2764 thiss!47226))) #b00000000000000000000000000000000 (size!9454 (_keys!1580 (v!20561 (underlying!2764 thiss!47226))))) (_size!2680 (v!20561 (underlying!2764 thiss!47226)))))))

(declare-fun b!1190381 () Bool)

(declare-fun res!537746 () Bool)

(assert (=> b!1190381 (=> (not res!537746) (not e!765318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4544 (_ BitVec 32)) Bool)

(assert (=> b!1190381 (= res!537746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!1580 (v!20561 (underlying!2764 thiss!47226))) (mask!3914 (v!20561 (underlying!2764 thiss!47226)))))))

(declare-fun b!1190382 () Bool)

(declare-datatypes ((List!12015 0))(
  ( (Nil!11991) (Cons!11991 (h!17392 (_ BitVec 64)) (t!112221 List!12015)) )
))
(declare-fun arrayNoDuplicates!0 (array!4544 (_ BitVec 32) List!12015) Bool)

(assert (=> b!1190382 (= e!765318 (arrayNoDuplicates!0 (_keys!1580 (v!20561 (underlying!2764 thiss!47226))) #b00000000000000000000000000000000 Nil!11991))))

(assert (= (and d!340189 res!537744) b!1190380))

(assert (= (and b!1190380 res!537745) b!1190381))

(assert (= (and b!1190381 res!537746) b!1190382))

(declare-fun m!1365425 () Bool)

(assert (=> d!340189 m!1365425))

(declare-fun m!1365427 () Bool)

(assert (=> b!1190380 m!1365427))

(declare-fun m!1365429 () Bool)

(assert (=> b!1190381 m!1365429))

(declare-fun m!1365431 () Bool)

(assert (=> b!1190382 m!1365431))

(assert (=> b!1190372 d!340189))

(declare-fun condMapEmpty!6204 () Bool)

(declare-fun mapDefault!6204 () V!2727)

(assert (=> mapNonEmpty!6201 (= condMapEmpty!6204 (= mapRest!6201 ((as const (Array (_ BitVec 32) V!2727)) mapDefault!6204)))))

(declare-fun mapRes!6204 () Bool)

(assert (=> mapNonEmpty!6201 (= tp!339705 (and tp_is_empty!5883 mapRes!6204))))

(declare-fun mapIsEmpty!6204 () Bool)

(assert (=> mapIsEmpty!6204 mapRes!6204))

(declare-fun mapNonEmpty!6204 () Bool)

(declare-fun tp!339709 () Bool)

(assert (=> mapNonEmpty!6204 (= mapRes!6204 (and tp!339709 tp_is_empty!5883))))

(declare-fun mapValue!6204 () V!2727)

(declare-fun mapRest!6204 () (Array (_ BitVec 32) V!2727))

(declare-fun mapKey!6204 () (_ BitVec 32))

(assert (=> mapNonEmpty!6204 (= mapRest!6201 (store mapRest!6204 mapKey!6204 mapValue!6204))))

(assert (= (and mapNonEmpty!6201 condMapEmpty!6204) mapIsEmpty!6204))

(assert (= (and mapNonEmpty!6201 (not condMapEmpty!6204)) mapNonEmpty!6204))

(declare-fun m!1365433 () Bool)

(assert (=> mapNonEmpty!6204 m!1365433))

(check-sat (not d!340189) tp_is_empty!5883 (not d!340183) (not b!1190382) (not b!1190380) (not mapNonEmpty!6204) (not b!1190381) b_and!81983 (not b_next!29487))
(check-sat b_and!81983 (not b_next!29487))
