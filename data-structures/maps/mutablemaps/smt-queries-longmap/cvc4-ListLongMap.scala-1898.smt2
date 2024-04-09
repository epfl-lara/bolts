; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33890 () Bool)

(assert start!33890)

(declare-fun b_free!7061 () Bool)

(declare-fun b_next!7061 () Bool)

(assert (=> start!33890 (= b_free!7061 (not b_next!7061))))

(declare-fun tp!24695 () Bool)

(declare-fun b_and!14265 () Bool)

(assert (=> start!33890 (= tp!24695 b_and!14265)))

(declare-fun b!337123 () Bool)

(declare-fun e!206890 () Bool)

(assert (=> b!337123 (= e!206890 false)))

(declare-fun lt!160373 () (_ BitVec 32))

(declare-datatypes ((array!17601 0))(
  ( (array!17602 (arr!8325 (Array (_ BitVec 32) (_ BitVec 64))) (size!8677 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17601)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!17601 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!337123 (= lt!160373 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!337124 () Bool)

(declare-fun e!206893 () Bool)

(declare-fun tp_is_empty!7013 () Bool)

(assert (=> b!337124 (= e!206893 tp_is_empty!7013)))

(declare-fun b!337125 () Bool)

(declare-fun res!186272 () Bool)

(declare-fun e!206892 () Bool)

(assert (=> b!337125 (=> (not res!186272) (not e!206892))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10327 0))(
  ( (V!10328 (val!3551 Int)) )
))
(declare-fun zeroValue!1467 () V!10327)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3163 0))(
  ( (ValueCellFull!3163 (v!5712 V!10327)) (EmptyCell!3163) )
))
(declare-datatypes ((array!17603 0))(
  ( (array!17604 (arr!8326 (Array (_ BitVec 32) ValueCell!3163)) (size!8678 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17603)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10327)

(declare-datatypes ((tuple2!5160 0))(
  ( (tuple2!5161 (_1!2590 (_ BitVec 64)) (_2!2590 V!10327)) )
))
(declare-datatypes ((List!4800 0))(
  ( (Nil!4797) (Cons!4796 (h!5652 tuple2!5160) (t!9902 List!4800)) )
))
(declare-datatypes ((ListLongMap!4087 0))(
  ( (ListLongMap!4088 (toList!2059 List!4800)) )
))
(declare-fun contains!2102 (ListLongMap!4087 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1579 (array!17601 array!17603 (_ BitVec 32) (_ BitVec 32) V!10327 V!10327 (_ BitVec 32) Int) ListLongMap!4087)

(assert (=> b!337125 (= res!186272 (not (contains!2102 (getCurrentListMap!1579 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!11925 () Bool)

(declare-fun mapRes!11925 () Bool)

(assert (=> mapIsEmpty!11925 mapRes!11925))

(declare-fun b!337126 () Bool)

(declare-fun res!186271 () Bool)

(assert (=> b!337126 (=> (not res!186271) (not e!206892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!337126 (= res!186271 (validKeyInArray!0 k!1348))))

(declare-fun b!337127 () Bool)

(declare-fun res!186275 () Bool)

(assert (=> b!337127 (=> (not res!186275) (not e!206892))))

(assert (=> b!337127 (= res!186275 (and (= (size!8678 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8677 _keys!1895) (size!8678 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!337128 () Bool)

(assert (=> b!337128 (= e!206892 e!206890)))

(declare-fun res!186273 () Bool)

(assert (=> b!337128 (=> (not res!186273) (not e!206890))))

(declare-datatypes ((SeekEntryResult!3224 0))(
  ( (MissingZero!3224 (index!15075 (_ BitVec 32))) (Found!3224 (index!15076 (_ BitVec 32))) (Intermediate!3224 (undefined!4036 Bool) (index!15077 (_ BitVec 32)) (x!33615 (_ BitVec 32))) (Undefined!3224) (MissingVacant!3224 (index!15078 (_ BitVec 32))) )
))
(declare-fun lt!160374 () SeekEntryResult!3224)

(assert (=> b!337128 (= res!186273 (and (not (is-Found!3224 lt!160374)) (is-MissingZero!3224 lt!160374)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17601 (_ BitVec 32)) SeekEntryResult!3224)

(assert (=> b!337128 (= lt!160374 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!337129 () Bool)

(declare-fun res!186269 () Bool)

(assert (=> b!337129 (=> (not res!186269) (not e!206892))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17601 (_ BitVec 32)) Bool)

(assert (=> b!337129 (= res!186269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!337130 () Bool)

(declare-fun e!206895 () Bool)

(assert (=> b!337130 (= e!206895 tp_is_empty!7013)))

(declare-fun b!337131 () Bool)

(declare-fun e!206891 () Bool)

(assert (=> b!337131 (= e!206891 (and e!206893 mapRes!11925))))

(declare-fun condMapEmpty!11925 () Bool)

(declare-fun mapDefault!11925 () ValueCell!3163)

