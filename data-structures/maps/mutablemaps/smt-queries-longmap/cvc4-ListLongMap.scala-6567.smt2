; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83318 () Bool)

(assert start!83318)

(declare-fun b_free!19283 () Bool)

(declare-fun b_next!19283 () Bool)

(assert (=> start!83318 (= b_free!19283 (not b_next!19283))))

(declare-fun tp!67128 () Bool)

(declare-fun b_and!30805 () Bool)

(assert (=> start!83318 (= tp!67128 b_and!30805)))

(declare-fun b!971942 () Bool)

(declare-fun res!650689 () Bool)

(declare-fun e!547895 () Bool)

(assert (=> b!971942 (=> (not res!650689) (not e!547895))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34557 0))(
  ( (V!34558 (val!11141 Int)) )
))
(declare-datatypes ((ValueCell!10609 0))(
  ( (ValueCellFull!10609 (v!13700 V!34557)) (EmptyCell!10609) )
))
(declare-datatypes ((array!60393 0))(
  ( (array!60394 (arr!29056 (Array (_ BitVec 32) ValueCell!10609)) (size!29536 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60393)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60395 0))(
  ( (array!60396 (arr!29057 (Array (_ BitVec 32) (_ BitVec 64))) (size!29537 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60395)

(assert (=> b!971942 (= res!650689 (and (= (size!29536 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29537 _keys!1717) (size!29536 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971943 () Bool)

(declare-fun res!650688 () Bool)

(assert (=> b!971943 (=> (not res!650688) (not e!547895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60395 (_ BitVec 32)) Bool)

(assert (=> b!971943 (= res!650688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!971944 () Bool)

(declare-fun e!547897 () Bool)

(declare-fun tp_is_empty!22181 () Bool)

(assert (=> b!971944 (= e!547897 tp_is_empty!22181)))

(declare-fun mapNonEmpty!35281 () Bool)

(declare-fun mapRes!35281 () Bool)

(declare-fun tp!67129 () Bool)

(assert (=> mapNonEmpty!35281 (= mapRes!35281 (and tp!67129 e!547897))))

(declare-fun mapValue!35281 () ValueCell!10609)

(declare-fun mapKey!35281 () (_ BitVec 32))

(declare-fun mapRest!35281 () (Array (_ BitVec 32) ValueCell!10609))

(assert (=> mapNonEmpty!35281 (= (arr!29056 _values!1425) (store mapRest!35281 mapKey!35281 mapValue!35281))))

(declare-fun b!971945 () Bool)

(declare-fun res!650686 () Bool)

(assert (=> b!971945 (=> (not res!650686) (not e!547895))))

(declare-datatypes ((List!20279 0))(
  ( (Nil!20276) (Cons!20275 (h!21437 (_ BitVec 64)) (t!28668 List!20279)) )
))
(declare-fun arrayNoDuplicates!0 (array!60395 (_ BitVec 32) List!20279) Bool)

(assert (=> b!971945 (= res!650686 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20276))))

(declare-fun mapIsEmpty!35281 () Bool)

(assert (=> mapIsEmpty!35281 mapRes!35281))

(declare-fun b!971946 () Bool)

(declare-fun res!650683 () Bool)

(assert (=> b!971946 (=> (not res!650683) (not e!547895))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!971946 (= res!650683 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29537 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29537 _keys!1717))))))

(declare-fun b!971947 () Bool)

(declare-fun e!547898 () Bool)

(assert (=> b!971947 (= e!547895 e!547898)))

(declare-fun res!650684 () Bool)

(assert (=> b!971947 (=> (not res!650684) (not e!547898))))

(declare-fun lt!431893 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971947 (= res!650684 (validKeyInArray!0 lt!431893))))

(assert (=> b!971947 (= lt!431893 (select (arr!29057 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun zeroValue!1367 () V!34557)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34557)

(declare-datatypes ((tuple2!14388 0))(
  ( (tuple2!14389 (_1!7204 (_ BitVec 64)) (_2!7204 V!34557)) )
))
(declare-datatypes ((List!20280 0))(
  ( (Nil!20277) (Cons!20276 (h!21438 tuple2!14388) (t!28669 List!20280)) )
))
(declare-datatypes ((ListLongMap!13099 0))(
  ( (ListLongMap!13100 (toList!6565 List!20280)) )
))
(declare-fun lt!431891 () ListLongMap!13099)

(declare-fun getCurrentListMap!3750 (array!60395 array!60393 (_ BitVec 32) (_ BitVec 32) V!34557 V!34557 (_ BitVec 32) Int) ListLongMap!13099)

(assert (=> b!971947 (= lt!431891 (getCurrentListMap!3750 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971941 () Bool)

(assert (=> b!971941 (= e!547898 (not true))))

(declare-fun +!2844 (ListLongMap!13099 tuple2!14388) ListLongMap!13099)

(declare-fun get!15073 (ValueCell!10609 V!34557) V!34557)

(declare-fun dynLambda!1683 (Int (_ BitVec 64)) V!34557)

(assert (=> b!971941 (= lt!431891 (+!2844 (getCurrentListMap!3750 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14389 lt!431893 (get!15073 (select (arr!29056 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1683 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32349 0))(
  ( (Unit!32350) )
))
(declare-fun lt!431892 () Unit!32349)

(declare-fun lemmaListMapRecursiveValidKeyArray!255 (array!60395 array!60393 (_ BitVec 32) (_ BitVec 32) V!34557 V!34557 (_ BitVec 32) Int) Unit!32349)

(assert (=> b!971941 (= lt!431892 (lemmaListMapRecursiveValidKeyArray!255 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun res!650685 () Bool)

(assert (=> start!83318 (=> (not res!650685) (not e!547895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83318 (= res!650685 (validMask!0 mask!2147))))

(assert (=> start!83318 e!547895))

(assert (=> start!83318 true))

(declare-fun e!547896 () Bool)

(declare-fun array_inv!22379 (array!60393) Bool)

(assert (=> start!83318 (and (array_inv!22379 _values!1425) e!547896)))

(assert (=> start!83318 tp_is_empty!22181))

(assert (=> start!83318 tp!67128))

(declare-fun array_inv!22380 (array!60395) Bool)

(assert (=> start!83318 (array_inv!22380 _keys!1717)))

(declare-fun b!971948 () Bool)

(declare-fun res!650687 () Bool)

(assert (=> b!971948 (=> (not res!650687) (not e!547895))))

(declare-fun contains!5614 (ListLongMap!13099 (_ BitVec 64)) Bool)

(assert (=> b!971948 (= res!650687 (contains!5614 (getCurrentListMap!3750 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29057 _keys!1717) i!822)))))

(declare-fun b!971949 () Bool)

(declare-fun e!547899 () Bool)

(assert (=> b!971949 (= e!547896 (and e!547899 mapRes!35281))))

(declare-fun condMapEmpty!35281 () Bool)

(declare-fun mapDefault!35281 () ValueCell!10609)

