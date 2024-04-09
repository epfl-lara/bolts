; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83590 () Bool)

(assert start!83590)

(declare-fun b_free!19549 () Bool)

(declare-fun b_next!19549 () Bool)

(assert (=> start!83590 (= b_free!19549 (not b_next!19549))))

(declare-fun tp!67935 () Bool)

(declare-fun b_and!31205 () Bool)

(assert (=> start!83590 (= tp!67935 b_and!31205)))

(declare-fun b!976347 () Bool)

(declare-fun res!653737 () Bool)

(declare-fun e!550261 () Bool)

(assert (=> b!976347 (=> (not res!653737) (not e!550261))))

(declare-datatypes ((array!60919 0))(
  ( (array!60920 (arr!29319 (Array (_ BitVec 32) (_ BitVec 64))) (size!29799 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60919)

(declare-datatypes ((List!20482 0))(
  ( (Nil!20479) (Cons!20478 (h!21640 (_ BitVec 64)) (t!29003 List!20482)) )
))
(declare-fun arrayNoDuplicates!0 (array!60919 (_ BitVec 32) List!20482) Bool)

(assert (=> b!976347 (= res!653737 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20479))))

(declare-fun b!976348 () Bool)

(declare-fun e!550266 () Bool)

(assert (=> b!976348 (= e!550261 e!550266)))

(declare-fun res!653735 () Bool)

(assert (=> b!976348 (=> (not res!653735) (not e!550266))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!976348 (= res!653735 (not (validKeyInArray!0 (select (arr!29319 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34921 0))(
  ( (V!34922 (val!11277 Int)) )
))
(declare-datatypes ((tuple2!14610 0))(
  ( (tuple2!14611 (_1!7315 (_ BitVec 64)) (_2!7315 V!34921)) )
))
(declare-datatypes ((List!20483 0))(
  ( (Nil!20480) (Cons!20479 (h!21641 tuple2!14610) (t!29004 List!20483)) )
))
(declare-datatypes ((ListLongMap!13321 0))(
  ( (ListLongMap!13322 (toList!6676 List!20483)) )
))
(declare-fun lt!433084 () ListLongMap!13321)

(declare-datatypes ((ValueCell!10745 0))(
  ( (ValueCellFull!10745 (v!13836 V!34921)) (EmptyCell!10745) )
))
(declare-datatypes ((array!60921 0))(
  ( (array!60922 (arr!29320 (Array (_ BitVec 32) ValueCell!10745)) (size!29800 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60921)

(declare-fun zeroValue!1367 () V!34921)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34921)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3861 (array!60919 array!60921 (_ BitVec 32) (_ BitVec 32) V!34921 V!34921 (_ BitVec 32) Int) ListLongMap!13321)

(assert (=> b!976348 (= lt!433084 (getCurrentListMap!3861 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun mapNonEmpty!35689 () Bool)

(declare-fun mapRes!35689 () Bool)

(declare-fun tp!67936 () Bool)

(declare-fun e!550263 () Bool)

(assert (=> mapNonEmpty!35689 (= mapRes!35689 (and tp!67936 e!550263))))

(declare-fun mapValue!35689 () ValueCell!10745)

(declare-fun mapKey!35689 () (_ BitVec 32))

(declare-fun mapRest!35689 () (Array (_ BitVec 32) ValueCell!10745))

(assert (=> mapNonEmpty!35689 (= (arr!29320 _values!1425) (store mapRest!35689 mapKey!35689 mapValue!35689))))

(declare-fun b!976349 () Bool)

(declare-fun res!653730 () Bool)

(assert (=> b!976349 (=> (not res!653730) (not e!550261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60919 (_ BitVec 32)) Bool)

(assert (=> b!976349 (= res!653730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!976350 () Bool)

(declare-fun res!653734 () Bool)

(assert (=> b!976350 (=> (not res!653734) (not e!550261))))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!976350 (= res!653734 (validKeyInArray!0 (select (arr!29319 _keys!1717) i!822)))))

(declare-fun b!976351 () Bool)

(declare-fun res!653733 () Bool)

(assert (=> b!976351 (=> (not res!653733) (not e!550261))))

(assert (=> b!976351 (= res!653733 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29799 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29799 _keys!1717))))))

(declare-fun b!976352 () Bool)

(declare-fun res!653731 () Bool)

(assert (=> b!976352 (=> (not res!653731) (not e!550261))))

(assert (=> b!976352 (= res!653731 (and (= (size!29800 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29799 _keys!1717) (size!29800 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!976353 () Bool)

(declare-fun tp_is_empty!22453 () Bool)

(assert (=> b!976353 (= e!550263 tp_is_empty!22453)))

(declare-fun b!976354 () Bool)

(declare-fun e!550264 () Bool)

(assert (=> b!976354 (= e!550264 tp_is_empty!22453)))

(declare-fun b!976355 () Bool)

(declare-fun res!653732 () Bool)

(assert (=> b!976355 (=> (not res!653732) (not e!550261))))

(declare-fun contains!5707 (ListLongMap!13321 (_ BitVec 64)) Bool)

(assert (=> b!976355 (= res!653732 (contains!5707 (getCurrentListMap!3861 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29319 _keys!1717) i!822)))))

(declare-fun res!653736 () Bool)

(assert (=> start!83590 (=> (not res!653736) (not e!550261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83590 (= res!653736 (validMask!0 mask!2147))))

(assert (=> start!83590 e!550261))

(assert (=> start!83590 true))

(declare-fun e!550265 () Bool)

(declare-fun array_inv!22573 (array!60921) Bool)

(assert (=> start!83590 (and (array_inv!22573 _values!1425) e!550265)))

(assert (=> start!83590 tp_is_empty!22453))

(assert (=> start!83590 tp!67935))

(declare-fun array_inv!22574 (array!60919) Bool)

(assert (=> start!83590 (array_inv!22574 _keys!1717)))

(declare-fun b!976356 () Bool)

(assert (=> b!976356 (= e!550266 (not (contains!5707 lt!433084 (select (arr!29319 _keys!1717) i!822))))))

(declare-fun b!976357 () Bool)

(assert (=> b!976357 (= e!550265 (and e!550264 mapRes!35689))))

(declare-fun condMapEmpty!35689 () Bool)

(declare-fun mapDefault!35689 () ValueCell!10745)

