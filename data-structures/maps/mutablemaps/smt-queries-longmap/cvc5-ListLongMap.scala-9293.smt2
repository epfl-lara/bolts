; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111142 () Bool)

(assert start!111142)

(declare-fun b_free!29941 () Bool)

(declare-fun b_next!29941 () Bool)

(assert (=> start!111142 (= b_free!29941 (not b_next!29941))))

(declare-fun tp!105145 () Bool)

(declare-fun b_and!48159 () Bool)

(assert (=> start!111142 (= tp!105145 b_and!48159)))

(declare-fun mapIsEmpty!55135 () Bool)

(declare-fun mapRes!55135 () Bool)

(assert (=> mapIsEmpty!55135 mapRes!55135))

(declare-fun b!1315401 () Bool)

(declare-fun res!873332 () Bool)

(declare-fun e!750391 () Bool)

(assert (=> b!1315401 (=> (not res!873332) (not e!750391))))

(declare-datatypes ((array!88265 0))(
  ( (array!88266 (arr!42608 (Array (_ BitVec 32) (_ BitVec 64))) (size!43159 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88265)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52665 0))(
  ( (V!52666 (val!17910 Int)) )
))
(declare-datatypes ((ValueCell!16937 0))(
  ( (ValueCellFull!16937 (v!20535 V!52665)) (EmptyCell!16937) )
))
(declare-datatypes ((array!88267 0))(
  ( (array!88268 (arr!42609 (Array (_ BitVec 32) ValueCell!16937)) (size!43160 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88267)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315401 (= res!873332 (and (= (size!43160 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43159 _keys!1628) (size!43160 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315403 () Bool)

(declare-fun e!750392 () Bool)

(declare-fun tp_is_empty!35671 () Bool)

(assert (=> b!1315403 (= e!750392 tp_is_empty!35671)))

(declare-fun b!1315404 () Bool)

(declare-fun res!873335 () Bool)

(assert (=> b!1315404 (=> (not res!873335) (not e!750391))))

(declare-datatypes ((List!30424 0))(
  ( (Nil!30421) (Cons!30420 (h!31629 (_ BitVec 64)) (t!44037 List!30424)) )
))
(declare-fun arrayNoDuplicates!0 (array!88265 (_ BitVec 32) List!30424) Bool)

(assert (=> b!1315404 (= res!873335 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30421))))

(declare-fun b!1315405 () Bool)

(declare-fun e!750393 () Bool)

(assert (=> b!1315405 (= e!750393 (and e!750392 mapRes!55135))))

(declare-fun condMapEmpty!55135 () Bool)

(declare-fun mapDefault!55135 () ValueCell!16937)

