; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111680 () Bool)

(assert start!111680)

(declare-fun b_free!30301 () Bool)

(declare-fun b_next!30301 () Bool)

(assert (=> start!111680 (= b_free!30301 (not b_next!30301))))

(declare-fun tp!106380 () Bool)

(declare-fun b_and!48771 () Bool)

(assert (=> start!111680 (= tp!106380 b_and!48771)))

(declare-fun b!1322384 () Bool)

(declare-fun res!877813 () Bool)

(declare-fun e!754068 () Bool)

(assert (=> b!1322384 (=> (not res!877813) (not e!754068))))

(declare-datatypes ((array!89121 0))(
  ( (array!89122 (arr!43030 (Array (_ BitVec 32) (_ BitVec 64))) (size!43581 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89121)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89121 (_ BitVec 32)) Bool)

(assert (=> b!1322384 (= res!877813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322385 () Bool)

(declare-fun e!754072 () Bool)

(declare-fun tp_is_empty!36121 () Bool)

(assert (=> b!1322385 (= e!754072 tp_is_empty!36121)))

(declare-fun res!877812 () Bool)

(assert (=> start!111680 (=> (not res!877812) (not e!754068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111680 (= res!877812 (validMask!0 mask!2019))))

(assert (=> start!111680 e!754068))

(declare-fun array_inv!32439 (array!89121) Bool)

(assert (=> start!111680 (array_inv!32439 _keys!1609)))

(assert (=> start!111680 true))

(assert (=> start!111680 tp_is_empty!36121))

(declare-datatypes ((V!53265 0))(
  ( (V!53266 (val!18135 Int)) )
))
(declare-datatypes ((ValueCell!17162 0))(
  ( (ValueCellFull!17162 (v!20763 V!53265)) (EmptyCell!17162) )
))
(declare-datatypes ((array!89123 0))(
  ( (array!89124 (arr!43031 (Array (_ BitVec 32) ValueCell!17162)) (size!43582 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89123)

(declare-fun e!754071 () Bool)

(declare-fun array_inv!32440 (array!89123) Bool)

(assert (=> start!111680 (and (array_inv!32440 _values!1337) e!754071)))

(assert (=> start!111680 tp!106380))

(declare-fun b!1322386 () Bool)

(declare-fun mapRes!55829 () Bool)

(assert (=> b!1322386 (= e!754071 (and e!754072 mapRes!55829))))

(declare-fun condMapEmpty!55829 () Bool)

(declare-fun mapDefault!55829 () ValueCell!17162)

