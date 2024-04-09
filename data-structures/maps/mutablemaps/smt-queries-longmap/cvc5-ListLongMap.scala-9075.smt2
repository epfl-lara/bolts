; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109270 () Bool)

(assert start!109270)

(declare-fun b_free!28723 () Bool)

(declare-fun b_next!28723 () Bool)

(assert (=> start!109270 (= b_free!28723 (not b_next!28723))))

(declare-fun tp!101288 () Bool)

(declare-fun b_and!46823 () Bool)

(assert (=> start!109270 (= tp!101288 b_and!46823)))

(declare-fun res!858638 () Bool)

(declare-fun e!737571 () Bool)

(assert (=> start!109270 (=> (not res!858638) (not e!737571))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109270 (= res!858638 (validMask!0 mask!2175))))

(assert (=> start!109270 e!737571))

(declare-fun tp_is_empty!34363 () Bool)

(assert (=> start!109270 tp_is_empty!34363))

(assert (=> start!109270 true))

(declare-datatypes ((V!50921 0))(
  ( (V!50922 (val!17256 Int)) )
))
(declare-datatypes ((ValueCell!16283 0))(
  ( (ValueCellFull!16283 (v!19857 V!50921)) (EmptyCell!16283) )
))
(declare-datatypes ((array!85719 0))(
  ( (array!85720 (arr!41356 (Array (_ BitVec 32) ValueCell!16283)) (size!41907 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85719)

(declare-fun e!737573 () Bool)

(declare-fun array_inv!31303 (array!85719) Bool)

(assert (=> start!109270 (and (array_inv!31303 _values!1445) e!737573)))

(declare-datatypes ((array!85721 0))(
  ( (array!85722 (arr!41357 (Array (_ BitVec 32) (_ BitVec 64))) (size!41908 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85721)

(declare-fun array_inv!31304 (array!85721) Bool)

(assert (=> start!109270 (array_inv!31304 _keys!1741)))

(assert (=> start!109270 tp!101288))

(declare-fun b!1292152 () Bool)

(declare-fun e!737575 () Bool)

(assert (=> b!1292152 (= e!737575 tp_is_empty!34363)))

(declare-fun b!1292153 () Bool)

(declare-fun res!858641 () Bool)

(assert (=> b!1292153 (=> (not res!858641) (not e!737571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85721 (_ BitVec 32)) Bool)

(assert (=> b!1292153 (= res!858641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292154 () Bool)

(declare-fun res!858640 () Bool)

(assert (=> b!1292154 (=> (not res!858640) (not e!737571))))

(declare-fun minValue!1387 () V!50921)

(declare-fun zeroValue!1387 () V!50921)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22332 0))(
  ( (tuple2!22333 (_1!11176 (_ BitVec 64)) (_2!11176 V!50921)) )
))
(declare-datatypes ((List!29520 0))(
  ( (Nil!29517) (Cons!29516 (h!30725 tuple2!22332) (t!43091 List!29520)) )
))
(declare-datatypes ((ListLongMap!20001 0))(
  ( (ListLongMap!20002 (toList!10016 List!29520)) )
))
(declare-fun contains!8072 (ListLongMap!20001 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5008 (array!85721 array!85719 (_ BitVec 32) (_ BitVec 32) V!50921 V!50921 (_ BitVec 32) Int) ListLongMap!20001)

(assert (=> b!1292154 (= res!858640 (contains!8072 (getCurrentListMap!5008 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!53105 () Bool)

(declare-fun mapRes!53105 () Bool)

(declare-fun tp!101289 () Bool)

(assert (=> mapNonEmpty!53105 (= mapRes!53105 (and tp!101289 e!737575))))

(declare-fun mapRest!53105 () (Array (_ BitVec 32) ValueCell!16283))

(declare-fun mapValue!53105 () ValueCell!16283)

(declare-fun mapKey!53105 () (_ BitVec 32))

(assert (=> mapNonEmpty!53105 (= (arr!41356 _values!1445) (store mapRest!53105 mapKey!53105 mapValue!53105))))

(declare-fun b!1292155 () Bool)

(declare-fun e!737572 () Bool)

(assert (=> b!1292155 (= e!737573 (and e!737572 mapRes!53105))))

(declare-fun condMapEmpty!53105 () Bool)

(declare-fun mapDefault!53105 () ValueCell!16283)

