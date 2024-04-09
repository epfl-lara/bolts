; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16812 () Bool)

(assert start!16812)

(declare-fun b!169185 () Bool)

(declare-fun b_free!4111 () Bool)

(declare-fun b_next!4111 () Bool)

(assert (=> b!169185 (= b_free!4111 (not b_next!4111))))

(declare-fun tp!14937 () Bool)

(declare-fun b_and!10543 () Bool)

(assert (=> b!169185 (= tp!14937 b_and!10543)))

(declare-fun b!169180 () Bool)

(declare-fun b_free!4113 () Bool)

(declare-fun b_next!4113 () Bool)

(assert (=> b!169180 (= b_free!4113 (not b_next!4113))))

(declare-fun tp!14938 () Bool)

(declare-fun b_and!10545 () Bool)

(assert (=> b!169180 (= tp!14938 b_and!10545)))

(declare-fun e!111430 () Bool)

(declare-fun e!111423 () Bool)

(declare-fun tp_is_empty!3907 () Bool)

(declare-datatypes ((V!4857 0))(
  ( (V!4858 (val!1998 Int)) )
))
(declare-datatypes ((ValueCell!1610 0))(
  ( (ValueCellFull!1610 (v!3859 V!4857)) (EmptyCell!1610) )
))
(declare-datatypes ((array!6910 0))(
  ( (array!6911 (arr!3290 (Array (_ BitVec 32) (_ BitVec 64))) (size!3578 (_ BitVec 32))) )
))
(declare-datatypes ((array!6912 0))(
  ( (array!6913 (arr!3291 (Array (_ BitVec 32) ValueCell!1610)) (size!3579 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2128 0))(
  ( (LongMapFixedSize!2129 (defaultEntry!3506 Int) (mask!8287 (_ BitVec 32)) (extraKeys!3247 (_ BitVec 32)) (zeroValue!3349 V!4857) (minValue!3349 V!4857) (_size!1113 (_ BitVec 32)) (_keys!5331 array!6910) (_values!3489 array!6912) (_vacant!1113 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2128)

(declare-fun array_inv!2105 (array!6910) Bool)

(declare-fun array_inv!2106 (array!6912) Bool)

(assert (=> b!169180 (= e!111430 (and tp!14938 tp_is_empty!3907 (array_inv!2105 (_keys!5331 thiss!1248)) (array_inv!2106 (_values!3489 thiss!1248)) e!111423))))

(declare-fun b!169181 () Bool)

(declare-fun e!111422 () Bool)

(assert (=> b!169181 (= e!111422 tp_is_empty!3907)))

(declare-fun b!169182 () Bool)

(declare-fun e!111424 () Bool)

(declare-fun e!111425 () Bool)

(assert (=> b!169182 (= e!111424 e!111425)))

(declare-fun res!80513 () Bool)

(assert (=> b!169182 (=> (not res!80513) (not e!111425))))

(declare-datatypes ((tuple2!3196 0))(
  ( (tuple2!3197 (_1!1608 Bool) (_2!1608 LongMapFixedSize!2128)) )
))
(declare-fun lt!84889 () tuple2!3196)

(declare-fun valid!912 (LongMapFixedSize!2128) Bool)

(assert (=> b!169182 (= res!80513 (valid!912 (_2!1608 lt!84889)))))

(declare-fun err!51 () tuple2!3196)

(assert (=> b!169182 (= lt!84889 err!51)))

(assert (=> b!169182 true))

(declare-fun e!111419 () Bool)

(assert (=> b!169182 e!111419))

(declare-fun b!169183 () Bool)

(declare-fun e!111427 () Bool)

(assert (=> b!169183 (= e!111427 tp_is_empty!3907)))

(declare-fun mapNonEmpty!6590 () Bool)

(declare-fun mapRes!6591 () Bool)

(declare-fun tp!14940 () Bool)

(declare-fun e!111429 () Bool)

(assert (=> mapNonEmpty!6590 (= mapRes!6591 (and tp!14940 e!111429))))

(declare-fun mapValue!6591 () ValueCell!1610)

(declare-fun mapKey!6591 () (_ BitVec 32))

(declare-fun mapRest!6590 () (Array (_ BitVec 32) ValueCell!1610))

(assert (=> mapNonEmpty!6590 (= (arr!3291 (_values!3489 (_2!1608 err!51))) (store mapRest!6590 mapKey!6591 mapValue!6591))))

(declare-fun mapNonEmpty!6591 () Bool)

(declare-fun mapRes!6590 () Bool)

(declare-fun tp!14939 () Bool)

(assert (=> mapNonEmpty!6591 (= mapRes!6590 (and tp!14939 e!111422))))

(declare-fun mapValue!6590 () ValueCell!1610)

(declare-fun mapKey!6590 () (_ BitVec 32))

(declare-fun mapRest!6591 () (Array (_ BitVec 32) ValueCell!1610))

(assert (=> mapNonEmpty!6591 (= (arr!3291 (_values!3489 thiss!1248)) (store mapRest!6591 mapKey!6590 mapValue!6590))))

(declare-fun b!169184 () Bool)

(declare-fun res!80512 () Bool)

(assert (=> b!169184 (=> (not res!80512) (not e!111425))))

(assert (=> b!169184 (= res!80512 (_1!1608 lt!84889))))

(declare-fun mapIsEmpty!6590 () Bool)

(assert (=> mapIsEmpty!6590 mapRes!6590))

(declare-fun e!111418 () Bool)

(assert (=> b!169185 (= e!111419 (and tp!14937 tp_is_empty!3907 (array_inv!2105 (_keys!5331 (_2!1608 err!51))) (array_inv!2106 (_values!3489 (_2!1608 err!51))) e!111418))))

(declare-fun b!169186 () Bool)

(declare-fun e!111420 () Bool)

(assert (=> b!169186 (= e!111420 tp_is_empty!3907)))

(declare-fun b!169187 () Bool)

(declare-fun e!111426 () Bool)

(assert (=> b!169187 (= e!111426 e!111424)))

(declare-fun res!80514 () Bool)

(assert (=> b!169187 (=> (not res!80514) (not e!111424))))

(declare-datatypes ((SeekEntryResult!530 0))(
  ( (MissingZero!530 (index!4288 (_ BitVec 32))) (Found!530 (index!4289 (_ BitVec 32))) (Intermediate!530 (undefined!1342 Bool) (index!4290 (_ BitVec 32)) (x!18710 (_ BitVec 32))) (Undefined!530) (MissingVacant!530 (index!4291 (_ BitVec 32))) )
))
(declare-fun lt!84890 () SeekEntryResult!530)

(assert (=> b!169187 (= res!80514 (and (not (is-Undefined!530 lt!84890)) (not (is-MissingVacant!530 lt!84890)) (not (is-MissingZero!530 lt!84890)) (not (is-Found!530 lt!84890))))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6910 (_ BitVec 32)) SeekEntryResult!530)

(assert (=> b!169187 (= lt!84890 (seekEntryOrOpen!0 key!828 (_keys!5331 thiss!1248) (mask!8287 thiss!1248)))))

(declare-fun mapIsEmpty!6591 () Bool)

(assert (=> mapIsEmpty!6591 mapRes!6591))

(declare-fun b!169188 () Bool)

(assert (=> b!169188 (= e!111425 false)))

(declare-fun lt!84888 () Bool)

(declare-datatypes ((tuple2!3198 0))(
  ( (tuple2!3199 (_1!1609 (_ BitVec 64)) (_2!1609 V!4857)) )
))
(declare-datatypes ((List!2199 0))(
  ( (Nil!2196) (Cons!2195 (h!2812 tuple2!3198) (t!7009 List!2199)) )
))
(declare-datatypes ((ListLongMap!2161 0))(
  ( (ListLongMap!2162 (toList!1096 List!2199)) )
))
(declare-fun contains!1132 (ListLongMap!2161 (_ BitVec 64)) Bool)

(declare-fun map!1815 (LongMapFixedSize!2128) ListLongMap!2161)

(assert (=> b!169188 (= lt!84888 (contains!1132 (map!1815 (_2!1608 lt!84889)) key!828))))

(declare-fun b!169190 () Bool)

(declare-fun res!80511 () Bool)

(assert (=> b!169190 (=> (not res!80511) (not e!111426))))

(assert (=> b!169190 (= res!80511 (not (= key!828 (bvneg key!828))))))

(declare-fun b!169191 () Bool)

(assert (=> b!169191 (= e!111429 tp_is_empty!3907)))

(declare-fun b!169192 () Bool)

(assert (=> b!169192 (= e!111418 (and e!111420 mapRes!6591))))

(declare-fun condMapEmpty!6590 () Bool)

(declare-fun mapDefault!6591 () ValueCell!1610)

