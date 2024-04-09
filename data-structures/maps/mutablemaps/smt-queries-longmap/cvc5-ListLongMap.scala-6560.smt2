; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83272 () Bool)

(assert start!83272)

(declare-fun b_free!19237 () Bool)

(declare-fun b_next!19237 () Bool)

(assert (=> start!83272 (= b_free!19237 (not b_next!19237))))

(declare-fun tp!66990 () Bool)

(declare-fun b_and!30743 () Bool)

(assert (=> start!83272 (= tp!66990 b_and!30743)))

(declare-fun b!971209 () Bool)

(declare-fun e!547524 () Bool)

(assert (=> b!971209 (= e!547524 false)))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34497 0))(
  ( (V!34498 (val!11118 Int)) )
))
(declare-datatypes ((ValueCell!10586 0))(
  ( (ValueCellFull!10586 (v!13677 V!34497)) (EmptyCell!10586) )
))
(declare-datatypes ((array!60303 0))(
  ( (array!60304 (arr!29011 (Array (_ BitVec 32) ValueCell!10586)) (size!29491 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60303)

(declare-fun zeroValue!1367 () V!34497)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34497)

(declare-datatypes ((tuple2!14354 0))(
  ( (tuple2!14355 (_1!7187 (_ BitVec 64)) (_2!7187 V!34497)) )
))
(declare-datatypes ((List!20244 0))(
  ( (Nil!20241) (Cons!20240 (h!21402 tuple2!14354) (t!28615 List!20244)) )
))
(declare-datatypes ((ListLongMap!13065 0))(
  ( (ListLongMap!13066 (toList!6548 List!20244)) )
))
(declare-fun lt!431770 () ListLongMap!13065)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60305 0))(
  ( (array!60306 (arr!29012 (Array (_ BitVec 32) (_ BitVec 64))) (size!29492 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60305)

(declare-fun getCurrentListMap!3733 (array!60305 array!60303 (_ BitVec 32) (_ BitVec 32) V!34497 V!34497 (_ BitVec 32) Int) ListLongMap!13065)

(assert (=> b!971209 (= lt!431770 (getCurrentListMap!3733 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971210 () Bool)

(declare-fun res!650174 () Bool)

(assert (=> b!971210 (=> (not res!650174) (not e!547524))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5600 (ListLongMap!13065 (_ BitVec 64)) Bool)

(assert (=> b!971210 (= res!650174 (contains!5600 (getCurrentListMap!3733 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29012 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35212 () Bool)

(declare-fun mapRes!35212 () Bool)

(assert (=> mapIsEmpty!35212 mapRes!35212))

(declare-fun b!971211 () Bool)

(declare-fun res!650179 () Bool)

(assert (=> b!971211 (=> (not res!650179) (not e!547524))))

(assert (=> b!971211 (= res!650179 (and (= (size!29491 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29492 _keys!1717) (size!29491 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971212 () Bool)

(declare-fun res!650178 () Bool)

(assert (=> b!971212 (=> (not res!650178) (not e!547524))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971212 (= res!650178 (validKeyInArray!0 (select (arr!29012 _keys!1717) i!822)))))

(declare-fun b!971213 () Bool)

(declare-fun res!650175 () Bool)

(assert (=> b!971213 (=> (not res!650175) (not e!547524))))

(declare-datatypes ((List!20245 0))(
  ( (Nil!20242) (Cons!20241 (h!21403 (_ BitVec 64)) (t!28616 List!20245)) )
))
(declare-fun arrayNoDuplicates!0 (array!60305 (_ BitVec 32) List!20245) Bool)

(assert (=> b!971213 (= res!650175 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20242))))

(declare-fun res!650176 () Bool)

(assert (=> start!83272 (=> (not res!650176) (not e!547524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83272 (= res!650176 (validMask!0 mask!2147))))

(assert (=> start!83272 e!547524))

(assert (=> start!83272 true))

(declare-fun e!547526 () Bool)

(declare-fun array_inv!22341 (array!60303) Bool)

(assert (=> start!83272 (and (array_inv!22341 _values!1425) e!547526)))

(declare-fun tp_is_empty!22135 () Bool)

(assert (=> start!83272 tp_is_empty!22135))

(assert (=> start!83272 tp!66990))

(declare-fun array_inv!22342 (array!60305) Bool)

(assert (=> start!83272 (array_inv!22342 _keys!1717)))

(declare-fun b!971214 () Bool)

(declare-fun e!547525 () Bool)

(assert (=> b!971214 (= e!547525 tp_is_empty!22135)))

(declare-fun b!971215 () Bool)

(assert (=> b!971215 (= e!547526 (and e!547525 mapRes!35212))))

(declare-fun condMapEmpty!35212 () Bool)

(declare-fun mapDefault!35212 () ValueCell!10586)

