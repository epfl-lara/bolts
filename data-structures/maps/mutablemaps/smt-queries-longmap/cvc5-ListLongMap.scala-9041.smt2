; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109066 () Bool)

(assert start!109066)

(declare-fun b_free!28519 () Bool)

(declare-fun b_next!28519 () Bool)

(assert (=> start!109066 (= b_free!28519 (not b_next!28519))))

(declare-fun tp!100676 () Bool)

(declare-fun b_and!46619 () Bool)

(assert (=> start!109066 (= tp!100676 b_and!46619)))

(declare-fun b!1288527 () Bool)

(declare-fun e!735785 () Bool)

(declare-fun tp_is_empty!34159 () Bool)

(assert (=> b!1288527 (= e!735785 tp_is_empty!34159)))

(declare-fun b!1288528 () Bool)

(declare-fun res!855930 () Bool)

(declare-fun e!735782 () Bool)

(assert (=> b!1288528 (=> (not res!855930) (not e!735782))))

(declare-datatypes ((array!85319 0))(
  ( (array!85320 (arr!41156 (Array (_ BitVec 32) (_ BitVec 64))) (size!41707 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85319)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85319 (_ BitVec 32)) Bool)

(assert (=> b!1288528 (= res!855930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288529 () Bool)

(declare-fun e!735786 () Bool)

(assert (=> b!1288529 (= e!735786 true)))

(declare-datatypes ((V!50649 0))(
  ( (V!50650 (val!17154 Int)) )
))
(declare-datatypes ((tuple2!22158 0))(
  ( (tuple2!22159 (_1!11089 (_ BitVec 64)) (_2!11089 V!50649)) )
))
(declare-datatypes ((List!29356 0))(
  ( (Nil!29353) (Cons!29352 (h!30561 tuple2!22158) (t!42927 List!29356)) )
))
(declare-datatypes ((ListLongMap!19827 0))(
  ( (ListLongMap!19828 (toList!9929 List!29356)) )
))
(declare-fun lt!577974 () ListLongMap!19827)

(declare-fun zeroValue!1387 () V!50649)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun contains!7985 (ListLongMap!19827 (_ BitVec 64)) Bool)

(declare-fun +!4304 (ListLongMap!19827 tuple2!22158) ListLongMap!19827)

(assert (=> b!1288529 (not (contains!7985 (+!4304 lt!577974 (tuple2!22159 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-datatypes ((Unit!42553 0))(
  ( (Unit!42554) )
))
(declare-fun lt!577973 () Unit!42553)

(declare-fun addStillNotContains!349 (ListLongMap!19827 (_ BitVec 64) V!50649 (_ BitVec 64)) Unit!42553)

(assert (=> b!1288529 (= lt!577973 (addStillNotContains!349 lt!577974 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50649)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((ValueCell!16181 0))(
  ( (ValueCellFull!16181 (v!19755 V!50649)) (EmptyCell!16181) )
))
(declare-datatypes ((array!85321 0))(
  ( (array!85322 (arr!41157 (Array (_ BitVec 32) ValueCell!16181)) (size!41708 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85321)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6016 (array!85319 array!85321 (_ BitVec 32) (_ BitVec 32) V!50649 V!50649 (_ BitVec 32) Int) ListLongMap!19827)

(assert (=> b!1288529 (= lt!577974 (getCurrentListMapNoExtraKeys!6016 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1288530 () Bool)

(declare-fun res!855931 () Bool)

(assert (=> b!1288530 (=> (not res!855931) (not e!735782))))

(declare-fun getCurrentListMap!4932 (array!85319 array!85321 (_ BitVec 32) (_ BitVec 32) V!50649 V!50649 (_ BitVec 32) Int) ListLongMap!19827)

(assert (=> b!1288530 (= res!855931 (contains!7985 (getCurrentListMap!4932 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1288531 () Bool)

(declare-fun res!855929 () Bool)

(assert (=> b!1288531 (=> (not res!855929) (not e!735782))))

(declare-datatypes ((List!29357 0))(
  ( (Nil!29354) (Cons!29353 (h!30562 (_ BitVec 64)) (t!42928 List!29357)) )
))
(declare-fun arrayNoDuplicates!0 (array!85319 (_ BitVec 32) List!29357) Bool)

(assert (=> b!1288531 (= res!855929 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29354))))

(declare-fun b!1288532 () Bool)

(declare-fun res!855934 () Bool)

(assert (=> b!1288532 (=> (not res!855934) (not e!735782))))

(assert (=> b!1288532 (= res!855934 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41707 _keys!1741))))))

(declare-fun b!1288533 () Bool)

(declare-fun e!735784 () Bool)

(declare-fun mapRes!52799 () Bool)

(assert (=> b!1288533 (= e!735784 (and e!735785 mapRes!52799))))

(declare-fun condMapEmpty!52799 () Bool)

(declare-fun mapDefault!52799 () ValueCell!16181)

