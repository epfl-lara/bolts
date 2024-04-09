; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112288 () Bool)

(assert start!112288)

(declare-fun b_free!30647 () Bool)

(declare-fun b_next!30647 () Bool)

(assert (=> start!112288 (= b_free!30647 (not b_next!30647))))

(declare-fun tp!107579 () Bool)

(declare-fun b_and!49359 () Bool)

(assert (=> start!112288 (= tp!107579 b_and!49359)))

(declare-fun b!1329754 () Bool)

(declare-fun res!882416 () Bool)

(declare-fun e!758027 () Bool)

(assert (=> b!1329754 (=> (not res!882416) (not e!758027))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!89969 0))(
  ( (array!89970 (arr!43446 (Array (_ BitVec 32) (_ BitVec 64))) (size!43997 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89969)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1329754 (= res!882416 (not (= (select (arr!43446 _keys!1590) from!1980) k!1153)))))

(declare-fun res!882418 () Bool)

(assert (=> start!112288 (=> (not res!882418) (not e!758027))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112288 (= res!882418 (validMask!0 mask!1998))))

(assert (=> start!112288 e!758027))

(declare-datatypes ((V!53845 0))(
  ( (V!53846 (val!18353 Int)) )
))
(declare-datatypes ((ValueCell!17380 0))(
  ( (ValueCellFull!17380 (v!20988 V!53845)) (EmptyCell!17380) )
))
(declare-datatypes ((array!89971 0))(
  ( (array!89972 (arr!43447 (Array (_ BitVec 32) ValueCell!17380)) (size!43998 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89971)

(declare-fun e!758026 () Bool)

(declare-fun array_inv!32729 (array!89971) Bool)

(assert (=> start!112288 (and (array_inv!32729 _values!1320) e!758026)))

(assert (=> start!112288 true))

(declare-fun array_inv!32730 (array!89969) Bool)

(assert (=> start!112288 (array_inv!32730 _keys!1590)))

(assert (=> start!112288 tp!107579))

(declare-fun tp_is_empty!36557 () Bool)

(assert (=> start!112288 tp_is_empty!36557))

(declare-fun mapNonEmpty!56509 () Bool)

(declare-fun mapRes!56509 () Bool)

(declare-fun tp!107578 () Bool)

(declare-fun e!758025 () Bool)

(assert (=> mapNonEmpty!56509 (= mapRes!56509 (and tp!107578 e!758025))))

(declare-fun mapRest!56509 () (Array (_ BitVec 32) ValueCell!17380))

(declare-fun mapValue!56509 () ValueCell!17380)

(declare-fun mapKey!56509 () (_ BitVec 32))

(assert (=> mapNonEmpty!56509 (= (arr!43447 _values!1320) (store mapRest!56509 mapKey!56509 mapValue!56509))))

(declare-fun b!1329755 () Bool)

(declare-fun res!882413 () Bool)

(assert (=> b!1329755 (=> (not res!882413) (not e!758027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329755 (= res!882413 (validKeyInArray!0 (select (arr!43446 _keys!1590) from!1980)))))

(declare-fun b!1329756 () Bool)

(declare-fun res!882412 () Bool)

(assert (=> b!1329756 (=> (not res!882412) (not e!758027))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1329756 (= res!882412 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43997 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329757 () Bool)

(declare-fun e!758028 () Bool)

(assert (=> b!1329757 (= e!758028 tp_is_empty!36557)))

(declare-fun b!1329758 () Bool)

(declare-fun res!882419 () Bool)

(assert (=> b!1329758 (=> (not res!882419) (not e!758027))))

(declare-datatypes ((List!30965 0))(
  ( (Nil!30962) (Cons!30961 (h!32170 (_ BitVec 64)) (t!45032 List!30965)) )
))
(declare-fun arrayNoDuplicates!0 (array!89969 (_ BitVec 32) List!30965) Bool)

(assert (=> b!1329758 (= res!882419 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30962))))

(declare-fun b!1329759 () Bool)

(declare-fun res!882411 () Bool)

(assert (=> b!1329759 (=> (not res!882411) (not e!758027))))

(assert (=> b!1329759 (= res!882411 (and (= (size!43998 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43997 _keys!1590) (size!43998 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329760 () Bool)

(assert (=> b!1329760 (= e!758025 tp_is_empty!36557)))

(declare-fun b!1329761 () Bool)

(declare-fun res!882414 () Bool)

(assert (=> b!1329761 (=> (not res!882414) (not e!758027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89969 (_ BitVec 32)) Bool)

(assert (=> b!1329761 (= res!882414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329762 () Bool)

(assert (=> b!1329762 (= e!758027 (not true))))

(declare-datatypes ((tuple2!23774 0))(
  ( (tuple2!23775 (_1!11897 (_ BitVec 64)) (_2!11897 V!53845)) )
))
(declare-datatypes ((List!30966 0))(
  ( (Nil!30963) (Cons!30962 (h!32171 tuple2!23774) (t!45033 List!30966)) )
))
(declare-datatypes ((ListLongMap!21443 0))(
  ( (ListLongMap!21444 (toList!10737 List!30966)) )
))
(declare-fun lt!590954 () ListLongMap!21443)

(declare-fun contains!8837 (ListLongMap!21443 (_ BitVec 64)) Bool)

(assert (=> b!1329762 (contains!8837 lt!590954 k!1153)))

(declare-fun minValue!1262 () V!53845)

(declare-datatypes ((Unit!43691 0))(
  ( (Unit!43692) )
))
(declare-fun lt!590953 () Unit!43691)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!237 ((_ BitVec 64) (_ BitVec 64) V!53845 ListLongMap!21443) Unit!43691)

(assert (=> b!1329762 (= lt!590953 (lemmaInListMapAfterAddingDiffThenInBefore!237 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590954))))

(declare-fun zeroValue!1262 () V!53845)

(declare-fun defaultEntry!1323 () Int)

(declare-fun +!4632 (ListLongMap!21443 tuple2!23774) ListLongMap!21443)

(declare-fun getCurrentListMapNoExtraKeys!6350 (array!89969 array!89971 (_ BitVec 32) (_ BitVec 32) V!53845 V!53845 (_ BitVec 32) Int) ListLongMap!21443)

(declare-fun get!21932 (ValueCell!17380 V!53845) V!53845)

(declare-fun dynLambda!3669 (Int (_ BitVec 64)) V!53845)

(assert (=> b!1329762 (= lt!590954 (+!4632 (getCurrentListMapNoExtraKeys!6350 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23775 (select (arr!43446 _keys!1590) from!1980) (get!21932 (select (arr!43447 _values!1320) from!1980) (dynLambda!3669 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329763 () Bool)

(declare-fun res!882415 () Bool)

(assert (=> b!1329763 (=> (not res!882415) (not e!758027))))

(declare-fun getCurrentListMap!5669 (array!89969 array!89971 (_ BitVec 32) (_ BitVec 32) V!53845 V!53845 (_ BitVec 32) Int) ListLongMap!21443)

(assert (=> b!1329763 (= res!882415 (contains!8837 (getCurrentListMap!5669 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapIsEmpty!56509 () Bool)

(assert (=> mapIsEmpty!56509 mapRes!56509))

(declare-fun b!1329764 () Bool)

(assert (=> b!1329764 (= e!758026 (and e!758028 mapRes!56509))))

(declare-fun condMapEmpty!56509 () Bool)

(declare-fun mapDefault!56509 () ValueCell!17380)

