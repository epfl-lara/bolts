; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39168 () Bool)

(assert start!39168)

(declare-fun b_free!9427 () Bool)

(declare-fun b_next!9427 () Bool)

(assert (=> start!39168 (= b_free!9427 (not b_next!9427))))

(declare-fun tp!33810 () Bool)

(declare-fun b_and!16831 () Bool)

(assert (=> start!39168 (= tp!33810 b_and!16831)))

(declare-fun b!412017 () Bool)

(declare-fun res!239264 () Bool)

(declare-fun e!246610 () Bool)

(assert (=> b!412017 (=> (not res!239264) (not e!246610))))

(declare-datatypes ((array!24999 0))(
  ( (array!25000 (arr!11946 (Array (_ BitVec 32) (_ BitVec 64))) (size!12298 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24999)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24999 (_ BitVec 32)) Bool)

(assert (=> b!412017 (= res!239264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!412018 () Bool)

(declare-fun res!239271 () Bool)

(assert (=> b!412018 (=> (not res!239271) (not e!246610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412018 (= res!239271 (validMask!0 mask!1025))))

(declare-fun b!412019 () Bool)

(declare-fun e!246613 () Bool)

(declare-fun tp_is_empty!10579 () Bool)

(assert (=> b!412019 (= e!246613 tp_is_empty!10579)))

(declare-fun b!412020 () Bool)

(declare-fun res!239269 () Bool)

(assert (=> b!412020 (=> (not res!239269) (not e!246610))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412020 (= res!239269 (or (= (select (arr!11946 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11946 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!412021 () Bool)

(declare-fun e!246611 () Bool)

(assert (=> b!412021 (= e!246611 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15211 0))(
  ( (V!15212 (val!5334 Int)) )
))
(declare-fun minValue!515 () V!15211)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4946 0))(
  ( (ValueCellFull!4946 (v!7577 V!15211)) (EmptyCell!4946) )
))
(declare-datatypes ((array!25001 0))(
  ( (array!25002 (arr!11947 (Array (_ BitVec 32) ValueCell!4946)) (size!12299 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25001)

(declare-fun zeroValue!515 () V!15211)

(declare-fun v!412 () V!15211)

(declare-fun lt!189397 () array!24999)

(declare-datatypes ((tuple2!6848 0))(
  ( (tuple2!6849 (_1!3434 (_ BitVec 64)) (_2!3434 V!15211)) )
))
(declare-datatypes ((List!6905 0))(
  ( (Nil!6902) (Cons!6901 (h!7757 tuple2!6848) (t!12087 List!6905)) )
))
(declare-datatypes ((ListLongMap!5775 0))(
  ( (ListLongMap!5776 (toList!2903 List!6905)) )
))
(declare-fun lt!189399 () ListLongMap!5775)

(declare-fun getCurrentListMapNoExtraKeys!1113 (array!24999 array!25001 (_ BitVec 32) (_ BitVec 32) V!15211 V!15211 (_ BitVec 32) Int) ListLongMap!5775)

(assert (=> b!412021 (= lt!189399 (getCurrentListMapNoExtraKeys!1113 lt!189397 (array!25002 (store (arr!11947 _values!549) i!563 (ValueCellFull!4946 v!412)) (size!12299 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189398 () ListLongMap!5775)

(assert (=> b!412021 (= lt!189398 (getCurrentListMapNoExtraKeys!1113 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!412022 () Bool)

(declare-fun res!239263 () Bool)

(assert (=> b!412022 (=> (not res!239263) (not e!246610))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412022 (= res!239263 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!412023 () Bool)

(declare-fun res!239273 () Bool)

(assert (=> b!412023 (=> (not res!239273) (not e!246610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!412023 (= res!239273 (validKeyInArray!0 k!794))))

(declare-fun b!412024 () Bool)

(declare-fun res!239268 () Bool)

(assert (=> b!412024 (=> (not res!239268) (not e!246610))))

(declare-datatypes ((List!6906 0))(
  ( (Nil!6903) (Cons!6902 (h!7758 (_ BitVec 64)) (t!12088 List!6906)) )
))
(declare-fun arrayNoDuplicates!0 (array!24999 (_ BitVec 32) List!6906) Bool)

(assert (=> b!412024 (= res!239268 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6903))))

(declare-fun b!412025 () Bool)

(declare-fun e!246612 () Bool)

(assert (=> b!412025 (= e!246612 tp_is_empty!10579)))

(declare-fun mapNonEmpty!17490 () Bool)

(declare-fun mapRes!17490 () Bool)

(declare-fun tp!33809 () Bool)

(assert (=> mapNonEmpty!17490 (= mapRes!17490 (and tp!33809 e!246612))))

(declare-fun mapKey!17490 () (_ BitVec 32))

(declare-fun mapRest!17490 () (Array (_ BitVec 32) ValueCell!4946))

(declare-fun mapValue!17490 () ValueCell!4946)

(assert (=> mapNonEmpty!17490 (= (arr!11947 _values!549) (store mapRest!17490 mapKey!17490 mapValue!17490))))

(declare-fun b!412026 () Bool)

(declare-fun e!246609 () Bool)

(assert (=> b!412026 (= e!246609 (and e!246613 mapRes!17490))))

(declare-fun condMapEmpty!17490 () Bool)

(declare-fun mapDefault!17490 () ValueCell!4946)

