; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112578 () Bool)

(assert start!112578)

(declare-fun b_free!30937 () Bool)

(declare-fun b_next!30937 () Bool)

(assert (=> start!112578 (= b_free!30937 (not b_next!30937))))

(declare-fun tp!108449 () Bool)

(declare-fun b_and!49855 () Bool)

(assert (=> start!112578 (= tp!108449 b_and!49855)))

(declare-fun res!886006 () Bool)

(declare-fun e!760281 () Bool)

(assert (=> start!112578 (=> (not res!886006) (not e!760281))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112578 (= res!886006 (validMask!0 mask!1998))))

(assert (=> start!112578 e!760281))

(declare-datatypes ((V!54233 0))(
  ( (V!54234 (val!18498 Int)) )
))
(declare-datatypes ((ValueCell!17525 0))(
  ( (ValueCellFull!17525 (v!21133 V!54233)) (EmptyCell!17525) )
))
(declare-datatypes ((array!90533 0))(
  ( (array!90534 (arr!43728 (Array (_ BitVec 32) ValueCell!17525)) (size!44279 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90533)

(declare-fun e!760283 () Bool)

(declare-fun array_inv!32913 (array!90533) Bool)

(assert (=> start!112578 (and (array_inv!32913 _values!1320) e!760283)))

(assert (=> start!112578 true))

(declare-datatypes ((array!90535 0))(
  ( (array!90536 (arr!43729 (Array (_ BitVec 32) (_ BitVec 64))) (size!44280 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90535)

(declare-fun array_inv!32914 (array!90535) Bool)

(assert (=> start!112578 (array_inv!32914 _keys!1590)))

(assert (=> start!112578 tp!108449))

(declare-fun tp_is_empty!36847 () Bool)

(assert (=> start!112578 tp_is_empty!36847))

(declare-fun b!1334857 () Bool)

(declare-fun res!886003 () Bool)

(assert (=> b!1334857 (=> (not res!886003) (not e!760281))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1334857 (= res!886003 (and (= (size!44279 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44280 _keys!1590) (size!44279 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334858 () Bool)

(declare-fun res!886007 () Bool)

(assert (=> b!1334858 (=> (not res!886007) (not e!760281))))

(declare-datatypes ((List!31179 0))(
  ( (Nil!31176) (Cons!31175 (h!32384 (_ BitVec 64)) (t!45450 List!31179)) )
))
(declare-fun arrayNoDuplicates!0 (array!90535 (_ BitVec 32) List!31179) Bool)

(assert (=> b!1334858 (= res!886007 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31176))))

(declare-fun b!1334859 () Bool)

(declare-fun e!760285 () Bool)

(assert (=> b!1334859 (= e!760285 tp_is_empty!36847)))

(declare-fun b!1334860 () Bool)

(declare-fun res!886005 () Bool)

(assert (=> b!1334860 (=> (not res!886005) (not e!760281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90535 (_ BitVec 32)) Bool)

(assert (=> b!1334860 (= res!886005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334861 () Bool)

(declare-fun res!886004 () Bool)

(assert (=> b!1334861 (=> (not res!886004) (not e!760281))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1334861 (= res!886004 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44280 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56944 () Bool)

(declare-fun mapRes!56944 () Bool)

(assert (=> mapIsEmpty!56944 mapRes!56944))

(declare-fun b!1334862 () Bool)

(assert (=> b!1334862 (= e!760281 false)))

(declare-fun lt!592343 () Bool)

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54233)

(declare-fun zeroValue!1262 () V!54233)

(declare-datatypes ((tuple2!24008 0))(
  ( (tuple2!24009 (_1!12014 (_ BitVec 64)) (_2!12014 V!54233)) )
))
(declare-datatypes ((List!31180 0))(
  ( (Nil!31177) (Cons!31176 (h!32385 tuple2!24008) (t!45451 List!31180)) )
))
(declare-datatypes ((ListLongMap!21677 0))(
  ( (ListLongMap!21678 (toList!10854 List!31180)) )
))
(declare-fun contains!8954 (ListLongMap!21677 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5765 (array!90535 array!90533 (_ BitVec 32) (_ BitVec 32) V!54233 V!54233 (_ BitVec 32) Int) ListLongMap!21677)

(assert (=> b!1334862 (= lt!592343 (contains!8954 (getCurrentListMap!5765 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapNonEmpty!56944 () Bool)

(declare-fun tp!108448 () Bool)

(assert (=> mapNonEmpty!56944 (= mapRes!56944 (and tp!108448 e!760285))))

(declare-fun mapKey!56944 () (_ BitVec 32))

(declare-fun mapValue!56944 () ValueCell!17525)

(declare-fun mapRest!56944 () (Array (_ BitVec 32) ValueCell!17525))

(assert (=> mapNonEmpty!56944 (= (arr!43728 _values!1320) (store mapRest!56944 mapKey!56944 mapValue!56944))))

(declare-fun b!1334863 () Bool)

(declare-fun e!760284 () Bool)

(assert (=> b!1334863 (= e!760284 tp_is_empty!36847)))

(declare-fun b!1334864 () Bool)

(assert (=> b!1334864 (= e!760283 (and e!760284 mapRes!56944))))

(declare-fun condMapEmpty!56944 () Bool)

(declare-fun mapDefault!56944 () ValueCell!17525)

