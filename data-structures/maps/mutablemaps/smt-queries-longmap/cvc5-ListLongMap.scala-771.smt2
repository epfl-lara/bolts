; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18152 () Bool)

(assert start!18152)

(declare-fun b!180563 () Bool)

(declare-fun b_free!4465 () Bool)

(declare-fun b_next!4465 () Bool)

(assert (=> b!180563 (= b_free!4465 (not b_next!4465))))

(declare-fun tp!16134 () Bool)

(declare-fun b_and!11019 () Bool)

(assert (=> b!180563 (= tp!16134 b_and!11019)))

(declare-fun b!180562 () Bool)

(declare-fun e!118959 () Bool)

(declare-fun tp_is_empty!4237 () Bool)

(assert (=> b!180562 (= e!118959 tp_is_empty!4237)))

(declare-fun e!118955 () Bool)

(declare-datatypes ((V!5297 0))(
  ( (V!5298 (val!2163 Int)) )
))
(declare-datatypes ((ValueCell!1775 0))(
  ( (ValueCellFull!1775 (v!4053 V!5297)) (EmptyCell!1775) )
))
(declare-datatypes ((array!7648 0))(
  ( (array!7649 (arr!3620 (Array (_ BitVec 32) (_ BitVec 64))) (size!3928 (_ BitVec 32))) )
))
(declare-datatypes ((array!7650 0))(
  ( (array!7651 (arr!3621 (Array (_ BitVec 32) ValueCell!1775)) (size!3929 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2458 0))(
  ( (LongMapFixedSize!2459 (defaultEntry!3706 Int) (mask!8711 (_ BitVec 32)) (extraKeys!3443 (_ BitVec 32)) (zeroValue!3547 V!5297) (minValue!3547 V!5297) (_size!1278 (_ BitVec 32)) (_keys!5600 array!7648) (_values!3689 array!7650) (_vacant!1278 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2458)

(declare-fun e!118961 () Bool)

(declare-fun array_inv!2321 (array!7648) Bool)

(declare-fun array_inv!2322 (array!7650) Bool)

(assert (=> b!180563 (= e!118955 (and tp!16134 tp_is_empty!4237 (array_inv!2321 (_keys!5600 thiss!1248)) (array_inv!2322 (_values!3689 thiss!1248)) e!118961))))

(declare-fun b!180564 () Bool)

(declare-fun e!118958 () Bool)

(declare-fun e!118956 () Bool)

(assert (=> b!180564 (= e!118958 e!118956)))

(declare-fun res!85530 () Bool)

(assert (=> b!180564 (=> (not res!85530) (not e!118956))))

(declare-datatypes ((SeekEntryResult!604 0))(
  ( (MissingZero!604 (index!4586 (_ BitVec 32))) (Found!604 (index!4587 (_ BitVec 32))) (Intermediate!604 (undefined!1416 Bool) (index!4588 (_ BitVec 32)) (x!19756 (_ BitVec 32))) (Undefined!604) (MissingVacant!604 (index!4589 (_ BitVec 32))) )
))
(declare-fun lt!89292 () SeekEntryResult!604)

(assert (=> b!180564 (= res!85530 (and (not (is-Undefined!604 lt!89292)) (not (is-MissingVacant!604 lt!89292)) (not (is-MissingZero!604 lt!89292)) (is-Found!604 lt!89292)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7648 (_ BitVec 32)) SeekEntryResult!604)

(assert (=> b!180564 (= lt!89292 (seekEntryOrOpen!0 key!828 (_keys!5600 thiss!1248) (mask!8711 thiss!1248)))))

(declare-fun b!180565 () Bool)

(declare-fun res!85533 () Bool)

(assert (=> b!180565 (=> (not res!85533) (not e!118958))))

(assert (=> b!180565 (= res!85533 (not (= key!828 (bvneg key!828))))))

(declare-fun b!180566 () Bool)

(declare-fun res!85534 () Bool)

(assert (=> b!180566 (=> (not res!85534) (not e!118956))))

(declare-datatypes ((tuple2!3368 0))(
  ( (tuple2!3369 (_1!1694 (_ BitVec 64)) (_2!1694 V!5297)) )
))
(declare-datatypes ((List!2318 0))(
  ( (Nil!2315) (Cons!2314 (h!2939 tuple2!3368) (t!7176 List!2318)) )
))
(declare-datatypes ((ListLongMap!2299 0))(
  ( (ListLongMap!2300 (toList!1165 List!2318)) )
))
(declare-fun contains!1235 (ListLongMap!2299 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!808 (array!7648 array!7650 (_ BitVec 32) (_ BitVec 32) V!5297 V!5297 (_ BitVec 32) Int) ListLongMap!2299)

(assert (=> b!180566 (= res!85534 (contains!1235 (getCurrentListMap!808 (_keys!5600 thiss!1248) (_values!3689 thiss!1248) (mask!8711 thiss!1248) (extraKeys!3443 thiss!1248) (zeroValue!3547 thiss!1248) (minValue!3547 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3706 thiss!1248)) key!828))))

(declare-fun b!180567 () Bool)

(assert (=> b!180567 (= e!118956 (not (= (size!3929 (_values!3689 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8711 thiss!1248)))))))

(declare-fun b!180568 () Bool)

(declare-fun res!85532 () Bool)

(assert (=> b!180568 (=> (not res!85532) (not e!118956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!180568 (= res!85532 (validMask!0 (mask!8711 thiss!1248)))))

(declare-fun res!85531 () Bool)

(assert (=> start!18152 (=> (not res!85531) (not e!118958))))

(declare-fun valid!1013 (LongMapFixedSize!2458) Bool)

(assert (=> start!18152 (= res!85531 (valid!1013 thiss!1248))))

(assert (=> start!18152 e!118958))

(assert (=> start!18152 e!118955))

(assert (=> start!18152 true))

(declare-fun mapIsEmpty!7258 () Bool)

(declare-fun mapRes!7258 () Bool)

(assert (=> mapIsEmpty!7258 mapRes!7258))

(declare-fun mapNonEmpty!7258 () Bool)

(declare-fun tp!16135 () Bool)

(declare-fun e!118957 () Bool)

(assert (=> mapNonEmpty!7258 (= mapRes!7258 (and tp!16135 e!118957))))

(declare-fun mapRest!7258 () (Array (_ BitVec 32) ValueCell!1775))

(declare-fun mapValue!7258 () ValueCell!1775)

(declare-fun mapKey!7258 () (_ BitVec 32))

(assert (=> mapNonEmpty!7258 (= (arr!3621 (_values!3689 thiss!1248)) (store mapRest!7258 mapKey!7258 mapValue!7258))))

(declare-fun b!180569 () Bool)

(assert (=> b!180569 (= e!118957 tp_is_empty!4237)))

(declare-fun b!180570 () Bool)

(assert (=> b!180570 (= e!118961 (and e!118959 mapRes!7258))))

(declare-fun condMapEmpty!7258 () Bool)

(declare-fun mapDefault!7258 () ValueCell!1775)

