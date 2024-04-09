; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3822 () Bool)

(assert start!3822)

(declare-fun b_free!779 () Bool)

(declare-fun b_next!779 () Bool)

(assert (=> start!3822 (= b_free!779 (not b_next!779))))

(declare-fun tp!3747 () Bool)

(declare-fun b_and!1585 () Bool)

(assert (=> start!3822 (= tp!3747 b_and!1585)))

(declare-fun b!26800 () Bool)

(declare-fun res!15880 () Bool)

(declare-fun e!17484 () Bool)

(assert (=> b!26800 (=> (not res!15880) (not e!17484))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!26800 (= res!15880 (validKeyInArray!0 k!1304))))

(declare-fun b!26801 () Bool)

(assert (=> b!26801 (= e!17484 false)))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1335 0))(
  ( (V!1336 (val!593 Int)) )
))
(declare-datatypes ((ValueCell!367 0))(
  ( (ValueCellFull!367 (v!1679 V!1335)) (EmptyCell!367) )
))
(declare-datatypes ((array!1497 0))(
  ( (array!1498 (arr!705 (Array (_ BitVec 32) ValueCell!367)) (size!806 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1497)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!1499 0))(
  ( (array!1500 (arr!706 (Array (_ BitVec 32) (_ BitVec 64))) (size!807 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1499)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun lt!10419 () Bool)

(declare-fun zeroValue!1443 () V!1335)

(declare-fun minValue!1443 () V!1335)

(declare-datatypes ((tuple2!982 0))(
  ( (tuple2!983 (_1!501 (_ BitVec 64)) (_2!501 V!1335)) )
))
(declare-datatypes ((List!600 0))(
  ( (Nil!597) (Cons!596 (h!1163 tuple2!982) (t!3289 List!600)) )
))
(declare-datatypes ((ListLongMap!563 0))(
  ( (ListLongMap!564 (toList!297 List!600)) )
))
(declare-fun contains!231 (ListLongMap!563 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!125 (array!1499 array!1497 (_ BitVec 32) (_ BitVec 32) V!1335 V!1335 (_ BitVec 32) Int) ListLongMap!563)

(assert (=> b!26801 (= lt!10419 (contains!231 (getCurrentListMap!125 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304))))

(declare-fun b!26802 () Bool)

(declare-fun e!17487 () Bool)

(declare-fun tp_is_empty!1133 () Bool)

(assert (=> b!26802 (= e!17487 tp_is_empty!1133)))

(declare-fun b!26803 () Bool)

(declare-fun res!15876 () Bool)

(assert (=> b!26803 (=> (not res!15876) (not e!17484))))

(assert (=> b!26803 (= res!15876 (and (= (size!806 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!807 _keys!1833) (size!806 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26804 () Bool)

(declare-fun res!15879 () Bool)

(assert (=> b!26804 (=> (not res!15879) (not e!17484))))

(declare-datatypes ((List!601 0))(
  ( (Nil!598) (Cons!597 (h!1164 (_ BitVec 64)) (t!3290 List!601)) )
))
(declare-fun arrayNoDuplicates!0 (array!1499 (_ BitVec 32) List!601) Bool)

(assert (=> b!26804 (= res!15879 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!598))))

(declare-fun res!15877 () Bool)

(assert (=> start!3822 (=> (not res!15877) (not e!17484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3822 (= res!15877 (validMask!0 mask!2294))))

(assert (=> start!3822 e!17484))

(assert (=> start!3822 true))

(assert (=> start!3822 tp!3747))

(declare-fun e!17488 () Bool)

(declare-fun array_inv!485 (array!1497) Bool)

(assert (=> start!3822 (and (array_inv!485 _values!1501) e!17488)))

(declare-fun array_inv!486 (array!1499) Bool)

(assert (=> start!3822 (array_inv!486 _keys!1833)))

(assert (=> start!3822 tp_is_empty!1133))

(declare-fun b!26805 () Bool)

(declare-fun mapRes!1219 () Bool)

(assert (=> b!26805 (= e!17488 (and e!17487 mapRes!1219))))

(declare-fun condMapEmpty!1219 () Bool)

(declare-fun mapDefault!1219 () ValueCell!367)

