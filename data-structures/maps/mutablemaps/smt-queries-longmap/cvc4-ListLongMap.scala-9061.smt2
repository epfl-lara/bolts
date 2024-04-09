; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109190 () Bool)

(assert start!109190)

(declare-fun b_free!28643 () Bool)

(declare-fun b_next!28643 () Bool)

(assert (=> start!109190 (= b_free!28643 (not b_next!28643))))

(declare-fun tp!101049 () Bool)

(declare-fun b_and!46743 () Bool)

(assert (=> start!109190 (= tp!101049 b_and!46743)))

(declare-fun b!1290759 () Bool)

(declare-fun res!857602 () Bool)

(declare-fun e!736901 () Bool)

(assert (=> b!1290759 (=> (not res!857602) (not e!736901))))

(declare-datatypes ((array!85563 0))(
  ( (array!85564 (arr!41278 (Array (_ BitVec 32) (_ BitVec 64))) (size!41829 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85563)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85563 (_ BitVec 32)) Bool)

(assert (=> b!1290759 (= res!857602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290760 () Bool)

(declare-fun e!736900 () Bool)

(assert (=> b!1290760 (= e!736901 (not e!736900))))

(declare-fun res!857610 () Bool)

(assert (=> b!1290760 (=> res!857610 e!736900)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1290760 (= res!857610 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50813 0))(
  ( (V!50814 (val!17216 Int)) )
))
(declare-datatypes ((tuple2!22262 0))(
  ( (tuple2!22263 (_1!11141 (_ BitVec 64)) (_2!11141 V!50813)) )
))
(declare-datatypes ((List!29458 0))(
  ( (Nil!29455) (Cons!29454 (h!30663 tuple2!22262) (t!43029 List!29458)) )
))
(declare-datatypes ((ListLongMap!19931 0))(
  ( (ListLongMap!19932 (toList!9981 List!29458)) )
))
(declare-fun contains!8037 (ListLongMap!19931 (_ BitVec 64)) Bool)

(assert (=> b!1290760 (not (contains!8037 (ListLongMap!19932 Nil!29455) k!1205))))

(declare-datatypes ((Unit!42651 0))(
  ( (Unit!42652) )
))
(declare-fun lt!578775 () Unit!42651)

(declare-fun emptyContainsNothing!86 ((_ BitVec 64)) Unit!42651)

(assert (=> b!1290760 (= lt!578775 (emptyContainsNothing!86 k!1205))))

(declare-fun b!1290761 () Bool)

(declare-fun res!857607 () Bool)

(assert (=> b!1290761 (=> (not res!857607) (not e!736901))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1290761 (= res!857607 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41829 _keys!1741))))))

(declare-fun b!1290762 () Bool)

(declare-fun e!736898 () Bool)

(declare-fun tp_is_empty!34283 () Bool)

(assert (=> b!1290762 (= e!736898 tp_is_empty!34283)))

(declare-fun b!1290763 () Bool)

(declare-fun res!857606 () Bool)

(assert (=> b!1290763 (=> (not res!857606) (not e!736901))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290763 (= res!857606 (not (validKeyInArray!0 (select (arr!41278 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!52985 () Bool)

(declare-fun mapRes!52985 () Bool)

(assert (=> mapIsEmpty!52985 mapRes!52985))

(declare-fun b!1290764 () Bool)

(declare-fun e!736903 () Bool)

(assert (=> b!1290764 (= e!736903 tp_is_empty!34283)))

(declare-fun b!1290765 () Bool)

(declare-fun res!857604 () Bool)

(assert (=> b!1290765 (=> (not res!857604) (not e!736901))))

(assert (=> b!1290765 (= res!857604 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41829 _keys!1741))))))

(declare-fun b!1290766 () Bool)

(declare-fun res!857609 () Bool)

(assert (=> b!1290766 (=> (not res!857609) (not e!736901))))

(declare-fun minValue!1387 () V!50813)

(declare-fun zeroValue!1387 () V!50813)

(declare-datatypes ((ValueCell!16243 0))(
  ( (ValueCellFull!16243 (v!19817 V!50813)) (EmptyCell!16243) )
))
(declare-datatypes ((array!85565 0))(
  ( (array!85566 (arr!41279 (Array (_ BitVec 32) ValueCell!16243)) (size!41830 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85565)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4981 (array!85563 array!85565 (_ BitVec 32) (_ BitVec 32) V!50813 V!50813 (_ BitVec 32) Int) ListLongMap!19931)

(assert (=> b!1290766 (= res!857609 (contains!8037 (getCurrentListMap!4981 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1290767 () Bool)

(declare-fun res!857605 () Bool)

(assert (=> b!1290767 (=> (not res!857605) (not e!736901))))

(assert (=> b!1290767 (= res!857605 (and (= (size!41830 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41829 _keys!1741) (size!41830 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1290768 () Bool)

(declare-fun e!736902 () Bool)

(assert (=> b!1290768 (= e!736902 (and e!736898 mapRes!52985))))

(declare-fun condMapEmpty!52985 () Bool)

(declare-fun mapDefault!52985 () ValueCell!16243)

