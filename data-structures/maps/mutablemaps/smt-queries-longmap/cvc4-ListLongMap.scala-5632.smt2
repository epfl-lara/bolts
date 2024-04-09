; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73608 () Bool)

(assert start!73608)

(declare-fun b_free!14495 () Bool)

(declare-fun b_next!14495 () Bool)

(assert (=> start!73608 (= b_free!14495 (not b_next!14495))))

(declare-fun tp!50989 () Bool)

(declare-fun b_and!23987 () Bool)

(assert (=> start!73608 (= tp!50989 b_and!23987)))

(declare-fun res!584977 () Bool)

(declare-fun e!479549 () Bool)

(assert (=> start!73608 (=> (not res!584977) (not e!479549))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49416 0))(
  ( (array!49417 (arr!23735 (Array (_ BitVec 32) (_ BitVec 64))) (size!24176 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49416)

(assert (=> start!73608 (= res!584977 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24176 _keys!868))))))

(assert (=> start!73608 e!479549))

(declare-fun tp_is_empty!16631 () Bool)

(assert (=> start!73608 tp_is_empty!16631))

(assert (=> start!73608 true))

(assert (=> start!73608 tp!50989))

(declare-fun array_inv!18762 (array!49416) Bool)

(assert (=> start!73608 (array_inv!18762 _keys!868)))

(declare-datatypes ((V!27221 0))(
  ( (V!27222 (val!8363 Int)) )
))
(declare-datatypes ((ValueCell!7876 0))(
  ( (ValueCellFull!7876 (v!10784 V!27221)) (EmptyCell!7876) )
))
(declare-datatypes ((array!49418 0))(
  ( (array!49419 (arr!23736 (Array (_ BitVec 32) ValueCell!7876)) (size!24177 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49418)

(declare-fun e!479552 () Bool)

(declare-fun array_inv!18763 (array!49418) Bool)

(assert (=> start!73608 (and (array_inv!18763 _values!688) e!479552)))

(declare-fun b!860564 () Bool)

(declare-fun e!479546 () Bool)

(declare-fun e!479550 () Bool)

(assert (=> b!860564 (= e!479546 e!479550)))

(declare-fun res!584976 () Bool)

(assert (=> b!860564 (=> res!584976 e!479550)))

(assert (=> b!860564 (= res!584976 (or (bvsge (size!24176 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24176 _keys!868)) (bvsge from!1053 (size!24176 _keys!868))))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!49416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860564 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29300 0))(
  ( (Unit!29301) )
))
(declare-fun lt!387936 () Unit!29300)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49416 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29300)

(assert (=> b!860564 (= lt!387936 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-datatypes ((List!16913 0))(
  ( (Nil!16910) (Cons!16909 (h!18040 (_ BitVec 64)) (t!23682 List!16913)) )
))
(declare-fun arrayNoDuplicates!0 (array!49416 (_ BitVec 32) List!16913) Bool)

(assert (=> b!860564 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16910)))

(declare-fun lt!387938 () Unit!29300)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49416 (_ BitVec 32) (_ BitVec 32)) Unit!29300)

(assert (=> b!860564 (= lt!387938 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!860565 () Bool)

(declare-fun res!584973 () Bool)

(assert (=> b!860565 (=> (not res!584973) (not e!479549))))

(assert (=> b!860565 (= res!584973 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16910))))

(declare-fun b!860566 () Bool)

(declare-fun res!584975 () Bool)

(assert (=> b!860566 (=> res!584975 e!479550)))

(declare-fun noDuplicate!1315 (List!16913) Bool)

(assert (=> b!860566 (= res!584975 (not (noDuplicate!1315 Nil!16910)))))

(declare-fun b!860567 () Bool)

(declare-fun res!584969 () Bool)

(assert (=> b!860567 (=> (not res!584969) (not e!479549))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49416 (_ BitVec 32)) Bool)

(assert (=> b!860567 (= res!584969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26546 () Bool)

(declare-fun mapRes!26546 () Bool)

(declare-fun tp!50990 () Bool)

(declare-fun e!479548 () Bool)

(assert (=> mapNonEmpty!26546 (= mapRes!26546 (and tp!50990 e!479548))))

(declare-fun mapRest!26546 () (Array (_ BitVec 32) ValueCell!7876))

(declare-fun mapValue!26546 () ValueCell!7876)

(declare-fun mapKey!26546 () (_ BitVec 32))

(assert (=> mapNonEmpty!26546 (= (arr!23736 _values!688) (store mapRest!26546 mapKey!26546 mapValue!26546))))

(declare-fun b!860568 () Bool)

(declare-fun res!584966 () Bool)

(assert (=> b!860568 (=> (not res!584966) (not e!479549))))

(assert (=> b!860568 (= res!584966 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24176 _keys!868))))))

(declare-fun b!860569 () Bool)

(declare-fun res!584972 () Bool)

(assert (=> b!860569 (=> (not res!584972) (not e!479549))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860569 (= res!584972 (validKeyInArray!0 k!854))))

(declare-fun b!860570 () Bool)

(declare-fun e!479547 () Bool)

(declare-fun e!479545 () Bool)

(assert (=> b!860570 (= e!479547 (not e!479545))))

(declare-fun res!584967 () Bool)

(assert (=> b!860570 (=> res!584967 e!479545)))

(assert (=> b!860570 (= res!584967 (not (validKeyInArray!0 (select (arr!23735 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11042 0))(
  ( (tuple2!11043 (_1!5531 (_ BitVec 64)) (_2!5531 V!27221)) )
))
(declare-datatypes ((List!16914 0))(
  ( (Nil!16911) (Cons!16910 (h!18041 tuple2!11042) (t!23683 List!16914)) )
))
(declare-datatypes ((ListLongMap!9825 0))(
  ( (ListLongMap!9826 (toList!4928 List!16914)) )
))
(declare-fun lt!387939 () ListLongMap!9825)

(declare-fun lt!387934 () ListLongMap!9825)

(assert (=> b!860570 (= lt!387939 lt!387934)))

(declare-fun v!557 () V!27221)

(declare-fun lt!387931 () ListLongMap!9825)

(declare-fun +!2229 (ListLongMap!9825 tuple2!11042) ListLongMap!9825)

(assert (=> b!860570 (= lt!387934 (+!2229 lt!387931 (tuple2!11043 k!854 v!557)))))

(declare-fun lt!387935 () array!49418)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27221)

(declare-fun zeroValue!654 () V!27221)

(declare-fun getCurrentListMapNoExtraKeys!2908 (array!49416 array!49418 (_ BitVec 32) (_ BitVec 32) V!27221 V!27221 (_ BitVec 32) Int) ListLongMap!9825)

(assert (=> b!860570 (= lt!387939 (getCurrentListMapNoExtraKeys!2908 _keys!868 lt!387935 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!860570 (= lt!387931 (getCurrentListMapNoExtraKeys!2908 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!387937 () Unit!29300)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!482 (array!49416 array!49418 (_ BitVec 32) (_ BitVec 32) V!27221 V!27221 (_ BitVec 32) (_ BitVec 64) V!27221 (_ BitVec 32) Int) Unit!29300)

(assert (=> b!860570 (= lt!387937 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!482 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!860571 () Bool)

(declare-fun e!479551 () Bool)

(assert (=> b!860571 (= e!479551 tp_is_empty!16631)))

(declare-fun b!860572 () Bool)

(declare-fun res!584974 () Bool)

(assert (=> b!860572 (=> (not res!584974) (not e!479549))))

(assert (=> b!860572 (= res!584974 (and (= (size!24177 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24176 _keys!868) (size!24177 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!860573 () Bool)

(declare-fun res!584968 () Bool)

(assert (=> b!860573 (=> (not res!584968) (not e!479549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860573 (= res!584968 (validMask!0 mask!1196))))

(declare-fun b!860574 () Bool)

(declare-fun res!584979 () Bool)

(assert (=> b!860574 (=> (not res!584979) (not e!479549))))

(assert (=> b!860574 (= res!584979 (and (= (select (arr!23735 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26546 () Bool)

(assert (=> mapIsEmpty!26546 mapRes!26546))

(declare-fun b!860575 () Bool)

(assert (=> b!860575 (= e!479550 true)))

(declare-fun lt!387932 () Bool)

(declare-fun contains!4234 (List!16913 (_ BitVec 64)) Bool)

(assert (=> b!860575 (= lt!387932 (contains!4234 Nil!16910 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!860576 () Bool)

(declare-fun res!584978 () Bool)

(assert (=> b!860576 (=> res!584978 e!479550)))

(assert (=> b!860576 (= res!584978 (contains!4234 Nil!16910 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!860577 () Bool)

(assert (=> b!860577 (= e!479552 (and e!479551 mapRes!26546))))

(declare-fun condMapEmpty!26546 () Bool)

(declare-fun mapDefault!26546 () ValueCell!7876)

