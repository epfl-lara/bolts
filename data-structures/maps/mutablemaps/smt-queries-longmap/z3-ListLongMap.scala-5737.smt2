; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74266 () Bool)

(assert start!74266)

(declare-fun b!873191 () Bool)

(declare-fun res!593497 () Bool)

(declare-fun e!486300 () Bool)

(assert (=> b!873191 (=> (not res!593497) (not e!486300))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28059 0))(
  ( (V!28060 (val!8677 Int)) )
))
(declare-datatypes ((ValueCell!8190 0))(
  ( (ValueCellFull!8190 (v!11102 V!28059)) (EmptyCell!8190) )
))
(declare-datatypes ((array!50632 0))(
  ( (array!50633 (arr!24341 (Array (_ BitVec 32) ValueCell!8190)) (size!24782 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50632)

(declare-datatypes ((array!50634 0))(
  ( (array!50635 (arr!24342 (Array (_ BitVec 32) (_ BitVec 64))) (size!24783 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50634)

(assert (=> b!873191 (= res!593497 (and (= (size!24782 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24783 _keys!868) (size!24782 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873192 () Bool)

(declare-fun res!593494 () Bool)

(assert (=> b!873192 (=> (not res!593494) (not e!486300))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!873192 (= res!593494 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24783 _keys!868))))))

(declare-fun b!873193 () Bool)

(declare-fun e!486303 () Bool)

(declare-fun e!486302 () Bool)

(declare-fun mapRes!27494 () Bool)

(assert (=> b!873193 (= e!486303 (and e!486302 mapRes!27494))))

(declare-fun condMapEmpty!27494 () Bool)

(declare-fun mapDefault!27494 () ValueCell!8190)

(assert (=> b!873193 (= condMapEmpty!27494 (= (arr!24341 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8190)) mapDefault!27494)))))

(declare-fun mapNonEmpty!27494 () Bool)

(declare-fun tp!52721 () Bool)

(declare-fun e!486301 () Bool)

(assert (=> mapNonEmpty!27494 (= mapRes!27494 (and tp!52721 e!486301))))

(declare-fun mapRest!27494 () (Array (_ BitVec 32) ValueCell!8190))

(declare-fun mapValue!27494 () ValueCell!8190)

(declare-fun mapKey!27494 () (_ BitVec 32))

(assert (=> mapNonEmpty!27494 (= (arr!24341 _values!688) (store mapRest!27494 mapKey!27494 mapValue!27494))))

(declare-fun mapIsEmpty!27494 () Bool)

(assert (=> mapIsEmpty!27494 mapRes!27494))

(declare-fun b!873194 () Bool)

(declare-fun tp_is_empty!17259 () Bool)

(assert (=> b!873194 (= e!486302 tp_is_empty!17259)))

(declare-fun b!873195 () Bool)

(declare-fun res!593495 () Bool)

(assert (=> b!873195 (=> (not res!593495) (not e!486300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873195 (= res!593495 (validMask!0 mask!1196))))

(declare-fun b!873196 () Bool)

(assert (=> b!873196 (= e!486301 tp_is_empty!17259)))

(declare-fun b!873197 () Bool)

(declare-fun res!593493 () Bool)

(assert (=> b!873197 (=> (not res!593493) (not e!486300))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873197 (= res!593493 (validKeyInArray!0 k0!854))))

(declare-fun b!873198 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!873198 (= e!486300 (and (= (select (arr!24342 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsgt (bvadd #b00000000000000000000000000000001 from!1053) (size!24783 _keys!868)) (bvsge i!612 (size!24782 _values!688))))))

(declare-fun b!873200 () Bool)

(declare-fun res!593498 () Bool)

(assert (=> b!873200 (=> (not res!593498) (not e!486300))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50634 (_ BitVec 32)) Bool)

(assert (=> b!873200 (= res!593498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873199 () Bool)

(declare-fun res!593496 () Bool)

(assert (=> b!873199 (=> (not res!593496) (not e!486300))))

(declare-datatypes ((List!17348 0))(
  ( (Nil!17345) (Cons!17344 (h!18475 (_ BitVec 64)) (t!24395 List!17348)) )
))
(declare-fun arrayNoDuplicates!0 (array!50634 (_ BitVec 32) List!17348) Bool)

(assert (=> b!873199 (= res!593496 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17345))))

(declare-fun res!593499 () Bool)

(assert (=> start!74266 (=> (not res!593499) (not e!486300))))

(assert (=> start!74266 (= res!593499 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24783 _keys!868))))))

(assert (=> start!74266 e!486300))

(assert (=> start!74266 true))

(declare-fun array_inv!19186 (array!50634) Bool)

(assert (=> start!74266 (array_inv!19186 _keys!868)))

(declare-fun array_inv!19187 (array!50632) Bool)

(assert (=> start!74266 (and (array_inv!19187 _values!688) e!486303)))

(assert (= (and start!74266 res!593499) b!873195))

(assert (= (and b!873195 res!593495) b!873191))

(assert (= (and b!873191 res!593497) b!873200))

(assert (= (and b!873200 res!593498) b!873199))

(assert (= (and b!873199 res!593496) b!873192))

(assert (= (and b!873192 res!593494) b!873197))

(assert (= (and b!873197 res!593493) b!873198))

(assert (= (and b!873193 condMapEmpty!27494) mapIsEmpty!27494))

(assert (= (and b!873193 (not condMapEmpty!27494)) mapNonEmpty!27494))

(get-info :version)

(assert (= (and mapNonEmpty!27494 ((_ is ValueCellFull!8190) mapValue!27494)) b!873196))

(assert (= (and b!873193 ((_ is ValueCellFull!8190) mapDefault!27494)) b!873194))

(assert (= start!74266 b!873193))

(declare-fun m!813835 () Bool)

(assert (=> mapNonEmpty!27494 m!813835))

(declare-fun m!813837 () Bool)

(assert (=> b!873195 m!813837))

(declare-fun m!813839 () Bool)

(assert (=> b!873197 m!813839))

(declare-fun m!813841 () Bool)

(assert (=> b!873198 m!813841))

(declare-fun m!813843 () Bool)

(assert (=> b!873200 m!813843))

(declare-fun m!813845 () Bool)

(assert (=> start!74266 m!813845))

(declare-fun m!813847 () Bool)

(assert (=> start!74266 m!813847))

(declare-fun m!813849 () Bool)

(assert (=> b!873199 m!813849))

(check-sat (not b!873195) (not start!74266) (not b!873200) (not b!873199) (not mapNonEmpty!27494) tp_is_empty!17259 (not b!873197))
(check-sat)
