; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4072 () Bool)

(assert start!4072)

(declare-fun b_free!979 () Bool)

(declare-fun b_next!979 () Bool)

(assert (=> start!4072 (= b_free!979 (not b_next!979))))

(declare-fun tp!4356 () Bool)

(declare-fun b_and!1791 () Bool)

(assert (=> start!4072 (= tp!4356 b_and!1791)))

(declare-fun b!30104 () Bool)

(declare-fun e!19368 () Bool)

(assert (=> b!30104 (= e!19368 false)))

(declare-fun k!1304 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!100 0))(
  ( (MissingZero!100 (index!2522 (_ BitVec 32))) (Found!100 (index!2523 (_ BitVec 32))) (Intermediate!100 (undefined!912 Bool) (index!2524 (_ BitVec 32)) (x!6498 (_ BitVec 32))) (Undefined!100) (MissingVacant!100 (index!2525 (_ BitVec 32))) )
))
(declare-fun lt!11394 () SeekEntryResult!100)

(declare-datatypes ((array!1883 0))(
  ( (array!1884 (arr!895 (Array (_ BitVec 32) (_ BitVec 64))) (size!996 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1883)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun seekEntry!0 ((_ BitVec 64) array!1883 (_ BitVec 32)) SeekEntryResult!100)

(assert (=> b!30104 (= lt!11394 (seekEntry!0 k!1304 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1528 () Bool)

(declare-fun mapRes!1528 () Bool)

(assert (=> mapIsEmpty!1528 mapRes!1528))

(declare-fun b!30105 () Bool)

(declare-fun res!18088 () Bool)

(assert (=> b!30105 (=> (not res!18088) (not e!19368))))

(declare-fun arrayContainsKey!0 (array!1883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30105 (= res!18088 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!1528 () Bool)

(declare-fun tp!4357 () Bool)

(declare-fun e!19370 () Bool)

(assert (=> mapNonEmpty!1528 (= mapRes!1528 (and tp!4357 e!19370))))

(declare-datatypes ((V!1603 0))(
  ( (V!1604 (val!693 Int)) )
))
(declare-datatypes ((ValueCell!467 0))(
  ( (ValueCellFull!467 (v!1782 V!1603)) (EmptyCell!467) )
))
(declare-datatypes ((array!1885 0))(
  ( (array!1886 (arr!896 (Array (_ BitVec 32) ValueCell!467)) (size!997 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1885)

(declare-fun mapRest!1528 () (Array (_ BitVec 32) ValueCell!467))

(declare-fun mapValue!1528 () ValueCell!467)

(declare-fun mapKey!1528 () (_ BitVec 32))

(assert (=> mapNonEmpty!1528 (= (arr!896 _values!1501) (store mapRest!1528 mapKey!1528 mapValue!1528))))

(declare-fun b!30107 () Bool)

(declare-fun res!18089 () Bool)

(assert (=> b!30107 (=> (not res!18089) (not e!19368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1883 (_ BitVec 32)) Bool)

(assert (=> b!30107 (= res!18089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!30108 () Bool)

(declare-fun res!18090 () Bool)

(assert (=> b!30108 (=> (not res!18090) (not e!19368))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1603)

(declare-fun minValue!1443 () V!1603)

(declare-datatypes ((tuple2!1130 0))(
  ( (tuple2!1131 (_1!575 (_ BitVec 64)) (_2!575 V!1603)) )
))
(declare-datatypes ((List!735 0))(
  ( (Nil!732) (Cons!731 (h!1298 tuple2!1130) (t!3430 List!735)) )
))
(declare-datatypes ((ListLongMap!711 0))(
  ( (ListLongMap!712 (toList!371 List!735)) )
))
(declare-fun contains!308 (ListLongMap!711 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!198 (array!1883 array!1885 (_ BitVec 32) (_ BitVec 32) V!1603 V!1603 (_ BitVec 32) Int) ListLongMap!711)

(assert (=> b!30108 (= res!18090 (not (contains!308 (getCurrentListMap!198 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!30109 () Bool)

(declare-fun res!18093 () Bool)

(assert (=> b!30109 (=> (not res!18093) (not e!19368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30109 (= res!18093 (validKeyInArray!0 k!1304))))

(declare-fun b!30106 () Bool)

(declare-fun e!19372 () Bool)

(declare-fun e!19371 () Bool)

(assert (=> b!30106 (= e!19372 (and e!19371 mapRes!1528))))

(declare-fun condMapEmpty!1528 () Bool)

(declare-fun mapDefault!1528 () ValueCell!467)

