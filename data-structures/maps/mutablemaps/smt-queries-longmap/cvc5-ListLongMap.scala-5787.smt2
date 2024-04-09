; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74692 () Bool)

(assert start!74692)

(declare-fun b_free!15313 () Bool)

(declare-fun b_next!15313 () Bool)

(assert (=> start!74692 (= b_free!15313 (not b_next!15313))))

(declare-fun tp!53627 () Bool)

(declare-fun b_and!25263 () Bool)

(assert (=> start!74692 (= tp!53627 b_and!25263)))

(declare-fun b!879773 () Bool)

(declare-fun res!597806 () Bool)

(declare-fun e!489638 () Bool)

(assert (=> b!879773 (=> (not res!597806) (not e!489638))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51224 0))(
  ( (array!51225 (arr!24632 (Array (_ BitVec 32) (_ BitVec 64))) (size!25073 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51224)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!879773 (= res!597806 (and (= (select (arr!24632 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!27957 () Bool)

(declare-fun mapRes!27957 () Bool)

(assert (=> mapIsEmpty!27957 mapRes!27957))

(declare-fun b!879774 () Bool)

(declare-fun res!597809 () Bool)

(assert (=> b!879774 (=> (not res!597809) (not e!489638))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879774 (= res!597809 (validKeyInArray!0 k!854))))

(declare-fun b!879775 () Bool)

(declare-fun res!597808 () Bool)

(assert (=> b!879775 (=> (not res!597808) (not e!489638))))

(assert (=> b!879775 (= res!597808 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25073 _keys!868))))))

(declare-fun b!879776 () Bool)

(declare-fun e!489637 () Bool)

(declare-fun tp_is_empty!17557 () Bool)

(assert (=> b!879776 (= e!489637 tp_is_empty!17557)))

(declare-fun res!597810 () Bool)

(assert (=> start!74692 (=> (not res!597810) (not e!489638))))

(assert (=> start!74692 (= res!597810 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25073 _keys!868))))))

(assert (=> start!74692 e!489638))

(assert (=> start!74692 tp_is_empty!17557))

(assert (=> start!74692 true))

(assert (=> start!74692 tp!53627))

(declare-fun array_inv!19392 (array!51224) Bool)

(assert (=> start!74692 (array_inv!19392 _keys!868)))

(declare-datatypes ((V!28457 0))(
  ( (V!28458 (val!8826 Int)) )
))
(declare-datatypes ((ValueCell!8339 0))(
  ( (ValueCellFull!8339 (v!11270 V!28457)) (EmptyCell!8339) )
))
(declare-datatypes ((array!51226 0))(
  ( (array!51227 (arr!24633 (Array (_ BitVec 32) ValueCell!8339)) (size!25074 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51226)

(declare-fun e!489636 () Bool)

(declare-fun array_inv!19393 (array!51226) Bool)

(assert (=> start!74692 (and (array_inv!19393 _values!688) e!489636)))

(declare-fun b!879777 () Bool)

(declare-fun e!489633 () Bool)

(assert (=> b!879777 (= e!489633 tp_is_empty!17557)))

(declare-fun b!879778 () Bool)

(declare-fun e!489635 () Bool)

(declare-fun e!489634 () Bool)

(assert (=> b!879778 (= e!489635 (not e!489634))))

(declare-fun res!597814 () Bool)

(assert (=> b!879778 (=> res!597814 e!489634)))

(assert (=> b!879778 (= res!597814 (not (validKeyInArray!0 (select (arr!24632 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11698 0))(
  ( (tuple2!11699 (_1!5859 (_ BitVec 64)) (_2!5859 V!28457)) )
))
(declare-datatypes ((List!17573 0))(
  ( (Nil!17570) (Cons!17569 (h!18700 tuple2!11698) (t!24696 List!17573)) )
))
(declare-datatypes ((ListLongMap!10481 0))(
  ( (ListLongMap!10482 (toList!5256 List!17573)) )
))
(declare-fun lt!397797 () ListLongMap!10481)

(declare-fun lt!397799 () ListLongMap!10481)

(assert (=> b!879778 (= lt!397797 lt!397799)))

(declare-fun v!557 () V!28457)

(declare-fun lt!397795 () ListLongMap!10481)

(declare-fun +!2462 (ListLongMap!10481 tuple2!11698) ListLongMap!10481)

(assert (=> b!879778 (= lt!397799 (+!2462 lt!397795 (tuple2!11699 k!854 v!557)))))

(declare-fun lt!397796 () array!51226)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28457)

(declare-fun zeroValue!654 () V!28457)

(declare-fun getCurrentListMapNoExtraKeys!3217 (array!51224 array!51226 (_ BitVec 32) (_ BitVec 32) V!28457 V!28457 (_ BitVec 32) Int) ListLongMap!10481)

(assert (=> b!879778 (= lt!397797 (getCurrentListMapNoExtraKeys!3217 _keys!868 lt!397796 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879778 (= lt!397795 (getCurrentListMapNoExtraKeys!3217 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30002 0))(
  ( (Unit!30003) )
))
(declare-fun lt!397801 () Unit!30002)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!693 (array!51224 array!51226 (_ BitVec 32) (_ BitVec 32) V!28457 V!28457 (_ BitVec 32) (_ BitVec 64) V!28457 (_ BitVec 32) Int) Unit!30002)

(assert (=> b!879778 (= lt!397801 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!693 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!879779 () Bool)

(declare-fun res!597805 () Bool)

(assert (=> b!879779 (=> (not res!597805) (not e!489638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51224 (_ BitVec 32)) Bool)

(assert (=> b!879779 (= res!597805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!879780 () Bool)

(declare-fun res!597811 () Bool)

(assert (=> b!879780 (=> (not res!597811) (not e!489638))))

(declare-datatypes ((List!17574 0))(
  ( (Nil!17571) (Cons!17570 (h!18701 (_ BitVec 64)) (t!24697 List!17574)) )
))
(declare-fun arrayNoDuplicates!0 (array!51224 (_ BitVec 32) List!17574) Bool)

(assert (=> b!879780 (= res!597811 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17571))))

(declare-fun b!879781 () Bool)

(assert (=> b!879781 (= e!489636 (and e!489633 mapRes!27957))))

(declare-fun condMapEmpty!27957 () Bool)

(declare-fun mapDefault!27957 () ValueCell!8339)

