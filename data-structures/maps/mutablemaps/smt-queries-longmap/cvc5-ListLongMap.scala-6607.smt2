; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83554 () Bool)

(assert start!83554)

(declare-fun b_free!19513 () Bool)

(declare-fun b_next!19513 () Bool)

(assert (=> start!83554 (= b_free!19513 (not b_next!19513))))

(declare-fun tp!67828 () Bool)

(declare-fun b_and!31139 () Bool)

(assert (=> start!83554 (= tp!67828 b_and!31139)))

(declare-fun mapIsEmpty!35635 () Bool)

(declare-fun mapRes!35635 () Bool)

(assert (=> mapIsEmpty!35635 mapRes!35635))

(declare-fun b!975723 () Bool)

(declare-fun res!653304 () Bool)

(declare-fun e!549920 () Bool)

(assert (=> b!975723 (=> (not res!653304) (not e!549920))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34873 0))(
  ( (V!34874 (val!11259 Int)) )
))
(declare-datatypes ((ValueCell!10727 0))(
  ( (ValueCellFull!10727 (v!13818 V!34873)) (EmptyCell!10727) )
))
(declare-datatypes ((array!60849 0))(
  ( (array!60850 (arr!29284 (Array (_ BitVec 32) ValueCell!10727)) (size!29764 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60849)

(declare-fun zeroValue!1367 () V!34873)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34873)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60851 0))(
  ( (array!60852 (arr!29285 (Array (_ BitVec 32) (_ BitVec 64))) (size!29765 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60851)

(declare-datatypes ((tuple2!14584 0))(
  ( (tuple2!14585 (_1!7302 (_ BitVec 64)) (_2!7302 V!34873)) )
))
(declare-datatypes ((List!20456 0))(
  ( (Nil!20453) (Cons!20452 (h!21614 tuple2!14584) (t!28949 List!20456)) )
))
(declare-datatypes ((ListLongMap!13295 0))(
  ( (ListLongMap!13296 (toList!6663 List!20456)) )
))
(declare-fun contains!5695 (ListLongMap!13295 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3848 (array!60851 array!60849 (_ BitVec 32) (_ BitVec 32) V!34873 V!34873 (_ BitVec 32) Int) ListLongMap!13295)

(assert (=> b!975723 (= res!653304 (contains!5695 (getCurrentListMap!3848 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29285 _keys!1717) i!822)))))

(declare-fun b!975724 () Bool)

(declare-fun res!653303 () Bool)

(assert (=> b!975724 (=> (not res!653303) (not e!549920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975724 (= res!653303 (validKeyInArray!0 (select (arr!29285 _keys!1717) i!822)))))

(declare-fun b!975725 () Bool)

(declare-fun e!549919 () Bool)

(declare-fun tp_is_empty!22417 () Bool)

(assert (=> b!975725 (= e!549919 tp_is_empty!22417)))

(declare-fun b!975726 () Bool)

(declare-fun e!549921 () Bool)

(assert (=> b!975726 (= e!549920 e!549921)))

(declare-fun res!653301 () Bool)

(assert (=> b!975726 (=> (not res!653301) (not e!549921))))

(declare-fun lt!432872 () (_ BitVec 64))

(assert (=> b!975726 (= res!653301 (validKeyInArray!0 lt!432872))))

(assert (=> b!975726 (= lt!432872 (select (arr!29285 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun lt!432874 () ListLongMap!13295)

(assert (=> b!975726 (= lt!432874 (getCurrentListMap!3848 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975727 () Bool)

(declare-fun res!653298 () Bool)

(assert (=> b!975727 (=> (not res!653298) (not e!549920))))

(declare-datatypes ((List!20457 0))(
  ( (Nil!20454) (Cons!20453 (h!21615 (_ BitVec 64)) (t!28950 List!20457)) )
))
(declare-fun arrayNoDuplicates!0 (array!60851 (_ BitVec 32) List!20457) Bool)

(assert (=> b!975727 (= res!653298 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20454))))

(declare-fun b!975728 () Bool)

(declare-fun res!653299 () Bool)

(assert (=> b!975728 (=> (not res!653299) (not e!549920))))

(assert (=> b!975728 (= res!653299 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29765 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29765 _keys!1717))))))

(declare-fun b!975729 () Bool)

(declare-fun res!653305 () Bool)

(assert (=> b!975729 (=> (not res!653305) (not e!549920))))

(assert (=> b!975729 (= res!653305 (and (= (size!29764 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29765 _keys!1717) (size!29764 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975730 () Bool)

(declare-fun e!549922 () Bool)

(assert (=> b!975730 (= e!549922 (and e!549919 mapRes!35635))))

(declare-fun condMapEmpty!35635 () Bool)

(declare-fun mapDefault!35635 () ValueCell!10727)

