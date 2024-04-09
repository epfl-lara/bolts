; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83282 () Bool)

(assert start!83282)

(declare-fun b_free!19247 () Bool)

(declare-fun b_next!19247 () Bool)

(assert (=> start!83282 (= b_free!19247 (not b_next!19247))))

(declare-fun tp!67020 () Bool)

(declare-fun b_and!30753 () Bool)

(assert (=> start!83282 (= tp!67020 b_and!30753)))

(declare-fun mapIsEmpty!35227 () Bool)

(declare-fun mapRes!35227 () Bool)

(assert (=> mapIsEmpty!35227 mapRes!35227))

(declare-fun res!650283 () Bool)

(declare-fun e!547601 () Bool)

(assert (=> start!83282 (=> (not res!650283) (not e!547601))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83282 (= res!650283 (validMask!0 mask!2147))))

(assert (=> start!83282 e!547601))

(assert (=> start!83282 true))

(declare-datatypes ((V!34509 0))(
  ( (V!34510 (val!11123 Int)) )
))
(declare-datatypes ((ValueCell!10591 0))(
  ( (ValueCellFull!10591 (v!13682 V!34509)) (EmptyCell!10591) )
))
(declare-datatypes ((array!60323 0))(
  ( (array!60324 (arr!29021 (Array (_ BitVec 32) ValueCell!10591)) (size!29501 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60323)

(declare-fun e!547602 () Bool)

(declare-fun array_inv!22349 (array!60323) Bool)

(assert (=> start!83282 (and (array_inv!22349 _values!1425) e!547602)))

(declare-fun tp_is_empty!22145 () Bool)

(assert (=> start!83282 tp_is_empty!22145))

(assert (=> start!83282 tp!67020))

(declare-datatypes ((array!60325 0))(
  ( (array!60326 (arr!29022 (Array (_ BitVec 32) (_ BitVec 64))) (size!29502 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60325)

(declare-fun array_inv!22350 (array!60325) Bool)

(assert (=> start!83282 (array_inv!22350 _keys!1717)))

(declare-fun b!971359 () Bool)

(declare-fun res!650279 () Bool)

(assert (=> b!971359 (=> (not res!650279) (not e!547601))))

(declare-datatypes ((List!20251 0))(
  ( (Nil!20248) (Cons!20247 (h!21409 (_ BitVec 64)) (t!28622 List!20251)) )
))
(declare-fun arrayNoDuplicates!0 (array!60325 (_ BitVec 32) List!20251) Bool)

(assert (=> b!971359 (= res!650279 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20248))))

(declare-fun b!971360 () Bool)

(declare-fun res!650284 () Bool)

(assert (=> b!971360 (=> (not res!650284) (not e!547601))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971360 (= res!650284 (validKeyInArray!0 (select (arr!29022 _keys!1717) i!822)))))

(declare-fun b!971361 () Bool)

(declare-fun res!650278 () Bool)

(assert (=> b!971361 (=> (not res!650278) (not e!547601))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!971361 (= res!650278 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29502 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29502 _keys!1717))))))

(declare-fun b!971362 () Bool)

(declare-fun res!650281 () Bool)

(assert (=> b!971362 (=> (not res!650281) (not e!547601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60325 (_ BitVec 32)) Bool)

(assert (=> b!971362 (= res!650281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971363 () Bool)

(declare-fun res!650282 () Bool)

(assert (=> b!971363 (=> (not res!650282) (not e!547601))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!971363 (= res!650282 (and (= (size!29501 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29502 _keys!1717) (size!29501 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971364 () Bool)

(declare-fun e!547598 () Bool)

(assert (=> b!971364 (= e!547598 tp_is_empty!22145)))

(declare-fun b!971365 () Bool)

(declare-fun res!650280 () Bool)

(assert (=> b!971365 (=> (not res!650280) (not e!547601))))

(declare-fun zeroValue!1367 () V!34509)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34509)

(declare-datatypes ((tuple2!14362 0))(
  ( (tuple2!14363 (_1!7191 (_ BitVec 64)) (_2!7191 V!34509)) )
))
(declare-datatypes ((List!20252 0))(
  ( (Nil!20249) (Cons!20248 (h!21410 tuple2!14362) (t!28623 List!20252)) )
))
(declare-datatypes ((ListLongMap!13073 0))(
  ( (ListLongMap!13074 (toList!6552 List!20252)) )
))
(declare-fun contains!5603 (ListLongMap!13073 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3737 (array!60325 array!60323 (_ BitVec 32) (_ BitVec 32) V!34509 V!34509 (_ BitVec 32) Int) ListLongMap!13073)

(assert (=> b!971365 (= res!650280 (contains!5603 (getCurrentListMap!3737 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29022 _keys!1717) i!822)))))

(declare-fun b!971366 () Bool)

(assert (=> b!971366 (= e!547602 (and e!547598 mapRes!35227))))

(declare-fun condMapEmpty!35227 () Bool)

(declare-fun mapDefault!35227 () ValueCell!10591)

