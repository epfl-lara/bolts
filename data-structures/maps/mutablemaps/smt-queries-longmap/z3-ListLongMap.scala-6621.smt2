; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83728 () Bool)

(assert start!83728)

(declare-fun b!977260 () Bool)

(declare-fun res!654179 () Bool)

(declare-fun e!550948 () Bool)

(assert (=> b!977260 (=> (not res!654179) (not e!550948))))

(declare-datatypes ((array!61025 0))(
  ( (array!61026 (arr!29366 (Array (_ BitVec 32) (_ BitVec 64))) (size!29846 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61025)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61025 (_ BitVec 32)) Bool)

(assert (=> b!977260 (= res!654179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!977261 () Bool)

(declare-fun e!550949 () Bool)

(declare-fun e!550945 () Bool)

(declare-fun mapRes!35783 () Bool)

(assert (=> b!977261 (= e!550949 (and e!550945 mapRes!35783))))

(declare-fun condMapEmpty!35783 () Bool)

(declare-datatypes ((V!34987 0))(
  ( (V!34988 (val!11302 Int)) )
))
(declare-datatypes ((ValueCell!10770 0))(
  ( (ValueCellFull!10770 (v!13864 V!34987)) (EmptyCell!10770) )
))
(declare-datatypes ((array!61027 0))(
  ( (array!61028 (arr!29367 (Array (_ BitVec 32) ValueCell!10770)) (size!29847 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61027)

(declare-fun mapDefault!35783 () ValueCell!10770)

(assert (=> b!977261 (= condMapEmpty!35783 (= (arr!29367 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10770)) mapDefault!35783)))))

(declare-fun b!977262 () Bool)

(declare-fun res!654180 () Bool)

(assert (=> b!977262 (=> (not res!654180) (not e!550948))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!977262 (= res!654180 (and (= (size!29847 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29846 _keys!1544) (size!29847 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35783 () Bool)

(declare-fun tp!68036 () Bool)

(declare-fun e!550946 () Bool)

(assert (=> mapNonEmpty!35783 (= mapRes!35783 (and tp!68036 e!550946))))

(declare-fun mapRest!35783 () (Array (_ BitVec 32) ValueCell!10770))

(declare-fun mapKey!35783 () (_ BitVec 32))

(declare-fun mapValue!35783 () ValueCell!10770)

(assert (=> mapNonEmpty!35783 (= (arr!29367 _values!1278) (store mapRest!35783 mapKey!35783 mapValue!35783))))

(declare-fun b!977263 () Bool)

(assert (=> b!977263 (= e!550948 false)))

(declare-fun lt!433408 () Bool)

(declare-datatypes ((List!20498 0))(
  ( (Nil!20495) (Cons!20494 (h!21656 (_ BitVec 64)) (t!29021 List!20498)) )
))
(declare-fun arrayNoDuplicates!0 (array!61025 (_ BitVec 32) List!20498) Bool)

(assert (=> b!977263 (= lt!433408 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20495))))

(declare-fun res!654178 () Bool)

(assert (=> start!83728 (=> (not res!654178) (not e!550948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83728 (= res!654178 (validMask!0 mask!1948))))

(assert (=> start!83728 e!550948))

(assert (=> start!83728 true))

(declare-fun array_inv!22605 (array!61027) Bool)

(assert (=> start!83728 (and (array_inv!22605 _values!1278) e!550949)))

(declare-fun array_inv!22606 (array!61025) Bool)

(assert (=> start!83728 (array_inv!22606 _keys!1544)))

(declare-fun b!977264 () Bool)

(declare-fun tp_is_empty!22503 () Bool)

(assert (=> b!977264 (= e!550945 tp_is_empty!22503)))

(declare-fun mapIsEmpty!35783 () Bool)

(assert (=> mapIsEmpty!35783 mapRes!35783))

(declare-fun b!977265 () Bool)

(assert (=> b!977265 (= e!550946 tp_is_empty!22503)))

(assert (= (and start!83728 res!654178) b!977262))

(assert (= (and b!977262 res!654180) b!977260))

(assert (= (and b!977260 res!654179) b!977263))

(assert (= (and b!977261 condMapEmpty!35783) mapIsEmpty!35783))

(assert (= (and b!977261 (not condMapEmpty!35783)) mapNonEmpty!35783))

(get-info :version)

(assert (= (and mapNonEmpty!35783 ((_ is ValueCellFull!10770) mapValue!35783)) b!977265))

(assert (= (and b!977261 ((_ is ValueCellFull!10770) mapDefault!35783)) b!977264))

(assert (= start!83728 b!977261))

(declare-fun m!904643 () Bool)

(assert (=> b!977260 m!904643))

(declare-fun m!904645 () Bool)

(assert (=> mapNonEmpty!35783 m!904645))

(declare-fun m!904647 () Bool)

(assert (=> b!977263 m!904647))

(declare-fun m!904649 () Bool)

(assert (=> start!83728 m!904649))

(declare-fun m!904651 () Bool)

(assert (=> start!83728 m!904651))

(declare-fun m!904653 () Bool)

(assert (=> start!83728 m!904653))

(check-sat tp_is_empty!22503 (not mapNonEmpty!35783) (not start!83728) (not b!977263) (not b!977260))
(check-sat)
