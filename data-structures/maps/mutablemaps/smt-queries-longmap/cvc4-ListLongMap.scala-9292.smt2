; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111140 () Bool)

(assert start!111140)

(declare-fun b_free!29939 () Bool)

(declare-fun b_next!29939 () Bool)

(assert (=> start!111140 (= b_free!29939 (not b_next!29939))))

(declare-fun tp!105139 () Bool)

(declare-fun b_and!48157 () Bool)

(assert (=> start!111140 (= tp!105139 b_and!48157)))

(declare-fun b!1315377 () Bool)

(declare-fun res!873316 () Bool)

(declare-fun e!750379 () Bool)

(assert (=> b!1315377 (=> (not res!873316) (not e!750379))))

(declare-datatypes ((array!88261 0))(
  ( (array!88262 (arr!42606 (Array (_ BitVec 32) (_ BitVec 64))) (size!43157 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88261)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88261 (_ BitVec 32)) Bool)

(assert (=> b!1315377 (= res!873316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!55132 () Bool)

(declare-fun mapRes!55132 () Bool)

(assert (=> mapIsEmpty!55132 mapRes!55132))

(declare-fun b!1315379 () Bool)

(declare-fun res!873320 () Bool)

(assert (=> b!1315379 (=> (not res!873320) (not e!750379))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315379 (= res!873320 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43157 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315380 () Bool)

(declare-fun res!873318 () Bool)

(assert (=> b!1315380 (=> (not res!873318) (not e!750379))))

(declare-datatypes ((List!30423 0))(
  ( (Nil!30420) (Cons!30419 (h!31628 (_ BitVec 64)) (t!44036 List!30423)) )
))
(declare-fun arrayNoDuplicates!0 (array!88261 (_ BitVec 32) List!30423) Bool)

(assert (=> b!1315380 (= res!873318 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30420))))

(declare-fun b!1315381 () Bool)

(declare-fun e!750377 () Bool)

(declare-fun tp_is_empty!35669 () Bool)

(assert (=> b!1315381 (= e!750377 tp_is_empty!35669)))

(declare-fun b!1315382 () Bool)

(declare-fun e!750376 () Bool)

(assert (=> b!1315382 (= e!750376 (and e!750377 mapRes!55132))))

(declare-fun condMapEmpty!55132 () Bool)

(declare-datatypes ((V!52661 0))(
  ( (V!52662 (val!17909 Int)) )
))
(declare-datatypes ((ValueCell!16936 0))(
  ( (ValueCellFull!16936 (v!20534 V!52661)) (EmptyCell!16936) )
))
(declare-datatypes ((array!88263 0))(
  ( (array!88264 (arr!42607 (Array (_ BitVec 32) ValueCell!16936)) (size!43158 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88263)

(declare-fun mapDefault!55132 () ValueCell!16936)

