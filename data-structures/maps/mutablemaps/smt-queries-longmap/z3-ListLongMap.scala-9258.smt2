; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110934 () Bool)

(assert start!110934)

(declare-fun b_free!29733 () Bool)

(declare-fun b_next!29733 () Bool)

(assert (=> start!110934 (= b_free!29733 (not b_next!29733))))

(declare-fun tp!104521 () Bool)

(declare-fun b_and!47951 () Bool)

(assert (=> start!110934 (= tp!104521 b_and!47951)))

(declare-fun b!1312806 () Bool)

(declare-fun e!748835 () Bool)

(assert (=> b!1312806 (= e!748835 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87875 0))(
  ( (array!87876 (arr!42413 (Array (_ BitVec 32) (_ BitVec 64))) (size!42964 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87875)

(declare-fun lt!585550 () Bool)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!52387 0))(
  ( (V!52388 (val!17806 Int)) )
))
(declare-fun minValue!1296 () V!52387)

(declare-datatypes ((ValueCell!16833 0))(
  ( (ValueCellFull!16833 (v!20431 V!52387)) (EmptyCell!16833) )
))
(declare-datatypes ((array!87877 0))(
  ( (array!87878 (arr!42414 (Array (_ BitVec 32) ValueCell!16833)) (size!42965 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87877)

(declare-fun zeroValue!1296 () V!52387)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23130 0))(
  ( (tuple2!23131 (_1!11575 (_ BitVec 64)) (_2!11575 V!52387)) )
))
(declare-datatypes ((List!30290 0))(
  ( (Nil!30287) (Cons!30286 (h!31495 tuple2!23130) (t!43903 List!30290)) )
))
(declare-datatypes ((ListLongMap!20799 0))(
  ( (ListLongMap!20800 (toList!10415 List!30290)) )
))
(declare-fun contains!8501 (ListLongMap!20799 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5371 (array!87875 array!87877 (_ BitVec 32) (_ BitVec 32) V!52387 V!52387 (_ BitVec 32) Int) ListLongMap!20799)

(assert (=> b!1312806 (= lt!585550 (contains!8501 (getCurrentListMap!5371 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1312807 () Bool)

(declare-fun e!748832 () Bool)

(declare-fun tp_is_empty!35463 () Bool)

(assert (=> b!1312807 (= e!748832 tp_is_empty!35463)))

(declare-fun b!1312808 () Bool)

(declare-fun res!871673 () Bool)

(assert (=> b!1312808 (=> (not res!871673) (not e!748835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87875 (_ BitVec 32)) Bool)

(assert (=> b!1312808 (= res!871673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54823 () Bool)

(declare-fun mapRes!54823 () Bool)

(declare-fun tp!104522 () Bool)

(assert (=> mapNonEmpty!54823 (= mapRes!54823 (and tp!104522 e!748832))))

(declare-fun mapValue!54823 () ValueCell!16833)

(declare-fun mapKey!54823 () (_ BitVec 32))

(declare-fun mapRest!54823 () (Array (_ BitVec 32) ValueCell!16833))

(assert (=> mapNonEmpty!54823 (= (arr!42414 _values!1354) (store mapRest!54823 mapKey!54823 mapValue!54823))))

(declare-fun b!1312809 () Bool)

(declare-fun res!871672 () Bool)

(assert (=> b!1312809 (=> (not res!871672) (not e!748835))))

(declare-datatypes ((List!30291 0))(
  ( (Nil!30288) (Cons!30287 (h!31496 (_ BitVec 64)) (t!43904 List!30291)) )
))
(declare-fun arrayNoDuplicates!0 (array!87875 (_ BitVec 32) List!30291) Bool)

(assert (=> b!1312809 (= res!871672 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30288))))

(declare-fun b!1312811 () Bool)

(declare-fun res!871675 () Bool)

(assert (=> b!1312811 (=> (not res!871675) (not e!748835))))

(assert (=> b!1312811 (= res!871675 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42964 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312812 () Bool)

(declare-fun e!748834 () Bool)

(assert (=> b!1312812 (= e!748834 tp_is_empty!35463)))

(declare-fun mapIsEmpty!54823 () Bool)

(assert (=> mapIsEmpty!54823 mapRes!54823))

(declare-fun b!1312813 () Bool)

(declare-fun e!748833 () Bool)

(assert (=> b!1312813 (= e!748833 (and e!748834 mapRes!54823))))

(declare-fun condMapEmpty!54823 () Bool)

(declare-fun mapDefault!54823 () ValueCell!16833)

(assert (=> b!1312813 (= condMapEmpty!54823 (= (arr!42414 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16833)) mapDefault!54823)))))

(declare-fun res!871674 () Bool)

(assert (=> start!110934 (=> (not res!871674) (not e!748835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110934 (= res!871674 (validMask!0 mask!2040))))

(assert (=> start!110934 e!748835))

(assert (=> start!110934 tp!104521))

(declare-fun array_inv!32021 (array!87875) Bool)

(assert (=> start!110934 (array_inv!32021 _keys!1628)))

(assert (=> start!110934 true))

(assert (=> start!110934 tp_is_empty!35463))

(declare-fun array_inv!32022 (array!87877) Bool)

(assert (=> start!110934 (and (array_inv!32022 _values!1354) e!748833)))

(declare-fun b!1312810 () Bool)

(declare-fun res!871676 () Bool)

(assert (=> b!1312810 (=> (not res!871676) (not e!748835))))

(assert (=> b!1312810 (= res!871676 (and (= (size!42965 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42964 _keys!1628) (size!42965 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!110934 res!871674) b!1312810))

(assert (= (and b!1312810 res!871676) b!1312808))

(assert (= (and b!1312808 res!871673) b!1312809))

(assert (= (and b!1312809 res!871672) b!1312811))

(assert (= (and b!1312811 res!871675) b!1312806))

(assert (= (and b!1312813 condMapEmpty!54823) mapIsEmpty!54823))

(assert (= (and b!1312813 (not condMapEmpty!54823)) mapNonEmpty!54823))

(get-info :version)

(assert (= (and mapNonEmpty!54823 ((_ is ValueCellFull!16833) mapValue!54823)) b!1312807))

(assert (= (and b!1312813 ((_ is ValueCellFull!16833) mapDefault!54823)) b!1312812))

(assert (= start!110934 b!1312813))

(declare-fun m!1201879 () Bool)

(assert (=> mapNonEmpty!54823 m!1201879))

(declare-fun m!1201881 () Bool)

(assert (=> b!1312808 m!1201881))

(declare-fun m!1201883 () Bool)

(assert (=> b!1312809 m!1201883))

(declare-fun m!1201885 () Bool)

(assert (=> start!110934 m!1201885))

(declare-fun m!1201887 () Bool)

(assert (=> start!110934 m!1201887))

(declare-fun m!1201889 () Bool)

(assert (=> start!110934 m!1201889))

(declare-fun m!1201891 () Bool)

(assert (=> b!1312806 m!1201891))

(assert (=> b!1312806 m!1201891))

(declare-fun m!1201893 () Bool)

(assert (=> b!1312806 m!1201893))

(check-sat (not b!1312808) tp_is_empty!35463 b_and!47951 (not start!110934) (not mapNonEmpty!54823) (not b!1312806) (not b!1312809) (not b_next!29733))
(check-sat b_and!47951 (not b_next!29733))
