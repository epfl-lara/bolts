; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84756 () Bool)

(assert start!84756)

(declare-fun b_free!20083 () Bool)

(declare-fun b_next!20083 () Bool)

(assert (=> start!84756 (= b_free!20083 (not b_next!20083))))

(declare-fun tp!70049 () Bool)

(declare-fun b_and!32271 () Bool)

(assert (=> start!84756 (= tp!70049 b_and!32271)))

(declare-fun b!990648 () Bool)

(declare-fun e!558649 () Bool)

(declare-fun tp_is_empty!23299 () Bool)

(assert (=> b!990648 (= e!558649 tp_is_empty!23299)))

(declare-fun b!990650 () Bool)

(declare-fun res!662436 () Bool)

(declare-fun e!558647 () Bool)

(assert (=> b!990650 (=> (not res!662436) (not e!558647))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!62549 0))(
  ( (array!62550 (arr!30121 (Array (_ BitVec 32) (_ BitVec 64))) (size!30601 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62549)

(assert (=> b!990650 (= res!662436 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30601 _keys!1544))))))

(declare-fun b!990651 () Bool)

(declare-fun res!662434 () Bool)

(assert (=> b!990651 (=> (not res!662434) (not e!558647))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!36049 0))(
  ( (V!36050 (val!11700 Int)) )
))
(declare-datatypes ((ValueCell!11168 0))(
  ( (ValueCellFull!11168 (v!14273 V!36049)) (EmptyCell!11168) )
))
(declare-datatypes ((array!62551 0))(
  ( (array!62552 (arr!30122 (Array (_ BitVec 32) ValueCell!11168)) (size!30602 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62551)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!990651 (= res!662434 (and (= (size!30602 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30601 _keys!1544) (size!30602 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!990652 () Bool)

(declare-fun e!558644 () Bool)

(assert (=> b!990652 (= e!558644 tp_is_empty!23299)))

(declare-fun b!990653 () Bool)

(declare-fun e!558648 () Bool)

(assert (=> b!990653 (= e!558647 e!558648)))

(declare-fun res!662431 () Bool)

(assert (=> b!990653 (=> (not res!662431) (not e!558648))))

(declare-fun lt!439621 () Bool)

(assert (=> b!990653 (= res!662431 (and (or lt!439621 (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (or lt!439621 (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (or (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not lt!439621))))))

(assert (=> b!990653 (= lt!439621 (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!990654 () Bool)

(assert (=> b!990654 (= e!558648 false)))

(declare-fun minValue!1220 () V!36049)

(declare-fun zeroValue!1220 () V!36049)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!15014 0))(
  ( (tuple2!15015 (_1!7517 (_ BitVec 64)) (_2!7517 V!36049)) )
))
(declare-datatypes ((List!20964 0))(
  ( (Nil!20961) (Cons!20960 (h!22122 tuple2!15014) (t!29949 List!20964)) )
))
(declare-datatypes ((ListLongMap!13725 0))(
  ( (ListLongMap!13726 (toList!6878 List!20964)) )
))
(declare-fun lt!439620 () ListLongMap!13725)

(declare-fun getCurrentListMap!3887 (array!62549 array!62551 (_ BitVec 32) (_ BitVec 32) V!36049 V!36049 (_ BitVec 32) Int) ListLongMap!13725)

(assert (=> b!990654 (= lt!439620 (getCurrentListMap!3887 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapIsEmpty!37001 () Bool)

(declare-fun mapRes!37001 () Bool)

(assert (=> mapIsEmpty!37001 mapRes!37001))

(declare-fun b!990655 () Bool)

(declare-fun e!558646 () Bool)

(assert (=> b!990655 (= e!558646 (and e!558649 mapRes!37001))))

(declare-fun condMapEmpty!37001 () Bool)

(declare-fun mapDefault!37001 () ValueCell!11168)

