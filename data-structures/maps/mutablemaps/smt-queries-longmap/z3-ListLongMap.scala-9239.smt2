; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110820 () Bool)

(assert start!110820)

(declare-fun b_free!29619 () Bool)

(declare-fun b_next!29619 () Bool)

(assert (=> start!110820 (= b_free!29619 (not b_next!29619))))

(declare-fun tp!104180 () Bool)

(declare-fun b_and!47837 () Bool)

(assert (=> start!110820 (= tp!104180 b_and!47837)))

(declare-fun b!1311114 () Bool)

(declare-fun e!747977 () Bool)

(declare-fun tp_is_empty!35349 () Bool)

(assert (=> b!1311114 (= e!747977 tp_is_empty!35349)))

(declare-fun mapIsEmpty!54652 () Bool)

(declare-fun mapRes!54652 () Bool)

(assert (=> mapIsEmpty!54652 mapRes!54652))

(declare-fun b!1311115 () Bool)

(declare-fun res!870493 () Bool)

(declare-fun e!747978 () Bool)

(assert (=> b!1311115 (=> (not res!870493) (not e!747978))))

(declare-datatypes ((array!87649 0))(
  ( (array!87650 (arr!42300 (Array (_ BitVec 32) (_ BitVec 64))) (size!42851 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87649)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52235 0))(
  ( (V!52236 (val!17749 Int)) )
))
(declare-datatypes ((ValueCell!16776 0))(
  ( (ValueCellFull!16776 (v!20374 V!52235)) (EmptyCell!16776) )
))
(declare-datatypes ((array!87651 0))(
  ( (array!87652 (arr!42301 (Array (_ BitVec 32) ValueCell!16776)) (size!42852 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87651)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1311115 (= res!870493 (and (= (size!42852 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42851 _keys!1628) (size!42852 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311116 () Bool)

(assert (=> b!1311116 (= e!747978 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585379 () Bool)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52235)

(declare-fun zeroValue!1296 () V!52235)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23042 0))(
  ( (tuple2!23043 (_1!11531 (_ BitVec 64)) (_2!11531 V!52235)) )
))
(declare-datatypes ((List!30207 0))(
  ( (Nil!30204) (Cons!30203 (h!31412 tuple2!23042) (t!43820 List!30207)) )
))
(declare-datatypes ((ListLongMap!20711 0))(
  ( (ListLongMap!20712 (toList!10371 List!30207)) )
))
(declare-fun contains!8457 (ListLongMap!20711 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5327 (array!87649 array!87651 (_ BitVec 32) (_ BitVec 32) V!52235 V!52235 (_ BitVec 32) Int) ListLongMap!20711)

(assert (=> b!1311116 (= lt!585379 (contains!8457 (getCurrentListMap!5327 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1311117 () Bool)

(declare-fun e!747979 () Bool)

(assert (=> b!1311117 (= e!747979 (and e!747977 mapRes!54652))))

(declare-fun condMapEmpty!54652 () Bool)

(declare-fun mapDefault!54652 () ValueCell!16776)

(assert (=> b!1311117 (= condMapEmpty!54652 (= (arr!42301 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16776)) mapDefault!54652)))))

(declare-fun b!1311118 () Bool)

(declare-fun res!870497 () Bool)

(assert (=> b!1311118 (=> (not res!870497) (not e!747978))))

(declare-datatypes ((List!30208 0))(
  ( (Nil!30205) (Cons!30204 (h!31413 (_ BitVec 64)) (t!43821 List!30208)) )
))
(declare-fun arrayNoDuplicates!0 (array!87649 (_ BitVec 32) List!30208) Bool)

(assert (=> b!1311118 (= res!870497 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30205))))

(declare-fun b!1311119 () Bool)

(declare-fun res!870496 () Bool)

(assert (=> b!1311119 (=> (not res!870496) (not e!747978))))

(assert (=> b!1311119 (= res!870496 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42851 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54652 () Bool)

(declare-fun tp!104179 () Bool)

(declare-fun e!747976 () Bool)

(assert (=> mapNonEmpty!54652 (= mapRes!54652 (and tp!104179 e!747976))))

(declare-fun mapRest!54652 () (Array (_ BitVec 32) ValueCell!16776))

(declare-fun mapKey!54652 () (_ BitVec 32))

(declare-fun mapValue!54652 () ValueCell!16776)

(assert (=> mapNonEmpty!54652 (= (arr!42301 _values!1354) (store mapRest!54652 mapKey!54652 mapValue!54652))))

(declare-fun b!1311120 () Bool)

(declare-fun res!870495 () Bool)

(assert (=> b!1311120 (=> (not res!870495) (not e!747978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87649 (_ BitVec 32)) Bool)

(assert (=> b!1311120 (= res!870495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!870494 () Bool)

(assert (=> start!110820 (=> (not res!870494) (not e!747978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110820 (= res!870494 (validMask!0 mask!2040))))

(assert (=> start!110820 e!747978))

(assert (=> start!110820 tp!104180))

(declare-fun array_inv!31953 (array!87649) Bool)

(assert (=> start!110820 (array_inv!31953 _keys!1628)))

(assert (=> start!110820 true))

(assert (=> start!110820 tp_is_empty!35349))

(declare-fun array_inv!31954 (array!87651) Bool)

(assert (=> start!110820 (and (array_inv!31954 _values!1354) e!747979)))

(declare-fun b!1311121 () Bool)

(assert (=> b!1311121 (= e!747976 tp_is_empty!35349)))

(assert (= (and start!110820 res!870494) b!1311115))

(assert (= (and b!1311115 res!870493) b!1311120))

(assert (= (and b!1311120 res!870495) b!1311118))

(assert (= (and b!1311118 res!870497) b!1311119))

(assert (= (and b!1311119 res!870496) b!1311116))

(assert (= (and b!1311117 condMapEmpty!54652) mapIsEmpty!54652))

(assert (= (and b!1311117 (not condMapEmpty!54652)) mapNonEmpty!54652))

(get-info :version)

(assert (= (and mapNonEmpty!54652 ((_ is ValueCellFull!16776) mapValue!54652)) b!1311121))

(assert (= (and b!1311117 ((_ is ValueCellFull!16776) mapDefault!54652)) b!1311114))

(assert (= start!110820 b!1311117))

(declare-fun m!1200697 () Bool)

(assert (=> mapNonEmpty!54652 m!1200697))

(declare-fun m!1200699 () Bool)

(assert (=> start!110820 m!1200699))

(declare-fun m!1200701 () Bool)

(assert (=> start!110820 m!1200701))

(declare-fun m!1200703 () Bool)

(assert (=> start!110820 m!1200703))

(declare-fun m!1200705 () Bool)

(assert (=> b!1311118 m!1200705))

(declare-fun m!1200707 () Bool)

(assert (=> b!1311116 m!1200707))

(assert (=> b!1311116 m!1200707))

(declare-fun m!1200709 () Bool)

(assert (=> b!1311116 m!1200709))

(declare-fun m!1200711 () Bool)

(assert (=> b!1311120 m!1200711))

(check-sat (not start!110820) b_and!47837 (not b!1311120) (not mapNonEmpty!54652) tp_is_empty!35349 (not b_next!29619) (not b!1311116) (not b!1311118))
(check-sat b_and!47837 (not b_next!29619))
