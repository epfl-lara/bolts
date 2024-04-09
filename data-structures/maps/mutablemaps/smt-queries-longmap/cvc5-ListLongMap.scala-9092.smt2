; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109372 () Bool)

(assert start!109372)

(declare-fun b_free!28825 () Bool)

(declare-fun b_next!28825 () Bool)

(assert (=> start!109372 (= b_free!28825 (not b_next!28825))))

(declare-fun tp!101594 () Bool)

(declare-fun b_and!46925 () Bool)

(assert (=> start!109372 (= tp!101594 b_and!46925)))

(declare-fun b!1293943 () Bool)

(declare-fun res!859973 () Bool)

(declare-fun e!738448 () Bool)

(assert (=> b!1293943 (=> (not res!859973) (not e!738448))))

(declare-datatypes ((array!85917 0))(
  ( (array!85918 (arr!41455 (Array (_ BitVec 32) (_ BitVec 64))) (size!42006 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85917)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1293943 (= res!859973 (not (validKeyInArray!0 (select (arr!41455 _keys!1741) from!2144))))))

(declare-fun b!1293944 () Bool)

(declare-fun e!738447 () Bool)

(declare-fun tp_is_empty!34465 () Bool)

(assert (=> b!1293944 (= e!738447 tp_is_empty!34465)))

(declare-fun b!1293945 () Bool)

(declare-fun res!859970 () Bool)

(assert (=> b!1293945 (=> (not res!859970) (not e!738448))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1293945 (= res!859970 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42006 _keys!1741))))))

(declare-fun b!1293946 () Bool)

(assert (=> b!1293946 (= e!738448 (not true))))

(declare-datatypes ((V!51057 0))(
  ( (V!51058 (val!17307 Int)) )
))
(declare-datatypes ((tuple2!22418 0))(
  ( (tuple2!22419 (_1!11219 (_ BitVec 64)) (_2!11219 V!51057)) )
))
(declare-datatypes ((List!29597 0))(
  ( (Nil!29594) (Cons!29593 (h!30802 tuple2!22418) (t!43168 List!29597)) )
))
(declare-datatypes ((ListLongMap!20087 0))(
  ( (ListLongMap!20088 (toList!10059 List!29597)) )
))
(declare-fun contains!8115 (ListLongMap!20087 (_ BitVec 64)) Bool)

(assert (=> b!1293946 (not (contains!8115 (ListLongMap!20088 Nil!29594) k!1205))))

(declare-datatypes ((Unit!42793 0))(
  ( (Unit!42794) )
))
(declare-fun lt!579616 () Unit!42793)

(declare-fun emptyContainsNothing!153 ((_ BitVec 64)) Unit!42793)

(assert (=> b!1293946 (= lt!579616 (emptyContainsNothing!153 k!1205))))

(declare-fun res!859967 () Bool)

(assert (=> start!109372 (=> (not res!859967) (not e!738448))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109372 (= res!859967 (validMask!0 mask!2175))))

(assert (=> start!109372 e!738448))

(assert (=> start!109372 tp_is_empty!34465))

(assert (=> start!109372 true))

(declare-datatypes ((ValueCell!16334 0))(
  ( (ValueCellFull!16334 (v!19908 V!51057)) (EmptyCell!16334) )
))
(declare-datatypes ((array!85919 0))(
  ( (array!85920 (arr!41456 (Array (_ BitVec 32) ValueCell!16334)) (size!42007 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85919)

(declare-fun e!738444 () Bool)

(declare-fun array_inv!31375 (array!85919) Bool)

(assert (=> start!109372 (and (array_inv!31375 _values!1445) e!738444)))

(declare-fun array_inv!31376 (array!85917) Bool)

(assert (=> start!109372 (array_inv!31376 _keys!1741)))

(assert (=> start!109372 tp!101594))

(declare-fun mapIsEmpty!53258 () Bool)

(declare-fun mapRes!53258 () Bool)

(assert (=> mapIsEmpty!53258 mapRes!53258))

(declare-fun b!1293947 () Bool)

(declare-fun res!859974 () Bool)

(assert (=> b!1293947 (=> (not res!859974) (not e!738448))))

(assert (=> b!1293947 (= res!859974 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42006 _keys!1741))))))

(declare-fun b!1293948 () Bool)

(declare-fun e!738445 () Bool)

(assert (=> b!1293948 (= e!738445 tp_is_empty!34465)))

(declare-fun b!1293949 () Bool)

(declare-fun res!859969 () Bool)

(assert (=> b!1293949 (=> (not res!859969) (not e!738448))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1293949 (= res!859969 (and (= (size!42007 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42006 _keys!1741) (size!42007 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1293950 () Bool)

(declare-fun res!859971 () Bool)

(assert (=> b!1293950 (=> (not res!859971) (not e!738448))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85917 (_ BitVec 32)) Bool)

(assert (=> b!1293950 (= res!859971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1293951 () Bool)

(declare-fun res!859968 () Bool)

(assert (=> b!1293951 (=> (not res!859968) (not e!738448))))

(declare-datatypes ((List!29598 0))(
  ( (Nil!29595) (Cons!29594 (h!30803 (_ BitVec 64)) (t!43169 List!29598)) )
))
(declare-fun arrayNoDuplicates!0 (array!85917 (_ BitVec 32) List!29598) Bool)

(assert (=> b!1293951 (= res!859968 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29595))))

(declare-fun b!1293952 () Bool)

(assert (=> b!1293952 (= e!738444 (and e!738447 mapRes!53258))))

(declare-fun condMapEmpty!53258 () Bool)

(declare-fun mapDefault!53258 () ValueCell!16334)

