; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111118 () Bool)

(assert start!111118)

(declare-fun b_free!29917 () Bool)

(declare-fun b_next!29917 () Bool)

(assert (=> start!111118 (= b_free!29917 (not b_next!29917))))

(declare-fun tp!105073 () Bool)

(declare-fun b_and!48135 () Bool)

(assert (=> start!111118 (= tp!105073 b_and!48135)))

(declare-fun mapNonEmpty!55099 () Bool)

(declare-fun mapRes!55099 () Bool)

(declare-fun tp!105074 () Bool)

(declare-fun e!750214 () Bool)

(assert (=> mapNonEmpty!55099 (= mapRes!55099 (and tp!105074 e!750214))))

(declare-datatypes ((V!52633 0))(
  ( (V!52634 (val!17898 Int)) )
))
(declare-datatypes ((ValueCell!16925 0))(
  ( (ValueCellFull!16925 (v!20523 V!52633)) (EmptyCell!16925) )
))
(declare-fun mapRest!55099 () (Array (_ BitVec 32) ValueCell!16925))

(declare-datatypes ((array!88223 0))(
  ( (array!88224 (arr!42587 (Array (_ BitVec 32) ValueCell!16925)) (size!43138 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88223)

(declare-fun mapKey!55099 () (_ BitVec 32))

(declare-fun mapValue!55099 () ValueCell!16925)

(assert (=> mapNonEmpty!55099 (= (arr!42587 _values!1354) (store mapRest!55099 mapKey!55099 mapValue!55099))))

(declare-fun b!1315085 () Bool)

(declare-fun res!873130 () Bool)

(declare-fun e!750215 () Bool)

(assert (=> b!1315085 (=> (not res!873130) (not e!750215))))

(declare-datatypes ((array!88225 0))(
  ( (array!88226 (arr!42588 (Array (_ BitVec 32) (_ BitVec 64))) (size!43139 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88225)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315085 (= res!873130 (and (= (size!43138 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43139 _keys!1628) (size!43138 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315087 () Bool)

(declare-fun res!873127 () Bool)

(assert (=> b!1315087 (=> (not res!873127) (not e!750215))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315087 (= res!873127 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43139 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315088 () Bool)

(declare-fun e!750211 () Bool)

(declare-fun e!750213 () Bool)

(assert (=> b!1315088 (= e!750211 (and e!750213 mapRes!55099))))

(declare-fun condMapEmpty!55099 () Bool)

(declare-fun mapDefault!55099 () ValueCell!16925)

