; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83462 () Bool)

(assert start!83462)

(declare-fun b_free!19427 () Bool)

(declare-fun b_next!19427 () Bool)

(assert (=> start!83462 (= b_free!19427 (not b_next!19427))))

(declare-fun tp!67560 () Bool)

(declare-fun b_and!31047 () Bool)

(assert (=> start!83462 (= tp!67560 b_and!31047)))

(declare-fun mapIsEmpty!35497 () Bool)

(declare-fun mapRes!35497 () Bool)

(assert (=> mapIsEmpty!35497 mapRes!35497))

(declare-fun b!974345 () Bool)

(declare-fun res!652341 () Bool)

(declare-fun e!549201 () Bool)

(assert (=> b!974345 (=> (not res!652341) (not e!549201))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34749 0))(
  ( (V!34750 (val!11213 Int)) )
))
(declare-datatypes ((ValueCell!10681 0))(
  ( (ValueCellFull!10681 (v!13772 V!34749)) (EmptyCell!10681) )
))
(declare-datatypes ((array!60669 0))(
  ( (array!60670 (arr!29194 (Array (_ BitVec 32) ValueCell!10681)) (size!29674 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60669)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60671 0))(
  ( (array!60672 (arr!29195 (Array (_ BitVec 32) (_ BitVec 64))) (size!29675 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60671)

(assert (=> b!974345 (= res!652341 (and (= (size!29674 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29675 _keys!1717) (size!29674 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974346 () Bool)

(declare-fun e!549204 () Bool)

(declare-fun tp_is_empty!22325 () Bool)

(assert (=> b!974346 (= e!549204 tp_is_empty!22325)))

(declare-fun b!974347 () Bool)

(declare-fun res!652339 () Bool)

(assert (=> b!974347 (=> (not res!652339) (not e!549201))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!974347 (= res!652339 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29675 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29675 _keys!1717))))))

(declare-fun b!974348 () Bool)

(declare-fun e!549203 () Bool)

(assert (=> b!974348 (= e!549203 tp_is_empty!22325)))

(declare-fun b!974349 () Bool)

(declare-fun res!652342 () Bool)

(assert (=> b!974349 (=> (not res!652342) (not e!549201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974349 (= res!652342 (validKeyInArray!0 (select (arr!29195 _keys!1717) i!822)))))

(declare-fun b!974350 () Bool)

(assert (=> b!974350 (= e!549201 false)))

(declare-fun zeroValue!1367 () V!34749)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34749)

(declare-datatypes ((tuple2!14508 0))(
  ( (tuple2!14509 (_1!7264 (_ BitVec 64)) (_2!7264 V!34749)) )
))
(declare-datatypes ((List!20383 0))(
  ( (Nil!20380) (Cons!20379 (h!21541 tuple2!14508) (t!28868 List!20383)) )
))
(declare-datatypes ((ListLongMap!13219 0))(
  ( (ListLongMap!13220 (toList!6625 List!20383)) )
))
(declare-fun lt!432721 () ListLongMap!13219)

(declare-fun getCurrentListMap!3810 (array!60671 array!60669 (_ BitVec 32) (_ BitVec 32) V!34749 V!34749 (_ BitVec 32) Int) ListLongMap!13219)

(assert (=> b!974350 (= lt!432721 (getCurrentListMap!3810 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!974344 () Bool)

(declare-fun res!652344 () Bool)

(assert (=> b!974344 (=> (not res!652344) (not e!549201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60671 (_ BitVec 32)) Bool)

(assert (=> b!974344 (= res!652344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!652343 () Bool)

(assert (=> start!83462 (=> (not res!652343) (not e!549201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83462 (= res!652343 (validMask!0 mask!2147))))

(assert (=> start!83462 e!549201))

(assert (=> start!83462 true))

(declare-fun e!549200 () Bool)

(declare-fun array_inv!22477 (array!60669) Bool)

(assert (=> start!83462 (and (array_inv!22477 _values!1425) e!549200)))

(assert (=> start!83462 tp_is_empty!22325))

(assert (=> start!83462 tp!67560))

(declare-fun array_inv!22478 (array!60671) Bool)

(assert (=> start!83462 (array_inv!22478 _keys!1717)))

(declare-fun b!974351 () Bool)

(declare-fun res!652345 () Bool)

(assert (=> b!974351 (=> (not res!652345) (not e!549201))))

(declare-fun contains!5664 (ListLongMap!13219 (_ BitVec 64)) Bool)

(assert (=> b!974351 (= res!652345 (contains!5664 (getCurrentListMap!3810 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29195 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35497 () Bool)

(declare-fun tp!67561 () Bool)

(assert (=> mapNonEmpty!35497 (= mapRes!35497 (and tp!67561 e!549203))))

(declare-fun mapRest!35497 () (Array (_ BitVec 32) ValueCell!10681))

(declare-fun mapValue!35497 () ValueCell!10681)

(declare-fun mapKey!35497 () (_ BitVec 32))

(assert (=> mapNonEmpty!35497 (= (arr!29194 _values!1425) (store mapRest!35497 mapKey!35497 mapValue!35497))))

(declare-fun b!974352 () Bool)

(declare-fun res!652340 () Bool)

(assert (=> b!974352 (=> (not res!652340) (not e!549201))))

(declare-datatypes ((List!20384 0))(
  ( (Nil!20381) (Cons!20380 (h!21542 (_ BitVec 64)) (t!28869 List!20384)) )
))
(declare-fun arrayNoDuplicates!0 (array!60671 (_ BitVec 32) List!20384) Bool)

(assert (=> b!974352 (= res!652340 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20381))))

(declare-fun b!974353 () Bool)

(assert (=> b!974353 (= e!549200 (and e!549204 mapRes!35497))))

(declare-fun condMapEmpty!35497 () Bool)

(declare-fun mapDefault!35497 () ValueCell!10681)

