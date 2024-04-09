; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111612 () Bool)

(assert start!111612)

(declare-fun b_free!30233 () Bool)

(declare-fun b_next!30233 () Bool)

(assert (=> start!111612 (= b_free!30233 (not b_next!30233))))

(declare-fun tp!106176 () Bool)

(declare-fun b_and!48635 () Bool)

(assert (=> start!111612 (= tp!106176 b_and!48635)))

(declare-fun b!1321194 () Bool)

(declare-fun res!876994 () Bool)

(declare-fun e!753562 () Bool)

(assert (=> b!1321194 (=> (not res!876994) (not e!753562))))

(declare-datatypes ((array!88997 0))(
  ( (array!88998 (arr!42968 (Array (_ BitVec 32) (_ BitVec 64))) (size!43519 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88997)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1321194 (= res!876994 (not (= (select (arr!42968 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1321195 () Bool)

(declare-fun res!876997 () Bool)

(assert (=> b!1321195 (=> (not res!876997) (not e!753562))))

(declare-datatypes ((V!53173 0))(
  ( (V!53174 (val!18101 Int)) )
))
(declare-fun zeroValue!1279 () V!53173)

(declare-datatypes ((ValueCell!17128 0))(
  ( (ValueCellFull!17128 (v!20729 V!53173)) (EmptyCell!17128) )
))
(declare-datatypes ((array!88999 0))(
  ( (array!89000 (arr!42969 (Array (_ BitVec 32) ValueCell!17128)) (size!43520 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88999)

(declare-fun minValue!1279 () V!53173)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((tuple2!23476 0))(
  ( (tuple2!23477 (_1!11748 (_ BitVec 64)) (_2!11748 V!53173)) )
))
(declare-datatypes ((List!30657 0))(
  ( (Nil!30654) (Cons!30653 (h!31862 tuple2!23476) (t!44446 List!30657)) )
))
(declare-datatypes ((ListLongMap!21145 0))(
  ( (ListLongMap!21146 (toList!10588 List!30657)) )
))
(declare-fun contains!8679 (ListLongMap!21145 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5529 (array!88997 array!88999 (_ BitVec 32) (_ BitVec 32) V!53173 V!53173 (_ BitVec 32) Int) ListLongMap!21145)

(assert (=> b!1321195 (= res!876997 (contains!8679 (getCurrentListMap!5529 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1321196 () Bool)

(declare-fun res!876993 () Bool)

(assert (=> b!1321196 (=> (not res!876993) (not e!753562))))

(assert (=> b!1321196 (= res!876993 (and (= (size!43520 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43519 _keys!1609) (size!43520 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!55727 () Bool)

(declare-fun mapRes!55727 () Bool)

(declare-fun tp!106175 () Bool)

(declare-fun e!753560 () Bool)

(assert (=> mapNonEmpty!55727 (= mapRes!55727 (and tp!106175 e!753560))))

(declare-fun mapKey!55727 () (_ BitVec 32))

(declare-fun mapRest!55727 () (Array (_ BitVec 32) ValueCell!17128))

(declare-fun mapValue!55727 () ValueCell!17128)

(assert (=> mapNonEmpty!55727 (= (arr!42969 _values!1337) (store mapRest!55727 mapKey!55727 mapValue!55727))))

(declare-fun res!876999 () Bool)

(assert (=> start!111612 (=> (not res!876999) (not e!753562))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111612 (= res!876999 (validMask!0 mask!2019))))

(assert (=> start!111612 e!753562))

(declare-fun array_inv!32397 (array!88997) Bool)

(assert (=> start!111612 (array_inv!32397 _keys!1609)))

(assert (=> start!111612 true))

(declare-fun tp_is_empty!36053 () Bool)

(assert (=> start!111612 tp_is_empty!36053))

(declare-fun e!753559 () Bool)

(declare-fun array_inv!32398 (array!88999) Bool)

(assert (=> start!111612 (and (array_inv!32398 _values!1337) e!753559)))

(assert (=> start!111612 tp!106176))

(declare-fun b!1321197 () Bool)

(assert (=> b!1321197 (= e!753560 tp_is_empty!36053)))

(declare-fun b!1321198 () Bool)

(declare-fun res!876996 () Bool)

(assert (=> b!1321198 (=> (not res!876996) (not e!753562))))

(assert (=> b!1321198 (= res!876996 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43519 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!55727 () Bool)

(assert (=> mapIsEmpty!55727 mapRes!55727))

(declare-fun b!1321199 () Bool)

(declare-fun e!753561 () Bool)

(assert (=> b!1321199 (= e!753561 tp_is_empty!36053)))

(declare-fun b!1321200 () Bool)

(declare-fun res!877000 () Bool)

(assert (=> b!1321200 (=> (not res!877000) (not e!753562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88997 (_ BitVec 32)) Bool)

(assert (=> b!1321200 (= res!877000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1321201 () Bool)

(assert (=> b!1321201 (= e!753559 (and e!753561 mapRes!55727))))

(declare-fun condMapEmpty!55727 () Bool)

(declare-fun mapDefault!55727 () ValueCell!17128)

