; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109414 () Bool)

(assert start!109414)

(declare-fun b_free!28867 () Bool)

(declare-fun b_next!28867 () Bool)

(assert (=> start!109414 (= b_free!28867 (not b_next!28867))))

(declare-fun tp!101721 () Bool)

(declare-fun b_and!46967 () Bool)

(assert (=> start!109414 (= tp!101721 b_and!46967)))

(declare-fun res!860471 () Bool)

(declare-fun e!738762 () Bool)

(assert (=> start!109414 (=> (not res!860471) (not e!738762))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109414 (= res!860471 (validMask!0 mask!2175))))

(assert (=> start!109414 e!738762))

(declare-fun tp_is_empty!34507 () Bool)

(assert (=> start!109414 tp_is_empty!34507))

(assert (=> start!109414 true))

(declare-datatypes ((V!51113 0))(
  ( (V!51114 (val!17328 Int)) )
))
(declare-datatypes ((ValueCell!16355 0))(
  ( (ValueCellFull!16355 (v!19929 V!51113)) (EmptyCell!16355) )
))
(declare-datatypes ((array!85999 0))(
  ( (array!86000 (arr!41496 (Array (_ BitVec 32) ValueCell!16355)) (size!42047 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85999)

(declare-fun e!738760 () Bool)

(declare-fun array_inv!31399 (array!85999) Bool)

(assert (=> start!109414 (and (array_inv!31399 _values!1445) e!738760)))

(declare-datatypes ((array!86001 0))(
  ( (array!86002 (arr!41497 (Array (_ BitVec 32) (_ BitVec 64))) (size!42048 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86001)

(declare-fun array_inv!31400 (array!86001) Bool)

(assert (=> start!109414 (array_inv!31400 _keys!1741)))

(assert (=> start!109414 tp!101721))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun b!1294636 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1294636 (= e!738762 (not (or (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsle from!2144 (size!42048 _keys!1741)))))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22452 0))(
  ( (tuple2!22453 (_1!11236 (_ BitVec 64)) (_2!11236 V!51113)) )
))
(declare-datatypes ((List!29625 0))(
  ( (Nil!29622) (Cons!29621 (h!30830 tuple2!22452) (t!43196 List!29625)) )
))
(declare-datatypes ((ListLongMap!20121 0))(
  ( (ListLongMap!20122 (toList!10076 List!29625)) )
))
(declare-fun contains!8132 (ListLongMap!20121 (_ BitVec 64)) Bool)

(assert (=> b!1294636 (not (contains!8132 (ListLongMap!20122 Nil!29622) k!1205))))

(declare-datatypes ((Unit!42821 0))(
  ( (Unit!42822) )
))
(declare-fun lt!579679 () Unit!42821)

(declare-fun emptyContainsNothing!167 ((_ BitVec 64)) Unit!42821)

(assert (=> b!1294636 (= lt!579679 (emptyContainsNothing!167 k!1205))))

(declare-fun mapIsEmpty!53321 () Bool)

(declare-fun mapRes!53321 () Bool)

(assert (=> mapIsEmpty!53321 mapRes!53321))

(declare-fun b!1294637 () Bool)

(declare-fun e!738763 () Bool)

(assert (=> b!1294637 (= e!738763 tp_is_empty!34507)))

(declare-fun b!1294638 () Bool)

(declare-fun res!860478 () Bool)

(assert (=> b!1294638 (=> (not res!860478) (not e!738762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294638 (= res!860478 (not (validKeyInArray!0 (select (arr!41497 _keys!1741) from!2144))))))

(declare-fun b!1294639 () Bool)

(declare-fun res!860474 () Bool)

(assert (=> b!1294639 (=> (not res!860474) (not e!738762))))

(assert (=> b!1294639 (= res!860474 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42048 _keys!1741))))))

(declare-fun b!1294640 () Bool)

(declare-fun res!860476 () Bool)

(assert (=> b!1294640 (=> (not res!860476) (not e!738762))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86001 (_ BitVec 32)) Bool)

(assert (=> b!1294640 (= res!860476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294641 () Bool)

(declare-fun e!738759 () Bool)

(assert (=> b!1294641 (= e!738760 (and e!738759 mapRes!53321))))

(declare-fun condMapEmpty!53321 () Bool)

(declare-fun mapDefault!53321 () ValueCell!16355)

