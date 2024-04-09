; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110846 () Bool)

(assert start!110846)

(declare-fun b_free!29645 () Bool)

(declare-fun b_next!29645 () Bool)

(assert (=> start!110846 (= b_free!29645 (not b_next!29645))))

(declare-fun tp!104258 () Bool)

(declare-fun b_and!47863 () Bool)

(assert (=> start!110846 (= tp!104258 b_and!47863)))

(declare-fun res!870690 () Bool)

(declare-fun e!748175 () Bool)

(assert (=> start!110846 (=> (not res!870690) (not e!748175))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110846 (= res!870690 (validMask!0 mask!2040))))

(assert (=> start!110846 e!748175))

(assert (=> start!110846 tp!104258))

(declare-datatypes ((array!87701 0))(
  ( (array!87702 (arr!42326 (Array (_ BitVec 32) (_ BitVec 64))) (size!42877 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87701)

(declare-fun array_inv!31969 (array!87701) Bool)

(assert (=> start!110846 (array_inv!31969 _keys!1628)))

(assert (=> start!110846 true))

(declare-fun tp_is_empty!35375 () Bool)

(assert (=> start!110846 tp_is_empty!35375))

(declare-datatypes ((V!52269 0))(
  ( (V!52270 (val!17762 Int)) )
))
(declare-datatypes ((ValueCell!16789 0))(
  ( (ValueCellFull!16789 (v!20387 V!52269)) (EmptyCell!16789) )
))
(declare-datatypes ((array!87703 0))(
  ( (array!87704 (arr!42327 (Array (_ BitVec 32) ValueCell!16789)) (size!42878 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87703)

(declare-fun e!748174 () Bool)

(declare-fun array_inv!31970 (array!87703) Bool)

(assert (=> start!110846 (and (array_inv!31970 _values!1354) e!748174)))

(declare-fun mapIsEmpty!54691 () Bool)

(declare-fun mapRes!54691 () Bool)

(assert (=> mapIsEmpty!54691 mapRes!54691))

(declare-fun b!1311426 () Bool)

(declare-fun e!748173 () Bool)

(assert (=> b!1311426 (= e!748173 tp_is_empty!35375)))

(declare-fun b!1311427 () Bool)

(declare-fun res!870691 () Bool)

(assert (=> b!1311427 (=> (not res!870691) (not e!748175))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1311427 (= res!870691 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42877 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311428 () Bool)

(declare-fun res!870692 () Bool)

(assert (=> b!1311428 (=> (not res!870692) (not e!748175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87701 (_ BitVec 32)) Bool)

(assert (=> b!1311428 (= res!870692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311429 () Bool)

(declare-fun e!748172 () Bool)

(assert (=> b!1311429 (= e!748172 tp_is_empty!35375)))

(declare-fun b!1311430 () Bool)

(assert (=> b!1311430 (= e!748175 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52269)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun zeroValue!1296 () V!52269)

(declare-fun lt!585418 () Bool)

(declare-datatypes ((tuple2!23060 0))(
  ( (tuple2!23061 (_1!11540 (_ BitVec 64)) (_2!11540 V!52269)) )
))
(declare-datatypes ((List!30224 0))(
  ( (Nil!30221) (Cons!30220 (h!31429 tuple2!23060) (t!43837 List!30224)) )
))
(declare-datatypes ((ListLongMap!20729 0))(
  ( (ListLongMap!20730 (toList!10380 List!30224)) )
))
(declare-fun contains!8466 (ListLongMap!20729 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5336 (array!87701 array!87703 (_ BitVec 32) (_ BitVec 32) V!52269 V!52269 (_ BitVec 32) Int) ListLongMap!20729)

(assert (=> b!1311430 (= lt!585418 (contains!8466 (getCurrentListMap!5336 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1311431 () Bool)

(declare-fun res!870689 () Bool)

(assert (=> b!1311431 (=> (not res!870689) (not e!748175))))

(assert (=> b!1311431 (= res!870689 (and (= (size!42878 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42877 _keys!1628) (size!42878 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54691 () Bool)

(declare-fun tp!104257 () Bool)

(assert (=> mapNonEmpty!54691 (= mapRes!54691 (and tp!104257 e!748172))))

(declare-fun mapKey!54691 () (_ BitVec 32))

(declare-fun mapRest!54691 () (Array (_ BitVec 32) ValueCell!16789))

(declare-fun mapValue!54691 () ValueCell!16789)

(assert (=> mapNonEmpty!54691 (= (arr!42327 _values!1354) (store mapRest!54691 mapKey!54691 mapValue!54691))))

(declare-fun b!1311432 () Bool)

(declare-fun res!870688 () Bool)

(assert (=> b!1311432 (=> (not res!870688) (not e!748175))))

(declare-datatypes ((List!30225 0))(
  ( (Nil!30222) (Cons!30221 (h!31430 (_ BitVec 64)) (t!43838 List!30225)) )
))
(declare-fun arrayNoDuplicates!0 (array!87701 (_ BitVec 32) List!30225) Bool)

(assert (=> b!1311432 (= res!870688 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30222))))

(declare-fun b!1311433 () Bool)

(assert (=> b!1311433 (= e!748174 (and e!748173 mapRes!54691))))

(declare-fun condMapEmpty!54691 () Bool)

(declare-fun mapDefault!54691 () ValueCell!16789)

