; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84078 () Bool)

(assert start!84078)

(declare-fun b_free!19805 () Bool)

(declare-fun b_next!19805 () Bool)

(assert (=> start!84078 (= b_free!19805 (not b_next!19805))))

(declare-fun tp!68938 () Bool)

(declare-fun b_and!31711 () Bool)

(assert (=> start!84078 (= tp!68938 b_and!31711)))

(declare-fun mapNonEmpty!36308 () Bool)

(declare-fun mapRes!36308 () Bool)

(declare-fun tp!68939 () Bool)

(declare-fun e!553843 () Bool)

(assert (=> mapNonEmpty!36308 (= mapRes!36308 (and tp!68939 e!553843))))

(declare-fun mapKey!36308 () (_ BitVec 32))

(declare-datatypes ((V!35453 0))(
  ( (V!35454 (val!11477 Int)) )
))
(declare-datatypes ((ValueCell!10945 0))(
  ( (ValueCellFull!10945 (v!14039 V!35453)) (EmptyCell!10945) )
))
(declare-datatypes ((array!61691 0))(
  ( (array!61692 (arr!29699 (Array (_ BitVec 32) ValueCell!10945)) (size!30179 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61691)

(declare-fun mapRest!36308 () (Array (_ BitVec 32) ValueCell!10945))

(declare-fun mapValue!36308 () ValueCell!10945)

(assert (=> mapNonEmpty!36308 (= (arr!29699 _values!1278) (store mapRest!36308 mapKey!36308 mapValue!36308))))

(declare-fun b!982479 () Bool)

(declare-fun e!553840 () Bool)

(declare-fun tp_is_empty!22853 () Bool)

(assert (=> b!982479 (= e!553840 tp_is_empty!22853)))

(declare-fun b!982480 () Bool)

(assert (=> b!982480 (= e!553843 tp_is_empty!22853)))

(declare-fun b!982481 () Bool)

(declare-fun res!657584 () Bool)

(declare-fun e!553839 () Bool)

(assert (=> b!982481 (=> (not res!657584) (not e!553839))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61693 0))(
  ( (array!61694 (arr!29700 (Array (_ BitVec 32) (_ BitVec 64))) (size!30180 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61693)

(assert (=> b!982481 (= res!657584 (and (= (size!30179 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30180 _keys!1544) (size!30179 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982482 () Bool)

(declare-fun res!657590 () Bool)

(assert (=> b!982482 (=> (not res!657590) (not e!553839))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982482 (= res!657590 (validKeyInArray!0 (select (arr!29700 _keys!1544) from!1932)))))

(declare-fun b!982483 () Bool)

(declare-fun e!553842 () Bool)

(assert (=> b!982483 (= e!553839 e!553842)))

(declare-fun res!657587 () Bool)

(assert (=> b!982483 (=> (not res!657587) (not e!553842))))

(assert (=> b!982483 (= res!657587 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29700 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!436165 () V!35453)

(declare-fun get!15424 (ValueCell!10945 V!35453) V!35453)

(declare-fun dynLambda!1807 (Int (_ BitVec 64)) V!35453)

(assert (=> b!982483 (= lt!436165 (get!15424 (select (arr!29699 _values!1278) from!1932) (dynLambda!1807 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35453)

(declare-fun zeroValue!1220 () V!35453)

(declare-datatypes ((tuple2!14808 0))(
  ( (tuple2!14809 (_1!7414 (_ BitVec 64)) (_2!7414 V!35453)) )
))
(declare-datatypes ((List!20713 0))(
  ( (Nil!20710) (Cons!20709 (h!21871 tuple2!14808) (t!29476 List!20713)) )
))
(declare-datatypes ((ListLongMap!13519 0))(
  ( (ListLongMap!13520 (toList!6775 List!20713)) )
))
(declare-fun lt!436162 () ListLongMap!13519)

(declare-fun getCurrentListMapNoExtraKeys!3434 (array!61693 array!61691 (_ BitVec 32) (_ BitVec 32) V!35453 V!35453 (_ BitVec 32) Int) ListLongMap!13519)

(assert (=> b!982483 (= lt!436162 (getCurrentListMapNoExtraKeys!3434 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!657586 () Bool)

(assert (=> start!84078 (=> (not res!657586) (not e!553839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84078 (= res!657586 (validMask!0 mask!1948))))

(assert (=> start!84078 e!553839))

(assert (=> start!84078 true))

(assert (=> start!84078 tp_is_empty!22853))

(declare-fun e!553844 () Bool)

(declare-fun array_inv!22839 (array!61691) Bool)

(assert (=> start!84078 (and (array_inv!22839 _values!1278) e!553844)))

(assert (=> start!84078 tp!68938))

(declare-fun array_inv!22840 (array!61693) Bool)

(assert (=> start!84078 (array_inv!22840 _keys!1544)))

(declare-fun b!982484 () Bool)

(assert (=> b!982484 (= e!553844 (and e!553840 mapRes!36308))))

(declare-fun condMapEmpty!36308 () Bool)

(declare-fun mapDefault!36308 () ValueCell!10945)

