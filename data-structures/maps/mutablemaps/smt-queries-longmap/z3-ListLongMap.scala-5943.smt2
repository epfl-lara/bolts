; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77504 () Bool)

(assert start!77504)

(declare-fun b!902716 () Bool)

(declare-fun e!505704 () Bool)

(declare-fun e!505705 () Bool)

(declare-fun mapRes!29443 () Bool)

(assert (=> b!902716 (= e!505704 (and e!505705 mapRes!29443))))

(declare-fun condMapEmpty!29443 () Bool)

(declare-datatypes ((V!29617 0))(
  ( (V!29618 (val!9295 Int)) )
))
(declare-datatypes ((ValueCell!8763 0))(
  ( (ValueCellFull!8763 (v!11800 V!29617)) (EmptyCell!8763) )
))
(declare-datatypes ((array!53026 0))(
  ( (array!53027 (arr!25469 (Array (_ BitVec 32) ValueCell!8763)) (size!25929 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53026)

(declare-fun mapDefault!29443 () ValueCell!8763)

(assert (=> b!902716 (= condMapEmpty!29443 (= (arr!25469 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8763)) mapDefault!29443)))))

(declare-fun mapIsEmpty!29443 () Bool)

(assert (=> mapIsEmpty!29443 mapRes!29443))

(declare-fun mapNonEmpty!29443 () Bool)

(declare-fun tp!56503 () Bool)

(declare-fun e!505706 () Bool)

(assert (=> mapNonEmpty!29443 (= mapRes!29443 (and tp!56503 e!505706))))

(declare-fun mapRest!29443 () (Array (_ BitVec 32) ValueCell!8763))

(declare-fun mapKey!29443 () (_ BitVec 32))

(declare-fun mapValue!29443 () ValueCell!8763)

(assert (=> mapNonEmpty!29443 (= (arr!25469 _values!1152) (store mapRest!29443 mapKey!29443 mapValue!29443))))

(declare-fun res!609242 () Bool)

(declare-fun e!505703 () Bool)

(assert (=> start!77504 (=> (not res!609242) (not e!505703))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77504 (= res!609242 (validMask!0 mask!1756))))

(assert (=> start!77504 e!505703))

(assert (=> start!77504 true))

(declare-fun array_inv!19942 (array!53026) Bool)

(assert (=> start!77504 (and (array_inv!19942 _values!1152) e!505704)))

(declare-datatypes ((array!53028 0))(
  ( (array!53029 (arr!25470 (Array (_ BitVec 32) (_ BitVec 64))) (size!25930 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53028)

(declare-fun array_inv!19943 (array!53028) Bool)

(assert (=> start!77504 (array_inv!19943 _keys!1386)))

(declare-fun b!902717 () Bool)

(declare-fun tp_is_empty!18489 () Bool)

(assert (=> b!902717 (= e!505706 tp_is_empty!18489)))

(declare-fun b!902718 () Bool)

(declare-fun res!609241 () Bool)

(assert (=> b!902718 (=> (not res!609241) (not e!505703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53028 (_ BitVec 32)) Bool)

(assert (=> b!902718 (= res!609241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902719 () Bool)

(declare-fun res!609243 () Bool)

(assert (=> b!902719 (=> (not res!609243) (not e!505703))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902719 (= res!609243 (and (= (size!25929 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25930 _keys!1386) (size!25929 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902720 () Bool)

(assert (=> b!902720 (= e!505703 false)))

(declare-fun lt!407873 () Bool)

(declare-datatypes ((List!17975 0))(
  ( (Nil!17972) (Cons!17971 (h!19117 (_ BitVec 64)) (t!25366 List!17975)) )
))
(declare-fun arrayNoDuplicates!0 (array!53028 (_ BitVec 32) List!17975) Bool)

(assert (=> b!902720 (= lt!407873 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17972))))

(declare-fun b!902721 () Bool)

(assert (=> b!902721 (= e!505705 tp_is_empty!18489)))

(assert (= (and start!77504 res!609242) b!902719))

(assert (= (and b!902719 res!609243) b!902718))

(assert (= (and b!902718 res!609241) b!902720))

(assert (= (and b!902716 condMapEmpty!29443) mapIsEmpty!29443))

(assert (= (and b!902716 (not condMapEmpty!29443)) mapNonEmpty!29443))

(get-info :version)

(assert (= (and mapNonEmpty!29443 ((_ is ValueCellFull!8763) mapValue!29443)) b!902717))

(assert (= (and b!902716 ((_ is ValueCellFull!8763) mapDefault!29443)) b!902721))

(assert (= start!77504 b!902716))

(declare-fun m!838679 () Bool)

(assert (=> mapNonEmpty!29443 m!838679))

(declare-fun m!838681 () Bool)

(assert (=> start!77504 m!838681))

(declare-fun m!838683 () Bool)

(assert (=> start!77504 m!838683))

(declare-fun m!838685 () Bool)

(assert (=> start!77504 m!838685))

(declare-fun m!838687 () Bool)

(assert (=> b!902718 m!838687))

(declare-fun m!838689 () Bool)

(assert (=> b!902720 m!838689))

(check-sat (not mapNonEmpty!29443) (not start!77504) tp_is_empty!18489 (not b!902718) (not b!902720))
(check-sat)
