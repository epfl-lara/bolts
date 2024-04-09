; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112838 () Bool)

(assert start!112838)

(declare-fun b_free!31055 () Bool)

(declare-fun b_next!31055 () Bool)

(assert (=> start!112838 (= b_free!31055 (not b_next!31055))))

(declare-fun tp!108814 () Bool)

(declare-fun b_and!50067 () Bool)

(assert (=> start!112838 (= tp!108814 b_and!50067)))

(declare-fun mapNonEmpty!57132 () Bool)

(declare-fun mapRes!57132 () Bool)

(declare-fun tp!108813 () Bool)

(declare-fun e!761760 () Bool)

(assert (=> mapNonEmpty!57132 (= mapRes!57132 (and tp!108813 e!761760))))

(declare-datatypes ((V!54389 0))(
  ( (V!54390 (val!18557 Int)) )
))
(declare-datatypes ((ValueCell!17584 0))(
  ( (ValueCellFull!17584 (v!21199 V!54389)) (EmptyCell!17584) )
))
(declare-datatypes ((array!90763 0))(
  ( (array!90764 (arr!43840 (Array (_ BitVec 32) ValueCell!17584)) (size!44391 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90763)

(declare-fun mapRest!57132 () (Array (_ BitVec 32) ValueCell!17584))

(declare-fun mapKey!57132 () (_ BitVec 32))

(declare-fun mapValue!57132 () ValueCell!17584)

(assert (=> mapNonEmpty!57132 (= (arr!43840 _values!1320) (store mapRest!57132 mapKey!57132 mapValue!57132))))

(declare-fun b!1337753 () Bool)

(declare-fun res!887778 () Bool)

(declare-fun e!761758 () Bool)

(assert (=> b!1337753 (=> (not res!887778) (not e!761758))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90765 0))(
  ( (array!90766 (arr!43841 (Array (_ BitVec 32) (_ BitVec 64))) (size!44392 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90765)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1337753 (= res!887778 (not (= (select (arr!43841 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1337754 () Bool)

(declare-fun res!887776 () Bool)

(assert (=> b!1337754 (=> (not res!887776) (not e!761758))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1337754 (= res!887776 (validKeyInArray!0 (select (arr!43841 _keys!1590) from!1980)))))

(declare-fun b!1337755 () Bool)

(declare-fun res!887771 () Bool)

(assert (=> b!1337755 (=> (not res!887771) (not e!761758))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54389)

(declare-fun zeroValue!1262 () V!54389)

(declare-datatypes ((tuple2!24084 0))(
  ( (tuple2!24085 (_1!12052 (_ BitVec 64)) (_2!12052 V!54389)) )
))
(declare-datatypes ((List!31251 0))(
  ( (Nil!31248) (Cons!31247 (h!32456 tuple2!24084) (t!45582 List!31251)) )
))
(declare-datatypes ((ListLongMap!21753 0))(
  ( (ListLongMap!21754 (toList!10892 List!31251)) )
))
(declare-fun contains!8997 (ListLongMap!21753 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5797 (array!90765 array!90763 (_ BitVec 32) (_ BitVec 32) V!54389 V!54389 (_ BitVec 32) Int) ListLongMap!21753)

(assert (=> b!1337755 (= res!887771 (contains!8997 (getCurrentListMap!5797 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1337756 () Bool)

(declare-fun res!887775 () Bool)

(assert (=> b!1337756 (=> (not res!887775) (not e!761758))))

(assert (=> b!1337756 (= res!887775 (and (= (size!44391 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44392 _keys!1590) (size!44391 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1337757 () Bool)

(declare-fun res!887773 () Bool)

(assert (=> b!1337757 (=> (not res!887773) (not e!761758))))

(assert (=> b!1337757 (= res!887773 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44392 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1337758 () Bool)

(declare-fun res!887777 () Bool)

(assert (=> b!1337758 (=> (not res!887777) (not e!761758))))

(assert (=> b!1337758 (= res!887777 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1337759 () Bool)

(assert (=> b!1337759 (= e!761758 (= k!1153 (select (arr!43841 _keys!1590) from!1980)))))

(declare-fun res!887774 () Bool)

(assert (=> start!112838 (=> (not res!887774) (not e!761758))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112838 (= res!887774 (validMask!0 mask!1998))))

(assert (=> start!112838 e!761758))

(declare-fun e!761762 () Bool)

(declare-fun array_inv!32989 (array!90763) Bool)

(assert (=> start!112838 (and (array_inv!32989 _values!1320) e!761762)))

(assert (=> start!112838 true))

(declare-fun array_inv!32990 (array!90765) Bool)

(assert (=> start!112838 (array_inv!32990 _keys!1590)))

(assert (=> start!112838 tp!108814))

(declare-fun tp_is_empty!36965 () Bool)

(assert (=> start!112838 tp_is_empty!36965))

(declare-fun b!1337760 () Bool)

(declare-fun e!761761 () Bool)

(assert (=> b!1337760 (= e!761761 tp_is_empty!36965)))

(declare-fun mapIsEmpty!57132 () Bool)

(assert (=> mapIsEmpty!57132 mapRes!57132))

(declare-fun b!1337761 () Bool)

(declare-fun res!887769 () Bool)

(assert (=> b!1337761 (=> (not res!887769) (not e!761758))))

(declare-datatypes ((List!31252 0))(
  ( (Nil!31249) (Cons!31248 (h!32457 (_ BitVec 64)) (t!45583 List!31252)) )
))
(declare-fun arrayNoDuplicates!0 (array!90765 (_ BitVec 32) List!31252) Bool)

(assert (=> b!1337761 (= res!887769 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31249))))

(declare-fun b!1337762 () Bool)

(assert (=> b!1337762 (= e!761760 tp_is_empty!36965)))

(declare-fun b!1337763 () Bool)

(declare-fun res!887770 () Bool)

(assert (=> b!1337763 (=> (not res!887770) (not e!761758))))

(declare-fun +!4721 (ListLongMap!21753 tuple2!24084) ListLongMap!21753)

(declare-fun getCurrentListMapNoExtraKeys!6444 (array!90765 array!90763 (_ BitVec 32) (_ BitVec 32) V!54389 V!54389 (_ BitVec 32) Int) ListLongMap!21753)

(declare-fun get!22165 (ValueCell!17584 V!54389) V!54389)

(declare-fun dynLambda!3758 (Int (_ BitVec 64)) V!54389)

(assert (=> b!1337763 (= res!887770 (contains!8997 (+!4721 (getCurrentListMapNoExtraKeys!6444 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24085 (select (arr!43841 _keys!1590) from!1980) (get!22165 (select (arr!43840 _values!1320) from!1980) (dynLambda!3758 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) k!1153))))

(declare-fun b!1337764 () Bool)

(assert (=> b!1337764 (= e!761762 (and e!761761 mapRes!57132))))

(declare-fun condMapEmpty!57132 () Bool)

(declare-fun mapDefault!57132 () ValueCell!17584)

