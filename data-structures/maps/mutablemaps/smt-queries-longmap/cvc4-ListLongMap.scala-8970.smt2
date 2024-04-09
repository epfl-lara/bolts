; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108586 () Bool)

(assert start!108586)

(declare-fun b_free!28097 () Bool)

(declare-fun b_next!28097 () Bool)

(assert (=> start!108586 (= b_free!28097 (not b_next!28097))))

(declare-fun tp!99401 () Bool)

(declare-fun b_and!46167 () Bool)

(assert (=> start!108586 (= tp!99401 b_and!46167)))

(declare-fun b!1281257 () Bool)

(declare-fun res!851195 () Bool)

(declare-fun e!732069 () Bool)

(assert (=> b!1281257 (=> (not res!851195) (not e!732069))))

(declare-datatypes ((array!84499 0))(
  ( (array!84500 (arr!40749 (Array (_ BitVec 32) (_ BitVec 64))) (size!41300 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84499)

(declare-datatypes ((List!29048 0))(
  ( (Nil!29045) (Cons!29044 (h!30253 (_ BitVec 64)) (t!42595 List!29048)) )
))
(declare-fun arrayNoDuplicates!0 (array!84499 (_ BitVec 32) List!29048) Bool)

(assert (=> b!1281257 (= res!851195 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29045))))

(declare-fun b!1281258 () Bool)

(declare-fun res!851201 () Bool)

(assert (=> b!1281258 (=> (not res!851201) (not e!732069))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1281258 (= res!851201 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41300 _keys!1741))))))

(declare-fun mapIsEmpty!52157 () Bool)

(declare-fun mapRes!52157 () Bool)

(assert (=> mapIsEmpty!52157 mapRes!52157))

(declare-fun b!1281259 () Bool)

(declare-fun res!851196 () Bool)

(assert (=> b!1281259 (=> (not res!851196) (not e!732069))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84499 (_ BitVec 32)) Bool)

(assert (=> b!1281259 (= res!851196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281260 () Bool)

(declare-fun res!851197 () Bool)

(assert (=> b!1281260 (=> (not res!851197) (not e!732069))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1281260 (= res!851197 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41300 _keys!1741)) (not (= (select (arr!40749 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1281261 () Bool)

(declare-fun res!851199 () Bool)

(assert (=> b!1281261 (=> (not res!851199) (not e!732069))))

(declare-datatypes ((V!50085 0))(
  ( (V!50086 (val!16943 Int)) )
))
(declare-fun minValue!1387 () V!50085)

(declare-fun zeroValue!1387 () V!50085)

(declare-datatypes ((ValueCell!15970 0))(
  ( (ValueCellFull!15970 (v!19541 V!50085)) (EmptyCell!15970) )
))
(declare-datatypes ((array!84501 0))(
  ( (array!84502 (arr!40750 (Array (_ BitVec 32) ValueCell!15970)) (size!41301 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84501)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21840 0))(
  ( (tuple2!21841 (_1!10930 (_ BitVec 64)) (_2!10930 V!50085)) )
))
(declare-datatypes ((List!29049 0))(
  ( (Nil!29046) (Cons!29045 (h!30254 tuple2!21840) (t!42596 List!29049)) )
))
(declare-datatypes ((ListLongMap!19509 0))(
  ( (ListLongMap!19510 (toList!9770 List!29049)) )
))
(declare-fun contains!7823 (ListLongMap!19509 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4790 (array!84499 array!84501 (_ BitVec 32) (_ BitVec 32) V!50085 V!50085 (_ BitVec 32) Int) ListLongMap!19509)

(assert (=> b!1281261 (= res!851199 (contains!7823 (getCurrentListMap!4790 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1281262 () Bool)

(declare-fun e!732067 () Bool)

(declare-fun tp_is_empty!33737 () Bool)

(assert (=> b!1281262 (= e!732067 tp_is_empty!33737)))

(declare-fun res!851200 () Bool)

(assert (=> start!108586 (=> (not res!851200) (not e!732069))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108586 (= res!851200 (validMask!0 mask!2175))))

(assert (=> start!108586 e!732069))

(assert (=> start!108586 tp_is_empty!33737))

(assert (=> start!108586 true))

(declare-fun e!732068 () Bool)

(declare-fun array_inv!30907 (array!84501) Bool)

(assert (=> start!108586 (and (array_inv!30907 _values!1445) e!732068)))

(declare-fun array_inv!30908 (array!84499) Bool)

(assert (=> start!108586 (array_inv!30908 _keys!1741)))

(assert (=> start!108586 tp!99401))

(declare-fun b!1281263 () Bool)

(declare-fun res!851198 () Bool)

(assert (=> b!1281263 (=> (not res!851198) (not e!732069))))

(assert (=> b!1281263 (= res!851198 (and (= (size!41301 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41300 _keys!1741) (size!41301 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281264 () Bool)

(declare-fun e!732066 () Bool)

(assert (=> b!1281264 (= e!732068 (and e!732066 mapRes!52157))))

(declare-fun condMapEmpty!52157 () Bool)

(declare-fun mapDefault!52157 () ValueCell!15970)

