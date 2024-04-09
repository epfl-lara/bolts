; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74686 () Bool)

(assert start!74686)

(declare-fun b_free!15307 () Bool)

(declare-fun b_next!15307 () Bool)

(assert (=> start!74686 (= b_free!15307 (not b_next!15307))))

(declare-fun tp!53610 () Bool)

(declare-fun b_and!25251 () Bool)

(assert (=> start!74686 (= tp!53610 b_and!25251)))

(declare-fun b!879650 () Bool)

(declare-fun res!597715 () Bool)

(declare-fun e!489569 () Bool)

(assert (=> b!879650 (=> (not res!597715) (not e!489569))))

(declare-datatypes ((array!51212 0))(
  ( (array!51213 (arr!24626 (Array (_ BitVec 32) (_ BitVec 64))) (size!25067 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51212)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51212 (_ BitVec 32)) Bool)

(assert (=> b!879650 (= res!597715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!879651 () Bool)

(declare-fun e!489573 () Bool)

(declare-fun tp_is_empty!17551 () Bool)

(assert (=> b!879651 (= e!489573 tp_is_empty!17551)))

(declare-fun res!597719 () Bool)

(assert (=> start!74686 (=> (not res!597719) (not e!489569))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74686 (= res!597719 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25067 _keys!868))))))

(assert (=> start!74686 e!489569))

(assert (=> start!74686 tp_is_empty!17551))

(assert (=> start!74686 true))

(assert (=> start!74686 tp!53610))

(declare-fun array_inv!19386 (array!51212) Bool)

(assert (=> start!74686 (array_inv!19386 _keys!868)))

(declare-datatypes ((V!28449 0))(
  ( (V!28450 (val!8823 Int)) )
))
(declare-datatypes ((ValueCell!8336 0))(
  ( (ValueCellFull!8336 (v!11267 V!28449)) (EmptyCell!8336) )
))
(declare-datatypes ((array!51214 0))(
  ( (array!51215 (arr!24627 (Array (_ BitVec 32) ValueCell!8336)) (size!25068 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51214)

(declare-fun e!489574 () Bool)

(declare-fun array_inv!19387 (array!51214) Bool)

(assert (=> start!74686 (and (array_inv!19387 _values!688) e!489574)))

(declare-fun b!879652 () Bool)

(declare-fun res!597722 () Bool)

(assert (=> b!879652 (=> (not res!597722) (not e!489569))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!879652 (= res!597722 (and (= (select (arr!24626 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!879653 () Bool)

(declare-fun res!597718 () Bool)

(assert (=> b!879653 (=> (not res!597718) (not e!489569))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!879653 (= res!597718 (and (= (size!25068 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25067 _keys!868) (size!25068 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!879654 () Bool)

(declare-fun e!489571 () Bool)

(declare-fun e!489570 () Bool)

(assert (=> b!879654 (= e!489571 (not e!489570))))

(declare-fun res!597723 () Bool)

(assert (=> b!879654 (=> res!597723 e!489570)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879654 (= res!597723 (not (validKeyInArray!0 (select (arr!24626 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11692 0))(
  ( (tuple2!11693 (_1!5856 (_ BitVec 64)) (_2!5856 V!28449)) )
))
(declare-datatypes ((List!17568 0))(
  ( (Nil!17565) (Cons!17564 (h!18695 tuple2!11692) (t!24685 List!17568)) )
))
(declare-datatypes ((ListLongMap!10475 0))(
  ( (ListLongMap!10476 (toList!5253 List!17568)) )
))
(declare-fun lt!397734 () ListLongMap!10475)

(declare-fun lt!397737 () ListLongMap!10475)

(assert (=> b!879654 (= lt!397734 lt!397737)))

(declare-fun v!557 () V!28449)

(declare-fun lt!397736 () ListLongMap!10475)

(declare-fun +!2459 (ListLongMap!10475 tuple2!11692) ListLongMap!10475)

(assert (=> b!879654 (= lt!397737 (+!2459 lt!397736 (tuple2!11693 k!854 v!557)))))

(declare-fun lt!397735 () array!51214)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!28449)

(declare-fun zeroValue!654 () V!28449)

(declare-fun getCurrentListMapNoExtraKeys!3214 (array!51212 array!51214 (_ BitVec 32) (_ BitVec 32) V!28449 V!28449 (_ BitVec 32) Int) ListLongMap!10475)

(assert (=> b!879654 (= lt!397734 (getCurrentListMapNoExtraKeys!3214 _keys!868 lt!397735 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879654 (= lt!397736 (getCurrentListMapNoExtraKeys!3214 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29996 0))(
  ( (Unit!29997) )
))
(declare-fun lt!397738 () Unit!29996)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!690 (array!51212 array!51214 (_ BitVec 32) (_ BitVec 32) V!28449 V!28449 (_ BitVec 32) (_ BitVec 64) V!28449 (_ BitVec 32) Int) Unit!29996)

(assert (=> b!879654 (= lt!397738 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!690 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!879655 () Bool)

(declare-fun e!489575 () Bool)

(assert (=> b!879655 (= e!489575 tp_is_empty!17551)))

(declare-fun b!879656 () Bool)

(declare-fun mapRes!27948 () Bool)

(assert (=> b!879656 (= e!489574 (and e!489575 mapRes!27948))))

(declare-fun condMapEmpty!27948 () Bool)

(declare-fun mapDefault!27948 () ValueCell!8336)

