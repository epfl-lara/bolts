; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73784 () Bool)

(assert start!73784)

(declare-fun b_free!14671 () Bool)

(declare-fun b_next!14671 () Bool)

(assert (=> start!73784 (= b_free!14671 (not b_next!14671))))

(declare-fun tp!51518 () Bool)

(declare-fun b_and!24339 () Bool)

(assert (=> start!73784 (= tp!51518 b_and!24339)))

(declare-fun b!864875 () Bool)

(declare-fun e!481839 () Bool)

(declare-fun e!481835 () Bool)

(assert (=> b!864875 (= e!481839 e!481835)))

(declare-fun res!587790 () Bool)

(assert (=> b!864875 (=> (not res!587790) (not e!481835))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!864875 (= res!587790 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49758 0))(
  ( (array!49759 (arr!23906 (Array (_ BitVec 32) (_ BitVec 64))) (size!24347 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49758)

(declare-datatypes ((V!27457 0))(
  ( (V!27458 (val!8451 Int)) )
))
(declare-fun minValue!654 () V!27457)

(declare-fun zeroValue!654 () V!27457)

(declare-datatypes ((tuple2!11198 0))(
  ( (tuple2!11199 (_1!5609 (_ BitVec 64)) (_2!5609 V!27457)) )
))
(declare-datatypes ((List!17063 0))(
  ( (Nil!17060) (Cons!17059 (h!18190 tuple2!11198) (t!24008 List!17063)) )
))
(declare-datatypes ((ListLongMap!9981 0))(
  ( (ListLongMap!9982 (toList!5006 List!17063)) )
))
(declare-fun lt!391699 () ListLongMap!9981)

(declare-datatypes ((ValueCell!7964 0))(
  ( (ValueCellFull!7964 (v!10872 V!27457)) (EmptyCell!7964) )
))
(declare-datatypes ((array!49760 0))(
  ( (array!49761 (arr!23907 (Array (_ BitVec 32) ValueCell!7964)) (size!24348 (_ BitVec 32))) )
))
(declare-fun lt!391707 () array!49760)

(declare-fun getCurrentListMapNoExtraKeys!2977 (array!49758 array!49760 (_ BitVec 32) (_ BitVec 32) V!27457 V!27457 (_ BitVec 32) Int) ListLongMap!9981)

(assert (=> b!864875 (= lt!391699 (getCurrentListMapNoExtraKeys!2977 _keys!868 lt!391707 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27457)

(declare-fun _values!688 () array!49760)

(assert (=> b!864875 (= lt!391707 (array!49761 (store (arr!23907 _values!688) i!612 (ValueCellFull!7964 v!557)) (size!24348 _values!688)))))

(declare-fun lt!391698 () ListLongMap!9981)

(assert (=> b!864875 (= lt!391698 (getCurrentListMapNoExtraKeys!2977 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!864876 () Bool)

(declare-fun e!481832 () Bool)

(assert (=> b!864876 (= e!481832 true)))

(declare-fun lt!391713 () ListLongMap!9981)

(declare-fun lt!391706 () tuple2!11198)

(declare-fun lt!391712 () ListLongMap!9981)

(declare-fun lt!391704 () tuple2!11198)

(declare-fun +!2302 (ListLongMap!9981 tuple2!11198) ListLongMap!9981)

(assert (=> b!864876 (= lt!391712 (+!2302 (+!2302 lt!391713 lt!391704) lt!391706))))

(declare-datatypes ((Unit!29579 0))(
  ( (Unit!29580) )
))
(declare-fun lt!391700 () Unit!29579)

(declare-fun lt!391703 () V!27457)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!510 (ListLongMap!9981 (_ BitVec 64) V!27457 (_ BitVec 64) V!27457) Unit!29579)

(assert (=> b!864876 (= lt!391700 (addCommutativeForDiffKeys!510 lt!391713 k!854 v!557 (select (arr!23906 _keys!868) from!1053) lt!391703))))

(declare-fun b!864877 () Bool)

(declare-fun e!481836 () Unit!29579)

(declare-fun Unit!29581 () Unit!29579)

(assert (=> b!864877 (= e!481836 Unit!29581)))

(declare-fun b!864878 () Bool)

(declare-fun e!481834 () Bool)

(assert (=> b!864878 (= e!481835 (not e!481834))))

(declare-fun res!587788 () Bool)

(assert (=> b!864878 (=> res!587788 e!481834)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864878 (= res!587788 (not (validKeyInArray!0 (select (arr!23906 _keys!868) from!1053))))))

(declare-fun lt!391701 () ListLongMap!9981)

(declare-fun lt!391711 () ListLongMap!9981)

(assert (=> b!864878 (= lt!391701 lt!391711)))

(assert (=> b!864878 (= lt!391711 (+!2302 lt!391713 lt!391706))))

(assert (=> b!864878 (= lt!391701 (getCurrentListMapNoExtraKeys!2977 _keys!868 lt!391707 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!864878 (= lt!391706 (tuple2!11199 k!854 v!557))))

(assert (=> b!864878 (= lt!391713 (getCurrentListMapNoExtraKeys!2977 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!391710 () Unit!29579)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!543 (array!49758 array!49760 (_ BitVec 32) (_ BitVec 32) V!27457 V!27457 (_ BitVec 32) (_ BitVec 64) V!27457 (_ BitVec 32) Int) Unit!29579)

(assert (=> b!864878 (= lt!391710 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!543 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!864879 () Bool)

(declare-fun res!587793 () Bool)

(assert (=> b!864879 (=> (not res!587793) (not e!481839))))

(assert (=> b!864879 (= res!587793 (and (= (size!24348 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24347 _keys!868) (size!24348 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864881 () Bool)

(declare-fun res!587786 () Bool)

(assert (=> b!864881 (=> (not res!587786) (not e!481839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49758 (_ BitVec 32)) Bool)

(assert (=> b!864881 (= res!587786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26810 () Bool)

(declare-fun mapRes!26810 () Bool)

(declare-fun tp!51517 () Bool)

(declare-fun e!481833 () Bool)

(assert (=> mapNonEmpty!26810 (= mapRes!26810 (and tp!51517 e!481833))))

(declare-fun mapRest!26810 () (Array (_ BitVec 32) ValueCell!7964))

(declare-fun mapValue!26810 () ValueCell!7964)

(declare-fun mapKey!26810 () (_ BitVec 32))

(assert (=> mapNonEmpty!26810 (= (arr!23907 _values!688) (store mapRest!26810 mapKey!26810 mapValue!26810))))

(declare-fun b!864882 () Bool)

(declare-fun tp_is_empty!16807 () Bool)

(assert (=> b!864882 (= e!481833 tp_is_empty!16807)))

(declare-fun b!864883 () Bool)

(declare-fun res!587791 () Bool)

(assert (=> b!864883 (=> (not res!587791) (not e!481839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864883 (= res!587791 (validMask!0 mask!1196))))

(declare-fun b!864884 () Bool)

(declare-fun res!587785 () Bool)

(assert (=> b!864884 (=> (not res!587785) (not e!481839))))

(declare-datatypes ((List!17064 0))(
  ( (Nil!17061) (Cons!17060 (h!18191 (_ BitVec 64)) (t!24009 List!17064)) )
))
(declare-fun arrayNoDuplicates!0 (array!49758 (_ BitVec 32) List!17064) Bool)

(assert (=> b!864884 (= res!587785 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17061))))

(declare-fun b!864885 () Bool)

(declare-fun res!587784 () Bool)

(assert (=> b!864885 (=> (not res!587784) (not e!481839))))

(assert (=> b!864885 (= res!587784 (and (= (select (arr!23906 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!864886 () Bool)

(declare-fun e!481838 () Bool)

(assert (=> b!864886 (= e!481838 tp_is_empty!16807)))

(declare-fun b!864887 () Bool)

(declare-fun e!481837 () Bool)

(assert (=> b!864887 (= e!481837 (and e!481838 mapRes!26810))))

(declare-fun condMapEmpty!26810 () Bool)

(declare-fun mapDefault!26810 () ValueCell!7964)

