; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112546 () Bool)

(assert start!112546)

(declare-fun b_free!30905 () Bool)

(declare-fun b_next!30905 () Bool)

(assert (=> start!112546 (= b_free!30905 (not b_next!30905))))

(declare-fun tp!108353 () Bool)

(declare-fun b_and!49821 () Bool)

(assert (=> start!112546 (= tp!108353 b_and!49821)))

(declare-fun b!1334465 () Bool)

(declare-fun res!885757 () Bool)

(declare-fun e!760043 () Bool)

(assert (=> b!1334465 (=> (not res!885757) (not e!760043))))

(declare-datatypes ((V!54189 0))(
  ( (V!54190 (val!18482 Int)) )
))
(declare-datatypes ((ValueCell!17509 0))(
  ( (ValueCellFull!17509 (v!21117 V!54189)) (EmptyCell!17509) )
))
(declare-datatypes ((array!90475 0))(
  ( (array!90476 (arr!43699 (Array (_ BitVec 32) ValueCell!17509)) (size!44250 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90475)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90477 0))(
  ( (array!90478 (arr!43700 (Array (_ BitVec 32) (_ BitVec 64))) (size!44251 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90477)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54189)

(declare-fun zeroValue!1262 () V!54189)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23990 0))(
  ( (tuple2!23991 (_1!12005 (_ BitVec 64)) (_2!12005 V!54189)) )
))
(declare-datatypes ((List!31160 0))(
  ( (Nil!31157) (Cons!31156 (h!32365 tuple2!23990) (t!45431 List!31160)) )
))
(declare-datatypes ((ListLongMap!21659 0))(
  ( (ListLongMap!21660 (toList!10845 List!31160)) )
))
(declare-fun contains!8945 (ListLongMap!21659 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5756 (array!90477 array!90475 (_ BitVec 32) (_ BitVec 32) V!54189 V!54189 (_ BitVec 32) Int) ListLongMap!21659)

(assert (=> b!1334465 (= res!885757 (contains!8945 (getCurrentListMap!5756 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapNonEmpty!56896 () Bool)

(declare-fun mapRes!56896 () Bool)

(declare-fun tp!108352 () Bool)

(declare-fun e!760042 () Bool)

(assert (=> mapNonEmpty!56896 (= mapRes!56896 (and tp!108352 e!760042))))

(declare-fun mapKey!56896 () (_ BitVec 32))

(declare-fun mapRest!56896 () (Array (_ BitVec 32) ValueCell!17509))

(declare-fun mapValue!56896 () ValueCell!17509)

(assert (=> mapNonEmpty!56896 (= (arr!43699 _values!1320) (store mapRest!56896 mapKey!56896 mapValue!56896))))

(declare-fun b!1334466 () Bool)

(declare-fun tp_is_empty!36815 () Bool)

(assert (=> b!1334466 (= e!760042 tp_is_empty!36815)))

(declare-fun b!1334467 () Bool)

(declare-fun e!760045 () Bool)

(assert (=> b!1334467 (= e!760045 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-fun lt!592294 () ListLongMap!21659)

(assert (=> b!1334467 (contains!8945 lt!592294 k!1153)))

(declare-fun lt!592293 () V!54189)

(declare-datatypes ((Unit!43829 0))(
  ( (Unit!43830) )
))
(declare-fun lt!592295 () Unit!43829)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!306 ((_ BitVec 64) (_ BitVec 64) V!54189 ListLongMap!21659) Unit!43829)

(assert (=> b!1334467 (= lt!592295 (lemmaInListMapAfterAddingDiffThenInBefore!306 k!1153 (select (arr!43700 _keys!1590) from!1980) lt!592293 lt!592294))))

(declare-fun b!1334468 () Bool)

(declare-fun res!885763 () Bool)

(assert (=> b!1334468 (=> (not res!885763) (not e!760045))))

(assert (=> b!1334468 (= res!885763 (not (= k!1153 (select (arr!43700 _keys!1590) from!1980))))))

(declare-fun b!1334469 () Bool)

(declare-fun res!885767 () Bool)

(assert (=> b!1334469 (=> (not res!885767) (not e!760043))))

(declare-datatypes ((List!31161 0))(
  ( (Nil!31158) (Cons!31157 (h!32366 (_ BitVec 64)) (t!45432 List!31161)) )
))
(declare-fun arrayNoDuplicates!0 (array!90477 (_ BitVec 32) List!31161) Bool)

(assert (=> b!1334469 (= res!885767 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31158))))

(declare-fun b!1334470 () Bool)

(declare-fun res!885764 () Bool)

(assert (=> b!1334470 (=> (not res!885764) (not e!760043))))

(assert (=> b!1334470 (= res!885764 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44251 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334471 () Bool)

(declare-fun res!885758 () Bool)

(assert (=> b!1334471 (=> (not res!885758) (not e!760043))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1334471 (= res!885758 (validKeyInArray!0 (select (arr!43700 _keys!1590) from!1980)))))

(declare-fun b!1334472 () Bool)

(declare-fun res!885766 () Bool)

(assert (=> b!1334472 (=> (not res!885766) (not e!760043))))

(assert (=> b!1334472 (= res!885766 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1334473 () Bool)

(declare-fun e!760041 () Bool)

(assert (=> b!1334473 (= e!760041 tp_is_empty!36815)))

(declare-fun b!1334474 () Bool)

(declare-fun res!885759 () Bool)

(assert (=> b!1334474 (=> (not res!885759) (not e!760043))))

(assert (=> b!1334474 (= res!885759 (not (= (select (arr!43700 _keys!1590) from!1980) k!1153)))))

(declare-fun res!885761 () Bool)

(assert (=> start!112546 (=> (not res!885761) (not e!760043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112546 (= res!885761 (validMask!0 mask!1998))))

(assert (=> start!112546 e!760043))

(declare-fun e!760044 () Bool)

(declare-fun array_inv!32891 (array!90475) Bool)

(assert (=> start!112546 (and (array_inv!32891 _values!1320) e!760044)))

(assert (=> start!112546 true))

(declare-fun array_inv!32892 (array!90477) Bool)

(assert (=> start!112546 (array_inv!32892 _keys!1590)))

(assert (=> start!112546 tp!108353))

(assert (=> start!112546 tp_is_empty!36815))

(declare-fun mapIsEmpty!56896 () Bool)

(assert (=> mapIsEmpty!56896 mapRes!56896))

(declare-fun b!1334475 () Bool)

(assert (=> b!1334475 (= e!760044 (and e!760041 mapRes!56896))))

(declare-fun condMapEmpty!56896 () Bool)

(declare-fun mapDefault!56896 () ValueCell!17509)

