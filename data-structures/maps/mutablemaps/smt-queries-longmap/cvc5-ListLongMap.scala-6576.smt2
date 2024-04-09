; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83368 () Bool)

(assert start!83368)

(declare-fun b_free!19333 () Bool)

(declare-fun b_next!19333 () Bool)

(assert (=> start!83368 (= b_free!19333 (not b_next!19333))))

(declare-fun tp!67279 () Bool)

(declare-fun b_and!30905 () Bool)

(assert (=> start!83368 (= tp!67279 b_and!30905)))

(declare-fun b!972816 () Bool)

(declare-fun res!651284 () Bool)

(declare-fun e!548358 () Bool)

(assert (=> b!972816 (=> (not res!651284) (not e!548358))))

(declare-datatypes ((array!60487 0))(
  ( (array!60488 (arr!29103 (Array (_ BitVec 32) (_ BitVec 64))) (size!29583 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60487)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!972816 (= res!651284 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29583 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29583 _keys!1717))))))

(declare-fun b!972817 () Bool)

(declare-fun e!548356 () Bool)

(declare-fun e!548360 () Bool)

(assert (=> b!972817 (= e!548356 e!548360)))

(declare-fun res!651289 () Bool)

(assert (=> b!972817 (=> (not res!651289) (not e!548360))))

(declare-fun lt!432161 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972817 (= res!651289 (validKeyInArray!0 lt!432161))))

(assert (=> b!972817 (= lt!432161 (select (arr!29103 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34625 0))(
  ( (V!34626 (val!11166 Int)) )
))
(declare-datatypes ((ValueCell!10634 0))(
  ( (ValueCellFull!10634 (v!13725 V!34625)) (EmptyCell!10634) )
))
(declare-datatypes ((array!60489 0))(
  ( (array!60490 (arr!29104 (Array (_ BitVec 32) ValueCell!10634)) (size!29584 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60489)

(declare-fun zeroValue!1367 () V!34625)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34625)

(declare-datatypes ((tuple2!14426 0))(
  ( (tuple2!14427 (_1!7223 (_ BitVec 64)) (_2!7223 V!34625)) )
))
(declare-datatypes ((List!20312 0))(
  ( (Nil!20309) (Cons!20308 (h!21470 tuple2!14426) (t!28751 List!20312)) )
))
(declare-datatypes ((ListLongMap!13137 0))(
  ( (ListLongMap!13138 (toList!6584 List!20312)) )
))
(declare-fun lt!432160 () ListLongMap!13137)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3769 (array!60487 array!60489 (_ BitVec 32) (_ BitVec 32) V!34625 V!34625 (_ BitVec 32) Int) ListLongMap!13137)

(assert (=> b!972817 (= lt!432160 (getCurrentListMap!3769 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972818 () Bool)

(declare-fun e!548361 () Bool)

(declare-fun tp_is_empty!22231 () Bool)

(assert (=> b!972818 (= e!548361 tp_is_empty!22231)))

(declare-fun mapNonEmpty!35356 () Bool)

(declare-fun mapRes!35356 () Bool)

(declare-fun tp!67278 () Bool)

(assert (=> mapNonEmpty!35356 (= mapRes!35356 (and tp!67278 e!548361))))

(declare-fun mapRest!35356 () (Array (_ BitVec 32) ValueCell!10634))

(declare-fun mapValue!35356 () ValueCell!10634)

(declare-fun mapKey!35356 () (_ BitVec 32))

(assert (=> mapNonEmpty!35356 (= (arr!29104 _values!1425) (store mapRest!35356 mapKey!35356 mapValue!35356))))

(declare-fun b!972820 () Bool)

(assert (=> b!972820 (= e!548360 (not true))))

(declare-fun lt!432166 () ListLongMap!13137)

(declare-fun lt!432165 () tuple2!14426)

(declare-fun contains!5631 (ListLongMap!13137 (_ BitVec 64)) Bool)

(declare-fun +!2858 (ListLongMap!13137 tuple2!14426) ListLongMap!13137)

(assert (=> b!972820 (contains!5631 (+!2858 lt!432166 lt!432165) (select (arr!29103 _keys!1717) i!822))))

(declare-fun lt!432162 () V!34625)

(declare-datatypes ((Unit!32377 0))(
  ( (Unit!32378) )
))
(declare-fun lt!432164 () Unit!32377)

(declare-fun addStillContains!597 (ListLongMap!13137 (_ BitVec 64) V!34625 (_ BitVec 64)) Unit!32377)

(assert (=> b!972820 (= lt!432164 (addStillContains!597 lt!432166 lt!432161 lt!432162 (select (arr!29103 _keys!1717) i!822)))))

(assert (=> b!972820 (= lt!432160 (+!2858 (getCurrentListMap!3769 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432165))))

(assert (=> b!972820 (= lt!432165 (tuple2!14427 lt!432161 lt!432162))))

(declare-fun get!15105 (ValueCell!10634 V!34625) V!34625)

(declare-fun dynLambda!1697 (Int (_ BitVec 64)) V!34625)

(assert (=> b!972820 (= lt!432162 (get!15105 (select (arr!29104 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1697 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432163 () Unit!32377)

(declare-fun lemmaListMapRecursiveValidKeyArray!269 (array!60487 array!60489 (_ BitVec 32) (_ BitVec 32) V!34625 V!34625 (_ BitVec 32) Int) Unit!32377)

(assert (=> b!972820 (= lt!432163 (lemmaListMapRecursiveValidKeyArray!269 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972821 () Bool)

(declare-fun res!651282 () Bool)

(assert (=> b!972821 (=> (not res!651282) (not e!548358))))

(assert (=> b!972821 (= res!651282 (and (= (size!29584 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29583 _keys!1717) (size!29584 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972822 () Bool)

(declare-fun res!651287 () Bool)

(assert (=> b!972822 (=> (not res!651287) (not e!548358))))

(assert (=> b!972822 (= res!651287 (validKeyInArray!0 (select (arr!29103 _keys!1717) i!822)))))

(declare-fun b!972823 () Bool)

(declare-fun e!548355 () Bool)

(assert (=> b!972823 (= e!548355 tp_is_empty!22231)))

(declare-fun res!651283 () Bool)

(assert (=> start!83368 (=> (not res!651283) (not e!548358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83368 (= res!651283 (validMask!0 mask!2147))))

(assert (=> start!83368 e!548358))

(assert (=> start!83368 true))

(declare-fun e!548359 () Bool)

(declare-fun array_inv!22411 (array!60489) Bool)

(assert (=> start!83368 (and (array_inv!22411 _values!1425) e!548359)))

(assert (=> start!83368 tp_is_empty!22231))

(assert (=> start!83368 tp!67279))

(declare-fun array_inv!22412 (array!60487) Bool)

(assert (=> start!83368 (array_inv!22412 _keys!1717)))

(declare-fun b!972819 () Bool)

(assert (=> b!972819 (= e!548359 (and e!548355 mapRes!35356))))

(declare-fun condMapEmpty!35356 () Bool)

(declare-fun mapDefault!35356 () ValueCell!10634)

