; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111096 () Bool)

(assert start!111096)

(declare-fun b_free!29895 () Bool)

(declare-fun b_next!29895 () Bool)

(assert (=> start!111096 (= b_free!29895 (not b_next!29895))))

(declare-fun tp!105007 () Bool)

(declare-fun b_and!48113 () Bool)

(assert (=> start!111096 (= tp!105007 b_and!48113)))

(declare-fun b!1314813 () Bool)

(declare-fun res!872954 () Bool)

(declare-fun e!750050 () Bool)

(assert (=> b!1314813 (=> (not res!872954) (not e!750050))))

(declare-datatypes ((array!88179 0))(
  ( (array!88180 (arr!42565 (Array (_ BitVec 32) (_ BitVec 64))) (size!43116 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88179)

(declare-datatypes ((List!30395 0))(
  ( (Nil!30392) (Cons!30391 (h!31600 (_ BitVec 64)) (t!44008 List!30395)) )
))
(declare-fun arrayNoDuplicates!0 (array!88179 (_ BitVec 32) List!30395) Bool)

(assert (=> b!1314813 (= res!872954 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30392))))

(declare-fun b!1314814 () Bool)

(assert (=> b!1314814 (= e!750050 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun lt!585784 () Bool)

(declare-datatypes ((V!52603 0))(
  ( (V!52604 (val!17887 Int)) )
))
(declare-fun minValue!1296 () V!52603)

(declare-datatypes ((ValueCell!16914 0))(
  ( (ValueCellFull!16914 (v!20512 V!52603)) (EmptyCell!16914) )
))
(declare-datatypes ((array!88181 0))(
  ( (array!88182 (arr!42566 (Array (_ BitVec 32) ValueCell!16914)) (size!43117 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88181)

(declare-fun zeroValue!1296 () V!52603)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23232 0))(
  ( (tuple2!23233 (_1!11626 (_ BitVec 64)) (_2!11626 V!52603)) )
))
(declare-datatypes ((List!30396 0))(
  ( (Nil!30393) (Cons!30392 (h!31601 tuple2!23232) (t!44009 List!30396)) )
))
(declare-datatypes ((ListLongMap!20901 0))(
  ( (ListLongMap!20902 (toList!10466 List!30396)) )
))
(declare-fun contains!8552 (ListLongMap!20901 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5422 (array!88179 array!88181 (_ BitVec 32) (_ BitVec 32) V!52603 V!52603 (_ BitVec 32) Int) ListLongMap!20901)

(assert (=> b!1314814 (= lt!585784 (contains!8552 (getCurrentListMap!5422 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1314815 () Bool)

(declare-fun e!750048 () Bool)

(declare-fun tp_is_empty!35625 () Bool)

(assert (=> b!1314815 (= e!750048 tp_is_empty!35625)))

(declare-fun res!872951 () Bool)

(assert (=> start!111096 (=> (not res!872951) (not e!750050))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111096 (= res!872951 (validMask!0 mask!2040))))

(assert (=> start!111096 e!750050))

(assert (=> start!111096 tp!105007))

(declare-fun array_inv!32121 (array!88179) Bool)

(assert (=> start!111096 (array_inv!32121 _keys!1628)))

(assert (=> start!111096 true))

(assert (=> start!111096 tp_is_empty!35625))

(declare-fun e!750046 () Bool)

(declare-fun array_inv!32122 (array!88181) Bool)

(assert (=> start!111096 (and (array_inv!32122 _values!1354) e!750046)))

(declare-fun mapIsEmpty!55066 () Bool)

(declare-fun mapRes!55066 () Bool)

(assert (=> mapIsEmpty!55066 mapRes!55066))

(declare-fun b!1314816 () Bool)

(declare-fun res!872953 () Bool)

(assert (=> b!1314816 (=> (not res!872953) (not e!750050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88179 (_ BitVec 32)) Bool)

(assert (=> b!1314816 (= res!872953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314817 () Bool)

(declare-fun e!750049 () Bool)

(assert (=> b!1314817 (= e!750046 (and e!750049 mapRes!55066))))

(declare-fun condMapEmpty!55066 () Bool)

(declare-fun mapDefault!55066 () ValueCell!16914)

(assert (=> b!1314817 (= condMapEmpty!55066 (= (arr!42566 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16914)) mapDefault!55066)))))

(declare-fun b!1314818 () Bool)

(assert (=> b!1314818 (= e!750049 tp_is_empty!35625)))

(declare-fun b!1314819 () Bool)

(declare-fun res!872950 () Bool)

(assert (=> b!1314819 (=> (not res!872950) (not e!750050))))

(assert (=> b!1314819 (= res!872950 (and (= (size!43117 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43116 _keys!1628) (size!43117 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314820 () Bool)

(declare-fun res!872952 () Bool)

(assert (=> b!1314820 (=> (not res!872952) (not e!750050))))

(assert (=> b!1314820 (= res!872952 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43116 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55066 () Bool)

(declare-fun tp!105008 () Bool)

(assert (=> mapNonEmpty!55066 (= mapRes!55066 (and tp!105008 e!750048))))

(declare-fun mapRest!55066 () (Array (_ BitVec 32) ValueCell!16914))

(declare-fun mapKey!55066 () (_ BitVec 32))

(declare-fun mapValue!55066 () ValueCell!16914)

(assert (=> mapNonEmpty!55066 (= (arr!42566 _values!1354) (store mapRest!55066 mapKey!55066 mapValue!55066))))

(assert (= (and start!111096 res!872951) b!1314819))

(assert (= (and b!1314819 res!872950) b!1314816))

(assert (= (and b!1314816 res!872953) b!1314813))

(assert (= (and b!1314813 res!872954) b!1314820))

(assert (= (and b!1314820 res!872952) b!1314814))

(assert (= (and b!1314817 condMapEmpty!55066) mapIsEmpty!55066))

(assert (= (and b!1314817 (not condMapEmpty!55066)) mapNonEmpty!55066))

(get-info :version)

(assert (= (and mapNonEmpty!55066 ((_ is ValueCellFull!16914) mapValue!55066)) b!1314815))

(assert (= (and b!1314817 ((_ is ValueCellFull!16914) mapDefault!55066)) b!1314818))

(assert (= start!111096 b!1314817))

(declare-fun m!1203217 () Bool)

(assert (=> mapNonEmpty!55066 m!1203217))

(declare-fun m!1203219 () Bool)

(assert (=> b!1314814 m!1203219))

(assert (=> b!1314814 m!1203219))

(declare-fun m!1203221 () Bool)

(assert (=> b!1314814 m!1203221))

(declare-fun m!1203223 () Bool)

(assert (=> b!1314816 m!1203223))

(declare-fun m!1203225 () Bool)

(assert (=> b!1314813 m!1203225))

(declare-fun m!1203227 () Bool)

(assert (=> start!111096 m!1203227))

(declare-fun m!1203229 () Bool)

(assert (=> start!111096 m!1203229))

(declare-fun m!1203231 () Bool)

(assert (=> start!111096 m!1203231))

(check-sat (not b!1314814) b_and!48113 (not b!1314813) (not mapNonEmpty!55066) (not start!111096) (not b_next!29895) tp_is_empty!35625 (not b!1314816))
(check-sat b_and!48113 (not b_next!29895))
