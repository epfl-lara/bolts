; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109186 () Bool)

(assert start!109186)

(declare-fun b_free!28639 () Bool)

(declare-fun b_next!28639 () Bool)

(assert (=> start!109186 (= b_free!28639 (not b_next!28639))))

(declare-fun tp!101036 () Bool)

(declare-fun b_and!46739 () Bool)

(assert (=> start!109186 (= tp!101036 b_and!46739)))

(declare-fun b!1290687 () Bool)

(declare-fun res!857555 () Bool)

(declare-fun e!736863 () Bool)

(assert (=> b!1290687 (=> (not res!857555) (not e!736863))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85555 0))(
  ( (array!85556 (arr!41274 (Array (_ BitVec 32) (_ BitVec 64))) (size!41825 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85555)

(assert (=> b!1290687 (= res!857555 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41825 _keys!1741))))))

(declare-fun mapNonEmpty!52979 () Bool)

(declare-fun mapRes!52979 () Bool)

(declare-fun tp!101037 () Bool)

(declare-fun e!736862 () Bool)

(assert (=> mapNonEmpty!52979 (= mapRes!52979 (and tp!101037 e!736862))))

(declare-datatypes ((V!50809 0))(
  ( (V!50810 (val!17214 Int)) )
))
(declare-datatypes ((ValueCell!16241 0))(
  ( (ValueCellFull!16241 (v!19815 V!50809)) (EmptyCell!16241) )
))
(declare-datatypes ((array!85557 0))(
  ( (array!85558 (arr!41275 (Array (_ BitVec 32) ValueCell!16241)) (size!41826 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85557)

(declare-fun mapValue!52979 () ValueCell!16241)

(declare-fun mapRest!52979 () (Array (_ BitVec 32) ValueCell!16241))

(declare-fun mapKey!52979 () (_ BitVec 32))

(assert (=> mapNonEmpty!52979 (= (arr!41275 _values!1445) (store mapRest!52979 mapKey!52979 mapValue!52979))))

(declare-fun b!1290688 () Bool)

(declare-fun res!857552 () Bool)

(assert (=> b!1290688 (=> (not res!857552) (not e!736863))))

(declare-fun minValue!1387 () V!50809)

(declare-fun zeroValue!1387 () V!50809)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22258 0))(
  ( (tuple2!22259 (_1!11139 (_ BitVec 64)) (_2!11139 V!50809)) )
))
(declare-datatypes ((List!29454 0))(
  ( (Nil!29451) (Cons!29450 (h!30659 tuple2!22258) (t!43025 List!29454)) )
))
(declare-datatypes ((ListLongMap!19927 0))(
  ( (ListLongMap!19928 (toList!9979 List!29454)) )
))
(declare-fun contains!8035 (ListLongMap!19927 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4979 (array!85555 array!85557 (_ BitVec 32) (_ BitVec 32) V!50809 V!50809 (_ BitVec 32) Int) ListLongMap!19927)

(assert (=> b!1290688 (= res!857552 (contains!8035 (getCurrentListMap!4979 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!857556 () Bool)

(assert (=> start!109186 (=> (not res!857556) (not e!736863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109186 (= res!857556 (validMask!0 mask!2175))))

(assert (=> start!109186 e!736863))

(declare-fun tp_is_empty!34279 () Bool)

(assert (=> start!109186 tp_is_empty!34279))

(assert (=> start!109186 true))

(declare-fun e!736866 () Bool)

(declare-fun array_inv!31255 (array!85557) Bool)

(assert (=> start!109186 (and (array_inv!31255 _values!1445) e!736866)))

(declare-fun array_inv!31256 (array!85555) Bool)

(assert (=> start!109186 (array_inv!31256 _keys!1741)))

(assert (=> start!109186 tp!101036))

(declare-fun mapIsEmpty!52979 () Bool)

(assert (=> mapIsEmpty!52979 mapRes!52979))

(declare-fun b!1290689 () Bool)

(declare-fun e!736864 () Bool)

(assert (=> b!1290689 (= e!736863 (not e!736864))))

(declare-fun res!857548 () Bool)

(assert (=> b!1290689 (=> res!857548 e!736864)))

(assert (=> b!1290689 (= res!857548 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290689 (not (contains!8035 (ListLongMap!19928 Nil!29451) k!1205))))

(declare-datatypes ((Unit!42647 0))(
  ( (Unit!42648) )
))
(declare-fun lt!578739 () Unit!42647)

(declare-fun emptyContainsNothing!84 ((_ BitVec 64)) Unit!42647)

(assert (=> b!1290689 (= lt!578739 (emptyContainsNothing!84 k!1205))))

(declare-fun b!1290690 () Bool)

(declare-fun res!857551 () Bool)

(assert (=> b!1290690 (=> (not res!857551) (not e!736863))))

(assert (=> b!1290690 (= res!857551 (and (= (size!41826 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41825 _keys!1741) (size!41826 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290691 () Bool)

(declare-fun res!857550 () Bool)

(assert (=> b!1290691 (=> (not res!857550) (not e!736863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290691 (= res!857550 (not (validKeyInArray!0 (select (arr!41274 _keys!1741) from!2144))))))

(declare-fun b!1290692 () Bool)

(declare-fun res!857553 () Bool)

(assert (=> b!1290692 (=> (not res!857553) (not e!736863))))

(assert (=> b!1290692 (= res!857553 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41825 _keys!1741))))))

(declare-fun b!1290693 () Bool)

(declare-fun res!857549 () Bool)

(assert (=> b!1290693 (=> (not res!857549) (not e!736863))))

(declare-datatypes ((List!29455 0))(
  ( (Nil!29452) (Cons!29451 (h!30660 (_ BitVec 64)) (t!43026 List!29455)) )
))
(declare-fun arrayNoDuplicates!0 (array!85555 (_ BitVec 32) List!29455) Bool)

(assert (=> b!1290693 (= res!857549 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29452))))

(declare-fun b!1290694 () Bool)

(declare-fun e!736867 () Bool)

(assert (=> b!1290694 (= e!736866 (and e!736867 mapRes!52979))))

(declare-fun condMapEmpty!52979 () Bool)

(declare-fun mapDefault!52979 () ValueCell!16241)

