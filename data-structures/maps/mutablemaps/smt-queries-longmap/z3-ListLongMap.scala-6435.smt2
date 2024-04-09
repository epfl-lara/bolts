; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82436 () Bool)

(assert start!82436)

(declare-fun b!960778 () Bool)

(declare-fun e!541624 () Bool)

(declare-fun e!541625 () Bool)

(declare-fun mapRes!34060 () Bool)

(assert (=> b!960778 (= e!541624 (and e!541625 mapRes!34060))))

(declare-fun condMapEmpty!34060 () Bool)

(declare-datatypes ((V!33499 0))(
  ( (V!33500 (val!10744 Int)) )
))
(declare-datatypes ((ValueCell!10212 0))(
  ( (ValueCellFull!10212 (v!13301 V!33499)) (EmptyCell!10212) )
))
(declare-datatypes ((array!58871 0))(
  ( (array!58872 (arr!28305 (Array (_ BitVec 32) ValueCell!10212)) (size!28785 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58871)

(declare-fun mapDefault!34060 () ValueCell!10212)

(assert (=> b!960778 (= condMapEmpty!34060 (= (arr!28305 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10212)) mapDefault!34060)))))

(declare-fun b!960779 () Bool)

(declare-fun tp_is_empty!21387 () Bool)

(assert (=> b!960779 (= e!541625 tp_is_empty!21387)))

(declare-fun mapIsEmpty!34060 () Bool)

(assert (=> mapIsEmpty!34060 mapRes!34060))

(declare-fun res!643236 () Bool)

(declare-fun e!541628 () Bool)

(assert (=> start!82436 (=> (not res!643236) (not e!541628))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82436 (= res!643236 (validMask!0 mask!2110))))

(assert (=> start!82436 e!541628))

(assert (=> start!82436 true))

(declare-fun array_inv!21865 (array!58871) Bool)

(assert (=> start!82436 (and (array_inv!21865 _values!1400) e!541624)))

(declare-datatypes ((array!58873 0))(
  ( (array!58874 (arr!28306 (Array (_ BitVec 32) (_ BitVec 64))) (size!28786 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58873)

(declare-fun array_inv!21866 (array!58873) Bool)

(assert (=> start!82436 (array_inv!21866 _keys!1686)))

(declare-fun b!960780 () Bool)

(declare-fun e!541627 () Bool)

(assert (=> b!960780 (= e!541627 tp_is_empty!21387)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun b!960781 () Bool)

(assert (=> b!960781 (= e!541628 (and (= (size!28785 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28786 _keys!1686) (size!28785 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011) (not (= (size!28786 _keys!1686) (bvadd #b00000000000000000000000000000001 mask!2110)))))))

(declare-fun mapNonEmpty!34060 () Bool)

(declare-fun tp!64990 () Bool)

(assert (=> mapNonEmpty!34060 (= mapRes!34060 (and tp!64990 e!541627))))

(declare-fun mapValue!34060 () ValueCell!10212)

(declare-fun mapRest!34060 () (Array (_ BitVec 32) ValueCell!10212))

(declare-fun mapKey!34060 () (_ BitVec 32))

(assert (=> mapNonEmpty!34060 (= (arr!28305 _values!1400) (store mapRest!34060 mapKey!34060 mapValue!34060))))

(assert (= (and start!82436 res!643236) b!960781))

(assert (= (and b!960778 condMapEmpty!34060) mapIsEmpty!34060))

(assert (= (and b!960778 (not condMapEmpty!34060)) mapNonEmpty!34060))

(get-info :version)

(assert (= (and mapNonEmpty!34060 ((_ is ValueCellFull!10212) mapValue!34060)) b!960780))

(assert (= (and b!960778 ((_ is ValueCellFull!10212) mapDefault!34060)) b!960779))

(assert (= start!82436 b!960778))

(declare-fun m!891029 () Bool)

(assert (=> start!82436 m!891029))

(declare-fun m!891031 () Bool)

(assert (=> start!82436 m!891031))

(declare-fun m!891033 () Bool)

(assert (=> start!82436 m!891033))

(declare-fun m!891035 () Bool)

(assert (=> mapNonEmpty!34060 m!891035))

(check-sat (not start!82436) (not mapNonEmpty!34060) tp_is_empty!21387)
(check-sat)
