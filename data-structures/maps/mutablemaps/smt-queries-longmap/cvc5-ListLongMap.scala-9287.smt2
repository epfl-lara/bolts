; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111106 () Bool)

(assert start!111106)

(declare-fun b_free!29905 () Bool)

(declare-fun b_next!29905 () Bool)

(assert (=> start!111106 (= b_free!29905 (not b_next!29905))))

(declare-fun tp!105037 () Bool)

(declare-fun b_and!48123 () Bool)

(assert (=> start!111106 (= tp!105037 b_and!48123)))

(declare-fun b!1314933 () Bool)

(declare-fun res!873026 () Bool)

(declare-fun e!750124 () Bool)

(assert (=> b!1314933 (=> (not res!873026) (not e!750124))))

(declare-datatypes ((array!88199 0))(
  ( (array!88200 (arr!42575 (Array (_ BitVec 32) (_ BitVec 64))) (size!43126 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88199)

(declare-datatypes ((List!30403 0))(
  ( (Nil!30400) (Cons!30399 (h!31608 (_ BitVec 64)) (t!44016 List!30403)) )
))
(declare-fun arrayNoDuplicates!0 (array!88199 (_ BitVec 32) List!30403) Bool)

(assert (=> b!1314933 (= res!873026 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30400))))

(declare-fun b!1314934 () Bool)

(declare-fun e!750123 () Bool)

(declare-fun tp_is_empty!35635 () Bool)

(assert (=> b!1314934 (= e!750123 tp_is_empty!35635)))

(declare-fun b!1314935 () Bool)

(declare-fun res!873028 () Bool)

(assert (=> b!1314935 (=> (not res!873028) (not e!750124))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88199 (_ BitVec 32)) Bool)

(assert (=> b!1314935 (= res!873028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314936 () Bool)

(declare-fun res!873025 () Bool)

(assert (=> b!1314936 (=> (not res!873025) (not e!750124))))

(declare-datatypes ((V!52617 0))(
  ( (V!52618 (val!17892 Int)) )
))
(declare-datatypes ((ValueCell!16919 0))(
  ( (ValueCellFull!16919 (v!20517 V!52617)) (EmptyCell!16919) )
))
(declare-datatypes ((array!88201 0))(
  ( (array!88202 (arr!42576 (Array (_ BitVec 32) ValueCell!16919)) (size!43127 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88201)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1314936 (= res!873025 (and (= (size!43127 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43126 _keys!1628) (size!43127 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314937 () Bool)

(declare-fun res!873027 () Bool)

(assert (=> b!1314937 (=> (not res!873027) (not e!750124))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314937 (= res!873027 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43126 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314938 () Bool)

(declare-fun e!750122 () Bool)

(assert (=> b!1314938 (= e!750122 tp_is_empty!35635)))

(declare-fun b!1314939 () Bool)

(declare-fun e!750125 () Bool)

(declare-fun mapRes!55081 () Bool)

(assert (=> b!1314939 (= e!750125 (and e!750122 mapRes!55081))))

(declare-fun condMapEmpty!55081 () Bool)

(declare-fun mapDefault!55081 () ValueCell!16919)

