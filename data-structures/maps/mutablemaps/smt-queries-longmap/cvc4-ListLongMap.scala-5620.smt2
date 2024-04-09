; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73536 () Bool)

(assert start!73536)

(declare-fun b_free!14423 () Bool)

(declare-fun b_next!14423 () Bool)

(assert (=> start!73536 (= b_free!14423 (not b_next!14423))))

(declare-fun tp!50774 () Bool)

(declare-fun b_and!23843 () Bool)

(assert (=> start!73536 (= tp!50774 b_and!23843)))

(declare-fun b!858740 () Bool)

(declare-fun e!478604 () Bool)

(declare-fun e!478605 () Bool)

(assert (=> b!858740 (= e!478604 (not e!478605))))

(declare-fun res!583543 () Bool)

(assert (=> b!858740 (=> res!583543 e!478605)))

(declare-datatypes ((array!49276 0))(
  ( (array!49277 (arr!23665 (Array (_ BitVec 32) (_ BitVec 64))) (size!24106 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49276)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858740 (= res!583543 (not (validKeyInArray!0 (select (arr!23665 _keys!868) from!1053))))))

(declare-datatypes ((V!27125 0))(
  ( (V!27126 (val!8327 Int)) )
))
(declare-datatypes ((tuple2!10978 0))(
  ( (tuple2!10979 (_1!5499 (_ BitVec 64)) (_2!5499 V!27125)) )
))
(declare-datatypes ((List!16850 0))(
  ( (Nil!16847) (Cons!16846 (h!17977 tuple2!10978) (t!23547 List!16850)) )
))
(declare-datatypes ((ListLongMap!9761 0))(
  ( (ListLongMap!9762 (toList!4896 List!16850)) )
))
(declare-fun lt!386913 () ListLongMap!9761)

(declare-fun lt!386908 () ListLongMap!9761)

(assert (=> b!858740 (= lt!386913 lt!386908)))

(declare-fun v!557 () V!27125)

(declare-fun lt!386909 () ListLongMap!9761)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2199 (ListLongMap!9761 tuple2!10978) ListLongMap!9761)

(assert (=> b!858740 (= lt!386908 (+!2199 lt!386909 (tuple2!10979 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7840 0))(
  ( (ValueCellFull!7840 (v!10748 V!27125)) (EmptyCell!7840) )
))
(declare-datatypes ((array!49278 0))(
  ( (array!49279 (arr!23666 (Array (_ BitVec 32) ValueCell!7840)) (size!24107 (_ BitVec 32))) )
))
(declare-fun lt!386907 () array!49278)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27125)

(declare-fun zeroValue!654 () V!27125)

(declare-fun getCurrentListMapNoExtraKeys!2878 (array!49276 array!49278 (_ BitVec 32) (_ BitVec 32) V!27125 V!27125 (_ BitVec 32) Int) ListLongMap!9761)

(assert (=> b!858740 (= lt!386913 (getCurrentListMapNoExtraKeys!2878 _keys!868 lt!386907 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!49278)

(assert (=> b!858740 (= lt!386909 (getCurrentListMapNoExtraKeys!2878 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29242 0))(
  ( (Unit!29243) )
))
(declare-fun lt!386912 () Unit!29242)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!458 (array!49276 array!49278 (_ BitVec 32) (_ BitVec 32) V!27125 V!27125 (_ BitVec 32) (_ BitVec 64) V!27125 (_ BitVec 32) Int) Unit!29242)

(assert (=> b!858740 (= lt!386912 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!458 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!858741 () Bool)

(declare-fun e!478607 () Bool)

(assert (=> b!858741 (= e!478607 true)))

(declare-datatypes ((List!16851 0))(
  ( (Nil!16848) (Cons!16847 (h!17978 (_ BitVec 64)) (t!23548 List!16851)) )
))
(declare-fun arrayNoDuplicates!0 (array!49276 (_ BitVec 32) List!16851) Bool)

(assert (=> b!858741 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16848)))

(declare-fun lt!386910 () Unit!29242)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49276 (_ BitVec 32) (_ BitVec 32)) Unit!29242)

(assert (=> b!858741 (= lt!386910 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun res!583539 () Bool)

(declare-fun e!478608 () Bool)

(assert (=> start!73536 (=> (not res!583539) (not e!478608))))

(assert (=> start!73536 (= res!583539 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24106 _keys!868))))))

(assert (=> start!73536 e!478608))

(declare-fun tp_is_empty!16559 () Bool)

(assert (=> start!73536 tp_is_empty!16559))

(assert (=> start!73536 true))

(assert (=> start!73536 tp!50774))

(declare-fun array_inv!18720 (array!49276) Bool)

(assert (=> start!73536 (array_inv!18720 _keys!868)))

(declare-fun e!478602 () Bool)

(declare-fun array_inv!18721 (array!49278) Bool)

(assert (=> start!73536 (and (array_inv!18721 _values!688) e!478602)))

(declare-fun b!858742 () Bool)

(declare-fun res!583548 () Bool)

(assert (=> b!858742 (=> (not res!583548) (not e!478608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858742 (= res!583548 (validMask!0 mask!1196))))

(declare-fun b!858743 () Bool)

(declare-fun e!478601 () Bool)

(assert (=> b!858743 (= e!478601 tp_is_empty!16559)))

(declare-fun b!858744 () Bool)

(declare-fun res!583538 () Bool)

(assert (=> b!858744 (=> (not res!583538) (not e!478608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49276 (_ BitVec 32)) Bool)

(assert (=> b!858744 (= res!583538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!858745 () Bool)

(declare-fun e!478606 () Bool)

(declare-fun mapRes!26438 () Bool)

(assert (=> b!858745 (= e!478602 (and e!478606 mapRes!26438))))

(declare-fun condMapEmpty!26438 () Bool)

(declare-fun mapDefault!26438 () ValueCell!7840)

