; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113746 () Bool)

(assert start!113746)

(declare-fun b_free!31595 () Bool)

(declare-fun b_next!31595 () Bool)

(assert (=> start!113746 (= b_free!31595 (not b_next!31595))))

(declare-fun tp!110604 () Bool)

(declare-fun b_and!51003 () Bool)

(assert (=> start!113746 (= tp!110604 b_and!51003)))

(declare-fun mapIsEmpty!58113 () Bool)

(declare-fun mapRes!58113 () Bool)

(assert (=> mapIsEmpty!58113 mapRes!58113))

(declare-fun b!1349537 () Bool)

(declare-fun res!895390 () Bool)

(declare-fun e!767712 () Bool)

(assert (=> b!1349537 (=> (not res!895390) (not e!767712))))

(declare-datatypes ((array!91981 0))(
  ( (array!91982 (arr!44438 (Array (_ BitVec 32) (_ BitVec 64))) (size!44989 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91981)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1349537 (= res!895390 (not (validKeyInArray!0 (select (arr!44438 _keys!1571) from!1960))))))

(declare-fun res!895385 () Bool)

(assert (=> start!113746 (=> (not res!895385) (not e!767712))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113746 (= res!895385 (validMask!0 mask!1977))))

(assert (=> start!113746 e!767712))

(declare-fun tp_is_empty!37595 () Bool)

(assert (=> start!113746 tp_is_empty!37595))

(assert (=> start!113746 true))

(declare-fun array_inv!33383 (array!91981) Bool)

(assert (=> start!113746 (array_inv!33383 _keys!1571)))

(declare-datatypes ((V!55229 0))(
  ( (V!55230 (val!18872 Int)) )
))
(declare-datatypes ((ValueCell!17899 0))(
  ( (ValueCellFull!17899 (v!21526 V!55229)) (EmptyCell!17899) )
))
(declare-datatypes ((array!91983 0))(
  ( (array!91984 (arr!44439 (Array (_ BitVec 32) ValueCell!17899)) (size!44990 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91983)

(declare-fun e!767714 () Bool)

(declare-fun array_inv!33384 (array!91983) Bool)

(assert (=> start!113746 (and (array_inv!33384 _values!1303) e!767714)))

(assert (=> start!113746 tp!110604))

(declare-fun minValue!1245 () V!55229)

(declare-fun b!1349538 () Bool)

(declare-fun zeroValue!1245 () V!55229)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24478 0))(
  ( (tuple2!24479 (_1!12249 (_ BitVec 64)) (_2!12249 V!55229)) )
))
(declare-datatypes ((List!31645 0))(
  ( (Nil!31642) (Cons!31641 (h!32850 tuple2!24478) (t!46308 List!31645)) )
))
(declare-datatypes ((ListLongMap!22147 0))(
  ( (ListLongMap!22148 (toList!11089 List!31645)) )
))
(declare-fun contains!9208 (ListLongMap!22147 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5978 (array!91981 array!91983 (_ BitVec 32) (_ BitVec 32) V!55229 V!55229 (_ BitVec 32) Int) ListLongMap!22147)

(assert (=> b!1349538 (= e!767712 (not (contains!9208 (getCurrentListMap!5978 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) k!1142)))))

(declare-fun b!1349539 () Bool)

(declare-fun res!895387 () Bool)

(assert (=> b!1349539 (=> (not res!895387) (not e!767712))))

(assert (=> b!1349539 (= res!895387 (contains!9208 (getCurrentListMap!5978 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1349540 () Bool)

(declare-fun e!767715 () Bool)

(assert (=> b!1349540 (= e!767715 tp_is_empty!37595)))

(declare-fun mapNonEmpty!58113 () Bool)

(declare-fun tp!110605 () Bool)

(assert (=> mapNonEmpty!58113 (= mapRes!58113 (and tp!110605 e!767715))))

(declare-fun mapRest!58113 () (Array (_ BitVec 32) ValueCell!17899))

(declare-fun mapKey!58113 () (_ BitVec 32))

(declare-fun mapValue!58113 () ValueCell!17899)

(assert (=> mapNonEmpty!58113 (= (arr!44439 _values!1303) (store mapRest!58113 mapKey!58113 mapValue!58113))))

(declare-fun b!1349541 () Bool)

(declare-fun res!895392 () Bool)

(assert (=> b!1349541 (=> (not res!895392) (not e!767712))))

(assert (=> b!1349541 (= res!895392 (and (= (size!44990 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44989 _keys!1571) (size!44990 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1349542 () Bool)

(declare-fun e!767713 () Bool)

(assert (=> b!1349542 (= e!767714 (and e!767713 mapRes!58113))))

(declare-fun condMapEmpty!58113 () Bool)

(declare-fun mapDefault!58113 () ValueCell!17899)

