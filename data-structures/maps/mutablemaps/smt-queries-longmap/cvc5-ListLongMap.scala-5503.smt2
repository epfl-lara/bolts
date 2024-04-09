; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72830 () Bool)

(assert start!72830)

(declare-fun b!844736 () Bool)

(declare-fun e!471583 () Bool)

(declare-fun tp_is_empty!15853 () Bool)

(assert (=> b!844736 (= e!471583 tp_is_empty!15853)))

(declare-fun res!574002 () Bool)

(declare-fun e!471585 () Bool)

(assert (=> start!72830 (=> (not res!574002) (not e!471585))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47918 0))(
  ( (array!47919 (arr!22986 (Array (_ BitVec 32) (_ BitVec 64))) (size!23427 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47918)

(assert (=> start!72830 (= res!574002 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23427 _keys!868))))))

(assert (=> start!72830 e!471585))

(assert (=> start!72830 true))

(declare-fun array_inv!18256 (array!47918) Bool)

(assert (=> start!72830 (array_inv!18256 _keys!868)))

(declare-datatypes ((V!26185 0))(
  ( (V!26186 (val!7974 Int)) )
))
(declare-datatypes ((ValueCell!7487 0))(
  ( (ValueCellFull!7487 (v!10395 V!26185)) (EmptyCell!7487) )
))
(declare-datatypes ((array!47920 0))(
  ( (array!47921 (arr!22987 (Array (_ BitVec 32) ValueCell!7487)) (size!23428 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47920)

(declare-fun e!471581 () Bool)

(declare-fun array_inv!18257 (array!47920) Bool)

(assert (=> start!72830 (and (array_inv!18257 _values!688) e!471581)))

(declare-fun mapIsEmpty!25379 () Bool)

(declare-fun mapRes!25379 () Bool)

(assert (=> mapIsEmpty!25379 mapRes!25379))

(declare-fun mapNonEmpty!25379 () Bool)

(declare-fun tp!48698 () Bool)

(assert (=> mapNonEmpty!25379 (= mapRes!25379 (and tp!48698 e!471583))))

(declare-fun mapRest!25379 () (Array (_ BitVec 32) ValueCell!7487))

(declare-fun mapKey!25379 () (_ BitVec 32))

(declare-fun mapValue!25379 () ValueCell!7487)

(assert (=> mapNonEmpty!25379 (= (arr!22987 _values!688) (store mapRest!25379 mapKey!25379 mapValue!25379))))

(declare-fun b!844737 () Bool)

(declare-fun res!574001 () Bool)

(assert (=> b!844737 (=> (not res!574001) (not e!471585))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47918 (_ BitVec 32)) Bool)

(assert (=> b!844737 (= res!574001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844738 () Bool)

(declare-fun res!574000 () Bool)

(assert (=> b!844738 (=> (not res!574000) (not e!471585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844738 (= res!574000 (validMask!0 mask!1196))))

(declare-fun b!844739 () Bool)

(declare-fun res!573999 () Bool)

(assert (=> b!844739 (=> (not res!573999) (not e!471585))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844739 (= res!573999 (and (= (size!23428 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23427 _keys!868) (size!23428 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844740 () Bool)

(declare-fun e!471582 () Bool)

(assert (=> b!844740 (= e!471582 tp_is_empty!15853)))

(declare-fun b!844741 () Bool)

(assert (=> b!844741 (= e!471585 false)))

(declare-fun lt!381291 () Bool)

(declare-datatypes ((List!16353 0))(
  ( (Nil!16350) (Cons!16349 (h!17480 (_ BitVec 64)) (t!22732 List!16353)) )
))
(declare-fun arrayNoDuplicates!0 (array!47918 (_ BitVec 32) List!16353) Bool)

(assert (=> b!844741 (= lt!381291 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16350))))

(declare-fun b!844742 () Bool)

(assert (=> b!844742 (= e!471581 (and e!471582 mapRes!25379))))

(declare-fun condMapEmpty!25379 () Bool)

(declare-fun mapDefault!25379 () ValueCell!7487)

