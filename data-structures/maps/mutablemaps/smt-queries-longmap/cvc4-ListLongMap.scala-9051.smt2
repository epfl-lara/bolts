; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109130 () Bool)

(assert start!109130)

(declare-fun b_free!28583 () Bool)

(declare-fun b_next!28583 () Bool)

(assert (=> start!109130 (= b_free!28583 (not b_next!28583))))

(declare-fun tp!100869 () Bool)

(declare-fun b_and!46683 () Bool)

(assert (=> start!109130 (= tp!100869 b_and!46683)))

(declare-fun b!1289679 () Bool)

(declare-fun res!856800 () Bool)

(declare-fun e!736363 () Bool)

(assert (=> b!1289679 (=> (not res!856800) (not e!736363))))

(declare-datatypes ((array!85445 0))(
  ( (array!85446 (arr!41219 (Array (_ BitVec 32) (_ BitVec 64))) (size!41770 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85445)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85445 (_ BitVec 32)) Bool)

(assert (=> b!1289679 (= res!856800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289680 () Bool)

(declare-fun res!856793 () Bool)

(assert (=> b!1289680 (=> (not res!856793) (not e!736363))))

(declare-datatypes ((V!50733 0))(
  ( (V!50734 (val!17186 Int)) )
))
(declare-fun minValue!1387 () V!50733)

(declare-fun zeroValue!1387 () V!50733)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16213 0))(
  ( (ValueCellFull!16213 (v!19787 V!50733)) (EmptyCell!16213) )
))
(declare-datatypes ((array!85447 0))(
  ( (array!85448 (arr!41220 (Array (_ BitVec 32) ValueCell!16213)) (size!41771 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85447)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22210 0))(
  ( (tuple2!22211 (_1!11115 (_ BitVec 64)) (_2!11115 V!50733)) )
))
(declare-datatypes ((List!29410 0))(
  ( (Nil!29407) (Cons!29406 (h!30615 tuple2!22210) (t!42981 List!29410)) )
))
(declare-datatypes ((ListLongMap!19879 0))(
  ( (ListLongMap!19880 (toList!9955 List!29410)) )
))
(declare-fun contains!8011 (ListLongMap!19879 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4957 (array!85445 array!85447 (_ BitVec 32) (_ BitVec 32) V!50733 V!50733 (_ BitVec 32) Int) ListLongMap!19879)

(assert (=> b!1289680 (= res!856793 (contains!8011 (getCurrentListMap!4957 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1289681 () Bool)

(declare-fun res!856794 () Bool)

(assert (=> b!1289681 (=> (not res!856794) (not e!736363))))

(assert (=> b!1289681 (= res!856794 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41770 _keys!1741))))))

(declare-fun b!1289682 () Bool)

(declare-fun e!736361 () Bool)

(declare-fun e!736359 () Bool)

(declare-fun mapRes!52895 () Bool)

(assert (=> b!1289682 (= e!736361 (and e!736359 mapRes!52895))))

(declare-fun condMapEmpty!52895 () Bool)

(declare-fun mapDefault!52895 () ValueCell!16213)

