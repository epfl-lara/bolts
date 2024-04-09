; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83192 () Bool)

(assert start!83192)

(declare-fun b_free!19157 () Bool)

(declare-fun b_next!19157 () Bool)

(assert (=> start!83192 (= b_free!19157 (not b_next!19157))))

(declare-fun tp!66751 () Bool)

(declare-fun b_and!30663 () Bool)

(assert (=> start!83192 (= tp!66751 b_and!30663)))

(declare-fun b!970073 () Bool)

(declare-fun res!649397 () Bool)

(declare-fun e!546923 () Bool)

(assert (=> b!970073 (=> (not res!649397) (not e!546923))))

(declare-datatypes ((array!60153 0))(
  ( (array!60154 (arr!28936 (Array (_ BitVec 32) (_ BitVec 64))) (size!29416 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60153)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970073 (= res!649397 (validKeyInArray!0 (select (arr!28936 _keys!1717) i!822)))))

(declare-fun b!970074 () Bool)

(declare-fun res!649402 () Bool)

(assert (=> b!970074 (=> (not res!649402) (not e!546923))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60153 (_ BitVec 32)) Bool)

(assert (=> b!970074 (= res!649402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapNonEmpty!35092 () Bool)

(declare-fun mapRes!35092 () Bool)

(declare-fun tp!66750 () Bool)

(declare-fun e!546925 () Bool)

(assert (=> mapNonEmpty!35092 (= mapRes!35092 (and tp!66750 e!546925))))

(declare-fun mapKey!35092 () (_ BitVec 32))

(declare-datatypes ((V!34389 0))(
  ( (V!34390 (val!11078 Int)) )
))
(declare-datatypes ((ValueCell!10546 0))(
  ( (ValueCellFull!10546 (v!13637 V!34389)) (EmptyCell!10546) )
))
(declare-datatypes ((array!60155 0))(
  ( (array!60156 (arr!28937 (Array (_ BitVec 32) ValueCell!10546)) (size!29417 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60155)

(declare-fun mapValue!35092 () ValueCell!10546)

(declare-fun mapRest!35092 () (Array (_ BitVec 32) ValueCell!10546))

(assert (=> mapNonEmpty!35092 (= (arr!28937 _values!1425) (store mapRest!35092 mapKey!35092 mapValue!35092))))

(declare-fun b!970075 () Bool)

(declare-fun res!649400 () Bool)

(assert (=> b!970075 (=> (not res!649400) (not e!546923))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!970075 (= res!649400 (and (= (size!29417 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29416 _keys!1717) (size!29417 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970076 () Bool)

(declare-fun res!649398 () Bool)

(assert (=> b!970076 (=> (not res!649398) (not e!546923))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!970076 (= res!649398 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29416 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29416 _keys!1717))))))

(declare-fun b!970077 () Bool)

(declare-fun e!546924 () Bool)

(declare-fun e!546926 () Bool)

(assert (=> b!970077 (= e!546924 (and e!546926 mapRes!35092))))

(declare-fun condMapEmpty!35092 () Bool)

(declare-fun mapDefault!35092 () ValueCell!10546)

