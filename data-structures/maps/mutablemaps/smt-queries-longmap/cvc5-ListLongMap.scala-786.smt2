; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18738 () Bool)

(assert start!18738)

(declare-fun b!185011 () Bool)

(declare-fun b_free!4555 () Bool)

(declare-fun b_next!4555 () Bool)

(assert (=> b!185011 (= b_free!4555 (not b_next!4555))))

(declare-fun tp!16455 () Bool)

(declare-fun b_and!11169 () Bool)

(assert (=> b!185011 (= tp!16455 b_and!11169)))

(declare-fun b!185002 () Bool)

(declare-fun res!87520 () Bool)

(declare-fun e!121763 () Bool)

(assert (=> b!185002 (=> (not res!87520) (not e!121763))))

(declare-datatypes ((V!5417 0))(
  ( (V!5418 (val!2208 Int)) )
))
(declare-datatypes ((ValueCell!1820 0))(
  ( (ValueCellFull!1820 (v!4112 V!5417)) (EmptyCell!1820) )
))
(declare-datatypes ((array!7856 0))(
  ( (array!7857 (arr!3710 (Array (_ BitVec 32) (_ BitVec 64))) (size!4026 (_ BitVec 32))) )
))
(declare-datatypes ((array!7858 0))(
  ( (array!7859 (arr!3711 (Array (_ BitVec 32) ValueCell!1820)) (size!4027 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2548 0))(
  ( (LongMapFixedSize!2549 (defaultEntry!3773 Int) (mask!8871 (_ BitVec 32)) (extraKeys!3510 (_ BitVec 32)) (zeroValue!3614 V!5417) (minValue!3614 V!5417) (_size!1323 (_ BitVec 32)) (_keys!5708 array!7856) (_values!3756 array!7858) (_vacant!1323 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2548)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3434 0))(
  ( (tuple2!3435 (_1!1727 (_ BitVec 64)) (_2!1727 V!5417)) )
))
(declare-datatypes ((List!2371 0))(
  ( (Nil!2368) (Cons!2367 (h!3000 tuple2!3434) (t!7257 List!2371)) )
))
(declare-datatypes ((ListLongMap!2365 0))(
  ( (ListLongMap!2366 (toList!1198 List!2371)) )
))
(declare-fun contains!1286 (ListLongMap!2365 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!841 (array!7856 array!7858 (_ BitVec 32) (_ BitVec 32) V!5417 V!5417 (_ BitVec 32) Int) ListLongMap!2365)

(assert (=> b!185002 (= res!87520 (not (contains!1286 (getCurrentListMap!841 (_keys!5708 thiss!1248) (_values!3756 thiss!1248) (mask!8871 thiss!1248) (extraKeys!3510 thiss!1248) (zeroValue!3614 thiss!1248) (minValue!3614 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3773 thiss!1248)) key!828)))))

(declare-fun res!87517 () Bool)

(declare-fun e!121767 () Bool)

(assert (=> start!18738 (=> (not res!87517) (not e!121767))))

(declare-fun valid!1044 (LongMapFixedSize!2548) Bool)

(assert (=> start!18738 (= res!87517 (valid!1044 thiss!1248))))

(assert (=> start!18738 e!121767))

(declare-fun e!121765 () Bool)

(assert (=> start!18738 e!121765))

(assert (=> start!18738 true))

(declare-fun b!185003 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7856 (_ BitVec 32)) Bool)

(assert (=> b!185003 (= e!121763 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5708 thiss!1248) (mask!8871 thiss!1248))))))

(declare-fun mapNonEmpty!7443 () Bool)

(declare-fun mapRes!7443 () Bool)

(declare-fun tp!16454 () Bool)

(declare-fun e!121764 () Bool)

(assert (=> mapNonEmpty!7443 (= mapRes!7443 (and tp!16454 e!121764))))

(declare-fun mapKey!7443 () (_ BitVec 32))

(declare-fun mapValue!7443 () ValueCell!1820)

(declare-fun mapRest!7443 () (Array (_ BitVec 32) ValueCell!1820))

(assert (=> mapNonEmpty!7443 (= (arr!3711 (_values!3756 thiss!1248)) (store mapRest!7443 mapKey!7443 mapValue!7443))))

(declare-fun b!185004 () Bool)

(declare-fun res!87521 () Bool)

(assert (=> b!185004 (=> (not res!87521) (not e!121767))))

(assert (=> b!185004 (= res!87521 (not (= key!828 (bvneg key!828))))))

(declare-fun b!185005 () Bool)

(declare-fun e!121762 () Bool)

(declare-fun tp_is_empty!4327 () Bool)

(assert (=> b!185005 (= e!121762 tp_is_empty!4327)))

(declare-fun b!185006 () Bool)

(declare-fun e!121766 () Bool)

(assert (=> b!185006 (= e!121766 (and e!121762 mapRes!7443))))

(declare-fun condMapEmpty!7443 () Bool)

(declare-fun mapDefault!7443 () ValueCell!1820)

