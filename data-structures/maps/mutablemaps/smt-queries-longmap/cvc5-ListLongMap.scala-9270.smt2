; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111004 () Bool)

(assert start!111004)

(declare-fun b_free!29803 () Bool)

(declare-fun b_next!29803 () Bool)

(assert (=> start!111004 (= b_free!29803 (not b_next!29803))))

(declare-fun tp!104731 () Bool)

(declare-fun b_and!48021 () Bool)

(assert (=> start!111004 (= tp!104731 b_and!48021)))

(declare-fun b!1313674 () Bool)

(declare-fun res!872224 () Bool)

(declare-fun e!749358 () Bool)

(assert (=> b!1313674 (=> (not res!872224) (not e!749358))))

(declare-datatypes ((array!88005 0))(
  ( (array!88006 (arr!42478 (Array (_ BitVec 32) (_ BitVec 64))) (size!43029 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88005)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52481 0))(
  ( (V!52482 (val!17841 Int)) )
))
(declare-datatypes ((ValueCell!16868 0))(
  ( (ValueCellFull!16868 (v!20466 V!52481)) (EmptyCell!16868) )
))
(declare-datatypes ((array!88007 0))(
  ( (array!88008 (arr!42479 (Array (_ BitVec 32) ValueCell!16868)) (size!43030 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88007)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313674 (= res!872224 (and (= (size!43030 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43029 _keys!1628) (size!43030 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54928 () Bool)

(declare-fun mapRes!54928 () Bool)

(declare-fun tp!104732 () Bool)

(declare-fun e!749356 () Bool)

(assert (=> mapNonEmpty!54928 (= mapRes!54928 (and tp!104732 e!749356))))

(declare-fun mapRest!54928 () (Array (_ BitVec 32) ValueCell!16868))

(declare-fun mapValue!54928 () ValueCell!16868)

(declare-fun mapKey!54928 () (_ BitVec 32))

(assert (=> mapNonEmpty!54928 (= (arr!42479 _values!1354) (store mapRest!54928 mapKey!54928 mapValue!54928))))

(declare-fun b!1313675 () Bool)

(declare-fun tp_is_empty!35533 () Bool)

(assert (=> b!1313675 (= e!749356 tp_is_empty!35533)))

(declare-fun b!1313676 () Bool)

(declare-fun res!872226 () Bool)

(assert (=> b!1313676 (=> (not res!872226) (not e!749358))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313676 (= res!872226 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43029 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313677 () Bool)

(declare-fun res!872227 () Bool)

(assert (=> b!1313677 (=> (not res!872227) (not e!749358))))

(declare-datatypes ((List!30337 0))(
  ( (Nil!30334) (Cons!30333 (h!31542 (_ BitVec 64)) (t!43950 List!30337)) )
))
(declare-fun arrayNoDuplicates!0 (array!88005 (_ BitVec 32) List!30337) Bool)

(assert (=> b!1313677 (= res!872227 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30334))))

(declare-fun mapIsEmpty!54928 () Bool)

(assert (=> mapIsEmpty!54928 mapRes!54928))

(declare-fun b!1313678 () Bool)

(declare-fun res!872228 () Bool)

(assert (=> b!1313678 (=> (not res!872228) (not e!749358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88005 (_ BitVec 32)) Bool)

(assert (=> b!1313678 (= res!872228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313673 () Bool)

(assert (=> b!1313673 (= e!749358 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585646 () Bool)

(declare-fun minValue!1296 () V!52481)

(declare-fun zeroValue!1296 () V!52481)

(declare-datatypes ((tuple2!23174 0))(
  ( (tuple2!23175 (_1!11597 (_ BitVec 64)) (_2!11597 V!52481)) )
))
(declare-datatypes ((List!30338 0))(
  ( (Nil!30335) (Cons!30334 (h!31543 tuple2!23174) (t!43951 List!30338)) )
))
(declare-datatypes ((ListLongMap!20843 0))(
  ( (ListLongMap!20844 (toList!10437 List!30338)) )
))
(declare-fun contains!8523 (ListLongMap!20843 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5393 (array!88005 array!88007 (_ BitVec 32) (_ BitVec 32) V!52481 V!52481 (_ BitVec 32) Int) ListLongMap!20843)

(assert (=> b!1313673 (= lt!585646 (contains!8523 (getCurrentListMap!5393 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun res!872225 () Bool)

(assert (=> start!111004 (=> (not res!872225) (not e!749358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111004 (= res!872225 (validMask!0 mask!2040))))

(assert (=> start!111004 e!749358))

(assert (=> start!111004 tp!104731))

(declare-fun array_inv!32067 (array!88005) Bool)

(assert (=> start!111004 (array_inv!32067 _keys!1628)))

(assert (=> start!111004 true))

(assert (=> start!111004 tp_is_empty!35533))

(declare-fun e!749357 () Bool)

(declare-fun array_inv!32068 (array!88007) Bool)

(assert (=> start!111004 (and (array_inv!32068 _values!1354) e!749357)))

(declare-fun b!1313679 () Bool)

(declare-fun e!749360 () Bool)

(assert (=> b!1313679 (= e!749360 tp_is_empty!35533)))

(declare-fun b!1313680 () Bool)

(assert (=> b!1313680 (= e!749357 (and e!749360 mapRes!54928))))

(declare-fun condMapEmpty!54928 () Bool)

(declare-fun mapDefault!54928 () ValueCell!16868)

