; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84222 () Bool)

(assert start!84222)

(declare-fun b_free!19895 () Bool)

(declare-fun b_next!19895 () Bool)

(assert (=> start!84222 (= b_free!19895 (not b_next!19895))))

(declare-fun tp!69290 () Bool)

(declare-fun b_and!31885 () Bool)

(assert (=> start!84222 (= tp!69290 b_and!31885)))

(declare-fun res!658931 () Bool)

(declare-fun e!555050 () Bool)

(assert (=> start!84222 (=> (not res!658931) (not e!555050))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84222 (= res!658931 (validMask!0 mask!1948))))

(assert (=> start!84222 e!555050))

(assert (=> start!84222 true))

(declare-fun tp_is_empty!22997 () Bool)

(assert (=> start!84222 tp_is_empty!22997))

(declare-datatypes ((V!35645 0))(
  ( (V!35646 (val!11549 Int)) )
))
(declare-datatypes ((ValueCell!11017 0))(
  ( (ValueCellFull!11017 (v!14111 V!35645)) (EmptyCell!11017) )
))
(declare-datatypes ((array!61961 0))(
  ( (array!61962 (arr!29834 (Array (_ BitVec 32) ValueCell!11017)) (size!30314 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61961)

(declare-fun e!555045 () Bool)

(declare-fun array_inv!22927 (array!61961) Bool)

(assert (=> start!84222 (and (array_inv!22927 _values!1278) e!555045)))

(assert (=> start!84222 tp!69290))

(declare-datatypes ((array!61963 0))(
  ( (array!61964 (arr!29835 (Array (_ BitVec 32) (_ BitVec 64))) (size!30315 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61963)

(declare-fun array_inv!22928 (array!61963) Bool)

(assert (=> start!84222 (array_inv!22928 _keys!1544)))

(declare-fun b!984552 () Bool)

(declare-fun res!658925 () Bool)

(assert (=> b!984552 (=> (not res!658925) (not e!555050))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984552 (= res!658925 (and (= (size!30314 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30315 _keys!1544) (size!30314 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36524 () Bool)

(declare-fun mapRes!36524 () Bool)

(declare-fun tp!69289 () Bool)

(declare-fun e!555046 () Bool)

(assert (=> mapNonEmpty!36524 (= mapRes!36524 (and tp!69289 e!555046))))

(declare-fun mapKey!36524 () (_ BitVec 32))

(declare-fun mapRest!36524 () (Array (_ BitVec 32) ValueCell!11017))

(declare-fun mapValue!36524 () ValueCell!11017)

(assert (=> mapNonEmpty!36524 (= (arr!29834 _values!1278) (store mapRest!36524 mapKey!36524 mapValue!36524))))

(declare-fun b!984553 () Bool)

(assert (=> b!984553 (= e!555046 tp_is_empty!22997)))

(declare-fun b!984554 () Bool)

(declare-fun res!658929 () Bool)

(assert (=> b!984554 (=> (not res!658929) (not e!555050))))

(declare-datatypes ((List!20791 0))(
  ( (Nil!20788) (Cons!20787 (h!21949 (_ BitVec 64)) (t!29638 List!20791)) )
))
(declare-fun arrayNoDuplicates!0 (array!61963 (_ BitVec 32) List!20791) Bool)

(assert (=> b!984554 (= res!658929 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20788))))

(declare-fun mapIsEmpty!36524 () Bool)

(assert (=> mapIsEmpty!36524 mapRes!36524))

(declare-fun b!984555 () Bool)

(declare-fun e!555049 () Bool)

(assert (=> b!984555 (= e!555049 tp_is_empty!22997)))

(declare-fun b!984556 () Bool)

(declare-fun e!555047 () Bool)

(assert (=> b!984556 (= e!555050 e!555047)))

(declare-fun res!658927 () Bool)

(assert (=> b!984556 (=> (not res!658927) (not e!555047))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984556 (= res!658927 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29835 _keys!1544) from!1932))))))

(declare-fun lt!436873 () V!35645)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15498 (ValueCell!11017 V!35645) V!35645)

(declare-fun dynLambda!1833 (Int (_ BitVec 64)) V!35645)

(assert (=> b!984556 (= lt!436873 (get!15498 (select (arr!29834 _values!1278) from!1932) (dynLambda!1833 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35645)

(declare-datatypes ((tuple2!14872 0))(
  ( (tuple2!14873 (_1!7446 (_ BitVec 64)) (_2!7446 V!35645)) )
))
(declare-datatypes ((List!20792 0))(
  ( (Nil!20789) (Cons!20788 (h!21950 tuple2!14872) (t!29639 List!20792)) )
))
(declare-datatypes ((ListLongMap!13583 0))(
  ( (ListLongMap!13584 (toList!6807 List!20792)) )
))
(declare-fun lt!436875 () ListLongMap!13583)

(declare-fun zeroValue!1220 () V!35645)

(declare-fun getCurrentListMapNoExtraKeys!3462 (array!61963 array!61961 (_ BitVec 32) (_ BitVec 32) V!35645 V!35645 (_ BitVec 32) Int) ListLongMap!13583)

(assert (=> b!984556 (= lt!436875 (getCurrentListMapNoExtraKeys!3462 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984557 () Bool)

(declare-fun res!658928 () Bool)

(assert (=> b!984557 (=> (not res!658928) (not e!555050))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984557 (= res!658928 (validKeyInArray!0 (select (arr!29835 _keys!1544) from!1932)))))

(declare-fun b!984558 () Bool)

(declare-fun res!658926 () Bool)

(assert (=> b!984558 (=> (not res!658926) (not e!555050))))

(assert (=> b!984558 (= res!658926 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30315 _keys!1544))))))

(declare-fun b!984559 () Bool)

(assert (=> b!984559 (= e!555045 (and e!555049 mapRes!36524))))

(declare-fun condMapEmpty!36524 () Bool)

(declare-fun mapDefault!36524 () ValueCell!11017)

