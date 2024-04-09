; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108686 () Bool)

(assert start!108686)

(declare-fun b_free!28163 () Bool)

(declare-fun b_next!28163 () Bool)

(assert (=> start!108686 (= b_free!28163 (not b_next!28163))))

(declare-fun tp!99606 () Bool)

(declare-fun b_and!46239 () Bool)

(assert (=> start!108686 (= tp!99606 b_and!46239)))

(declare-fun b!1282395 () Bool)

(declare-fun e!732759 () Bool)

(assert (=> b!1282395 (= e!732759 false)))

(declare-datatypes ((V!50173 0))(
  ( (V!50174 (val!16976 Int)) )
))
(declare-fun minValue!1387 () V!50173)

(declare-fun zeroValue!1387 () V!50173)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576477 () Bool)

(declare-datatypes ((ValueCell!16003 0))(
  ( (ValueCellFull!16003 (v!19576 V!50173)) (EmptyCell!16003) )
))
(declare-datatypes ((array!84627 0))(
  ( (array!84628 (arr!40811 (Array (_ BitVec 32) ValueCell!16003)) (size!41362 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84627)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84629 0))(
  ( (array!84630 (arr!40812 (Array (_ BitVec 32) (_ BitVec 64))) (size!41363 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84629)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21880 0))(
  ( (tuple2!21881 (_1!10950 (_ BitVec 64)) (_2!10950 V!50173)) )
))
(declare-datatypes ((List!29090 0))(
  ( (Nil!29087) (Cons!29086 (h!30295 tuple2!21880) (t!42641 List!29090)) )
))
(declare-datatypes ((ListLongMap!19549 0))(
  ( (ListLongMap!19550 (toList!9790 List!29090)) )
))
(declare-fun contains!7845 (ListLongMap!19549 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4810 (array!84629 array!84627 (_ BitVec 32) (_ BitVec 32) V!50173 V!50173 (_ BitVec 32) Int) ListLongMap!19549)

(assert (=> b!1282395 (= lt!576477 (contains!7845 (getCurrentListMap!4810 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1282396 () Bool)

(declare-fun res!851892 () Bool)

(assert (=> b!1282396 (=> (not res!851892) (not e!732759))))

(assert (=> b!1282396 (= res!851892 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41363 _keys!1741))))))

(declare-fun mapIsEmpty!52262 () Bool)

(declare-fun mapRes!52262 () Bool)

(assert (=> mapIsEmpty!52262 mapRes!52262))

(declare-fun b!1282397 () Bool)

(declare-fun res!851889 () Bool)

(assert (=> b!1282397 (=> (not res!851889) (not e!732759))))

(declare-datatypes ((List!29091 0))(
  ( (Nil!29088) (Cons!29087 (h!30296 (_ BitVec 64)) (t!42642 List!29091)) )
))
(declare-fun arrayNoDuplicates!0 (array!84629 (_ BitVec 32) List!29091) Bool)

(assert (=> b!1282397 (= res!851889 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29088))))

(declare-fun b!1282398 () Bool)

(declare-fun res!851890 () Bool)

(assert (=> b!1282398 (=> (not res!851890) (not e!732759))))

(assert (=> b!1282398 (= res!851890 (and (= (size!41362 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41363 _keys!1741) (size!41362 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!851891 () Bool)

(assert (=> start!108686 (=> (not res!851891) (not e!732759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108686 (= res!851891 (validMask!0 mask!2175))))

(assert (=> start!108686 e!732759))

(declare-fun tp_is_empty!33803 () Bool)

(assert (=> start!108686 tp_is_empty!33803))

(assert (=> start!108686 true))

(declare-fun e!732760 () Bool)

(declare-fun array_inv!30941 (array!84627) Bool)

(assert (=> start!108686 (and (array_inv!30941 _values!1445) e!732760)))

(declare-fun array_inv!30942 (array!84629) Bool)

(assert (=> start!108686 (array_inv!30942 _keys!1741)))

(assert (=> start!108686 tp!99606))

(declare-fun b!1282399 () Bool)

(declare-fun e!732756 () Bool)

(assert (=> b!1282399 (= e!732760 (and e!732756 mapRes!52262))))

(declare-fun condMapEmpty!52262 () Bool)

(declare-fun mapDefault!52262 () ValueCell!16003)

