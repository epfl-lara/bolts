; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83642 () Bool)

(assert start!83642)

(declare-fun b!976764 () Bool)

(declare-fun e!550539 () Bool)

(declare-fun tp_is_empty!22461 () Bool)

(assert (=> b!976764 (= e!550539 tp_is_empty!22461)))

(declare-fun mapNonEmpty!35705 () Bool)

(declare-fun mapRes!35705 () Bool)

(declare-fun tp!67958 () Bool)

(declare-fun e!550535 () Bool)

(assert (=> mapNonEmpty!35705 (= mapRes!35705 (and tp!67958 e!550535))))

(declare-datatypes ((V!34931 0))(
  ( (V!34932 (val!11281 Int)) )
))
(declare-datatypes ((ValueCell!10749 0))(
  ( (ValueCellFull!10749 (v!13842 V!34931)) (EmptyCell!10749) )
))
(declare-datatypes ((array!60937 0))(
  ( (array!60938 (arr!29327 (Array (_ BitVec 32) ValueCell!10749)) (size!29807 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!60937)

(declare-fun mapRest!35705 () (Array (_ BitVec 32) ValueCell!10749))

(declare-fun mapValue!35705 () ValueCell!10749)

(declare-fun mapKey!35705 () (_ BitVec 32))

(assert (=> mapNonEmpty!35705 (= (arr!29327 _values!1278) (store mapRest!35705 mapKey!35705 mapValue!35705))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun e!550536 () Bool)

(declare-datatypes ((array!60939 0))(
  ( (array!60940 (arr!29328 (Array (_ BitVec 32) (_ BitVec 64))) (size!29808 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!60939)

(declare-fun b!976765 () Bool)

(assert (=> b!976765 (= e!550536 (and (= (size!29807 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29808 _keys!1544) (size!29807 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011) (not (= (size!29808 _keys!1544) (bvadd #b00000000000000000000000000000001 mask!1948)))))))

(declare-fun b!976766 () Bool)

(assert (=> b!976766 (= e!550535 tp_is_empty!22461)))

(declare-fun res!653935 () Bool)

(assert (=> start!83642 (=> (not res!653935) (not e!550536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83642 (= res!653935 (validMask!0 mask!1948))))

(assert (=> start!83642 e!550536))

(assert (=> start!83642 true))

(declare-fun e!550537 () Bool)

(declare-fun array_inv!22579 (array!60937) Bool)

(assert (=> start!83642 (and (array_inv!22579 _values!1278) e!550537)))

(declare-fun array_inv!22580 (array!60939) Bool)

(assert (=> start!83642 (array_inv!22580 _keys!1544)))

(declare-fun mapIsEmpty!35705 () Bool)

(assert (=> mapIsEmpty!35705 mapRes!35705))

(declare-fun b!976767 () Bool)

(assert (=> b!976767 (= e!550537 (and e!550539 mapRes!35705))))

(declare-fun condMapEmpty!35705 () Bool)

(declare-fun mapDefault!35705 () ValueCell!10749)

(assert (=> b!976767 (= condMapEmpty!35705 (= (arr!29327 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10749)) mapDefault!35705)))))

(assert (= (and start!83642 res!653935) b!976765))

(assert (= (and b!976767 condMapEmpty!35705) mapIsEmpty!35705))

(assert (= (and b!976767 (not condMapEmpty!35705)) mapNonEmpty!35705))

(get-info :version)

(assert (= (and mapNonEmpty!35705 ((_ is ValueCellFull!10749) mapValue!35705)) b!976766))

(assert (= (and b!976767 ((_ is ValueCellFull!10749) mapDefault!35705)) b!976764))

(assert (= start!83642 b!976767))

(declare-fun m!904335 () Bool)

(assert (=> mapNonEmpty!35705 m!904335))

(declare-fun m!904337 () Bool)

(assert (=> start!83642 m!904337))

(declare-fun m!904339 () Bool)

(assert (=> start!83642 m!904339))

(declare-fun m!904341 () Bool)

(assert (=> start!83642 m!904341))

(check-sat (not start!83642) (not mapNonEmpty!35705) tp_is_empty!22461)
(check-sat)
