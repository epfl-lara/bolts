; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108706 () Bool)

(assert start!108706)

(declare-fun b_free!28183 () Bool)

(declare-fun b_next!28183 () Bool)

(assert (=> start!108706 (= b_free!28183 (not b_next!28183))))

(declare-fun tp!99666 () Bool)

(declare-fun b_and!46259 () Bool)

(assert (=> start!108706 (= tp!99666 b_and!46259)))

(declare-fun b!1282641 () Bool)

(declare-fun res!852049 () Bool)

(declare-fun e!732907 () Bool)

(assert (=> b!1282641 (=> (not res!852049) (not e!732907))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84667 0))(
  ( (array!84668 (arr!40831 (Array (_ BitVec 32) (_ BitVec 64))) (size!41382 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84667)

(assert (=> b!1282641 (= res!852049 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41382 _keys!1741))))))

(declare-fun b!1282642 () Bool)

(declare-fun e!732908 () Bool)

(declare-fun tp_is_empty!33823 () Bool)

(assert (=> b!1282642 (= e!732908 tp_is_empty!33823)))

(declare-fun b!1282643 () Bool)

(declare-fun e!732906 () Bool)

(assert (=> b!1282643 (= e!732906 tp_is_empty!33823)))

(declare-fun b!1282644 () Bool)

(declare-fun res!852050 () Bool)

(assert (=> b!1282644 (=> (not res!852050) (not e!732907))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50201 0))(
  ( (V!50202 (val!16986 Int)) )
))
(declare-datatypes ((ValueCell!16013 0))(
  ( (ValueCellFull!16013 (v!19586 V!50201)) (EmptyCell!16013) )
))
(declare-datatypes ((array!84669 0))(
  ( (array!84670 (arr!40832 (Array (_ BitVec 32) ValueCell!16013)) (size!41383 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84669)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1282644 (= res!852050 (and (= (size!41383 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41382 _keys!1741) (size!41383 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282645 () Bool)

(declare-fun res!852047 () Bool)

(assert (=> b!1282645 (=> (not res!852047) (not e!732907))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84667 (_ BitVec 32)) Bool)

(assert (=> b!1282645 (= res!852047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1282646 () Bool)

(assert (=> b!1282646 (= e!732907 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsgt from!2144 (size!41382 _keys!1741))))))

(declare-fun b!1282647 () Bool)

(declare-fun res!852045 () Bool)

(assert (=> b!1282647 (=> (not res!852045) (not e!732907))))

(declare-datatypes ((List!29105 0))(
  ( (Nil!29102) (Cons!29101 (h!30310 (_ BitVec 64)) (t!42656 List!29105)) )
))
(declare-fun arrayNoDuplicates!0 (array!84667 (_ BitVec 32) List!29105) Bool)

(assert (=> b!1282647 (= res!852045 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29102))))

(declare-fun b!1282648 () Bool)

(declare-fun res!852046 () Bool)

(assert (=> b!1282648 (=> (not res!852046) (not e!732907))))

(declare-fun minValue!1387 () V!50201)

(declare-fun zeroValue!1387 () V!50201)

(declare-fun defaultEntry!1448 () Int)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!21896 0))(
  ( (tuple2!21897 (_1!10958 (_ BitVec 64)) (_2!10958 V!50201)) )
))
(declare-datatypes ((List!29106 0))(
  ( (Nil!29103) (Cons!29102 (h!30311 tuple2!21896) (t!42657 List!29106)) )
))
(declare-datatypes ((ListLongMap!19565 0))(
  ( (ListLongMap!19566 (toList!9798 List!29106)) )
))
(declare-fun contains!7853 (ListLongMap!19565 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4818 (array!84667 array!84669 (_ BitVec 32) (_ BitVec 32) V!50201 V!50201 (_ BitVec 32) Int) ListLongMap!19565)

(assert (=> b!1282648 (= res!852046 (contains!7853 (getCurrentListMap!4818 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1282649 () Bool)

(declare-fun res!852048 () Bool)

(assert (=> b!1282649 (=> (not res!852048) (not e!732907))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1282649 (= res!852048 (validKeyInArray!0 (select (arr!40831 _keys!1741) from!2144)))))

(declare-fun b!1282650 () Bool)

(declare-fun res!852051 () Bool)

(assert (=> b!1282650 (=> (not res!852051) (not e!732907))))

(assert (=> b!1282650 (= res!852051 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41382 _keys!1741))))))

(declare-fun mapNonEmpty!52292 () Bool)

(declare-fun mapRes!52292 () Bool)

(declare-fun tp!99665 () Bool)

(assert (=> mapNonEmpty!52292 (= mapRes!52292 (and tp!99665 e!732906))))

(declare-fun mapKey!52292 () (_ BitVec 32))

(declare-fun mapRest!52292 () (Array (_ BitVec 32) ValueCell!16013))

(declare-fun mapValue!52292 () ValueCell!16013)

(assert (=> mapNonEmpty!52292 (= (arr!40832 _values!1445) (store mapRest!52292 mapKey!52292 mapValue!52292))))

(declare-fun b!1282651 () Bool)

(declare-fun e!732909 () Bool)

(assert (=> b!1282651 (= e!732909 (and e!732908 mapRes!52292))))

(declare-fun condMapEmpty!52292 () Bool)

(declare-fun mapDefault!52292 () ValueCell!16013)

