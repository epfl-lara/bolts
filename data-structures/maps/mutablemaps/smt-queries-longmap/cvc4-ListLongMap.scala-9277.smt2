; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111050 () Bool)

(assert start!111050)

(declare-fun b_free!29849 () Bool)

(declare-fun b_next!29849 () Bool)

(assert (=> start!111050 (= b_free!29849 (not b_next!29849))))

(declare-fun tp!104869 () Bool)

(declare-fun b_and!48067 () Bool)

(assert (=> start!111050 (= tp!104869 b_and!48067)))

(declare-fun b!1314261 () Bool)

(declare-fun e!749705 () Bool)

(assert (=> b!1314261 (= e!749705 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!88093 0))(
  ( (array!88094 (arr!42522 (Array (_ BitVec 32) (_ BitVec 64))) (size!43073 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88093)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52541 0))(
  ( (V!52542 (val!17864 Int)) )
))
(declare-fun minValue!1296 () V!52541)

(declare-datatypes ((ValueCell!16891 0))(
  ( (ValueCellFull!16891 (v!20489 V!52541)) (EmptyCell!16891) )
))
(declare-datatypes ((array!88095 0))(
  ( (array!88096 (arr!42523 (Array (_ BitVec 32) ValueCell!16891)) (size!43074 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88095)

(declare-fun zeroValue!1296 () V!52541)

(declare-fun lt!585715 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23204 0))(
  ( (tuple2!23205 (_1!11612 (_ BitVec 64)) (_2!11612 V!52541)) )
))
(declare-datatypes ((List!30367 0))(
  ( (Nil!30364) (Cons!30363 (h!31572 tuple2!23204) (t!43980 List!30367)) )
))
(declare-datatypes ((ListLongMap!20873 0))(
  ( (ListLongMap!20874 (toList!10452 List!30367)) )
))
(declare-fun contains!8538 (ListLongMap!20873 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5408 (array!88093 array!88095 (_ BitVec 32) (_ BitVec 32) V!52541 V!52541 (_ BitVec 32) Int) ListLongMap!20873)

(assert (=> b!1314261 (= lt!585715 (contains!8538 (getCurrentListMap!5408 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1314262 () Bool)

(declare-fun res!872608 () Bool)

(assert (=> b!1314262 (=> (not res!872608) (not e!749705))))

(assert (=> b!1314262 (= res!872608 (and (= (size!43074 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43073 _keys!1628) (size!43074 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!872607 () Bool)

(assert (=> start!111050 (=> (not res!872607) (not e!749705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111050 (= res!872607 (validMask!0 mask!2040))))

(assert (=> start!111050 e!749705))

(assert (=> start!111050 tp!104869))

(declare-fun array_inv!32097 (array!88093) Bool)

(assert (=> start!111050 (array_inv!32097 _keys!1628)))

(assert (=> start!111050 true))

(declare-fun tp_is_empty!35579 () Bool)

(assert (=> start!111050 tp_is_empty!35579))

(declare-fun e!749704 () Bool)

(declare-fun array_inv!32098 (array!88095) Bool)

(assert (=> start!111050 (and (array_inv!32098 _values!1354) e!749704)))

(declare-fun b!1314263 () Bool)

(declare-fun res!872606 () Bool)

(assert (=> b!1314263 (=> (not res!872606) (not e!749705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88093 (_ BitVec 32)) Bool)

(assert (=> b!1314263 (= res!872606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314264 () Bool)

(declare-fun e!749701 () Bool)

(assert (=> b!1314264 (= e!749701 tp_is_empty!35579)))

(declare-fun b!1314265 () Bool)

(declare-fun res!872609 () Bool)

(assert (=> b!1314265 (=> (not res!872609) (not e!749705))))

(assert (=> b!1314265 (= res!872609 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43073 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314266 () Bool)

(declare-fun res!872605 () Bool)

(assert (=> b!1314266 (=> (not res!872605) (not e!749705))))

(declare-datatypes ((List!30368 0))(
  ( (Nil!30365) (Cons!30364 (h!31573 (_ BitVec 64)) (t!43981 List!30368)) )
))
(declare-fun arrayNoDuplicates!0 (array!88093 (_ BitVec 32) List!30368) Bool)

(assert (=> b!1314266 (= res!872605 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30365))))

(declare-fun b!1314267 () Bool)

(declare-fun mapRes!54997 () Bool)

(assert (=> b!1314267 (= e!749704 (and e!749701 mapRes!54997))))

(declare-fun condMapEmpty!54997 () Bool)

(declare-fun mapDefault!54997 () ValueCell!16891)

