; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113214 () Bool)

(assert start!113214)

(declare-fun b_free!31229 () Bool)

(declare-fun b_next!31229 () Bool)

(assert (=> start!113214 (= b_free!31229 (not b_next!31229))))

(declare-fun tp!109493 () Bool)

(declare-fun b_and!50375 () Bool)

(assert (=> start!113214 (= tp!109493 b_and!50375)))

(declare-fun b!1342144 () Bool)

(declare-fun res!890510 () Bool)

(declare-fun e!764167 () Bool)

(assert (=> b!1342144 (=> (not res!890510) (not e!764167))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1342144 (= res!890510 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1342145 () Bool)

(declare-fun res!890513 () Bool)

(assert (=> b!1342145 (=> (not res!890513) (not e!764167))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91267 0))(
  ( (array!91268 (arr!44085 (Array (_ BitVec 32) (_ BitVec 64))) (size!44636 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91267)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1342145 (= res!890513 (not (= (select (arr!44085 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1342146 () Bool)

(declare-fun e!764168 () Bool)

(declare-fun tp_is_empty!37229 () Bool)

(assert (=> b!1342146 (= e!764168 tp_is_empty!37229)))

(declare-fun res!890508 () Bool)

(assert (=> start!113214 (=> (not res!890508) (not e!764167))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113214 (= res!890508 (validMask!0 mask!1977))))

(assert (=> start!113214 e!764167))

(assert (=> start!113214 tp_is_empty!37229))

(assert (=> start!113214 true))

(declare-fun array_inv!33149 (array!91267) Bool)

(assert (=> start!113214 (array_inv!33149 _keys!1571)))

(declare-datatypes ((V!54741 0))(
  ( (V!54742 (val!18689 Int)) )
))
(declare-datatypes ((ValueCell!17716 0))(
  ( (ValueCellFull!17716 (v!21335 V!54741)) (EmptyCell!17716) )
))
(declare-datatypes ((array!91269 0))(
  ( (array!91270 (arr!44086 (Array (_ BitVec 32) ValueCell!17716)) (size!44637 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91269)

(declare-fun e!764171 () Bool)

(declare-fun array_inv!33150 (array!91269) Bool)

(assert (=> start!113214 (and (array_inv!33150 _values!1303) e!764171)))

(assert (=> start!113214 tp!109493))

(declare-fun b!1342147 () Bool)

(declare-fun res!890515 () Bool)

(assert (=> b!1342147 (=> (not res!890515) (not e!764167))))

(assert (=> b!1342147 (= res!890515 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44636 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57550 () Bool)

(declare-fun mapRes!57550 () Bool)

(declare-fun tp!109492 () Bool)

(assert (=> mapNonEmpty!57550 (= mapRes!57550 (and tp!109492 e!764168))))

(declare-fun mapValue!57550 () ValueCell!17716)

(declare-fun mapKey!57550 () (_ BitVec 32))

(declare-fun mapRest!57550 () (Array (_ BitVec 32) ValueCell!17716))

(assert (=> mapNonEmpty!57550 (= (arr!44086 _values!1303) (store mapRest!57550 mapKey!57550 mapValue!57550))))

(declare-fun b!1342148 () Bool)

(declare-fun res!890509 () Bool)

(assert (=> b!1342148 (=> (not res!890509) (not e!764167))))

(declare-datatypes ((List!31400 0))(
  ( (Nil!31397) (Cons!31396 (h!32605 (_ BitVec 64)) (t!45847 List!31400)) )
))
(declare-fun arrayNoDuplicates!0 (array!91267 (_ BitVec 32) List!31400) Bool)

(assert (=> b!1342148 (= res!890509 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31397))))

(declare-fun b!1342149 () Bool)

(declare-fun res!890516 () Bool)

(assert (=> b!1342149 (=> (not res!890516) (not e!764167))))

(declare-fun minValue!1245 () V!54741)

(declare-fun zeroValue!1245 () V!54741)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24220 0))(
  ( (tuple2!24221 (_1!12120 (_ BitVec 64)) (_2!12120 V!54741)) )
))
(declare-datatypes ((List!31401 0))(
  ( (Nil!31398) (Cons!31397 (h!32606 tuple2!24220) (t!45848 List!31401)) )
))
(declare-datatypes ((ListLongMap!21889 0))(
  ( (ListLongMap!21890 (toList!10960 List!31401)) )
))
(declare-fun contains!9072 (ListLongMap!21889 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5860 (array!91267 array!91269 (_ BitVec 32) (_ BitVec 32) V!54741 V!54741 (_ BitVec 32) Int) ListLongMap!21889)

(assert (=> b!1342149 (= res!890516 (contains!9072 (getCurrentListMap!5860 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1342150 () Bool)

(declare-fun e!764170 () Bool)

(assert (=> b!1342150 (= e!764171 (and e!764170 mapRes!57550))))

(declare-fun condMapEmpty!57550 () Bool)

(declare-fun mapDefault!57550 () ValueCell!17716)

