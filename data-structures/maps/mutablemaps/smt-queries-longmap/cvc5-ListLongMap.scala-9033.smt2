; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109018 () Bool)

(assert start!109018)

(declare-fun b_free!28471 () Bool)

(declare-fun b_next!28471 () Bool)

(assert (=> start!109018 (= b_free!28471 (not b_next!28471))))

(declare-fun tp!100532 () Bool)

(declare-fun b_and!46571 () Bool)

(assert (=> start!109018 (= tp!100532 b_and!46571)))

(declare-fun b!1287697 () Bool)

(declare-fun res!855318 () Bool)

(declare-fun e!735388 () Bool)

(assert (=> b!1287697 (=> (not res!855318) (not e!735388))))

(declare-datatypes ((array!85223 0))(
  ( (array!85224 (arr!41108 (Array (_ BitVec 32) (_ BitVec 64))) (size!41659 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85223)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287697 (= res!855318 (not (validKeyInArray!0 (select (arr!41108 _keys!1741) from!2144))))))

(declare-fun b!1287698 () Bool)

(declare-fun res!855320 () Bool)

(assert (=> b!1287698 (=> (not res!855320) (not e!735388))))

(declare-datatypes ((List!29315 0))(
  ( (Nil!29312) (Cons!29311 (h!30520 (_ BitVec 64)) (t!42886 List!29315)) )
))
(declare-fun arrayNoDuplicates!0 (array!85223 (_ BitVec 32) List!29315) Bool)

(assert (=> b!1287698 (= res!855320 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29312))))

(declare-fun b!1287699 () Bool)

(declare-fun e!735387 () Bool)

(declare-fun tp_is_empty!34111 () Bool)

(assert (=> b!1287699 (= e!735387 tp_is_empty!34111)))

(declare-fun res!855319 () Bool)

(assert (=> start!109018 (=> (not res!855319) (not e!735388))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109018 (= res!855319 (validMask!0 mask!2175))))

(assert (=> start!109018 e!735388))

(assert (=> start!109018 tp_is_empty!34111))

(assert (=> start!109018 true))

(declare-datatypes ((V!50585 0))(
  ( (V!50586 (val!17130 Int)) )
))
(declare-datatypes ((ValueCell!16157 0))(
  ( (ValueCellFull!16157 (v!19731 V!50585)) (EmptyCell!16157) )
))
(declare-datatypes ((array!85225 0))(
  ( (array!85226 (arr!41109 (Array (_ BitVec 32) ValueCell!16157)) (size!41660 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85225)

(declare-fun e!735386 () Bool)

(declare-fun array_inv!31143 (array!85225) Bool)

(assert (=> start!109018 (and (array_inv!31143 _values!1445) e!735386)))

(declare-fun array_inv!31144 (array!85223) Bool)

(assert (=> start!109018 (array_inv!31144 _keys!1741)))

(assert (=> start!109018 tp!100532))

(declare-fun b!1287700 () Bool)

(declare-fun res!855317 () Bool)

(assert (=> b!1287700 (=> (not res!855317) (not e!735388))))

(declare-fun minValue!1387 () V!50585)

(declare-fun zeroValue!1387 () V!50585)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22116 0))(
  ( (tuple2!22117 (_1!11068 (_ BitVec 64)) (_2!11068 V!50585)) )
))
(declare-datatypes ((List!29316 0))(
  ( (Nil!29313) (Cons!29312 (h!30521 tuple2!22116) (t!42887 List!29316)) )
))
(declare-datatypes ((ListLongMap!19785 0))(
  ( (ListLongMap!19786 (toList!9908 List!29316)) )
))
(declare-fun contains!7964 (ListLongMap!19785 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4914 (array!85223 array!85225 (_ BitVec 32) (_ BitVec 32) V!50585 V!50585 (_ BitVec 32) Int) ListLongMap!19785)

(assert (=> b!1287700 (= res!855317 (contains!7964 (getCurrentListMap!4914 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1287701 () Bool)

(declare-fun res!855316 () Bool)

(assert (=> b!1287701 (=> (not res!855316) (not e!735388))))

(assert (=> b!1287701 (= res!855316 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41659 _keys!1741))))))

(declare-fun b!1287702 () Bool)

(declare-fun res!855321 () Bool)

(assert (=> b!1287702 (=> (not res!855321) (not e!735388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85223 (_ BitVec 32)) Bool)

(assert (=> b!1287702 (= res!855321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287703 () Bool)

(declare-fun e!735384 () Bool)

(declare-fun mapRes!52727 () Bool)

(assert (=> b!1287703 (= e!735386 (and e!735384 mapRes!52727))))

(declare-fun condMapEmpty!52727 () Bool)

(declare-fun mapDefault!52727 () ValueCell!16157)

