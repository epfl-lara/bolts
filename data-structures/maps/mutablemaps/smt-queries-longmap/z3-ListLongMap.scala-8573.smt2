; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104684 () Bool)

(assert start!104684)

(declare-fun b!1247675 () Bool)

(declare-fun e!707921 () Bool)

(declare-fun tp_is_empty!31377 () Bool)

(assert (=> b!1247675 (= e!707921 tp_is_empty!31377)))

(declare-fun b!1247676 () Bool)

(declare-fun res!832555 () Bool)

(declare-fun e!707918 () Bool)

(assert (=> b!1247676 (=> (not res!832555) (not e!707918))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80423 0))(
  ( (array!80424 (arr!38776 (Array (_ BitVec 32) (_ BitVec 64))) (size!39313 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80423)

(declare-datatypes ((V!47201 0))(
  ( (V!47202 (val!15751 Int)) )
))
(declare-datatypes ((ValueCell!14925 0))(
  ( (ValueCellFull!14925 (v!18447 V!47201)) (EmptyCell!14925) )
))
(declare-datatypes ((array!80425 0))(
  ( (array!80426 (arr!38777 (Array (_ BitVec 32) ValueCell!14925)) (size!39314 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80425)

(declare-fun mask!1466 () (_ BitVec 32))

(assert (=> b!1247676 (= res!832555 (and (= (size!39314 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39313 _keys!1118) (size!39314 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!48820 () Bool)

(declare-fun mapRes!48820 () Bool)

(assert (=> mapIsEmpty!48820 mapRes!48820))

(declare-fun mapNonEmpty!48820 () Bool)

(declare-fun tp!92922 () Bool)

(declare-fun e!707919 () Bool)

(assert (=> mapNonEmpty!48820 (= mapRes!48820 (and tp!92922 e!707919))))

(declare-fun mapValue!48820 () ValueCell!14925)

(declare-fun mapRest!48820 () (Array (_ BitVec 32) ValueCell!14925))

(declare-fun mapKey!48820 () (_ BitVec 32))

(assert (=> mapNonEmpty!48820 (= (arr!38777 _values!914) (store mapRest!48820 mapKey!48820 mapValue!48820))))

(declare-fun b!1247677 () Bool)

(assert (=> b!1247677 (= e!707918 false)))

(declare-fun lt!563253 () Bool)

(declare-datatypes ((List!27705 0))(
  ( (Nil!27702) (Cons!27701 (h!28910 (_ BitVec 64)) (t!41181 List!27705)) )
))
(declare-fun arrayNoDuplicates!0 (array!80423 (_ BitVec 32) List!27705) Bool)

(assert (=> b!1247677 (= lt!563253 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27702))))

(declare-fun b!1247678 () Bool)

(declare-fun e!707922 () Bool)

(assert (=> b!1247678 (= e!707922 (and e!707921 mapRes!48820))))

(declare-fun condMapEmpty!48820 () Bool)

(declare-fun mapDefault!48820 () ValueCell!14925)

(assert (=> b!1247678 (= condMapEmpty!48820 (= (arr!38777 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14925)) mapDefault!48820)))))

(declare-fun b!1247679 () Bool)

(assert (=> b!1247679 (= e!707919 tp_is_empty!31377)))

(declare-fun res!832556 () Bool)

(assert (=> start!104684 (=> (not res!832556) (not e!707918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104684 (= res!832556 (validMask!0 mask!1466))))

(assert (=> start!104684 e!707918))

(assert (=> start!104684 true))

(declare-fun array_inv!29531 (array!80423) Bool)

(assert (=> start!104684 (array_inv!29531 _keys!1118)))

(declare-fun array_inv!29532 (array!80425) Bool)

(assert (=> start!104684 (and (array_inv!29532 _values!914) e!707922)))

(declare-fun b!1247680 () Bool)

(declare-fun res!832557 () Bool)

(assert (=> b!1247680 (=> (not res!832557) (not e!707918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80423 (_ BitVec 32)) Bool)

(assert (=> b!1247680 (= res!832557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!104684 res!832556) b!1247676))

(assert (= (and b!1247676 res!832555) b!1247680))

(assert (= (and b!1247680 res!832557) b!1247677))

(assert (= (and b!1247678 condMapEmpty!48820) mapIsEmpty!48820))

(assert (= (and b!1247678 (not condMapEmpty!48820)) mapNonEmpty!48820))

(get-info :version)

(assert (= (and mapNonEmpty!48820 ((_ is ValueCellFull!14925) mapValue!48820)) b!1247679))

(assert (= (and b!1247678 ((_ is ValueCellFull!14925) mapDefault!48820)) b!1247675))

(assert (= start!104684 b!1247678))

(declare-fun m!1149117 () Bool)

(assert (=> mapNonEmpty!48820 m!1149117))

(declare-fun m!1149119 () Bool)

(assert (=> b!1247677 m!1149119))

(declare-fun m!1149121 () Bool)

(assert (=> start!104684 m!1149121))

(declare-fun m!1149123 () Bool)

(assert (=> start!104684 m!1149123))

(declare-fun m!1149125 () Bool)

(assert (=> start!104684 m!1149125))

(declare-fun m!1149127 () Bool)

(assert (=> b!1247680 m!1149127))

(check-sat tp_is_empty!31377 (not b!1247680) (not start!104684) (not mapNonEmpty!48820) (not b!1247677))
(check-sat)
