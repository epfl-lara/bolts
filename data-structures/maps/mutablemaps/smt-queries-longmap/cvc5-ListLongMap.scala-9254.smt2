; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110908 () Bool)

(assert start!110908)

(declare-fun b_free!29707 () Bool)

(declare-fun b_next!29707 () Bool)

(assert (=> start!110908 (= b_free!29707 (not b_next!29707))))

(declare-fun tp!104444 () Bool)

(declare-fun b_and!47925 () Bool)

(assert (=> start!110908 (= tp!104444 b_and!47925)))

(declare-fun b!1312494 () Bool)

(declare-fun res!871479 () Bool)

(declare-fun e!748637 () Bool)

(assert (=> b!1312494 (=> (not res!871479) (not e!748637))))

(declare-datatypes ((array!87825 0))(
  ( (array!87826 (arr!42388 (Array (_ BitVec 32) (_ BitVec 64))) (size!42939 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87825)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52353 0))(
  ( (V!52354 (val!17793 Int)) )
))
(declare-datatypes ((ValueCell!16820 0))(
  ( (ValueCellFull!16820 (v!20418 V!52353)) (EmptyCell!16820) )
))
(declare-datatypes ((array!87827 0))(
  ( (array!87828 (arr!42389 (Array (_ BitVec 32) ValueCell!16820)) (size!42940 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87827)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1312494 (= res!871479 (and (= (size!42940 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42939 _keys!1628) (size!42940 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1312495 () Bool)

(declare-fun e!748640 () Bool)

(declare-fun tp_is_empty!35437 () Bool)

(assert (=> b!1312495 (= e!748640 tp_is_empty!35437)))

(declare-fun mapNonEmpty!54784 () Bool)

(declare-fun mapRes!54784 () Bool)

(declare-fun tp!104443 () Bool)

(assert (=> mapNonEmpty!54784 (= mapRes!54784 (and tp!104443 e!748640))))

(declare-fun mapRest!54784 () (Array (_ BitVec 32) ValueCell!16820))

(declare-fun mapValue!54784 () ValueCell!16820)

(declare-fun mapKey!54784 () (_ BitVec 32))

(assert (=> mapNonEmpty!54784 (= (arr!42389 _values!1354) (store mapRest!54784 mapKey!54784 mapValue!54784))))

(declare-fun b!1312496 () Bool)

(declare-fun e!748638 () Bool)

(assert (=> b!1312496 (= e!748638 tp_is_empty!35437)))

(declare-fun b!1312497 () Bool)

(assert (=> b!1312497 (= e!748637 false)))

(declare-fun lt!585511 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52353)

(declare-fun zeroValue!1296 () V!52353)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23114 0))(
  ( (tuple2!23115 (_1!11567 (_ BitVec 64)) (_2!11567 V!52353)) )
))
(declare-datatypes ((List!30273 0))(
  ( (Nil!30270) (Cons!30269 (h!31478 tuple2!23114) (t!43886 List!30273)) )
))
(declare-datatypes ((ListLongMap!20783 0))(
  ( (ListLongMap!20784 (toList!10407 List!30273)) )
))
(declare-fun contains!8493 (ListLongMap!20783 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5363 (array!87825 array!87827 (_ BitVec 32) (_ BitVec 32) V!52353 V!52353 (_ BitVec 32) Int) ListLongMap!20783)

(assert (=> b!1312497 (= lt!585511 (contains!8493 (getCurrentListMap!5363 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1312498 () Bool)

(declare-fun res!871480 () Bool)

(assert (=> b!1312498 (=> (not res!871480) (not e!748637))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87825 (_ BitVec 32)) Bool)

(assert (=> b!1312498 (= res!871480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!871481 () Bool)

(assert (=> start!110908 (=> (not res!871481) (not e!748637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110908 (= res!871481 (validMask!0 mask!2040))))

(assert (=> start!110908 e!748637))

(assert (=> start!110908 tp!104444))

(declare-fun array_inv!32005 (array!87825) Bool)

(assert (=> start!110908 (array_inv!32005 _keys!1628)))

(assert (=> start!110908 true))

(assert (=> start!110908 tp_is_empty!35437))

(declare-fun e!748636 () Bool)

(declare-fun array_inv!32006 (array!87827) Bool)

(assert (=> start!110908 (and (array_inv!32006 _values!1354) e!748636)))

(declare-fun mapIsEmpty!54784 () Bool)

(assert (=> mapIsEmpty!54784 mapRes!54784))

(declare-fun b!1312499 () Bool)

(declare-fun res!871477 () Bool)

(assert (=> b!1312499 (=> (not res!871477) (not e!748637))))

(assert (=> b!1312499 (= res!871477 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42939 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1312500 () Bool)

(declare-fun res!871478 () Bool)

(assert (=> b!1312500 (=> (not res!871478) (not e!748637))))

(declare-datatypes ((List!30274 0))(
  ( (Nil!30271) (Cons!30270 (h!31479 (_ BitVec 64)) (t!43887 List!30274)) )
))
(declare-fun arrayNoDuplicates!0 (array!87825 (_ BitVec 32) List!30274) Bool)

(assert (=> b!1312500 (= res!871478 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30271))))

(declare-fun b!1312501 () Bool)

(assert (=> b!1312501 (= e!748636 (and e!748638 mapRes!54784))))

(declare-fun condMapEmpty!54784 () Bool)

(declare-fun mapDefault!54784 () ValueCell!16820)

