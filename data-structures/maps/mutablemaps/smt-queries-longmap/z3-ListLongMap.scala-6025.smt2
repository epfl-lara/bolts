; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78064 () Bool)

(assert start!78064)

(declare-fun b_free!16563 () Bool)

(declare-fun b_next!16563 () Bool)

(assert (=> start!78064 (= b_free!16563 (not b_next!16563))))

(declare-fun tp!57961 () Bool)

(declare-fun b_and!27153 () Bool)

(assert (=> start!78064 (= tp!57961 b_and!27153)))

(declare-fun b!910776 () Bool)

(declare-fun e!510757 () Bool)

(declare-fun tp_is_empty!18981 () Bool)

(assert (=> b!910776 (= e!510757 tp_is_empty!18981)))

(declare-fun b!910777 () Bool)

(declare-fun e!510756 () Bool)

(assert (=> b!910777 (= e!510756 tp_is_empty!18981)))

(declare-fun b!910778 () Bool)

(declare-fun res!614655 () Bool)

(declare-fun e!510755 () Bool)

(assert (=> b!910778 (=> (not res!614655) (not e!510755))))

(declare-datatypes ((V!30273 0))(
  ( (V!30274 (val!9541 Int)) )
))
(declare-datatypes ((ValueCell!9009 0))(
  ( (ValueCellFull!9009 (v!12050 V!30273)) (EmptyCell!9009) )
))
(declare-datatypes ((array!53972 0))(
  ( (array!53973 (arr!25938 (Array (_ BitVec 32) ValueCell!9009)) (size!26398 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53972)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53974 0))(
  ( (array!53975 (arr!25939 (Array (_ BitVec 32) (_ BitVec 64))) (size!26399 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53974)

(assert (=> b!910778 (= res!614655 (and (= (size!26398 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26399 _keys!1386) (size!26398 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910779 () Bool)

(assert (=> b!910779 (= e!510755 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30273)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30273)

(declare-fun lt!410272 () Bool)

(declare-datatypes ((tuple2!12474 0))(
  ( (tuple2!12475 (_1!6247 (_ BitVec 64)) (_2!6247 V!30273)) )
))
(declare-datatypes ((List!18325 0))(
  ( (Nil!18322) (Cons!18321 (h!19467 tuple2!12474) (t!25918 List!18325)) )
))
(declare-datatypes ((ListLongMap!11185 0))(
  ( (ListLongMap!11186 (toList!5608 List!18325)) )
))
(declare-fun contains!4617 (ListLongMap!11185 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2838 (array!53974 array!53972 (_ BitVec 32) (_ BitVec 32) V!30273 V!30273 (_ BitVec 32) Int) ListLongMap!11185)

(assert (=> b!910779 (= lt!410272 (contains!4617 (getCurrentListMap!2838 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapNonEmpty!30193 () Bool)

(declare-fun mapRes!30193 () Bool)

(declare-fun tp!57960 () Bool)

(assert (=> mapNonEmpty!30193 (= mapRes!30193 (and tp!57960 e!510756))))

(declare-fun mapValue!30193 () ValueCell!9009)

(declare-fun mapKey!30193 () (_ BitVec 32))

(declare-fun mapRest!30193 () (Array (_ BitVec 32) ValueCell!9009))

(assert (=> mapNonEmpty!30193 (= (arr!25938 _values!1152) (store mapRest!30193 mapKey!30193 mapValue!30193))))

(declare-fun b!910780 () Bool)

(declare-fun e!510754 () Bool)

(assert (=> b!910780 (= e!510754 (and e!510757 mapRes!30193))))

(declare-fun condMapEmpty!30193 () Bool)

(declare-fun mapDefault!30193 () ValueCell!9009)

(assert (=> b!910780 (= condMapEmpty!30193 (= (arr!25938 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9009)) mapDefault!30193)))))

(declare-fun b!910781 () Bool)

(declare-fun res!614654 () Bool)

(assert (=> b!910781 (=> (not res!614654) (not e!510755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53974 (_ BitVec 32)) Bool)

(assert (=> b!910781 (= res!614654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910782 () Bool)

(declare-fun res!614653 () Bool)

(assert (=> b!910782 (=> (not res!614653) (not e!510755))))

(declare-datatypes ((List!18326 0))(
  ( (Nil!18323) (Cons!18322 (h!19468 (_ BitVec 64)) (t!25919 List!18326)) )
))
(declare-fun arrayNoDuplicates!0 (array!53974 (_ BitVec 32) List!18326) Bool)

(assert (=> b!910782 (= res!614653 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18323))))

(declare-fun mapIsEmpty!30193 () Bool)

(assert (=> mapIsEmpty!30193 mapRes!30193))

(declare-fun res!614656 () Bool)

(assert (=> start!78064 (=> (not res!614656) (not e!510755))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78064 (= res!614656 (validMask!0 mask!1756))))

(assert (=> start!78064 e!510755))

(declare-fun array_inv!20262 (array!53972) Bool)

(assert (=> start!78064 (and (array_inv!20262 _values!1152) e!510754)))

(assert (=> start!78064 tp!57961))

(assert (=> start!78064 true))

(assert (=> start!78064 tp_is_empty!18981))

(declare-fun array_inv!20263 (array!53974) Bool)

(assert (=> start!78064 (array_inv!20263 _keys!1386)))

(assert (= (and start!78064 res!614656) b!910778))

(assert (= (and b!910778 res!614655) b!910781))

(assert (= (and b!910781 res!614654) b!910782))

(assert (= (and b!910782 res!614653) b!910779))

(assert (= (and b!910780 condMapEmpty!30193) mapIsEmpty!30193))

(assert (= (and b!910780 (not condMapEmpty!30193)) mapNonEmpty!30193))

(get-info :version)

(assert (= (and mapNonEmpty!30193 ((_ is ValueCellFull!9009) mapValue!30193)) b!910777))

(assert (= (and b!910780 ((_ is ValueCellFull!9009) mapDefault!30193)) b!910776))

(assert (= start!78064 b!910780))

(declare-fun m!845765 () Bool)

(assert (=> b!910781 m!845765))

(declare-fun m!845767 () Bool)

(assert (=> b!910782 m!845767))

(declare-fun m!845769 () Bool)

(assert (=> mapNonEmpty!30193 m!845769))

(declare-fun m!845771 () Bool)

(assert (=> start!78064 m!845771))

(declare-fun m!845773 () Bool)

(assert (=> start!78064 m!845773))

(declare-fun m!845775 () Bool)

(assert (=> start!78064 m!845775))

(declare-fun m!845777 () Bool)

(assert (=> b!910779 m!845777))

(assert (=> b!910779 m!845777))

(declare-fun m!845779 () Bool)

(assert (=> b!910779 m!845779))

(check-sat (not b!910779) b_and!27153 (not start!78064) (not b!910782) (not b!910781) (not mapNonEmpty!30193) (not b_next!16563) tp_is_empty!18981)
(check-sat b_and!27153 (not b_next!16563))
