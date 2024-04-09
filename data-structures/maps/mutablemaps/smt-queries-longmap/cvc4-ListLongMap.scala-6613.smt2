; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83594 () Bool)

(assert start!83594)

(declare-fun b_free!19553 () Bool)

(declare-fun b_next!19553 () Bool)

(assert (=> start!83594 (= b_free!19553 (not b_next!19553))))

(declare-fun tp!67947 () Bool)

(declare-fun b_and!31209 () Bool)

(assert (=> start!83594 (= tp!67947 b_and!31209)))

(declare-fun res!653785 () Bool)

(declare-fun e!550298 () Bool)

(assert (=> start!83594 (=> (not res!653785) (not e!550298))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83594 (= res!653785 (validMask!0 mask!2147))))

(assert (=> start!83594 e!550298))

(assert (=> start!83594 true))

(declare-datatypes ((V!34925 0))(
  ( (V!34926 (val!11279 Int)) )
))
(declare-datatypes ((ValueCell!10747 0))(
  ( (ValueCellFull!10747 (v!13838 V!34925)) (EmptyCell!10747) )
))
(declare-datatypes ((array!60927 0))(
  ( (array!60928 (arr!29323 (Array (_ BitVec 32) ValueCell!10747)) (size!29803 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60927)

(declare-fun e!550300 () Bool)

(declare-fun array_inv!22577 (array!60927) Bool)

(assert (=> start!83594 (and (array_inv!22577 _values!1425) e!550300)))

(declare-fun tp_is_empty!22457 () Bool)

(assert (=> start!83594 tp_is_empty!22457))

(assert (=> start!83594 tp!67947))

(declare-datatypes ((array!60929 0))(
  ( (array!60930 (arr!29324 (Array (_ BitVec 32) (_ BitVec 64))) (size!29804 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60929)

(declare-fun array_inv!22578 (array!60929) Bool)

(assert (=> start!83594 (array_inv!22578 _keys!1717)))

(declare-fun mapIsEmpty!35695 () Bool)

(declare-fun mapRes!35695 () Bool)

(assert (=> mapIsEmpty!35695 mapRes!35695))

(declare-fun b!976413 () Bool)

(declare-fun res!653784 () Bool)

(assert (=> b!976413 (=> (not res!653784) (not e!550298))))

(declare-fun zeroValue!1367 () V!34925)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34925)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((tuple2!14614 0))(
  ( (tuple2!14615 (_1!7317 (_ BitVec 64)) (_2!7317 V!34925)) )
))
(declare-datatypes ((List!20486 0))(
  ( (Nil!20483) (Cons!20482 (h!21644 tuple2!14614) (t!29007 List!20486)) )
))
(declare-datatypes ((ListLongMap!13325 0))(
  ( (ListLongMap!13326 (toList!6678 List!20486)) )
))
(declare-fun contains!5709 (ListLongMap!13325 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3863 (array!60929 array!60927 (_ BitVec 32) (_ BitVec 32) V!34925 V!34925 (_ BitVec 32) Int) ListLongMap!13325)

(assert (=> b!976413 (= res!653784 (contains!5709 (getCurrentListMap!3863 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29324 _keys!1717) i!822)))))

(declare-fun b!976414 () Bool)

(declare-fun e!550299 () Bool)

(assert (=> b!976414 (= e!550298 e!550299)))

(declare-fun res!653781 () Bool)

(assert (=> b!976414 (=> (not res!653781) (not e!550299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976414 (= res!653781 (not (validKeyInArray!0 (select (arr!29324 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))))

(declare-fun lt!433090 () ListLongMap!13325)

(assert (=> b!976414 (= lt!433090 (getCurrentListMap!3863 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!976415 () Bool)

(declare-fun e!550301 () Bool)

(assert (=> b!976415 (= e!550301 tp_is_empty!22457)))

(declare-fun b!976416 () Bool)

(declare-fun res!653782 () Bool)

(assert (=> b!976416 (=> (not res!653782) (not e!550298))))

(assert (=> b!976416 (= res!653782 (validKeyInArray!0 (select (arr!29324 _keys!1717) i!822)))))

(declare-fun b!976417 () Bool)

(declare-fun res!653778 () Bool)

(assert (=> b!976417 (=> (not res!653778) (not e!550298))))

(assert (=> b!976417 (= res!653778 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29804 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29804 _keys!1717))))))

(declare-fun b!976418 () Bool)

(declare-fun res!653780 () Bool)

(assert (=> b!976418 (=> (not res!653780) (not e!550298))))

(declare-datatypes ((List!20487 0))(
  ( (Nil!20484) (Cons!20483 (h!21645 (_ BitVec 64)) (t!29008 List!20487)) )
))
(declare-fun arrayNoDuplicates!0 (array!60929 (_ BitVec 32) List!20487) Bool)

(assert (=> b!976418 (= res!653780 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20484))))

(declare-fun b!976419 () Bool)

(declare-fun e!550302 () Bool)

(assert (=> b!976419 (= e!550302 tp_is_empty!22457)))

(declare-fun b!976420 () Bool)

(assert (=> b!976420 (= e!550299 (not (contains!5709 lt!433090 (select (arr!29324 _keys!1717) i!822))))))

(declare-fun b!976421 () Bool)

(declare-fun res!653783 () Bool)

(assert (=> b!976421 (=> (not res!653783) (not e!550298))))

(assert (=> b!976421 (= res!653783 (and (= (size!29803 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29804 _keys!1717) (size!29803 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!976422 () Bool)

(assert (=> b!976422 (= e!550300 (and e!550302 mapRes!35695))))

(declare-fun condMapEmpty!35695 () Bool)

(declare-fun mapDefault!35695 () ValueCell!10747)

