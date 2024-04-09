; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111124 () Bool)

(assert start!111124)

(declare-fun b_free!29923 () Bool)

(declare-fun b_next!29923 () Bool)

(assert (=> start!111124 (= b_free!29923 (not b_next!29923))))

(declare-fun tp!105092 () Bool)

(declare-fun b_and!48141 () Bool)

(assert (=> start!111124 (= tp!105092 b_and!48141)))

(declare-fun b!1315185 () Bool)

(declare-fun res!873198 () Bool)

(declare-fun e!750260 () Bool)

(assert (=> b!1315185 (=> (not res!873198) (not e!750260))))

(declare-datatypes ((array!88233 0))(
  ( (array!88234 (arr!42592 (Array (_ BitVec 32) (_ BitVec 64))) (size!43143 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88233)

(declare-datatypes ((List!30413 0))(
  ( (Nil!30410) (Cons!30409 (h!31618 (_ BitVec 64)) (t!44026 List!30413)) )
))
(declare-fun arrayNoDuplicates!0 (array!88233 (_ BitVec 32) List!30413) Bool)

(assert (=> b!1315185 (= res!873198 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30410))))

(declare-fun res!873196 () Bool)

(assert (=> start!111124 (=> (not res!873196) (not e!750260))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111124 (= res!873196 (validMask!0 mask!2040))))

(assert (=> start!111124 e!750260))

(assert (=> start!111124 tp!105092))

(declare-fun array_inv!32143 (array!88233) Bool)

(assert (=> start!111124 (array_inv!32143 _keys!1628)))

(assert (=> start!111124 true))

(declare-fun tp_is_empty!35653 () Bool)

(assert (=> start!111124 tp_is_empty!35653))

(declare-datatypes ((V!52641 0))(
  ( (V!52642 (val!17901 Int)) )
))
(declare-datatypes ((ValueCell!16928 0))(
  ( (ValueCellFull!16928 (v!20526 V!52641)) (EmptyCell!16928) )
))
(declare-datatypes ((array!88235 0))(
  ( (array!88236 (arr!42593 (Array (_ BitVec 32) ValueCell!16928)) (size!43144 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88235)

(declare-fun e!750257 () Bool)

(declare-fun array_inv!32144 (array!88235) Bool)

(assert (=> start!111124 (and (array_inv!32144 _values!1354) e!750257)))

(declare-fun b!1315186 () Bool)

(assert (=> b!1315186 (= e!750260 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!52641)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun lt!585826 () Bool)

(declare-fun zeroValue!1296 () V!52641)

(declare-datatypes ((tuple2!23246 0))(
  ( (tuple2!23247 (_1!11633 (_ BitVec 64)) (_2!11633 V!52641)) )
))
(declare-datatypes ((List!30414 0))(
  ( (Nil!30411) (Cons!30410 (h!31619 tuple2!23246) (t!44027 List!30414)) )
))
(declare-datatypes ((ListLongMap!20915 0))(
  ( (ListLongMap!20916 (toList!10473 List!30414)) )
))
(declare-fun contains!8559 (ListLongMap!20915 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5429 (array!88233 array!88235 (_ BitVec 32) (_ BitVec 32) V!52641 V!52641 (_ BitVec 32) Int) ListLongMap!20915)

(assert (=> b!1315186 (= lt!585826 (contains!8559 (getCurrentListMap!5429 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun mapIsEmpty!55108 () Bool)

(declare-fun mapRes!55108 () Bool)

(assert (=> mapIsEmpty!55108 mapRes!55108))

(declare-fun b!1315187 () Bool)

(declare-fun res!873199 () Bool)

(assert (=> b!1315187 (=> (not res!873199) (not e!750260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88233 (_ BitVec 32)) Bool)

(assert (=> b!1315187 (= res!873199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1315188 () Bool)

(declare-fun res!873200 () Bool)

(assert (=> b!1315188 (=> (not res!873200) (not e!750260))))

(assert (=> b!1315188 (= res!873200 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43143 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315189 () Bool)

(declare-fun e!750256 () Bool)

(assert (=> b!1315189 (= e!750256 tp_is_empty!35653)))

(declare-fun b!1315190 () Bool)

(declare-fun e!750258 () Bool)

(assert (=> b!1315190 (= e!750257 (and e!750258 mapRes!55108))))

(declare-fun condMapEmpty!55108 () Bool)

(declare-fun mapDefault!55108 () ValueCell!16928)

