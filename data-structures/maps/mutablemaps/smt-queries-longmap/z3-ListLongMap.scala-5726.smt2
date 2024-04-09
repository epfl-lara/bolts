; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74182 () Bool)

(assert start!74182)

(declare-fun mapIsEmpty!27392 () Bool)

(declare-fun mapRes!27392 () Bool)

(assert (=> mapIsEmpty!27392 mapRes!27392))

(declare-fun res!592901 () Bool)

(declare-fun e!485702 () Bool)

(assert (=> start!74182 (=> (not res!592901) (not e!485702))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50510 0))(
  ( (array!50511 (arr!24281 (Array (_ BitVec 32) (_ BitVec 64))) (size!24722 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50510)

(assert (=> start!74182 (= res!592901 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24722 _keys!868))))))

(assert (=> start!74182 e!485702))

(assert (=> start!74182 true))

(declare-fun array_inv!19142 (array!50510) Bool)

(assert (=> start!74182 (array_inv!19142 _keys!868)))

(declare-datatypes ((V!27971 0))(
  ( (V!27972 (val!8644 Int)) )
))
(declare-datatypes ((ValueCell!8157 0))(
  ( (ValueCellFull!8157 (v!11065 V!27971)) (EmptyCell!8157) )
))
(declare-datatypes ((array!50512 0))(
  ( (array!50513 (arr!24282 (Array (_ BitVec 32) ValueCell!8157)) (size!24723 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50512)

(declare-fun e!485701 () Bool)

(declare-fun array_inv!19143 (array!50512) Bool)

(assert (=> start!74182 (and (array_inv!19143 _values!688) e!485701)))

(declare-fun b!872170 () Bool)

(declare-fun res!592902 () Bool)

(assert (=> b!872170 (=> (not res!592902) (not e!485702))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50510 (_ BitVec 32)) Bool)

(assert (=> b!872170 (= res!592902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27392 () Bool)

(declare-fun tp!52592 () Bool)

(declare-fun e!485703 () Bool)

(assert (=> mapNonEmpty!27392 (= mapRes!27392 (and tp!52592 e!485703))))

(declare-fun mapValue!27392 () ValueCell!8157)

(declare-fun mapKey!27392 () (_ BitVec 32))

(declare-fun mapRest!27392 () (Array (_ BitVec 32) ValueCell!8157))

(assert (=> mapNonEmpty!27392 (= (arr!24282 _values!688) (store mapRest!27392 mapKey!27392 mapValue!27392))))

(declare-fun b!872171 () Bool)

(declare-fun res!592900 () Bool)

(assert (=> b!872171 (=> (not res!592900) (not e!485702))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!872171 (= res!592900 (and (= (size!24723 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24722 _keys!868) (size!24723 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872172 () Bool)

(declare-fun res!592899 () Bool)

(assert (=> b!872172 (=> (not res!592899) (not e!485702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872172 (= res!592899 (validMask!0 mask!1196))))

(declare-fun b!872173 () Bool)

(declare-fun tp_is_empty!17193 () Bool)

(assert (=> b!872173 (= e!485703 tp_is_empty!17193)))

(declare-fun b!872174 () Bool)

(declare-fun e!485700 () Bool)

(assert (=> b!872174 (= e!485701 (and e!485700 mapRes!27392))))

(declare-fun condMapEmpty!27392 () Bool)

(declare-fun mapDefault!27392 () ValueCell!8157)

(assert (=> b!872174 (= condMapEmpty!27392 (= (arr!24282 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8157)) mapDefault!27392)))))

(declare-fun b!872175 () Bool)

(assert (=> b!872175 (= e!485700 tp_is_empty!17193)))

(declare-fun b!872176 () Bool)

(assert (=> b!872176 (= e!485702 false)))

(declare-fun lt!395550 () Bool)

(declare-datatypes ((List!17322 0))(
  ( (Nil!17319) (Cons!17318 (h!18449 (_ BitVec 64)) (t!24367 List!17322)) )
))
(declare-fun arrayNoDuplicates!0 (array!50510 (_ BitVec 32) List!17322) Bool)

(assert (=> b!872176 (= lt!395550 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17319))))

(assert (= (and start!74182 res!592901) b!872172))

(assert (= (and b!872172 res!592899) b!872171))

(assert (= (and b!872171 res!592900) b!872170))

(assert (= (and b!872170 res!592902) b!872176))

(assert (= (and b!872174 condMapEmpty!27392) mapIsEmpty!27392))

(assert (= (and b!872174 (not condMapEmpty!27392)) mapNonEmpty!27392))

(get-info :version)

(assert (= (and mapNonEmpty!27392 ((_ is ValueCellFull!8157) mapValue!27392)) b!872173))

(assert (= (and b!872174 ((_ is ValueCellFull!8157) mapDefault!27392)) b!872175))

(assert (= start!74182 b!872174))

(declare-fun m!813145 () Bool)

(assert (=> b!872170 m!813145))

(declare-fun m!813147 () Bool)

(assert (=> b!872172 m!813147))

(declare-fun m!813149 () Bool)

(assert (=> start!74182 m!813149))

(declare-fun m!813151 () Bool)

(assert (=> start!74182 m!813151))

(declare-fun m!813153 () Bool)

(assert (=> b!872176 m!813153))

(declare-fun m!813155 () Bool)

(assert (=> mapNonEmpty!27392 m!813155))

(check-sat (not start!74182) (not mapNonEmpty!27392) (not b!872170) (not b!872172) tp_is_empty!17193 (not b!872176))
(check-sat)
