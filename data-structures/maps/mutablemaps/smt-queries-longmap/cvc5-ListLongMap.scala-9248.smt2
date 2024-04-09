; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110872 () Bool)

(assert start!110872)

(declare-fun b_free!29671 () Bool)

(declare-fun b_next!29671 () Bool)

(assert (=> start!110872 (= b_free!29671 (not b_next!29671))))

(declare-fun tp!104335 () Bool)

(declare-fun b_and!47889 () Bool)

(assert (=> start!110872 (= tp!104335 b_and!47889)))

(declare-fun b!1311891 () Bool)

(declare-fun res!871040 () Bool)

(declare-fun e!748366 () Bool)

(assert (=> b!1311891 (=> (not res!871040) (not e!748366))))

(declare-datatypes ((array!87753 0))(
  ( (array!87754 (arr!42352 (Array (_ BitVec 32) (_ BitVec 64))) (size!42903 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87753)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1311891 (= res!871040 (validKeyInArray!0 (select (arr!42352 _keys!1628) from!2020)))))

(declare-fun b!1311892 () Bool)

(declare-fun e!748367 () Bool)

(declare-fun tp_is_empty!35401 () Bool)

(assert (=> b!1311892 (= e!748367 tp_is_empty!35401)))

(declare-fun b!1311893 () Bool)

(declare-fun res!871043 () Bool)

(assert (=> b!1311893 (=> (not res!871043) (not e!748366))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311893 (= res!871043 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1311894 () Bool)

(declare-fun res!871037 () Bool)

(assert (=> b!1311894 (=> (not res!871037) (not e!748366))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52305 0))(
  ( (V!52306 (val!17775 Int)) )
))
(declare-datatypes ((ValueCell!16802 0))(
  ( (ValueCellFull!16802 (v!20400 V!52305)) (EmptyCell!16802) )
))
(declare-datatypes ((array!87755 0))(
  ( (array!87756 (arr!42353 (Array (_ BitVec 32) ValueCell!16802)) (size!42904 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87755)

(assert (=> b!1311894 (= res!871037 (and (= (size!42904 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42903 _keys!1628) (size!42904 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!54730 () Bool)

(declare-fun mapRes!54730 () Bool)

(assert (=> mapIsEmpty!54730 mapRes!54730))

(declare-fun b!1311895 () Bool)

(declare-fun res!871042 () Bool)

(assert (=> b!1311895 (=> (not res!871042) (not e!748366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87753 (_ BitVec 32)) Bool)

(assert (=> b!1311895 (= res!871042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311896 () Bool)

(declare-fun res!871038 () Bool)

(assert (=> b!1311896 (=> (not res!871038) (not e!748366))))

(declare-fun k!1175 () (_ BitVec 64))

(assert (=> b!1311896 (= res!871038 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42903 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311890 () Bool)

(declare-fun e!748368 () Bool)

(assert (=> b!1311890 (= e!748368 tp_is_empty!35401)))

(declare-fun res!871036 () Bool)

(assert (=> start!110872 (=> (not res!871036) (not e!748366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110872 (= res!871036 (validMask!0 mask!2040))))

(assert (=> start!110872 e!748366))

(assert (=> start!110872 tp!104335))

(declare-fun array_inv!31983 (array!87753) Bool)

(assert (=> start!110872 (array_inv!31983 _keys!1628)))

(assert (=> start!110872 true))

(assert (=> start!110872 tp_is_empty!35401))

(declare-fun e!748369 () Bool)

(declare-fun array_inv!31984 (array!87755) Bool)

(assert (=> start!110872 (and (array_inv!31984 _values!1354) e!748369)))

(declare-fun b!1311897 () Bool)

(declare-fun res!871035 () Bool)

(assert (=> b!1311897 (=> (not res!871035) (not e!748366))))

(assert (=> b!1311897 (= res!871035 (not (= (select (arr!42352 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1311898 () Bool)

(declare-fun res!871041 () Bool)

(assert (=> b!1311898 (=> (not res!871041) (not e!748366))))

(declare-datatypes ((List!30243 0))(
  ( (Nil!30240) (Cons!30239 (h!31448 (_ BitVec 64)) (t!43856 List!30243)) )
))
(declare-fun arrayNoDuplicates!0 (array!87753 (_ BitVec 32) List!30243) Bool)

(assert (=> b!1311898 (= res!871041 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30240))))

(declare-fun b!1311899 () Bool)

(declare-fun res!871039 () Bool)

(assert (=> b!1311899 (=> (not res!871039) (not e!748366))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52305)

(declare-fun zeroValue!1296 () V!52305)

(declare-datatypes ((tuple2!23082 0))(
  ( (tuple2!23083 (_1!11551 (_ BitVec 64)) (_2!11551 V!52305)) )
))
(declare-datatypes ((List!30244 0))(
  ( (Nil!30241) (Cons!30240 (h!31449 tuple2!23082) (t!43857 List!30244)) )
))
(declare-datatypes ((ListLongMap!20751 0))(
  ( (ListLongMap!20752 (toList!10391 List!30244)) )
))
(declare-fun contains!8477 (ListLongMap!20751 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5347 (array!87753 array!87755 (_ BitVec 32) (_ BitVec 32) V!52305 V!52305 (_ BitVec 32) Int) ListLongMap!20751)

(assert (=> b!1311899 (= res!871039 (contains!8477 (getCurrentListMap!5347 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun mapNonEmpty!54730 () Bool)

(declare-fun tp!104336 () Bool)

(assert (=> mapNonEmpty!54730 (= mapRes!54730 (and tp!104336 e!748368))))

(declare-fun mapKey!54730 () (_ BitVec 32))

(declare-fun mapValue!54730 () ValueCell!16802)

(declare-fun mapRest!54730 () (Array (_ BitVec 32) ValueCell!16802))

(assert (=> mapNonEmpty!54730 (= (arr!42353 _values!1354) (store mapRest!54730 mapKey!54730 mapValue!54730))))

(declare-fun b!1311900 () Bool)

(assert (=> b!1311900 (= e!748369 (and e!748367 mapRes!54730))))

(declare-fun condMapEmpty!54730 () Bool)

(declare-fun mapDefault!54730 () ValueCell!16802)

