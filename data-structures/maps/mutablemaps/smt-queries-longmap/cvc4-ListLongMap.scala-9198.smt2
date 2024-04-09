; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110576 () Bool)

(assert start!110576)

(declare-fun b_free!29375 () Bool)

(declare-fun b_next!29375 () Bool)

(assert (=> start!110576 (= b_free!29375 (not b_next!29375))))

(declare-fun tp!103448 () Bool)

(declare-fun b_and!47593 () Bool)

(assert (=> start!110576 (= tp!103448 b_and!47593)))

(declare-fun b!1307538 () Bool)

(declare-fun e!746150 () Bool)

(declare-fun tp_is_empty!35105 () Bool)

(assert (=> b!1307538 (= e!746150 tp_is_empty!35105)))

(declare-fun mapNonEmpty!54286 () Bool)

(declare-fun mapRes!54286 () Bool)

(declare-fun tp!103447 () Bool)

(assert (=> mapNonEmpty!54286 (= mapRes!54286 (and tp!103447 e!746150))))

(declare-fun mapKey!54286 () (_ BitVec 32))

(declare-datatypes ((V!51909 0))(
  ( (V!51910 (val!17627 Int)) )
))
(declare-datatypes ((ValueCell!16654 0))(
  ( (ValueCellFull!16654 (v!20252 V!51909)) (EmptyCell!16654) )
))
(declare-fun mapRest!54286 () (Array (_ BitVec 32) ValueCell!16654))

(declare-datatypes ((array!87183 0))(
  ( (array!87184 (arr!42067 (Array (_ BitVec 32) ValueCell!16654)) (size!42618 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87183)

(declare-fun mapValue!54286 () ValueCell!16654)

(assert (=> mapNonEmpty!54286 (= (arr!42067 _values!1354) (store mapRest!54286 mapKey!54286 mapValue!54286))))

(declare-fun b!1307539 () Bool)

(declare-fun e!746149 () Bool)

(assert (=> b!1307539 (= e!746149 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87185 0))(
  ( (array!87186 (arr!42068 (Array (_ BitVec 32) (_ BitVec 64))) (size!42619 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87185)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!51909)

(declare-fun zeroValue!1296 () V!51909)

(declare-fun lt!585013 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22856 0))(
  ( (tuple2!22857 (_1!11438 (_ BitVec 64)) (_2!11438 V!51909)) )
))
(declare-datatypes ((List!30029 0))(
  ( (Nil!30026) (Cons!30025 (h!31234 tuple2!22856) (t!43642 List!30029)) )
))
(declare-datatypes ((ListLongMap!20525 0))(
  ( (ListLongMap!20526 (toList!10278 List!30029)) )
))
(declare-fun contains!8364 (ListLongMap!20525 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5234 (array!87185 array!87183 (_ BitVec 32) (_ BitVec 32) V!51909 V!51909 (_ BitVec 32) Int) ListLongMap!20525)

(assert (=> b!1307539 (= lt!585013 (contains!8364 (getCurrentListMap!5234 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun mapIsEmpty!54286 () Bool)

(assert (=> mapIsEmpty!54286 mapRes!54286))

(declare-fun b!1307540 () Bool)

(declare-fun res!868018 () Bool)

(assert (=> b!1307540 (=> (not res!868018) (not e!746149))))

(declare-datatypes ((List!30030 0))(
  ( (Nil!30027) (Cons!30026 (h!31235 (_ BitVec 64)) (t!43643 List!30030)) )
))
(declare-fun arrayNoDuplicates!0 (array!87185 (_ BitVec 32) List!30030) Bool)

(assert (=> b!1307540 (= res!868018 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30027))))

(declare-fun res!868019 () Bool)

(assert (=> start!110576 (=> (not res!868019) (not e!746149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110576 (= res!868019 (validMask!0 mask!2040))))

(assert (=> start!110576 e!746149))

(assert (=> start!110576 tp!103448))

(declare-fun array_inv!31797 (array!87185) Bool)

(assert (=> start!110576 (array_inv!31797 _keys!1628)))

(assert (=> start!110576 true))

(assert (=> start!110576 tp_is_empty!35105))

(declare-fun e!746147 () Bool)

(declare-fun array_inv!31798 (array!87183) Bool)

(assert (=> start!110576 (and (array_inv!31798 _values!1354) e!746147)))

(declare-fun b!1307541 () Bool)

(declare-fun res!868017 () Bool)

(assert (=> b!1307541 (=> (not res!868017) (not e!746149))))

(assert (=> b!1307541 (= res!868017 (and (= (size!42618 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42619 _keys!1628) (size!42618 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1307542 () Bool)

(declare-fun res!868016 () Bool)

(assert (=> b!1307542 (=> (not res!868016) (not e!746149))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87185 (_ BitVec 32)) Bool)

(assert (=> b!1307542 (= res!868016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307543 () Bool)

(declare-fun res!868015 () Bool)

(assert (=> b!1307543 (=> (not res!868015) (not e!746149))))

(assert (=> b!1307543 (= res!868015 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42619 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307544 () Bool)

(declare-fun e!746146 () Bool)

(assert (=> b!1307544 (= e!746147 (and e!746146 mapRes!54286))))

(declare-fun condMapEmpty!54286 () Bool)

(declare-fun mapDefault!54286 () ValueCell!16654)

