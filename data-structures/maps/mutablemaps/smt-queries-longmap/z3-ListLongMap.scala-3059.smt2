; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43206 () Bool)

(assert start!43206)

(declare-fun b!478573 () Bool)

(declare-fun e!281444 () Bool)

(declare-fun tp_is_empty!13587 () Bool)

(assert (=> b!478573 (= e!281444 tp_is_empty!13587)))

(declare-fun mapNonEmpty!22075 () Bool)

(declare-fun mapRes!22075 () Bool)

(declare-fun tp!42550 () Bool)

(assert (=> mapNonEmpty!22075 (= mapRes!22075 (and tp!42550 e!281444))))

(declare-fun mapKey!22075 () (_ BitVec 32))

(declare-datatypes ((V!19187 0))(
  ( (V!19188 (val!6841 Int)) )
))
(declare-datatypes ((ValueCell!6432 0))(
  ( (ValueCellFull!6432 (v!9126 V!19187)) (EmptyCell!6432) )
))
(declare-fun mapRest!22075 () (Array (_ BitVec 32) ValueCell!6432))

(declare-fun mapValue!22075 () ValueCell!6432)

(declare-datatypes ((array!30817 0))(
  ( (array!30818 (arr!14813 (Array (_ BitVec 32) ValueCell!6432)) (size!15171 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30817)

(assert (=> mapNonEmpty!22075 (= (arr!14813 _values!1516) (store mapRest!22075 mapKey!22075 mapValue!22075))))

(declare-fun b!478574 () Bool)

(declare-fun res!285588 () Bool)

(declare-fun e!281445 () Bool)

(assert (=> b!478574 (=> (not res!285588) (not e!281445))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30819 0))(
  ( (array!30820 (arr!14814 (Array (_ BitVec 32) (_ BitVec 64))) (size!15172 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30819)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478574 (= res!285588 (and (= (size!15171 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15172 _keys!1874) (size!15171 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun res!285587 () Bool)

(assert (=> start!43206 (=> (not res!285587) (not e!281445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43206 (= res!285587 (validMask!0 mask!2352))))

(assert (=> start!43206 e!281445))

(assert (=> start!43206 true))

(declare-fun e!281442 () Bool)

(declare-fun array_inv!10676 (array!30817) Bool)

(assert (=> start!43206 (and (array_inv!10676 _values!1516) e!281442)))

(declare-fun array_inv!10677 (array!30819) Bool)

(assert (=> start!43206 (array_inv!10677 _keys!1874)))

(declare-fun b!478575 () Bool)

(assert (=> b!478575 (= e!281445 false)))

(declare-fun lt!217727 () Bool)

(declare-datatypes ((List!9099 0))(
  ( (Nil!9096) (Cons!9095 (h!9951 (_ BitVec 64)) (t!15313 List!9099)) )
))
(declare-fun arrayNoDuplicates!0 (array!30819 (_ BitVec 32) List!9099) Bool)

(assert (=> b!478575 (= lt!217727 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9096))))

(declare-fun mapIsEmpty!22075 () Bool)

(assert (=> mapIsEmpty!22075 mapRes!22075))

(declare-fun b!478576 () Bool)

(declare-fun res!285586 () Bool)

(assert (=> b!478576 (=> (not res!285586) (not e!281445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30819 (_ BitVec 32)) Bool)

(assert (=> b!478576 (= res!285586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478577 () Bool)

(declare-fun e!281446 () Bool)

(assert (=> b!478577 (= e!281442 (and e!281446 mapRes!22075))))

(declare-fun condMapEmpty!22075 () Bool)

(declare-fun mapDefault!22075 () ValueCell!6432)

(assert (=> b!478577 (= condMapEmpty!22075 (= (arr!14813 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6432)) mapDefault!22075)))))

(declare-fun b!478578 () Bool)

(assert (=> b!478578 (= e!281446 tp_is_empty!13587)))

(assert (= (and start!43206 res!285587) b!478574))

(assert (= (and b!478574 res!285588) b!478576))

(assert (= (and b!478576 res!285586) b!478575))

(assert (= (and b!478577 condMapEmpty!22075) mapIsEmpty!22075))

(assert (= (and b!478577 (not condMapEmpty!22075)) mapNonEmpty!22075))

(get-info :version)

(assert (= (and mapNonEmpty!22075 ((_ is ValueCellFull!6432) mapValue!22075)) b!478573))

(assert (= (and b!478577 ((_ is ValueCellFull!6432) mapDefault!22075)) b!478578))

(assert (= start!43206 b!478577))

(declare-fun m!460765 () Bool)

(assert (=> mapNonEmpty!22075 m!460765))

(declare-fun m!460767 () Bool)

(assert (=> start!43206 m!460767))

(declare-fun m!460769 () Bool)

(assert (=> start!43206 m!460769))

(declare-fun m!460771 () Bool)

(assert (=> start!43206 m!460771))

(declare-fun m!460773 () Bool)

(assert (=> b!478575 m!460773))

(declare-fun m!460775 () Bool)

(assert (=> b!478576 m!460775))

(check-sat (not mapNonEmpty!22075) (not b!478576) (not b!478575) (not start!43206) tp_is_empty!13587)
(check-sat)
