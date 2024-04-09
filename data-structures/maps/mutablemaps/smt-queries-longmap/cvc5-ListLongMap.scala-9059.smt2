; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109174 () Bool)

(assert start!109174)

(declare-fun b_free!28627 () Bool)

(declare-fun b_next!28627 () Bool)

(assert (=> start!109174 (= b_free!28627 (not b_next!28627))))

(declare-fun tp!101000 () Bool)

(declare-fun b_and!46727 () Bool)

(assert (=> start!109174 (= tp!101000 b_and!46727)))

(declare-fun b!1290471 () Bool)

(declare-fun res!857390 () Bool)

(declare-fun e!736758 () Bool)

(assert (=> b!1290471 (=> (not res!857390) (not e!736758))))

(declare-datatypes ((V!50793 0))(
  ( (V!50794 (val!17208 Int)) )
))
(declare-fun minValue!1387 () V!50793)

(declare-fun zeroValue!1387 () V!50793)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16235 0))(
  ( (ValueCellFull!16235 (v!19809 V!50793)) (EmptyCell!16235) )
))
(declare-datatypes ((array!85531 0))(
  ( (array!85532 (arr!41262 (Array (_ BitVec 32) ValueCell!16235)) (size!41813 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85531)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85533 0))(
  ( (array!85534 (arr!41263 (Array (_ BitVec 32) (_ BitVec 64))) (size!41814 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85533)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22250 0))(
  ( (tuple2!22251 (_1!11135 (_ BitVec 64)) (_2!11135 V!50793)) )
))
(declare-datatypes ((List!29447 0))(
  ( (Nil!29444) (Cons!29443 (h!30652 tuple2!22250) (t!43018 List!29447)) )
))
(declare-datatypes ((ListLongMap!19919 0))(
  ( (ListLongMap!19920 (toList!9975 List!29447)) )
))
(declare-fun contains!8031 (ListLongMap!19919 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4975 (array!85533 array!85531 (_ BitVec 32) (_ BitVec 32) V!50793 V!50793 (_ BitVec 32) Int) ListLongMap!19919)

(assert (=> b!1290471 (= res!857390 (contains!8031 (getCurrentListMap!4975 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1290472 () Bool)

(declare-fun res!857386 () Bool)

(assert (=> b!1290472 (=> (not res!857386) (not e!736758))))

(assert (=> b!1290472 (= res!857386 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41814 _keys!1741))))))

(declare-fun b!1290473 () Bool)

(declare-fun res!857391 () Bool)

(assert (=> b!1290473 (=> (not res!857391) (not e!736758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85533 (_ BitVec 32)) Bool)

(assert (=> b!1290473 (= res!857391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1290474 () Bool)

(declare-fun e!736757 () Bool)

(assert (=> b!1290474 (= e!736758 (not e!736757))))

(declare-fun res!857393 () Bool)

(assert (=> b!1290474 (=> res!857393 e!736757)))

(assert (=> b!1290474 (= res!857393 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1290474 (not (contains!8031 (ListLongMap!19920 Nil!29444) k!1205))))

(declare-datatypes ((Unit!42639 0))(
  ( (Unit!42640) )
))
(declare-fun lt!578630 () Unit!42639)

(declare-fun emptyContainsNothing!80 ((_ BitVec 64)) Unit!42639)

(assert (=> b!1290474 (= lt!578630 (emptyContainsNothing!80 k!1205))))

(declare-fun b!1290475 () Bool)

(declare-fun e!736759 () Bool)

(declare-fun tp_is_empty!34267 () Bool)

(assert (=> b!1290475 (= e!736759 tp_is_empty!34267)))

(declare-fun b!1290476 () Bool)

(declare-fun e!736755 () Bool)

(declare-fun e!736754 () Bool)

(declare-fun mapRes!52961 () Bool)

(assert (=> b!1290476 (= e!736755 (and e!736754 mapRes!52961))))

(declare-fun condMapEmpty!52961 () Bool)

(declare-fun mapDefault!52961 () ValueCell!16235)

