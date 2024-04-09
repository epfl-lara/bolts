; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112530 () Bool)

(assert start!112530)

(declare-fun b_free!30889 () Bool)

(declare-fun b_next!30889 () Bool)

(assert (=> start!112530 (= b_free!30889 (not b_next!30889))))

(declare-fun tp!108305 () Bool)

(declare-fun b_and!49789 () Bool)

(assert (=> start!112530 (= tp!108305 b_and!49789)))

(declare-fun b!1334113 () Bool)

(declare-fun e!759900 () Bool)

(declare-fun e!759899 () Bool)

(assert (=> b!1334113 (= e!759900 e!759899)))

(declare-fun res!885497 () Bool)

(assert (=> b!1334113 (=> (not res!885497) (not e!759899))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((V!54169 0))(
  ( (V!54170 (val!18474 Int)) )
))
(declare-fun lt!592221 () V!54169)

(declare-datatypes ((array!90443 0))(
  ( (array!90444 (arr!43683 (Array (_ BitVec 32) (_ BitVec 64))) (size!44234 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90443)

(declare-datatypes ((tuple2!23974 0))(
  ( (tuple2!23975 (_1!11997 (_ BitVec 64)) (_2!11997 V!54169)) )
))
(declare-datatypes ((List!31146 0))(
  ( (Nil!31143) (Cons!31142 (h!32351 tuple2!23974) (t!45401 List!31146)) )
))
(declare-datatypes ((ListLongMap!21643 0))(
  ( (ListLongMap!21644 (toList!10837 List!31146)) )
))
(declare-fun lt!592222 () ListLongMap!21643)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8937 (ListLongMap!21643 (_ BitVec 64)) Bool)

(declare-fun +!4698 (ListLongMap!21643 tuple2!23974) ListLongMap!21643)

(assert (=> b!1334113 (= res!885497 (contains!8937 (+!4698 lt!592222 (tuple2!23975 (select (arr!43683 _keys!1590) from!1980) lt!592221)) k!1153))))

(declare-datatypes ((ValueCell!17501 0))(
  ( (ValueCellFull!17501 (v!21109 V!54169)) (EmptyCell!17501) )
))
(declare-datatypes ((array!90445 0))(
  ( (array!90446 (arr!43684 (Array (_ BitVec 32) ValueCell!17501)) (size!44235 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90445)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun minValue!1262 () V!54169)

(declare-fun zeroValue!1262 () V!54169)

(declare-fun defaultEntry!1323 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6416 (array!90443 array!90445 (_ BitVec 32) (_ BitVec 32) V!54169 V!54169 (_ BitVec 32) Int) ListLongMap!21643)

(assert (=> b!1334113 (= lt!592222 (getCurrentListMapNoExtraKeys!6416 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22080 (ValueCell!17501 V!54169) V!54169)

(declare-fun dynLambda!3735 (Int (_ BitVec 64)) V!54169)

(assert (=> b!1334113 (= lt!592221 (get!22080 (select (arr!43684 _values!1320) from!1980) (dynLambda!3735 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1334114 () Bool)

(declare-fun e!759896 () Bool)

(declare-fun tp_is_empty!36799 () Bool)

(assert (=> b!1334114 (= e!759896 tp_is_empty!36799)))

(declare-fun b!1334115 () Bool)

(assert (=> b!1334115 (= e!759899 (not true))))

(assert (=> b!1334115 (contains!8937 lt!592222 k!1153)))

(declare-datatypes ((Unit!43817 0))(
  ( (Unit!43818) )
))
(declare-fun lt!592223 () Unit!43817)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!300 ((_ BitVec 64) (_ BitVec 64) V!54169 ListLongMap!21643) Unit!43817)

(assert (=> b!1334115 (= lt!592223 (lemmaInListMapAfterAddingDiffThenInBefore!300 k!1153 (select (arr!43683 _keys!1590) from!1980) lt!592221 lt!592222))))

(declare-fun b!1334116 () Bool)

(declare-fun res!885502 () Bool)

(assert (=> b!1334116 (=> (not res!885502) (not e!759900))))

(assert (=> b!1334116 (= res!885502 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44234 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1334118 () Bool)

(declare-fun res!885499 () Bool)

(assert (=> b!1334118 (=> (not res!885499) (not e!759900))))

(assert (=> b!1334118 (= res!885499 (and (= (size!44235 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44234 _keys!1590) (size!44235 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1334119 () Bool)

(declare-fun res!885500 () Bool)

(assert (=> b!1334119 (=> (not res!885500) (not e!759900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90443 (_ BitVec 32)) Bool)

(assert (=> b!1334119 (= res!885500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1334120 () Bool)

(declare-fun res!885503 () Bool)

(assert (=> b!1334120 (=> (not res!885503) (not e!759900))))

(declare-datatypes ((List!31147 0))(
  ( (Nil!31144) (Cons!31143 (h!32352 (_ BitVec 64)) (t!45402 List!31147)) )
))
(declare-fun arrayNoDuplicates!0 (array!90443 (_ BitVec 32) List!31147) Bool)

(assert (=> b!1334120 (= res!885503 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31144))))

(declare-fun b!1334121 () Bool)

(declare-fun res!885496 () Bool)

(assert (=> b!1334121 (=> (not res!885496) (not e!759900))))

(assert (=> b!1334121 (= res!885496 (not (= (select (arr!43683 _keys!1590) from!1980) k!1153)))))

(declare-fun mapIsEmpty!56872 () Bool)

(declare-fun mapRes!56872 () Bool)

(assert (=> mapIsEmpty!56872 mapRes!56872))

(declare-fun b!1334122 () Bool)

(declare-fun e!759897 () Bool)

(declare-fun e!759901 () Bool)

(assert (=> b!1334122 (= e!759897 (and e!759901 mapRes!56872))))

(declare-fun condMapEmpty!56872 () Bool)

(declare-fun mapDefault!56872 () ValueCell!17501)

