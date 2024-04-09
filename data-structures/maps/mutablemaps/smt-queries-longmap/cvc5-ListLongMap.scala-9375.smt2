; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111722 () Bool)

(assert start!111722)

(declare-fun b_free!30343 () Bool)

(declare-fun b_next!30343 () Bool)

(assert (=> start!111722 (= b_free!30343 (not b_next!30343))))

(declare-fun tp!106505 () Bool)

(declare-fun b_and!48855 () Bool)

(assert (=> start!111722 (= tp!106505 b_and!48855)))

(declare-fun mapNonEmpty!55892 () Bool)

(declare-fun mapRes!55892 () Bool)

(declare-fun tp!106506 () Bool)

(declare-fun e!754383 () Bool)

(assert (=> mapNonEmpty!55892 (= mapRes!55892 (and tp!106506 e!754383))))

(declare-datatypes ((V!53321 0))(
  ( (V!53322 (val!18156 Int)) )
))
(declare-datatypes ((ValueCell!17183 0))(
  ( (ValueCellFull!17183 (v!20784 V!53321)) (EmptyCell!17183) )
))
(declare-fun mapValue!55892 () ValueCell!17183)

(declare-datatypes ((array!89201 0))(
  ( (array!89202 (arr!43070 (Array (_ BitVec 32) ValueCell!17183)) (size!43621 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89201)

(declare-fun mapKey!55892 () (_ BitVec 32))

(declare-fun mapRest!55892 () (Array (_ BitVec 32) ValueCell!17183))

(assert (=> mapNonEmpty!55892 (= (arr!43070 _values!1337) (store mapRest!55892 mapKey!55892 mapValue!55892))))

(declare-fun b!1323119 () Bool)

(declare-fun res!878319 () Bool)

(declare-fun e!754384 () Bool)

(assert (=> b!1323119 (=> (not res!878319) (not e!754384))))

(declare-datatypes ((array!89203 0))(
  ( (array!89204 (arr!43071 (Array (_ BitVec 32) (_ BitVec 64))) (size!43622 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89203)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1323119 (= res!878319 (and (= (size!43621 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43622 _keys!1609) (size!43621 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1323120 () Bool)

(declare-fun res!878317 () Bool)

(assert (=> b!1323120 (=> (not res!878317) (not e!754384))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1323120 (= res!878317 (not (= (select (arr!43071 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1323121 () Bool)

(declare-fun res!878313 () Bool)

(assert (=> b!1323121 (=> (not res!878313) (not e!754384))))

(assert (=> b!1323121 (= res!878313 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43622 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1323122 () Bool)

(declare-fun res!878320 () Bool)

(assert (=> b!1323122 (=> (not res!878320) (not e!754384))))

(declare-datatypes ((List!30728 0))(
  ( (Nil!30725) (Cons!30724 (h!31933 (_ BitVec 64)) (t!44627 List!30728)) )
))
(declare-fun arrayNoDuplicates!0 (array!89203 (_ BitVec 32) List!30728) Bool)

(assert (=> b!1323122 (= res!878320 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30725))))

(declare-fun res!878316 () Bool)

(assert (=> start!111722 (=> (not res!878316) (not e!754384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111722 (= res!878316 (validMask!0 mask!2019))))

(assert (=> start!111722 e!754384))

(declare-fun array_inv!32469 (array!89203) Bool)

(assert (=> start!111722 (array_inv!32469 _keys!1609)))

(assert (=> start!111722 true))

(declare-fun tp_is_empty!36163 () Bool)

(assert (=> start!111722 tp_is_empty!36163))

(declare-fun e!754387 () Bool)

(declare-fun array_inv!32470 (array!89201) Bool)

(assert (=> start!111722 (and (array_inv!32470 _values!1337) e!754387)))

(assert (=> start!111722 tp!106505))

(declare-fun b!1323123 () Bool)

(declare-fun e!754385 () Bool)

(assert (=> b!1323123 (= e!754387 (and e!754385 mapRes!55892))))

(declare-fun condMapEmpty!55892 () Bool)

(declare-fun mapDefault!55892 () ValueCell!17183)

