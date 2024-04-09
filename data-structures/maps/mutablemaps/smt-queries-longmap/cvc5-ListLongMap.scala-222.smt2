; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4012 () Bool)

(assert start!4012)

(declare-fun b_free!919 () Bool)

(declare-fun b_next!919 () Bool)

(assert (=> start!4012 (= b_free!919 (not b_next!919))))

(declare-fun tp!4177 () Bool)

(declare-fun b_and!1731 () Bool)

(assert (=> start!4012 (= tp!4177 b_and!1731)))

(declare-fun b!29241 () Bool)

(declare-fun res!17498 () Bool)

(declare-fun e!18887 () Bool)

(assert (=> b!29241 (=> (not res!17498) (not e!18887))))

(declare-datatypes ((array!1767 0))(
  ( (array!1768 (arr!837 (Array (_ BitVec 32) (_ BitVec 64))) (size!938 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1767)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1767 (_ BitVec 32)) Bool)

(assert (=> b!29241 (= res!17498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!29242 () Bool)

(declare-fun e!18886 () Bool)

(assert (=> b!29242 (= e!18887 e!18886)))

(declare-fun res!17500 () Bool)

(assert (=> b!29242 (=> (not res!17500) (not e!18886))))

(declare-datatypes ((V!1523 0))(
  ( (V!1524 (val!663 Int)) )
))
(declare-datatypes ((tuple2!1086 0))(
  ( (tuple2!1087 (_1!553 (_ BitVec 64)) (_2!553 V!1523)) )
))
(declare-datatypes ((List!696 0))(
  ( (Nil!693) (Cons!692 (h!1259 tuple2!1086) (t!3391 List!696)) )
))
(declare-datatypes ((ListLongMap!667 0))(
  ( (ListLongMap!668 (toList!349 List!696)) )
))
(declare-fun lt!11150 () ListLongMap!667)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun contains!286 (ListLongMap!667 (_ BitVec 64)) Bool)

(assert (=> b!29242 (= res!17500 (not (contains!286 lt!11150 k!1304)))))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((ValueCell!437 0))(
  ( (ValueCellFull!437 (v!1752 V!1523)) (EmptyCell!437) )
))
(declare-datatypes ((array!1769 0))(
  ( (array!1770 (arr!838 (Array (_ BitVec 32) ValueCell!437)) (size!939 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1769)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1523)

(declare-fun minValue!1443 () V!1523)

(declare-fun getCurrentListMap!176 (array!1767 array!1769 (_ BitVec 32) (_ BitVec 32) V!1523 V!1523 (_ BitVec 32) Int) ListLongMap!667)

(assert (=> b!29242 (= lt!11150 (getCurrentListMap!176 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun b!29243 () Bool)

(declare-fun e!18885 () Bool)

(declare-fun e!18889 () Bool)

(declare-fun mapRes!1438 () Bool)

(assert (=> b!29243 (= e!18885 (and e!18889 mapRes!1438))))

(declare-fun condMapEmpty!1438 () Bool)

(declare-fun mapDefault!1438 () ValueCell!437)

