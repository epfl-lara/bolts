; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77596 () Bool)

(assert start!77596)

(declare-fun b_free!16153 () Bool)

(declare-fun b_next!16153 () Bool)

(assert (=> start!77596 (= b_free!16153 (not b_next!16153))))

(declare-fun tp!56721 () Bool)

(declare-fun b_and!26537 () Bool)

(assert (=> start!77596 (= tp!56721 b_and!26537)))

(declare-fun b!903645 () Bool)

(declare-fun e!506367 () Bool)

(declare-fun e!506369 () Bool)

(declare-fun mapRes!29569 () Bool)

(assert (=> b!903645 (= e!506367 (and e!506369 mapRes!29569))))

(declare-fun condMapEmpty!29569 () Bool)

(declare-datatypes ((V!29727 0))(
  ( (V!29728 (val!9336 Int)) )
))
(declare-datatypes ((ValueCell!8804 0))(
  ( (ValueCellFull!8804 (v!11841 V!29727)) (EmptyCell!8804) )
))
(declare-datatypes ((array!53176 0))(
  ( (array!53177 (arr!25543 (Array (_ BitVec 32) ValueCell!8804)) (size!26003 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53176)

(declare-fun mapDefault!29569 () ValueCell!8804)

