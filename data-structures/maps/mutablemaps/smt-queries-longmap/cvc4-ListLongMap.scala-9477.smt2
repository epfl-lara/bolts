; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112510 () Bool)

(assert start!112510)

(declare-fun b_free!30869 () Bool)

(declare-fun b_next!30869 () Bool)

(assert (=> start!112510 (= b_free!30869 (not b_next!30869))))

(declare-fun tp!108244 () Bool)

(declare-fun b_and!49749 () Bool)

(assert (=> start!112510 (= tp!108244 b_and!49749)))

(declare-fun res!885168 () Bool)

(declare-fun e!759718 () Bool)

(assert (=> start!112510 (=> (not res!885168) (not e!759718))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112510 (= res!885168 (validMask!0 mask!1998))))

(assert (=> start!112510 e!759718))

(declare-datatypes ((V!54141 0))(
  ( (V!54142 (val!18464 Int)) )
))
(declare-datatypes ((ValueCell!17491 0))(
  ( (ValueCellFull!17491 (v!21099 V!54141)) (EmptyCell!17491) )
))
(declare-datatypes ((array!90405 0))(
  ( (array!90406 (arr!43664 (Array (_ BitVec 32) ValueCell!17491)) (size!44215 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90405)

(declare-fun e!759719 () Bool)

(declare-fun array_inv!32875 (array!90405) Bool)

(assert (=> start!112510 (and (array_inv!32875 _values!1320) e!759719)))

(assert (=> start!112510 true))

(declare-datatypes ((array!90407 0))(
  ( (array!90408 (arr!43665 (Array (_ BitVec 32) (_ BitVec 64))) (size!44216 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90407)

(declare-fun array_inv!32876 (array!90407) Bool)

(assert (=> start!112510 (array_inv!32876 _keys!1590)))

(assert (=> start!112510 tp!108244))

(declare-fun tp_is_empty!36779 () Bool)

(assert (=> start!112510 tp_is_empty!36779))

(declare-fun b!1333673 () Bool)

(declare-fun e!759716 () Bool)

(assert (=> b!1333673 (= e!759716 tp_is_empty!36779)))

(declare-fun b!1333674 () Bool)

(declare-fun e!759721 () Bool)

(assert (=> b!1333674 (= e!759721 tp_is_empty!36779)))

(declare-fun b!1333675 () Bool)

(declare-fun e!759720 () Bool)

(assert (=> b!1333675 (= e!759720 (not true))))

(declare-datatypes ((tuple2!23958 0))(
  ( (tuple2!23959 (_1!11989 (_ BitVec 64)) (_2!11989 V!54141)) )
))
(declare-datatypes ((List!31134 0))(
  ( (Nil!31131) (Cons!31130 (h!32339 tuple2!23958) (t!45369 List!31134)) )
))
(declare-datatypes ((ListLongMap!21627 0))(
  ( (ListLongMap!21628 (toList!10829 List!31134)) )
))
(declare-fun lt!592132 () ListLongMap!21627)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8929 (ListLongMap!21627 (_ BitVec 64)) Bool)

(assert (=> b!1333675 (contains!8929 lt!592132 k!1153)))

(declare-fun lt!592133 () V!54141)

(declare-datatypes ((Unit!43805 0))(
  ( (Unit!43806) )
))
(declare-fun lt!592131 () Unit!43805)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!294 ((_ BitVec 64) (_ BitVec 64) V!54141 ListLongMap!21627) Unit!43805)

(assert (=> b!1333675 (= lt!592131 (lemmaInListMapAfterAddingDiffThenInBefore!294 k!1153 (select (arr!43665 _keys!1590) from!1980) lt!592133 lt!592132))))

(declare-fun b!1333676 () Bool)

(declare-fun res!885167 () Bool)

(assert (=> b!1333676 (=> (not res!885167) (not e!759718))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1333676 (= res!885167 (and (= (size!44215 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44216 _keys!1590) (size!44215 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333677 () Bool)

(declare-fun res!885170 () Bool)

(assert (=> b!1333677 (=> (not res!885170) (not e!759718))))

(assert (=> b!1333677 (= res!885170 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44216 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333678 () Bool)

(declare-fun mapRes!56842 () Bool)

(assert (=> b!1333678 (= e!759719 (and e!759716 mapRes!56842))))

(declare-fun condMapEmpty!56842 () Bool)

(declare-fun mapDefault!56842 () ValueCell!17491)

