; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14596 () Bool)

(assert start!14596)

(declare-fun b!138181 () Bool)

(declare-fun b_free!2985 () Bool)

(declare-fun b_next!2985 () Bool)

(assert (=> b!138181 (= b_free!2985 (not b_next!2985))))

(declare-fun tp!11416 () Bool)

(declare-fun b_and!8625 () Bool)

(assert (=> b!138181 (= tp!11416 b_and!8625)))

(declare-fun b!138169 () Bool)

(declare-fun b_free!2987 () Bool)

(declare-fun b_next!2987 () Bool)

(assert (=> b!138169 (= b_free!2987 (not b_next!2987))))

(declare-fun tp!11417 () Bool)

(declare-fun b_and!8627 () Bool)

(assert (=> b!138169 (= tp!11417 b_and!8627)))

(declare-fun mapIsEmpty!4757 () Bool)

(declare-fun mapRes!4758 () Bool)

(assert (=> mapIsEmpty!4757 mapRes!4758))

(declare-fun b!138166 () Bool)

(declare-fun res!66181 () Bool)

(declare-fun e!90049 () Bool)

(assert (=> b!138166 (=> (not res!66181) (not e!90049))))

(declare-datatypes ((V!3525 0))(
  ( (V!3526 (val!1499 Int)) )
))
(declare-datatypes ((array!4848 0))(
  ( (array!4849 (arr!2292 (Array (_ BitVec 32) (_ BitVec 64))) (size!2563 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1111 0))(
  ( (ValueCellFull!1111 (v!3249 V!3525)) (EmptyCell!1111) )
))
(declare-datatypes ((array!4850 0))(
  ( (array!4851 (arr!2293 (Array (_ BitVec 32) ValueCell!1111)) (size!2564 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1130 0))(
  ( (LongMapFixedSize!1131 (defaultEntry!2917 Int) (mask!7245 (_ BitVec 32)) (extraKeys!2674 (_ BitVec 32)) (zeroValue!2768 V!3525) (minValue!2768 V!3525) (_size!614 (_ BitVec 32)) (_keys!4674 array!4848) (_values!2900 array!4850) (_vacant!614 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1130)

(declare-fun valid!542 (LongMapFixedSize!1130) Bool)

(assert (=> b!138166 (= res!66181 (valid!542 newMap!16))))

(declare-fun b!138167 () Bool)

(declare-fun e!90053 () Bool)

(declare-fun e!90057 () Bool)

(assert (=> b!138167 (= e!90053 e!90057)))

(declare-fun res!66182 () Bool)

(assert (=> start!14596 (=> (not res!66182) (not e!90049))))

(declare-datatypes ((Cell!918 0))(
  ( (Cell!919 (v!3250 LongMapFixedSize!1130)) )
))
(declare-datatypes ((LongMap!918 0))(
  ( (LongMap!919 (underlying!470 Cell!918)) )
))
(declare-fun thiss!992 () LongMap!918)

(declare-fun valid!543 (LongMap!918) Bool)

(assert (=> start!14596 (= res!66182 (valid!543 thiss!992))))

(assert (=> start!14596 e!90049))

(assert (=> start!14596 e!90053))

(assert (=> start!14596 true))

(declare-fun e!90048 () Bool)

(assert (=> start!14596 e!90048))

(declare-fun b!138168 () Bool)

(declare-fun e!90056 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!138168 (= e!90056 (not (or (bvsge (size!2563 (_keys!4674 (v!3250 (underlying!470 thiss!992)))) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!2563 (_keys!4674 (v!3250 (underlying!470 thiss!992))))) (bvsle from!355 (size!2563 (_keys!4674 (v!3250 (underlying!470 thiss!992))))))))))

(declare-fun arrayContainsKey!0 (array!4848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!138168 (arrayContainsKey!0 (_keys!4674 (v!3250 (underlying!470 thiss!992))) (select (arr!2292 (_keys!4674 (v!3250 (underlying!470 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!4364 0))(
  ( (Unit!4365) )
))
(declare-fun lt!72275 () Unit!4364)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!139 (array!4848 array!4850 (_ BitVec 32) (_ BitVec 32) V!3525 V!3525 (_ BitVec 64) (_ BitVec 32) Int) Unit!4364)

(assert (=> b!138168 (= lt!72275 (lemmaListMapContainsThenArrayContainsFrom!139 (_keys!4674 (v!3250 (underlying!470 thiss!992))) (_values!2900 (v!3250 (underlying!470 thiss!992))) (mask!7245 (v!3250 (underlying!470 thiss!992))) (extraKeys!2674 (v!3250 (underlying!470 thiss!992))) (zeroValue!2768 (v!3250 (underlying!470 thiss!992))) (minValue!2768 (v!3250 (underlying!470 thiss!992))) (select (arr!2292 (_keys!4674 (v!3250 (underlying!470 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2917 (v!3250 (underlying!470 thiss!992)))))))

(declare-fun e!90055 () Bool)

(declare-fun tp_is_empty!2909 () Bool)

(declare-fun array_inv!1417 (array!4848) Bool)

(declare-fun array_inv!1418 (array!4850) Bool)

(assert (=> b!138169 (= e!90048 (and tp!11417 tp_is_empty!2909 (array_inv!1417 (_keys!4674 newMap!16)) (array_inv!1418 (_values!2900 newMap!16)) e!90055))))

(declare-fun mapIsEmpty!4758 () Bool)

(declare-fun mapRes!4757 () Bool)

(assert (=> mapIsEmpty!4758 mapRes!4757))

(declare-fun mapNonEmpty!4757 () Bool)

(declare-fun tp!11418 () Bool)

(declare-fun e!90050 () Bool)

(assert (=> mapNonEmpty!4757 (= mapRes!4758 (and tp!11418 e!90050))))

(declare-fun mapKey!4757 () (_ BitVec 32))

(declare-fun mapValue!4757 () ValueCell!1111)

(declare-fun mapRest!4758 () (Array (_ BitVec 32) ValueCell!1111))

(assert (=> mapNonEmpty!4757 (= (arr!2293 (_values!2900 (v!3250 (underlying!470 thiss!992)))) (store mapRest!4758 mapKey!4757 mapValue!4757))))

(declare-fun b!138170 () Bool)

(declare-fun e!90047 () Bool)

(declare-fun e!90051 () Bool)

(assert (=> b!138170 (= e!90047 (and e!90051 mapRes!4758))))

(declare-fun condMapEmpty!4758 () Bool)

(declare-fun mapDefault!4758 () ValueCell!1111)

