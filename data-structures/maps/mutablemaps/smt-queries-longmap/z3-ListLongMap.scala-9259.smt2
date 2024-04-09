; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110940 () Bool)

(assert start!110940)

(declare-fun b_free!29739 () Bool)

(declare-fun b_next!29739 () Bool)

(assert (=> start!110940 (= b_free!29739 (not b_next!29739))))

(declare-fun tp!104540 () Bool)

(declare-fun b_and!47957 () Bool)

(assert (=> start!110940 (= tp!104540 b_and!47957)))

(declare-fun mapNonEmpty!54832 () Bool)

(declare-fun mapRes!54832 () Bool)

(declare-fun tp!104539 () Bool)

(declare-fun e!748879 () Bool)

(assert (=> mapNonEmpty!54832 (= mapRes!54832 (and tp!104539 e!748879))))

(declare-datatypes ((V!52395 0))(
  ( (V!52396 (val!17809 Int)) )
))
(declare-datatypes ((ValueCell!16836 0))(
  ( (ValueCellFull!16836 (v!20434 V!52395)) (EmptyCell!16836) )
))
(declare-fun mapValue!54832 () ValueCell!16836)

(declare-fun mapRest!54832 () (Array (_ BitVec 32) ValueCell!16836))

(declare-datatypes ((array!87887 0))(
  ( (array!87888 (arr!42419 (Array (_ BitVec 32) ValueCell!16836)) (size!42970 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87887)

(declare-fun mapKey!54832 () (_ BitVec 32))

(assert (=> mapNonEmpty!54832 (= (arr!42419 _values!1354) (store mapRest!54832 mapKey!54832 mapValue!54832))))

(declare-fun res!871719 () Bool)

(declare-fun e!748878 () Bool)

(assert (=> start!110940 (=> (not res!871719) (not e!748878))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110940 (= res!871719 (validMask!0 mask!2040))))

(assert (=> start!110940 e!748878))

(assert (=> start!110940 tp!104540))

(declare-datatypes ((array!87889 0))(
  ( (array!87890 (arr!42420 (Array (_ BitVec 32) (_ BitVec 64))) (size!42971 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87889)

(declare-fun array_inv!32025 (array!87889) Bool)

(assert (=> start!110940 (array_inv!32025 _keys!1628)))

(assert (=> start!110940 true))

(declare-fun tp_is_empty!35469 () Bool)

(assert (=> start!110940 tp_is_empty!35469))

(declare-fun e!748876 () Bool)

(declare-fun array_inv!32026 (array!87887) Bool)

(assert (=> start!110940 (and (array_inv!32026 _values!1354) e!748876)))

(declare-fun b!1312878 () Bool)

(declare-fun res!871718 () Bool)

(assert (=> b!1312878 (=> (not res!871718) (not e!748878))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312878 (= res!871718 (and (= (size!42970 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42971 _keys!1628) (size!42970 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312879 () Bool)

(declare-fun res!871720 () Bool)

(assert (=> b!1312879 (=> (not res!871720) (not e!748878))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312879 (= res!871720 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42971 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312880 () Bool)

(assert (=> b!1312880 (= e!748878 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52395)

(declare-fun zeroValue!1296 () V!52395)

(declare-fun lt!585559 () Bool)

(declare-datatypes ((tuple2!23134 0))(
  ( (tuple2!23135 (_1!11577 (_ BitVec 64)) (_2!11577 V!52395)) )
))
(declare-datatypes ((List!30294 0))(
  ( (Nil!30291) (Cons!30290 (h!31499 tuple2!23134) (t!43907 List!30294)) )
))
(declare-datatypes ((ListLongMap!20803 0))(
  ( (ListLongMap!20804 (toList!10417 List!30294)) )
))
(declare-fun contains!8503 (ListLongMap!20803 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5373 (array!87889 array!87887 (_ BitVec 32) (_ BitVec 32) V!52395 V!52395 (_ BitVec 32) Int) ListLongMap!20803)

(assert (=> b!1312880 (= lt!585559 (contains!8503 (getCurrentListMap!5373 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapIsEmpty!54832 () Bool)

(assert (=> mapIsEmpty!54832 mapRes!54832))

(declare-fun b!1312881 () Bool)

(declare-fun e!748880 () Bool)

(assert (=> b!1312881 (= e!748876 (and e!748880 mapRes!54832))))

(declare-fun condMapEmpty!54832 () Bool)

(declare-fun mapDefault!54832 () ValueCell!16836)

(assert (=> b!1312881 (= condMapEmpty!54832 (= (arr!42419 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16836)) mapDefault!54832)))))

(declare-fun b!1312882 () Bool)

(assert (=> b!1312882 (= e!748880 tp_is_empty!35469)))

(declare-fun b!1312883 () Bool)

(declare-fun res!871717 () Bool)

(assert (=> b!1312883 (=> (not res!871717) (not e!748878))))

(declare-datatypes ((List!30295 0))(
  ( (Nil!30292) (Cons!30291 (h!31500 (_ BitVec 64)) (t!43908 List!30295)) )
))
(declare-fun arrayNoDuplicates!0 (array!87889 (_ BitVec 32) List!30295) Bool)

(assert (=> b!1312883 (= res!871717 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30292))))

(declare-fun b!1312884 () Bool)

(assert (=> b!1312884 (= e!748879 tp_is_empty!35469)))

(declare-fun b!1312885 () Bool)

(declare-fun res!871721 () Bool)

(assert (=> b!1312885 (=> (not res!871721) (not e!748878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87889 (_ BitVec 32)) Bool)

(assert (=> b!1312885 (= res!871721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!110940 res!871719) b!1312878))

(assert (= (and b!1312878 res!871718) b!1312885))

(assert (= (and b!1312885 res!871721) b!1312883))

(assert (= (and b!1312883 res!871717) b!1312879))

(assert (= (and b!1312879 res!871720) b!1312880))

(assert (= (and b!1312881 condMapEmpty!54832) mapIsEmpty!54832))

(assert (= (and b!1312881 (not condMapEmpty!54832)) mapNonEmpty!54832))

(get-info :version)

(assert (= (and mapNonEmpty!54832 ((_ is ValueCellFull!16836) mapValue!54832)) b!1312884))

(assert (= (and b!1312881 ((_ is ValueCellFull!16836) mapDefault!54832)) b!1312882))

(assert (= start!110940 b!1312881))

(declare-fun m!1201927 () Bool)

(assert (=> start!110940 m!1201927))

(declare-fun m!1201929 () Bool)

(assert (=> start!110940 m!1201929))

(declare-fun m!1201931 () Bool)

(assert (=> start!110940 m!1201931))

(declare-fun m!1201933 () Bool)

(assert (=> mapNonEmpty!54832 m!1201933))

(declare-fun m!1201935 () Bool)

(assert (=> b!1312883 m!1201935))

(declare-fun m!1201937 () Bool)

(assert (=> b!1312880 m!1201937))

(assert (=> b!1312880 m!1201937))

(declare-fun m!1201939 () Bool)

(assert (=> b!1312880 m!1201939))

(declare-fun m!1201941 () Bool)

(assert (=> b!1312885 m!1201941))

(check-sat (not b!1312880) (not b!1312883) (not mapNonEmpty!54832) (not b_next!29739) tp_is_empty!35469 b_and!47957 (not start!110940) (not b!1312885))
(check-sat b_and!47957 (not b_next!29739))
