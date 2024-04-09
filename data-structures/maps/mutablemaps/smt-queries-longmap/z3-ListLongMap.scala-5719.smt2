; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74128 () Bool)

(assert start!74128)

(declare-fun b!871667 () Bool)

(declare-fun res!592607 () Bool)

(declare-fun e!485358 () Bool)

(assert (=> b!871667 (=> (not res!592607) (not e!485358))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871667 (= res!592607 (validMask!0 mask!1196))))

(declare-fun res!592605 () Bool)

(assert (=> start!74128 (=> (not res!592605) (not e!485358))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50430 0))(
  ( (array!50431 (arr!24242 (Array (_ BitVec 32) (_ BitVec 64))) (size!24683 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50430)

(assert (=> start!74128 (= res!592605 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24683 _keys!868))))))

(assert (=> start!74128 e!485358))

(assert (=> start!74128 true))

(declare-fun array_inv!19114 (array!50430) Bool)

(assert (=> start!74128 (array_inv!19114 _keys!868)))

(declare-datatypes ((V!27915 0))(
  ( (V!27916 (val!8623 Int)) )
))
(declare-datatypes ((ValueCell!8136 0))(
  ( (ValueCellFull!8136 (v!11044 V!27915)) (EmptyCell!8136) )
))
(declare-datatypes ((array!50432 0))(
  ( (array!50433 (arr!24243 (Array (_ BitVec 32) ValueCell!8136)) (size!24684 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50432)

(declare-fun e!485360 () Bool)

(declare-fun array_inv!19115 (array!50432) Bool)

(assert (=> start!74128 (and (array_inv!19115 _values!688) e!485360)))

(declare-fun b!871668 () Bool)

(declare-fun e!485359 () Bool)

(declare-fun tp_is_empty!17151 () Bool)

(assert (=> b!871668 (= e!485359 tp_is_empty!17151)))

(declare-fun b!871669 () Bool)

(declare-fun e!485357 () Bool)

(declare-fun mapRes!27326 () Bool)

(assert (=> b!871669 (= e!485360 (and e!485357 mapRes!27326))))

(declare-fun condMapEmpty!27326 () Bool)

(declare-fun mapDefault!27326 () ValueCell!8136)

(assert (=> b!871669 (= condMapEmpty!27326 (= (arr!24243 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8136)) mapDefault!27326)))))

(declare-fun b!871670 () Bool)

(declare-fun res!592608 () Bool)

(assert (=> b!871670 (=> (not res!592608) (not e!485358))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!871670 (= res!592608 (and (= (size!24684 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24683 _keys!868) (size!24684 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27326 () Bool)

(assert (=> mapIsEmpty!27326 mapRes!27326))

(declare-fun mapNonEmpty!27326 () Bool)

(declare-fun tp!52526 () Bool)

(assert (=> mapNonEmpty!27326 (= mapRes!27326 (and tp!52526 e!485359))))

(declare-fun mapKey!27326 () (_ BitVec 32))

(declare-fun mapValue!27326 () ValueCell!8136)

(declare-fun mapRest!27326 () (Array (_ BitVec 32) ValueCell!8136))

(assert (=> mapNonEmpty!27326 (= (arr!24243 _values!688) (store mapRest!27326 mapKey!27326 mapValue!27326))))

(declare-fun b!871671 () Bool)

(declare-fun res!592606 () Bool)

(assert (=> b!871671 (=> (not res!592606) (not e!485358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50430 (_ BitVec 32)) Bool)

(assert (=> b!871671 (= res!592606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871672 () Bool)

(assert (=> b!871672 (= e!485358 false)))

(declare-fun lt!395487 () Bool)

(declare-datatypes ((List!17308 0))(
  ( (Nil!17305) (Cons!17304 (h!18435 (_ BitVec 64)) (t!24353 List!17308)) )
))
(declare-fun arrayNoDuplicates!0 (array!50430 (_ BitVec 32) List!17308) Bool)

(assert (=> b!871672 (= lt!395487 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17305))))

(declare-fun b!871673 () Bool)

(assert (=> b!871673 (= e!485357 tp_is_empty!17151)))

(assert (= (and start!74128 res!592605) b!871667))

(assert (= (and b!871667 res!592607) b!871670))

(assert (= (and b!871670 res!592608) b!871671))

(assert (= (and b!871671 res!592606) b!871672))

(assert (= (and b!871669 condMapEmpty!27326) mapIsEmpty!27326))

(assert (= (and b!871669 (not condMapEmpty!27326)) mapNonEmpty!27326))

(get-info :version)

(assert (= (and mapNonEmpty!27326 ((_ is ValueCellFull!8136) mapValue!27326)) b!871668))

(assert (= (and b!871669 ((_ is ValueCellFull!8136) mapDefault!27326)) b!871673))

(assert (= start!74128 b!871669))

(declare-fun m!812863 () Bool)

(assert (=> b!871672 m!812863))

(declare-fun m!812865 () Bool)

(assert (=> mapNonEmpty!27326 m!812865))

(declare-fun m!812867 () Bool)

(assert (=> start!74128 m!812867))

(declare-fun m!812869 () Bool)

(assert (=> start!74128 m!812869))

(declare-fun m!812871 () Bool)

(assert (=> b!871667 m!812871))

(declare-fun m!812873 () Bool)

(assert (=> b!871671 m!812873))

(check-sat tp_is_empty!17151 (not start!74128) (not mapNonEmpty!27326) (not b!871667) (not b!871671) (not b!871672))
(check-sat)
