; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1014 () Bool)

(assert start!1014)

(declare-fun b_free!343 () Bool)

(declare-fun b_next!343 () Bool)

(assert (=> start!1014 (= b_free!343 (not b_next!343))))

(declare-fun tp!1268 () Bool)

(declare-fun b_and!495 () Bool)

(assert (=> start!1014 (= tp!1268 b_and!495)))

(declare-fun res!8086 () Bool)

(declare-fun e!4957 () Bool)

(assert (=> start!1014 (=> (not res!8086) (not e!4957))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1014 (= res!8086 (validMask!0 mask!2250))))

(assert (=> start!1014 e!4957))

(assert (=> start!1014 tp!1268))

(assert (=> start!1014 true))

(declare-datatypes ((V!739 0))(
  ( (V!740 (val!216 Int)) )
))
(declare-datatypes ((ValueCell!194 0))(
  ( (ValueCellFull!194 (v!1310 V!739)) (EmptyCell!194) )
))
(declare-datatypes ((array!767 0))(
  ( (array!768 (arr!369 (Array (_ BitVec 32) ValueCell!194)) (size!431 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!767)

(declare-fun e!4956 () Bool)

(declare-fun array_inv!269 (array!767) Bool)

(assert (=> start!1014 (and (array_inv!269 _values!1492) e!4956)))

(declare-fun tp_is_empty!421 () Bool)

(assert (=> start!1014 tp_is_empty!421))

(declare-datatypes ((array!769 0))(
  ( (array!770 (arr!370 (Array (_ BitVec 32) (_ BitVec 64))) (size!432 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!769)

(declare-fun array_inv!270 (array!769) Bool)

(assert (=> start!1014 (array_inv!270 _keys!1806)))

(declare-fun b!8691 () Bool)

(declare-fun res!8085 () Bool)

(assert (=> b!8691 (=> (not res!8085) (not e!4957))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!8691 (= res!8085 (and (= (size!431 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!432 _keys!1806) (size!431 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!611 () Bool)

(declare-fun mapRes!611 () Bool)

(declare-fun tp!1267 () Bool)

(declare-fun e!4953 () Bool)

(assert (=> mapNonEmpty!611 (= mapRes!611 (and tp!1267 e!4953))))

(declare-fun mapValue!611 () ValueCell!194)

(declare-fun mapRest!611 () (Array (_ BitVec 32) ValueCell!194))

(declare-fun mapKey!611 () (_ BitVec 32))

(assert (=> mapNonEmpty!611 (= (arr!369 _values!1492) (store mapRest!611 mapKey!611 mapValue!611))))

(declare-fun mapIsEmpty!611 () Bool)

(assert (=> mapIsEmpty!611 mapRes!611))

(declare-fun b!8692 () Bool)

(declare-fun res!8088 () Bool)

(assert (=> b!8692 (=> (not res!8088) (not e!4957))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!8692 (= res!8088 (validKeyInArray!0 k!1278))))

(declare-fun b!8693 () Bool)

(declare-fun e!4955 () Bool)

(assert (=> b!8693 (= e!4957 (not e!4955))))

(declare-fun res!8089 () Bool)

(assert (=> b!8693 (=> res!8089 e!4955)))

(declare-fun arrayContainsKey!0 (array!769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8693 (= res!8089 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(declare-fun e!4952 () Bool)

(assert (=> b!8693 e!4952))

(declare-fun c!662 () Bool)

(assert (=> b!8693 (= c!662 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!739)

(declare-fun zeroValue!1434 () V!739)

(declare-datatypes ((Unit!163 0))(
  ( (Unit!164) )
))
(declare-fun lt!1878 () Unit!163)

(declare-fun lemmaKeyInListMapIsInArray!60 (array!769 array!767 (_ BitVec 32) (_ BitVec 32) V!739 V!739 (_ BitVec 64) Int) Unit!163)

(assert (=> b!8693 (= lt!1878 (lemmaKeyInListMapIsInArray!60 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!8694 () Bool)

(declare-fun res!8083 () Bool)

(assert (=> b!8694 (=> (not res!8083) (not e!4957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!769 (_ BitVec 32)) Bool)

(assert (=> b!8694 (= res!8083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!8695 () Bool)

(declare-fun e!4954 () Bool)

(assert (=> b!8695 (= e!4956 (and e!4954 mapRes!611))))

(declare-fun condMapEmpty!611 () Bool)

(declare-fun mapDefault!611 () ValueCell!194)

