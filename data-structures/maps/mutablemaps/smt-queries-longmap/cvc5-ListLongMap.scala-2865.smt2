; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41254 () Bool)

(assert start!41254)

(declare-fun b_free!11089 () Bool)

(declare-fun b_next!11089 () Bool)

(assert (=> start!41254 (= b_free!11089 (not b_next!11089))))

(declare-fun tp!39105 () Bool)

(declare-fun b_and!19427 () Bool)

(assert (=> start!41254 (= tp!39105 b_and!19427)))

(declare-fun b!461340 () Bool)

(declare-fun res!276054 () Bool)

(declare-fun e!269050 () Bool)

(assert (=> b!461340 (=> (not res!276054) (not e!269050))))

(declare-datatypes ((array!28617 0))(
  ( (array!28618 (arr!13745 (Array (_ BitVec 32) (_ BitVec 64))) (size!14097 (_ BitVec 32))) )
))
(declare-fun lt!208985 () array!28617)

(declare-datatypes ((List!8329 0))(
  ( (Nil!8326) (Cons!8325 (h!9181 (_ BitVec 64)) (t!14279 List!8329)) )
))
(declare-fun arrayNoDuplicates!0 (array!28617 (_ BitVec 32) List!8329) Bool)

(assert (=> b!461340 (= res!276054 (arrayNoDuplicates!0 lt!208985 #b00000000000000000000000000000000 Nil!8326))))

(declare-fun b!461341 () Bool)

(declare-fun e!269051 () Bool)

(assert (=> b!461341 (= e!269051 e!269050)))

(declare-fun res!276055 () Bool)

(assert (=> b!461341 (=> (not res!276055) (not e!269050))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28617 (_ BitVec 32)) Bool)

(assert (=> b!461341 (= res!276055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208985 mask!1025))))

(declare-fun _keys!709 () array!28617)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!461341 (= lt!208985 (array!28618 (store (arr!13745 _keys!709) i!563 k!794) (size!14097 _keys!709)))))

(declare-fun b!461342 () Bool)

(declare-fun res!276062 () Bool)

(assert (=> b!461342 (=> (not res!276062) (not e!269051))))

(assert (=> b!461342 (= res!276062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!461343 () Bool)

(declare-fun e!269055 () Bool)

(assert (=> b!461343 (= e!269050 e!269055)))

(declare-fun res!276059 () Bool)

(assert (=> b!461343 (=> (not res!276059) (not e!269055))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!461343 (= res!276059 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!17675 0))(
  ( (V!17676 (val!6258 Int)) )
))
(declare-fun minValue!515 () V!17675)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!8226 0))(
  ( (tuple2!8227 (_1!4123 (_ BitVec 64)) (_2!4123 V!17675)) )
))
(declare-datatypes ((List!8330 0))(
  ( (Nil!8327) (Cons!8326 (h!9182 tuple2!8226) (t!14280 List!8330)) )
))
(declare-datatypes ((ListLongMap!7153 0))(
  ( (ListLongMap!7154 (toList!3592 List!8330)) )
))
(declare-fun lt!208982 () ListLongMap!7153)

(declare-fun zeroValue!515 () V!17675)

(declare-datatypes ((ValueCell!5870 0))(
  ( (ValueCellFull!5870 (v!8536 V!17675)) (EmptyCell!5870) )
))
(declare-datatypes ((array!28619 0))(
  ( (array!28620 (arr!13746 (Array (_ BitVec 32) ValueCell!5870)) (size!14098 (_ BitVec 32))) )
))
(declare-fun lt!208984 () array!28619)

(declare-fun getCurrentListMapNoExtraKeys!1760 (array!28617 array!28619 (_ BitVec 32) (_ BitVec 32) V!17675 V!17675 (_ BitVec 32) Int) ListLongMap!7153)

(assert (=> b!461343 (= lt!208982 (getCurrentListMapNoExtraKeys!1760 lt!208985 lt!208984 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!28619)

(declare-fun v!412 () V!17675)

(assert (=> b!461343 (= lt!208984 (array!28620 (store (arr!13746 _values!549) i!563 (ValueCellFull!5870 v!412)) (size!14098 _values!549)))))

(declare-fun lt!208986 () ListLongMap!7153)

(assert (=> b!461343 (= lt!208986 (getCurrentListMapNoExtraKeys!1760 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!461344 () Bool)

(declare-fun e!269049 () Bool)

(declare-fun tp_is_empty!12427 () Bool)

(assert (=> b!461344 (= e!269049 tp_is_empty!12427)))

(declare-fun b!461345 () Bool)

(declare-fun res!276049 () Bool)

(assert (=> b!461345 (=> (not res!276049) (not e!269051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!461345 (= res!276049 (validKeyInArray!0 k!794))))

(declare-fun b!461346 () Bool)

(declare-fun res!276061 () Bool)

(assert (=> b!461346 (=> (not res!276061) (not e!269051))))

(assert (=> b!461346 (= res!276061 (or (= (select (arr!13745 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13745 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!461347 () Bool)

(declare-fun res!276060 () Bool)

(assert (=> b!461347 (=> (not res!276060) (not e!269051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!461347 (= res!276060 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!20293 () Bool)

(declare-fun mapRes!20293 () Bool)

(declare-fun tp!39106 () Bool)

(assert (=> mapNonEmpty!20293 (= mapRes!20293 (and tp!39106 e!269049))))

(declare-fun mapKey!20293 () (_ BitVec 32))

(declare-fun mapValue!20293 () ValueCell!5870)

(declare-fun mapRest!20293 () (Array (_ BitVec 32) ValueCell!5870))

(assert (=> mapNonEmpty!20293 (= (arr!13746 _values!549) (store mapRest!20293 mapKey!20293 mapValue!20293))))

(declare-fun res!276053 () Bool)

(assert (=> start!41254 (=> (not res!276053) (not e!269051))))

(assert (=> start!41254 (= res!276053 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14097 _keys!709))))))

(assert (=> start!41254 e!269051))

(assert (=> start!41254 tp_is_empty!12427))

(assert (=> start!41254 tp!39105))

(assert (=> start!41254 true))

(declare-fun e!269054 () Bool)

(declare-fun array_inv!9928 (array!28619) Bool)

(assert (=> start!41254 (and (array_inv!9928 _values!549) e!269054)))

(declare-fun array_inv!9929 (array!28617) Bool)

(assert (=> start!41254 (array_inv!9929 _keys!709)))

(declare-fun b!461348 () Bool)

(declare-fun e!269053 () Bool)

(assert (=> b!461348 (= e!269055 (not e!269053))))

(declare-fun res!276056 () Bool)

(assert (=> b!461348 (=> res!276056 e!269053)))

(assert (=> b!461348 (= res!276056 (validKeyInArray!0 (select (arr!13745 _keys!709) from!863)))))

(declare-fun lt!208983 () tuple2!8226)

(declare-fun +!1608 (ListLongMap!7153 tuple2!8226) ListLongMap!7153)

(assert (=> b!461348 (= (getCurrentListMapNoExtraKeys!1760 lt!208985 lt!208984 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1608 (getCurrentListMapNoExtraKeys!1760 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) lt!208983))))

(assert (=> b!461348 (= lt!208983 (tuple2!8227 k!794 v!412))))

(declare-datatypes ((Unit!13379 0))(
  ( (Unit!13380) )
))
(declare-fun lt!208987 () Unit!13379)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!760 (array!28617 array!28619 (_ BitVec 32) (_ BitVec 32) V!17675 V!17675 (_ BitVec 32) (_ BitVec 64) V!17675 (_ BitVec 32) Int) Unit!13379)

(assert (=> b!461348 (= lt!208987 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!760 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!461349 () Bool)

(declare-fun res!276057 () Bool)

(assert (=> b!461349 (=> (not res!276057) (not e!269051))))

(assert (=> b!461349 (= res!276057 (and (= (size!14098 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14097 _keys!709) (size!14098 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!461350 () Bool)

(declare-fun res!276050 () Bool)

(assert (=> b!461350 (=> (not res!276050) (not e!269050))))

(assert (=> b!461350 (= res!276050 (bvsle from!863 i!563))))

(declare-fun b!461351 () Bool)

(declare-fun res!276052 () Bool)

(assert (=> b!461351 (=> (not res!276052) (not e!269051))))

(assert (=> b!461351 (= res!276052 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8326))))

(declare-fun b!461352 () Bool)

(declare-fun res!276051 () Bool)

(assert (=> b!461352 (=> (not res!276051) (not e!269051))))

(declare-fun arrayContainsKey!0 (array!28617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!461352 (= res!276051 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!461353 () Bool)

(declare-fun e!269048 () Bool)

(assert (=> b!461353 (= e!269048 tp_is_empty!12427)))

(declare-fun mapIsEmpty!20293 () Bool)

(assert (=> mapIsEmpty!20293 mapRes!20293))

(declare-fun b!461354 () Bool)

(assert (=> b!461354 (= e!269054 (and e!269048 mapRes!20293))))

(declare-fun condMapEmpty!20293 () Bool)

(declare-fun mapDefault!20293 () ValueCell!5870)

