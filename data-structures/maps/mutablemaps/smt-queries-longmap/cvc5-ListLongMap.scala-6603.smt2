; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83530 () Bool)

(assert start!83530)

(declare-fun b_free!19489 () Bool)

(declare-fun b_next!19489 () Bool)

(assert (=> start!83530 (= b_free!19489 (not b_next!19489))))

(declare-fun tp!67755 () Bool)

(declare-fun b_and!31109 () Bool)

(assert (=> start!83530 (= tp!67755 b_and!31109)))

(declare-fun b!975337 () Bool)

(declare-fun res!653026 () Bool)

(declare-fun e!549723 () Bool)

(assert (=> b!975337 (=> (not res!653026) (not e!549723))))

(declare-datatypes ((array!60801 0))(
  ( (array!60802 (arr!29260 (Array (_ BitVec 32) (_ BitVec 64))) (size!29740 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60801)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60801 (_ BitVec 32)) Bool)

(assert (=> b!975337 (= res!653026 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975338 () Bool)

(assert (=> b!975338 (= e!549723 false)))

(declare-datatypes ((V!34841 0))(
  ( (V!34842 (val!11247 Int)) )
))
(declare-datatypes ((ValueCell!10715 0))(
  ( (ValueCellFull!10715 (v!13806 V!34841)) (EmptyCell!10715) )
))
(declare-datatypes ((array!60803 0))(
  ( (array!60804 (arr!29261 (Array (_ BitVec 32) ValueCell!10715)) (size!29741 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60803)

(declare-datatypes ((tuple2!14564 0))(
  ( (tuple2!14565 (_1!7292 (_ BitVec 64)) (_2!7292 V!34841)) )
))
(declare-datatypes ((List!20436 0))(
  ( (Nil!20433) (Cons!20432 (h!21594 tuple2!14564) (t!28921 List!20436)) )
))
(declare-datatypes ((ListLongMap!13275 0))(
  ( (ListLongMap!13276 (toList!6653 List!20436)) )
))
(declare-fun lt!432814 () ListLongMap!13275)

(declare-fun zeroValue!1367 () V!34841)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun minValue!1367 () V!34841)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun getCurrentListMap!3838 (array!60801 array!60803 (_ BitVec 32) (_ BitVec 32) V!34841 V!34841 (_ BitVec 32) Int) ListLongMap!13275)

(assert (=> b!975338 (= lt!432814 (getCurrentListMap!3838 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975339 () Bool)

(declare-fun res!653028 () Bool)

(assert (=> b!975339 (=> (not res!653028) (not e!549723))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!975339 (= res!653028 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29740 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29740 _keys!1717))))))

(declare-fun b!975340 () Bool)

(declare-fun e!549722 () Bool)

(declare-fun tp_is_empty!22393 () Bool)

(assert (=> b!975340 (= e!549722 tp_is_empty!22393)))

(declare-fun b!975341 () Bool)

(declare-fun res!653030 () Bool)

(assert (=> b!975341 (=> (not res!653030) (not e!549723))))

(assert (=> b!975341 (= res!653030 (and (= (size!29741 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29740 _keys!1717) (size!29741 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!35599 () Bool)

(declare-fun mapRes!35599 () Bool)

(assert (=> mapIsEmpty!35599 mapRes!35599))

(declare-fun b!975342 () Bool)

(declare-fun res!653027 () Bool)

(assert (=> b!975342 (=> (not res!653027) (not e!549723))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975342 (= res!653027 (validKeyInArray!0 (select (arr!29260 _keys!1717) i!822)))))

(declare-fun b!975343 () Bool)

(declare-fun res!653032 () Bool)

(assert (=> b!975343 (=> (not res!653032) (not e!549723))))

(declare-fun contains!5685 (ListLongMap!13275 (_ BitVec 64)) Bool)

(assert (=> b!975343 (= res!653032 (contains!5685 (getCurrentListMap!3838 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29260 _keys!1717) i!822)))))

(declare-fun res!653031 () Bool)

(assert (=> start!83530 (=> (not res!653031) (not e!549723))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83530 (= res!653031 (validMask!0 mask!2147))))

(assert (=> start!83530 e!549723))

(assert (=> start!83530 true))

(declare-fun e!549721 () Bool)

(declare-fun array_inv!22525 (array!60803) Bool)

(assert (=> start!83530 (and (array_inv!22525 _values!1425) e!549721)))

(assert (=> start!83530 tp_is_empty!22393))

(assert (=> start!83530 tp!67755))

(declare-fun array_inv!22526 (array!60801) Bool)

(assert (=> start!83530 (array_inv!22526 _keys!1717)))

(declare-fun b!975344 () Bool)

(declare-fun e!549720 () Bool)

(assert (=> b!975344 (= e!549720 tp_is_empty!22393)))

(declare-fun mapNonEmpty!35599 () Bool)

(declare-fun tp!67756 () Bool)

(assert (=> mapNonEmpty!35599 (= mapRes!35599 (and tp!67756 e!549722))))

(declare-fun mapRest!35599 () (Array (_ BitVec 32) ValueCell!10715))

(declare-fun mapValue!35599 () ValueCell!10715)

(declare-fun mapKey!35599 () (_ BitVec 32))

(assert (=> mapNonEmpty!35599 (= (arr!29261 _values!1425) (store mapRest!35599 mapKey!35599 mapValue!35599))))

(declare-fun b!975345 () Bool)

(declare-fun res!653029 () Bool)

(assert (=> b!975345 (=> (not res!653029) (not e!549723))))

(declare-datatypes ((List!20437 0))(
  ( (Nil!20434) (Cons!20433 (h!21595 (_ BitVec 64)) (t!28922 List!20437)) )
))
(declare-fun arrayNoDuplicates!0 (array!60801 (_ BitVec 32) List!20437) Bool)

(assert (=> b!975345 (= res!653029 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20434))))

(declare-fun b!975346 () Bool)

(assert (=> b!975346 (= e!549721 (and e!549720 mapRes!35599))))

(declare-fun condMapEmpty!35599 () Bool)

(declare-fun mapDefault!35599 () ValueCell!10715)

