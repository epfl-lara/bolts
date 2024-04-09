; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83374 () Bool)

(assert start!83374)

(declare-fun b_free!19339 () Bool)

(declare-fun b_next!19339 () Bool)

(assert (=> start!83374 (= b_free!19339 (not b_next!19339))))

(declare-fun tp!67297 () Bool)

(declare-fun b_and!30917 () Bool)

(assert (=> start!83374 (= tp!67297 b_and!30917)))

(declare-fun b!972921 () Bool)

(declare-fun res!651358 () Bool)

(declare-fun e!548421 () Bool)

(assert (=> b!972921 (=> (not res!651358) (not e!548421))))

(declare-datatypes ((array!60499 0))(
  ( (array!60500 (arr!29109 (Array (_ BitVec 32) (_ BitVec 64))) (size!29589 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60499)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972921 (= res!651358 (validKeyInArray!0 (select (arr!29109 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35365 () Bool)

(declare-fun mapRes!35365 () Bool)

(assert (=> mapIsEmpty!35365 mapRes!35365))

(declare-fun mapNonEmpty!35365 () Bool)

(declare-fun tp!67296 () Bool)

(declare-fun e!548420 () Bool)

(assert (=> mapNonEmpty!35365 (= mapRes!35365 (and tp!67296 e!548420))))

(declare-datatypes ((V!34633 0))(
  ( (V!34634 (val!11169 Int)) )
))
(declare-datatypes ((ValueCell!10637 0))(
  ( (ValueCellFull!10637 (v!13728 V!34633)) (EmptyCell!10637) )
))
(declare-fun mapRest!35365 () (Array (_ BitVec 32) ValueCell!10637))

(declare-fun mapKey!35365 () (_ BitVec 32))

(declare-datatypes ((array!60501 0))(
  ( (array!60502 (arr!29110 (Array (_ BitVec 32) ValueCell!10637)) (size!29590 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60501)

(declare-fun mapValue!35365 () ValueCell!10637)

(assert (=> mapNonEmpty!35365 (= (arr!29110 _values!1425) (store mapRest!35365 mapKey!35365 mapValue!35365))))

(declare-fun b!972922 () Bool)

(declare-fun res!651355 () Bool)

(assert (=> b!972922 (=> (not res!651355) (not e!548421))))

(declare-datatypes ((List!20316 0))(
  ( (Nil!20313) (Cons!20312 (h!21474 (_ BitVec 64)) (t!28761 List!20316)) )
))
(declare-fun arrayNoDuplicates!0 (array!60499 (_ BitVec 32) List!20316) Bool)

(assert (=> b!972922 (= res!651355 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20313))))

(declare-fun b!972923 () Bool)

(declare-fun res!651361 () Bool)

(assert (=> b!972923 (=> (not res!651361) (not e!548421))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!972923 (= res!651361 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29589 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29589 _keys!1717))))))

(declare-fun b!972924 () Bool)

(declare-fun res!651356 () Bool)

(assert (=> b!972924 (=> (not res!651356) (not e!548421))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!972924 (= res!651356 (and (= (size!29590 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29589 _keys!1717) (size!29590 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972925 () Bool)

(declare-fun e!548422 () Bool)

(declare-fun e!548419 () Bool)

(assert (=> b!972925 (= e!548422 e!548419)))

(declare-fun res!651359 () Bool)

(assert (=> b!972925 (=> (not res!651359) (not e!548419))))

(declare-fun lt!432224 () (_ BitVec 64))

(assert (=> b!972925 (= res!651359 (validKeyInArray!0 lt!432224))))

(assert (=> b!972925 (= lt!432224 (select (arr!29109 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-fun zeroValue!1367 () V!34633)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34633)

(declare-datatypes ((tuple2!14432 0))(
  ( (tuple2!14433 (_1!7226 (_ BitVec 64)) (_2!7226 V!34633)) )
))
(declare-datatypes ((List!20317 0))(
  ( (Nil!20314) (Cons!20313 (h!21475 tuple2!14432) (t!28762 List!20317)) )
))
(declare-datatypes ((ListLongMap!13143 0))(
  ( (ListLongMap!13144 (toList!6587 List!20317)) )
))
(declare-fun lt!432227 () ListLongMap!13143)

(declare-fun getCurrentListMap!3772 (array!60499 array!60501 (_ BitVec 32) (_ BitVec 32) V!34633 V!34633 (_ BitVec 32) Int) ListLongMap!13143)

(assert (=> b!972925 (= lt!432227 (getCurrentListMap!3772 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972926 () Bool)

(assert (=> b!972926 (= e!548419 (not true))))

(declare-fun lt!432225 () ListLongMap!13143)

(declare-fun lt!432223 () tuple2!14432)

(declare-fun contains!5633 (ListLongMap!13143 (_ BitVec 64)) Bool)

(declare-fun +!2860 (ListLongMap!13143 tuple2!14432) ListLongMap!13143)

(assert (=> b!972926 (contains!5633 (+!2860 lt!432225 lt!432223) (select (arr!29109 _keys!1717) i!822))))

(declare-datatypes ((Unit!32381 0))(
  ( (Unit!32382) )
))
(declare-fun lt!432228 () Unit!32381)

(declare-fun lt!432226 () V!34633)

(declare-fun addStillContains!599 (ListLongMap!13143 (_ BitVec 64) V!34633 (_ BitVec 64)) Unit!32381)

(assert (=> b!972926 (= lt!432228 (addStillContains!599 lt!432225 lt!432224 lt!432226 (select (arr!29109 _keys!1717) i!822)))))

(assert (=> b!972926 (= lt!432227 (+!2860 (getCurrentListMap!3772 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) lt!432223))))

(assert (=> b!972926 (= lt!432223 (tuple2!14433 lt!432224 lt!432226))))

(declare-fun get!15109 (ValueCell!10637 V!34633) V!34633)

(declare-fun dynLambda!1699 (Int (_ BitVec 64)) V!34633)

(assert (=> b!972926 (= lt!432226 (get!15109 (select (arr!29110 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1699 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!432229 () Unit!32381)

(declare-fun lemmaListMapRecursiveValidKeyArray!271 (array!60499 array!60501 (_ BitVec 32) (_ BitVec 32) V!34633 V!34633 (_ BitVec 32) Int) Unit!32381)

(assert (=> b!972926 (= lt!432229 (lemmaListMapRecursiveValidKeyArray!271 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972927 () Bool)

(declare-fun res!651360 () Bool)

(assert (=> b!972927 (=> (not res!651360) (not e!548421))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60499 (_ BitVec 32)) Bool)

(assert (=> b!972927 (= res!651360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!651354 () Bool)

(assert (=> start!83374 (=> (not res!651354) (not e!548421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83374 (= res!651354 (validMask!0 mask!2147))))

(assert (=> start!83374 e!548421))

(assert (=> start!83374 true))

(declare-fun e!548424 () Bool)

(declare-fun array_inv!22415 (array!60501) Bool)

(assert (=> start!83374 (and (array_inv!22415 _values!1425) e!548424)))

(declare-fun tp_is_empty!22237 () Bool)

(assert (=> start!83374 tp_is_empty!22237))

(assert (=> start!83374 tp!67297))

(declare-fun array_inv!22416 (array!60499) Bool)

(assert (=> start!83374 (array_inv!22416 _keys!1717)))

(declare-fun b!972928 () Bool)

(assert (=> b!972928 (= e!548420 tp_is_empty!22237)))

(declare-fun b!972929 () Bool)

(declare-fun e!548423 () Bool)

(assert (=> b!972929 (= e!548423 tp_is_empty!22237)))

(declare-fun b!972930 () Bool)

(assert (=> b!972930 (= e!548424 (and e!548423 mapRes!35365))))

(declare-fun condMapEmpty!35365 () Bool)

(declare-fun mapDefault!35365 () ValueCell!10637)

