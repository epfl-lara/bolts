; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112870 () Bool)

(assert start!112870)

(declare-fun b_free!31063 () Bool)

(declare-fun b_next!31063 () Bool)

(assert (=> start!112870 (= b_free!31063 (not b_next!31063))))

(declare-fun tp!108840 () Bool)

(declare-fun b_and!50091 () Bool)

(assert (=> start!112870 (= tp!108840 b_and!50091)))

(declare-fun b!1338107 () Bool)

(declare-fun res!887970 () Bool)

(declare-fun e!761945 () Bool)

(assert (=> b!1338107 (=> (not res!887970) (not e!761945))))

(declare-datatypes ((V!54401 0))(
  ( (V!54402 (val!18561 Int)) )
))
(declare-datatypes ((ValueCell!17588 0))(
  ( (ValueCellFull!17588 (v!21204 V!54401)) (EmptyCell!17588) )
))
(declare-datatypes ((array!90781 0))(
  ( (array!90782 (arr!43848 (Array (_ BitVec 32) ValueCell!17588)) (size!44399 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90781)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90783 0))(
  ( (array!90784 (arr!43849 (Array (_ BitVec 32) (_ BitVec 64))) (size!44400 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90783)

(assert (=> b!1338107 (= res!887970 (and (= (size!44399 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44400 _keys!1590) (size!44399 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1338108 () Bool)

(declare-fun res!887969 () Bool)

(assert (=> b!1338108 (=> (not res!887969) (not e!761945))))

(declare-datatypes ((List!31258 0))(
  ( (Nil!31255) (Cons!31254 (h!32463 (_ BitVec 64)) (t!45595 List!31258)) )
))
(declare-fun arrayNoDuplicates!0 (array!90783 (_ BitVec 32) List!31258) Bool)

(assert (=> b!1338108 (= res!887969 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31255))))

(declare-fun b!1338109 () Bool)

(declare-fun e!761946 () Bool)

(declare-fun tp_is_empty!36973 () Bool)

(assert (=> b!1338109 (= e!761946 tp_is_empty!36973)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun b!1338110 () Bool)

(declare-fun minValue!1262 () V!54401)

(declare-fun zeroValue!1262 () V!54401)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!24092 0))(
  ( (tuple2!24093 (_1!12056 (_ BitVec 64)) (_2!12056 V!54401)) )
))
(declare-datatypes ((List!31259 0))(
  ( (Nil!31256) (Cons!31255 (h!32464 tuple2!24092) (t!45596 List!31259)) )
))
(declare-datatypes ((ListLongMap!21761 0))(
  ( (ListLongMap!21762 (toList!10896 List!31259)) )
))
(declare-fun contains!9003 (ListLongMap!21761 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5800 (array!90783 array!90781 (_ BitVec 32) (_ BitVec 32) V!54401 V!54401 (_ BitVec 32) Int) ListLongMap!21761)

(assert (=> b!1338110 (= e!761945 (not (contains!9003 (getCurrentListMap!5800 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) k!1153)))))

(declare-fun mapNonEmpty!57147 () Bool)

(declare-fun mapRes!57147 () Bool)

(declare-fun tp!108841 () Bool)

(assert (=> mapNonEmpty!57147 (= mapRes!57147 (and tp!108841 e!761946))))

(declare-fun mapRest!57147 () (Array (_ BitVec 32) ValueCell!17588))

(declare-fun mapValue!57147 () ValueCell!17588)

(declare-fun mapKey!57147 () (_ BitVec 32))

(assert (=> mapNonEmpty!57147 (= (arr!43848 _values!1320) (store mapRest!57147 mapKey!57147 mapValue!57147))))

(declare-fun b!1338111 () Bool)

(declare-fun res!887976 () Bool)

(assert (=> b!1338111 (=> (not res!887976) (not e!761945))))

(assert (=> b!1338111 (= res!887976 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44400 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1338112 () Bool)

(declare-fun e!761948 () Bool)

(declare-fun e!761949 () Bool)

(assert (=> b!1338112 (= e!761948 (and e!761949 mapRes!57147))))

(declare-fun condMapEmpty!57147 () Bool)

(declare-fun mapDefault!57147 () ValueCell!17588)

