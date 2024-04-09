; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35660 () Bool)

(assert start!35660)

(declare-fun b_free!7907 () Bool)

(declare-fun b_next!7907 () Bool)

(assert (=> start!35660 (= b_free!7907 (not b_next!7907))))

(declare-fun tp!27705 () Bool)

(declare-fun b_and!15167 () Bool)

(assert (=> start!35660 (= tp!27705 b_and!15167)))

(declare-fun b!357804 () Bool)

(declare-fun res!198895 () Bool)

(declare-fun e!219034 () Bool)

(assert (=> b!357804 (=> (not res!198895) (not e!219034))))

(declare-datatypes ((array!19743 0))(
  ( (array!19744 (arr!9362 (Array (_ BitVec 32) (_ BitVec 64))) (size!9714 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19743)

(declare-datatypes ((List!5434 0))(
  ( (Nil!5431) (Cons!5430 (h!6286 (_ BitVec 64)) (t!10592 List!5434)) )
))
(declare-fun arrayNoDuplicates!0 (array!19743 (_ BitVec 32) List!5434) Bool)

(assert (=> b!357804 (= res!198895 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5431))))

(declare-fun b!357805 () Bool)

(declare-fun e!219038 () Bool)

(assert (=> b!357805 (= e!219038 true)))

(declare-datatypes ((V!11783 0))(
  ( (V!11784 (val!4097 Int)) )
))
(declare-fun minValue!1150 () V!11783)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun defaultEntry!1216 () Int)

(declare-fun k!1077 () (_ BitVec 64))

(declare-datatypes ((ValueCell!3709 0))(
  ( (ValueCellFull!3709 (v!6287 V!11783)) (EmptyCell!3709) )
))
(declare-datatypes ((array!19745 0))(
  ( (array!19746 (arr!9363 (Array (_ BitVec 32) ValueCell!3709)) (size!9715 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19745)

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun zeroValue!1150 () V!11783)

(declare-datatypes ((tuple2!5720 0))(
  ( (tuple2!5721 (_1!2870 (_ BitVec 64)) (_2!2870 V!11783)) )
))
(declare-datatypes ((List!5435 0))(
  ( (Nil!5432) (Cons!5431 (h!6287 tuple2!5720) (t!10593 List!5435)) )
))
(declare-datatypes ((ListLongMap!4647 0))(
  ( (ListLongMap!4648 (toList!2339 List!5435)) )
))
(declare-fun contains!2415 (ListLongMap!4647 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1856 (array!19743 array!19745 (_ BitVec 32) (_ BitVec 32) V!11783 V!11783 (_ BitVec 32) Int) ListLongMap!4647)

(assert (=> b!357805 (contains!2415 (getCurrentListMap!1856 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 #b00000000000000000000000000000000 defaultEntry!1216) k!1077)))

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((Unit!11037 0))(
  ( (Unit!11038) )
))
(declare-fun lt!166096 () Unit!11037)

(declare-fun lemmaArrayContainsKeyThenInListMap!349 (array!19743 array!19745 (_ BitVec 32) (_ BitVec 32) V!11783 V!11783 (_ BitVec 64) (_ BitVec 32) Int) Unit!11037)

(assert (=> b!357805 (= lt!166096 (lemmaArrayContainsKeyThenInListMap!349 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 (bvadd #b00000000000000000000000000000001 from!1805) defaultEntry!1216))))

(declare-fun b!357806 () Bool)

(declare-fun res!198894 () Bool)

(assert (=> b!357806 (=> (not res!198894) (not e!219034))))

(declare-fun arrayContainsKey!0 (array!19743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!357806 (= res!198894 (arrayContainsKey!0 _keys!1456 k!1077 from!1805))))

(declare-fun b!357807 () Bool)

(declare-fun res!198900 () Bool)

(assert (=> b!357807 (=> (not res!198900) (not e!219034))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19743 (_ BitVec 32)) Bool)

(assert (=> b!357807 (= res!198900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13665 () Bool)

(declare-fun mapRes!13665 () Bool)

(assert (=> mapIsEmpty!13665 mapRes!13665))

(declare-fun b!357808 () Bool)

(declare-fun e!219035 () Bool)

(declare-fun tp_is_empty!8105 () Bool)

(assert (=> b!357808 (= e!219035 tp_is_empty!8105)))

(declare-fun b!357809 () Bool)

(assert (=> b!357809 (= e!219034 (not e!219038))))

(declare-fun res!198896 () Bool)

(assert (=> b!357809 (=> res!198896 e!219038)))

(assert (=> b!357809 (= res!198896 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1805) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1805) (size!9714 _keys!1456))))))

(assert (=> b!357809 (arrayContainsKey!0 _keys!1456 k!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun lt!166095 () Unit!11037)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!37 (array!19743 array!19745 (_ BitVec 32) (_ BitVec 32) V!11783 V!11783 (_ BitVec 64) (_ BitVec 32)) Unit!11037)

(assert (=> b!357809 (= lt!166095 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!37 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k!1077 from!1805))))

(declare-fun b!357810 () Bool)

(declare-fun res!198899 () Bool)

(assert (=> b!357810 (=> (not res!198899) (not e!219034))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!357810 (= res!198899 (validKeyInArray!0 k!1077))))

(declare-fun b!357812 () Bool)

(declare-fun e!219033 () Bool)

(declare-fun e!219036 () Bool)

(assert (=> b!357812 (= e!219033 (and e!219036 mapRes!13665))))

(declare-fun condMapEmpty!13665 () Bool)

(declare-fun mapDefault!13665 () ValueCell!3709)

