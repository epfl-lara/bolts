; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110370 () Bool)

(assert start!110370)

(declare-fun b_free!29317 () Bool)

(declare-fun b_next!29317 () Bool)

(assert (=> start!110370 (= b_free!29317 (not b_next!29317))))

(declare-fun tp!103121 () Bool)

(declare-fun b_and!47533 () Bool)

(assert (=> start!110370 (= tp!103121 b_and!47533)))

(declare-fun b!1305799 () Bool)

(declare-fun res!867073 () Bool)

(declare-fun e!744872 () Bool)

(assert (=> b!1305799 (=> (not res!867073) (not e!744872))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86897 0))(
  ( (array!86898 (arr!41930 (Array (_ BitVec 32) (_ BitVec 64))) (size!42481 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86897)

(assert (=> b!1305799 (= res!867073 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42481 _keys!1741))))))

(declare-fun mapIsEmpty!54046 () Bool)

(declare-fun mapRes!54046 () Bool)

(assert (=> mapIsEmpty!54046 mapRes!54046))

(declare-fun b!1305800 () Bool)

(declare-fun res!867070 () Bool)

(assert (=> b!1305800 (=> (not res!867070) (not e!744872))))

(declare-datatypes ((List!29966 0))(
  ( (Nil!29963) (Cons!29962 (h!31171 (_ BitVec 64)) (t!43577 List!29966)) )
))
(declare-fun arrayNoDuplicates!0 (array!86897 (_ BitVec 32) List!29966) Bool)

(assert (=> b!1305800 (= res!867070 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29963))))

(declare-fun b!1305801 () Bool)

(declare-fun e!744873 () Bool)

(declare-fun tp_is_empty!34957 () Bool)

(assert (=> b!1305801 (= e!744873 tp_is_empty!34957)))

(declare-fun res!867075 () Bool)

(assert (=> start!110370 (=> (not res!867075) (not e!744872))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110370 (= res!867075 (validMask!0 mask!2175))))

(assert (=> start!110370 e!744872))

(assert (=> start!110370 tp_is_empty!34957))

(assert (=> start!110370 true))

(declare-datatypes ((V!51713 0))(
  ( (V!51714 (val!17553 Int)) )
))
(declare-datatypes ((ValueCell!16580 0))(
  ( (ValueCellFull!16580 (v!20176 V!51713)) (EmptyCell!16580) )
))
(declare-datatypes ((array!86899 0))(
  ( (array!86900 (arr!41931 (Array (_ BitVec 32) ValueCell!16580)) (size!42482 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86899)

(declare-fun e!744869 () Bool)

(declare-fun array_inv!31707 (array!86899) Bool)

(assert (=> start!110370 (and (array_inv!31707 _values!1445) e!744869)))

(declare-fun array_inv!31708 (array!86897) Bool)

(assert (=> start!110370 (array_inv!31708 _keys!1741)))

(assert (=> start!110370 tp!103121))

(declare-fun b!1305802 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1305802 (= e!744872 (and (or (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000) (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1305803 () Bool)

(declare-fun res!867071 () Bool)

(assert (=> b!1305803 (=> (not res!867071) (not e!744872))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86897 (_ BitVec 32)) Bool)

(assert (=> b!1305803 (= res!867071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1305804 () Bool)

(declare-fun res!867074 () Bool)

(assert (=> b!1305804 (=> (not res!867074) (not e!744872))))

(declare-fun minValue!1387 () V!51713)

(declare-fun zeroValue!1387 () V!51713)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22820 0))(
  ( (tuple2!22821 (_1!11420 (_ BitVec 64)) (_2!11420 V!51713)) )
))
(declare-datatypes ((List!29967 0))(
  ( (Nil!29964) (Cons!29963 (h!31172 tuple2!22820) (t!43578 List!29967)) )
))
(declare-datatypes ((ListLongMap!20489 0))(
  ( (ListLongMap!20490 (toList!10260 List!29967)) )
))
(declare-fun contains!8341 (ListLongMap!20489 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5216 (array!86897 array!86899 (_ BitVec 32) (_ BitVec 32) V!51713 V!51713 (_ BitVec 32) Int) ListLongMap!20489)

(assert (=> b!1305804 (= res!867074 (contains!8341 (getCurrentListMap!5216 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1305805 () Bool)

(declare-fun e!744871 () Bool)

(assert (=> b!1305805 (= e!744871 tp_is_empty!34957)))

(declare-fun b!1305806 () Bool)

(assert (=> b!1305806 (= e!744869 (and e!744873 mapRes!54046))))

(declare-fun condMapEmpty!54046 () Bool)

(declare-fun mapDefault!54046 () ValueCell!16580)

