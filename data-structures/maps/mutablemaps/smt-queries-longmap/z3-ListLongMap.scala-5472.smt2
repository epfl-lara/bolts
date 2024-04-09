; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72646 () Bool)

(assert start!72646)

(declare-fun b!842804 () Bool)

(declare-fun e!470204 () Bool)

(declare-fun tp_is_empty!15669 () Bool)

(assert (=> b!842804 (= e!470204 tp_is_empty!15669)))

(declare-fun res!572897 () Bool)

(declare-fun e!470203 () Bool)

(assert (=> start!72646 (=> (not res!572897) (not e!470203))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47580 0))(
  ( (array!47581 (arr!22817 (Array (_ BitVec 32) (_ BitVec 64))) (size!23258 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47580)

(assert (=> start!72646 (= res!572897 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23258 _keys!868))))))

(assert (=> start!72646 e!470203))

(assert (=> start!72646 true))

(declare-fun array_inv!18140 (array!47580) Bool)

(assert (=> start!72646 (array_inv!18140 _keys!868)))

(declare-datatypes ((V!25939 0))(
  ( (V!25940 (val!7882 Int)) )
))
(declare-datatypes ((ValueCell!7395 0))(
  ( (ValueCellFull!7395 (v!10303 V!25939)) (EmptyCell!7395) )
))
(declare-datatypes ((array!47582 0))(
  ( (array!47583 (arr!22818 (Array (_ BitVec 32) ValueCell!7395)) (size!23259 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47582)

(declare-fun e!470201 () Bool)

(declare-fun array_inv!18141 (array!47582) Bool)

(assert (=> start!72646 (and (array_inv!18141 _values!688) e!470201)))

(declare-fun b!842805 () Bool)

(declare-fun res!572898 () Bool)

(assert (=> b!842805 (=> (not res!572898) (not e!470203))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842805 (= res!572898 (validMask!0 mask!1196))))

(declare-fun b!842806 () Bool)

(declare-fun res!572896 () Bool)

(assert (=> b!842806 (=> (not res!572896) (not e!470203))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842806 (= res!572896 (and (= (size!23259 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23258 _keys!868) (size!23259 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842807 () Bool)

(declare-fun mapRes!25103 () Bool)

(assert (=> b!842807 (= e!470201 (and e!470204 mapRes!25103))))

(declare-fun condMapEmpty!25103 () Bool)

(declare-fun mapDefault!25103 () ValueCell!7395)

(assert (=> b!842807 (= condMapEmpty!25103 (= (arr!22818 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7395)) mapDefault!25103)))))

(declare-fun mapNonEmpty!25103 () Bool)

(declare-fun tp!48422 () Bool)

(declare-fun e!470205 () Bool)

(assert (=> mapNonEmpty!25103 (= mapRes!25103 (and tp!48422 e!470205))))

(declare-fun mapKey!25103 () (_ BitVec 32))

(declare-fun mapRest!25103 () (Array (_ BitVec 32) ValueCell!7395))

(declare-fun mapValue!25103 () ValueCell!7395)

(assert (=> mapNonEmpty!25103 (= (arr!22818 _values!688) (store mapRest!25103 mapKey!25103 mapValue!25103))))

(declare-fun b!842808 () Bool)

(assert (=> b!842808 (= e!470203 false)))

(declare-fun lt!381015 () Bool)

(declare-datatypes ((List!16289 0))(
  ( (Nil!16286) (Cons!16285 (h!17416 (_ BitVec 64)) (t!22668 List!16289)) )
))
(declare-fun arrayNoDuplicates!0 (array!47580 (_ BitVec 32) List!16289) Bool)

(assert (=> b!842808 (= lt!381015 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16286))))

(declare-fun b!842809 () Bool)

(assert (=> b!842809 (= e!470205 tp_is_empty!15669)))

(declare-fun mapIsEmpty!25103 () Bool)

(assert (=> mapIsEmpty!25103 mapRes!25103))

(declare-fun b!842810 () Bool)

(declare-fun res!572895 () Bool)

(assert (=> b!842810 (=> (not res!572895) (not e!470203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47580 (_ BitVec 32)) Bool)

(assert (=> b!842810 (= res!572895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!72646 res!572897) b!842805))

(assert (= (and b!842805 res!572898) b!842806))

(assert (= (and b!842806 res!572896) b!842810))

(assert (= (and b!842810 res!572895) b!842808))

(assert (= (and b!842807 condMapEmpty!25103) mapIsEmpty!25103))

(assert (= (and b!842807 (not condMapEmpty!25103)) mapNonEmpty!25103))

(get-info :version)

(assert (= (and mapNonEmpty!25103 ((_ is ValueCellFull!7395) mapValue!25103)) b!842809))

(assert (= (and b!842807 ((_ is ValueCellFull!7395) mapDefault!25103)) b!842804))

(assert (= start!72646 b!842807))

(declare-fun m!785801 () Bool)

(assert (=> mapNonEmpty!25103 m!785801))

(declare-fun m!785803 () Bool)

(assert (=> b!842808 m!785803))

(declare-fun m!785805 () Bool)

(assert (=> b!842805 m!785805))

(declare-fun m!785807 () Bool)

(assert (=> start!72646 m!785807))

(declare-fun m!785809 () Bool)

(assert (=> start!72646 m!785809))

(declare-fun m!785811 () Bool)

(assert (=> b!842810 m!785811))

(check-sat (not b!842805) (not b!842810) tp_is_empty!15669 (not b!842808) (not mapNonEmpty!25103) (not start!72646))
(check-sat)
