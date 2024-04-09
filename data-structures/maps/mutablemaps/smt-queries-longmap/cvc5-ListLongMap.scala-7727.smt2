; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97084 () Bool)

(assert start!97084)

(declare-fun b!1103869 () Bool)

(declare-fun res!736543 () Bool)

(declare-fun e!630166 () Bool)

(assert (=> b!1103869 (=> (not res!736543) (not e!630166))))

(declare-datatypes ((array!71548 0))(
  ( (array!71549 (arr!34427 (Array (_ BitVec 32) (_ BitVec 64))) (size!34964 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71548)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71548 (_ BitVec 32)) Bool)

(assert (=> b!1103869 (= res!736543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!42811 () Bool)

(declare-fun mapRes!42811 () Bool)

(assert (=> mapIsEmpty!42811 mapRes!42811))

(declare-fun b!1103870 () Bool)

(declare-fun e!630169 () Bool)

(declare-fun tp_is_empty!27337 () Bool)

(assert (=> b!1103870 (= e!630169 tp_is_empty!27337)))

(declare-fun b!1103871 () Bool)

(declare-fun res!736541 () Bool)

(assert (=> b!1103871 (=> (not res!736541) (not e!630166))))

(declare-datatypes ((List!24170 0))(
  ( (Nil!24167) (Cons!24166 (h!25375 (_ BitVec 64)) (t!34442 List!24170)) )
))
(declare-fun arrayNoDuplicates!0 (array!71548 (_ BitVec 32) List!24170) Bool)

(assert (=> b!1103871 (= res!736541 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24167))))

(declare-fun b!1103872 () Bool)

(declare-fun res!736544 () Bool)

(assert (=> b!1103872 (=> (not res!736544) (not e!630166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103872 (= res!736544 (validMask!0 mask!1564))))

(declare-fun b!1103873 () Bool)

(declare-fun e!630167 () Bool)

(assert (=> b!1103873 (= e!630167 tp_is_empty!27337)))

(declare-fun res!736537 () Bool)

(assert (=> start!97084 (=> (not res!736537) (not e!630166))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97084 (= res!736537 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34964 _keys!1208))))))

(assert (=> start!97084 e!630166))

(declare-fun array_inv!26364 (array!71548) Bool)

(assert (=> start!97084 (array_inv!26364 _keys!1208)))

(assert (=> start!97084 true))

(declare-datatypes ((V!41577 0))(
  ( (V!41578 (val!13725 Int)) )
))
(declare-datatypes ((ValueCell!12959 0))(
  ( (ValueCellFull!12959 (v!16358 V!41577)) (EmptyCell!12959) )
))
(declare-datatypes ((array!71550 0))(
  ( (array!71551 (arr!34428 (Array (_ BitVec 32) ValueCell!12959)) (size!34965 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71550)

(declare-fun e!630170 () Bool)

(declare-fun array_inv!26365 (array!71550) Bool)

(assert (=> start!97084 (and (array_inv!26365 _values!996) e!630170)))

(declare-fun b!1103874 () Bool)

(declare-fun res!736542 () Bool)

(assert (=> b!1103874 (=> (not res!736542) (not e!630166))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1103874 (= res!736542 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34964 _keys!1208))))))

(declare-fun b!1103875 () Bool)

(declare-fun res!736540 () Bool)

(assert (=> b!1103875 (=> (not res!736540) (not e!630166))))

(assert (=> b!1103875 (= res!736540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71549 (store (arr!34427 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34964 _keys!1208)) mask!1564))))

(declare-fun mapNonEmpty!42811 () Bool)

(declare-fun tp!81732 () Bool)

(assert (=> mapNonEmpty!42811 (= mapRes!42811 (and tp!81732 e!630169))))

(declare-fun mapKey!42811 () (_ BitVec 32))

(declare-fun mapRest!42811 () (Array (_ BitVec 32) ValueCell!12959))

(declare-fun mapValue!42811 () ValueCell!12959)

(assert (=> mapNonEmpty!42811 (= (arr!34428 _values!996) (store mapRest!42811 mapKey!42811 mapValue!42811))))

(declare-fun b!1103876 () Bool)

(declare-fun res!736539 () Bool)

(assert (=> b!1103876 (=> (not res!736539) (not e!630166))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1103876 (= res!736539 (= (select (arr!34427 _keys!1208) i!673) k!934))))

(declare-fun b!1103877 () Bool)

(declare-fun res!736538 () Bool)

(assert (=> b!1103877 (=> (not res!736538) (not e!630166))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1103877 (= res!736538 (and (= (size!34965 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34964 _keys!1208) (size!34965 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103878 () Bool)

(assert (=> b!1103878 (= e!630166 (and (bvsle #b00000000000000000000000000000000 (size!34964 _keys!1208)) (bvsge (size!34964 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun b!1103879 () Bool)

(declare-fun res!736536 () Bool)

(assert (=> b!1103879 (=> (not res!736536) (not e!630166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103879 (= res!736536 (validKeyInArray!0 k!934))))

(declare-fun b!1103880 () Bool)

(assert (=> b!1103880 (= e!630170 (and e!630167 mapRes!42811))))

(declare-fun condMapEmpty!42811 () Bool)

(declare-fun mapDefault!42811 () ValueCell!12959)

