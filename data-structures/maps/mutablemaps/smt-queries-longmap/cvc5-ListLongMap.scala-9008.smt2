; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108844 () Bool)

(assert start!108844)

(declare-fun b_free!28321 () Bool)

(declare-fun b_next!28321 () Bool)

(assert (=> start!108844 (= b_free!28321 (not b_next!28321))))

(declare-fun tp!100080 () Bool)

(declare-fun b_and!46397 () Bool)

(assert (=> start!108844 (= tp!100080 b_and!46397)))

(declare-fun mapNonEmpty!52499 () Bool)

(declare-fun mapRes!52499 () Bool)

(declare-fun tp!100079 () Bool)

(declare-fun e!733943 () Bool)

(assert (=> mapNonEmpty!52499 (= mapRes!52499 (and tp!100079 e!733943))))

(declare-datatypes ((V!50385 0))(
  ( (V!50386 (val!17055 Int)) )
))
(declare-datatypes ((ValueCell!16082 0))(
  ( (ValueCellFull!16082 (v!19655 V!50385)) (EmptyCell!16082) )
))
(declare-fun mapValue!52499 () ValueCell!16082)

(declare-fun mapRest!52499 () (Array (_ BitVec 32) ValueCell!16082))

(declare-datatypes ((array!84937 0))(
  ( (array!84938 (arr!40966 (Array (_ BitVec 32) ValueCell!16082)) (size!41517 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84937)

(declare-fun mapKey!52499 () (_ BitVec 32))

(assert (=> mapNonEmpty!52499 (= (arr!40966 _values!1445) (store mapRest!52499 mapKey!52499 mapValue!52499))))

(declare-fun b!1284821 () Bool)

(declare-fun res!853604 () Bool)

(declare-fun e!733941 () Bool)

(assert (=> b!1284821 (=> (not res!853604) (not e!733941))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84939 0))(
  ( (array!84940 (arr!40967 (Array (_ BitVec 32) (_ BitVec 64))) (size!41518 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84939)

(assert (=> b!1284821 (= res!853604 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41518 _keys!1741))))))

(declare-fun res!853608 () Bool)

(assert (=> start!108844 (=> (not res!853608) (not e!733941))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108844 (= res!853608 (validMask!0 mask!2175))))

(assert (=> start!108844 e!733941))

(declare-fun tp_is_empty!33961 () Bool)

(assert (=> start!108844 tp_is_empty!33961))

(assert (=> start!108844 true))

(declare-fun e!733942 () Bool)

(declare-fun array_inv!31049 (array!84937) Bool)

(assert (=> start!108844 (and (array_inv!31049 _values!1445) e!733942)))

(declare-fun array_inv!31050 (array!84939) Bool)

(assert (=> start!108844 (array_inv!31050 _keys!1741)))

(assert (=> start!108844 tp!100080))

(declare-fun b!1284822 () Bool)

(declare-fun res!853609 () Bool)

(assert (=> b!1284822 (=> (not res!853609) (not e!733941))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1284822 (= res!853609 (and (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!1284823 () Bool)

(declare-fun res!853610 () Bool)

(assert (=> b!1284823 (=> (not res!853610) (not e!733941))))

(declare-datatypes ((List!29202 0))(
  ( (Nil!29199) (Cons!29198 (h!30407 (_ BitVec 64)) (t!42753 List!29202)) )
))
(declare-fun arrayNoDuplicates!0 (array!84939 (_ BitVec 32) List!29202) Bool)

(assert (=> b!1284823 (= res!853610 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29199))))

(declare-fun b!1284824 () Bool)

(assert (=> b!1284824 (= e!733943 tp_is_empty!33961)))

(declare-fun b!1284825 () Bool)

(assert (=> b!1284825 (= e!733941 false)))

(declare-fun minValue!1387 () V!50385)

(declare-fun zeroValue!1387 () V!50385)

(declare-fun lt!576795 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21988 0))(
  ( (tuple2!21989 (_1!11004 (_ BitVec 64)) (_2!11004 V!50385)) )
))
(declare-datatypes ((List!29203 0))(
  ( (Nil!29200) (Cons!29199 (h!30408 tuple2!21988) (t!42754 List!29203)) )
))
(declare-datatypes ((ListLongMap!19657 0))(
  ( (ListLongMap!19658 (toList!9844 List!29203)) )
))
(declare-fun contains!7899 (ListLongMap!19657 (_ BitVec 64)) Bool)

(declare-fun +!4273 (ListLongMap!19657 tuple2!21988) ListLongMap!19657)

(declare-fun getCurrentListMapNoExtraKeys!5984 (array!84939 array!84937 (_ BitVec 32) (_ BitVec 32) V!50385 V!50385 (_ BitVec 32) Int) ListLongMap!19657)

(assert (=> b!1284825 (= lt!576795 (contains!7899 (+!4273 (getCurrentListMapNoExtraKeys!5984 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21989 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun b!1284826 () Bool)

(declare-fun res!853607 () Bool)

(assert (=> b!1284826 (=> (not res!853607) (not e!733941))))

(declare-fun getCurrentListMap!4862 (array!84939 array!84937 (_ BitVec 32) (_ BitVec 32) V!50385 V!50385 (_ BitVec 32) Int) ListLongMap!19657)

(assert (=> b!1284826 (= res!853607 (contains!7899 (getCurrentListMap!4862 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1284827 () Bool)

(declare-fun res!853611 () Bool)

(assert (=> b!1284827 (=> (not res!853611) (not e!733941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1284827 (= res!853611 (validKeyInArray!0 (select (arr!40967 _keys!1741) from!2144)))))

(declare-fun b!1284828 () Bool)

(declare-fun res!853606 () Bool)

(assert (=> b!1284828 (=> (not res!853606) (not e!733941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84939 (_ BitVec 32)) Bool)

(assert (=> b!1284828 (= res!853606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284829 () Bool)

(declare-fun e!733944 () Bool)

(assert (=> b!1284829 (= e!733944 tp_is_empty!33961)))

(declare-fun b!1284830 () Bool)

(declare-fun res!853603 () Bool)

(assert (=> b!1284830 (=> (not res!853603) (not e!733941))))

(assert (=> b!1284830 (= res!853603 (and (= (size!41517 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41518 _keys!1741) (size!41517 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1284831 () Bool)

(declare-fun res!853605 () Bool)

(assert (=> b!1284831 (=> (not res!853605) (not e!733941))))

(assert (=> b!1284831 (= res!853605 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41518 _keys!1741))))))

(declare-fun b!1284832 () Bool)

(assert (=> b!1284832 (= e!733942 (and e!733944 mapRes!52499))))

(declare-fun condMapEmpty!52499 () Bool)

(declare-fun mapDefault!52499 () ValueCell!16082)

