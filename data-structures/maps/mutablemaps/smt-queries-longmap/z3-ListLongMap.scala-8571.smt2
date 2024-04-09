; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104672 () Bool)

(assert start!104672)

(declare-fun res!832501 () Bool)

(declare-fun e!707832 () Bool)

(assert (=> start!104672 (=> (not res!832501) (not e!707832))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104672 (= res!832501 (validMask!0 mask!1466))))

(assert (=> start!104672 e!707832))

(assert (=> start!104672 true))

(declare-datatypes ((array!80403 0))(
  ( (array!80404 (arr!38766 (Array (_ BitVec 32) (_ BitVec 64))) (size!39303 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80403)

(declare-fun array_inv!29523 (array!80403) Bool)

(assert (=> start!104672 (array_inv!29523 _keys!1118)))

(declare-datatypes ((V!47185 0))(
  ( (V!47186 (val!15745 Int)) )
))
(declare-datatypes ((ValueCell!14919 0))(
  ( (ValueCellFull!14919 (v!18441 V!47185)) (EmptyCell!14919) )
))
(declare-datatypes ((array!80405 0))(
  ( (array!80406 (arr!38767 (Array (_ BitVec 32) ValueCell!14919)) (size!39304 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80405)

(declare-fun e!707830 () Bool)

(declare-fun array_inv!29524 (array!80405) Bool)

(assert (=> start!104672 (and (array_inv!29524 _values!914) e!707830)))

(declare-fun b!1247567 () Bool)

(declare-fun e!707831 () Bool)

(declare-fun tp_is_empty!31365 () Bool)

(assert (=> b!1247567 (= e!707831 tp_is_empty!31365)))

(declare-fun b!1247568 () Bool)

(declare-fun e!707829 () Bool)

(assert (=> b!1247568 (= e!707829 tp_is_empty!31365)))

(declare-fun mapNonEmpty!48802 () Bool)

(declare-fun mapRes!48802 () Bool)

(declare-fun tp!92904 () Bool)

(assert (=> mapNonEmpty!48802 (= mapRes!48802 (and tp!92904 e!707831))))

(declare-fun mapKey!48802 () (_ BitVec 32))

(declare-fun mapValue!48802 () ValueCell!14919)

(declare-fun mapRest!48802 () (Array (_ BitVec 32) ValueCell!14919))

(assert (=> mapNonEmpty!48802 (= (arr!38767 _values!914) (store mapRest!48802 mapKey!48802 mapValue!48802))))

(declare-fun b!1247569 () Bool)

(declare-fun res!832502 () Bool)

(assert (=> b!1247569 (=> (not res!832502) (not e!707832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80403 (_ BitVec 32)) Bool)

(assert (=> b!1247569 (= res!832502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!48802 () Bool)

(assert (=> mapIsEmpty!48802 mapRes!48802))

(declare-fun b!1247570 () Bool)

(declare-fun res!832503 () Bool)

(assert (=> b!1247570 (=> (not res!832503) (not e!707832))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1247570 (= res!832503 (and (= (size!39304 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39303 _keys!1118) (size!39304 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247571 () Bool)

(assert (=> b!1247571 (= e!707832 false)))

(declare-fun lt!563235 () Bool)

(declare-datatypes ((List!27701 0))(
  ( (Nil!27698) (Cons!27697 (h!28906 (_ BitVec 64)) (t!41177 List!27701)) )
))
(declare-fun arrayNoDuplicates!0 (array!80403 (_ BitVec 32) List!27701) Bool)

(assert (=> b!1247571 (= lt!563235 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27698))))

(declare-fun b!1247572 () Bool)

(assert (=> b!1247572 (= e!707830 (and e!707829 mapRes!48802))))

(declare-fun condMapEmpty!48802 () Bool)

(declare-fun mapDefault!48802 () ValueCell!14919)

(assert (=> b!1247572 (= condMapEmpty!48802 (= (arr!38767 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14919)) mapDefault!48802)))))

(assert (= (and start!104672 res!832501) b!1247570))

(assert (= (and b!1247570 res!832503) b!1247569))

(assert (= (and b!1247569 res!832502) b!1247571))

(assert (= (and b!1247572 condMapEmpty!48802) mapIsEmpty!48802))

(assert (= (and b!1247572 (not condMapEmpty!48802)) mapNonEmpty!48802))

(get-info :version)

(assert (= (and mapNonEmpty!48802 ((_ is ValueCellFull!14919) mapValue!48802)) b!1247567))

(assert (= (and b!1247572 ((_ is ValueCellFull!14919) mapDefault!48802)) b!1247568))

(assert (= start!104672 b!1247572))

(declare-fun m!1149045 () Bool)

(assert (=> start!104672 m!1149045))

(declare-fun m!1149047 () Bool)

(assert (=> start!104672 m!1149047))

(declare-fun m!1149049 () Bool)

(assert (=> start!104672 m!1149049))

(declare-fun m!1149051 () Bool)

(assert (=> mapNonEmpty!48802 m!1149051))

(declare-fun m!1149053 () Bool)

(assert (=> b!1247569 m!1149053))

(declare-fun m!1149055 () Bool)

(assert (=> b!1247571 m!1149055))

(check-sat (not b!1247571) (not b!1247569) (not mapNonEmpty!48802) (not start!104672) tp_is_empty!31365)
(check-sat)
