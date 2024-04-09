; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112296 () Bool)

(assert start!112296)

(declare-fun b_free!30655 () Bool)

(declare-fun b_next!30655 () Bool)

(assert (=> start!112296 (= b_free!30655 (not b_next!30655))))

(declare-fun tp!107602 () Bool)

(declare-fun b_and!49375 () Bool)

(assert (=> start!112296 (= tp!107602 b_and!49375)))

(declare-fun mapIsEmpty!56521 () Bool)

(declare-fun mapRes!56521 () Bool)

(assert (=> mapIsEmpty!56521 mapRes!56521))

(declare-fun b!1329906 () Bool)

(declare-fun res!882522 () Bool)

(declare-fun e!758087 () Bool)

(assert (=> b!1329906 (=> (not res!882522) (not e!758087))))

(declare-datatypes ((array!89985 0))(
  ( (array!89986 (arr!43454 (Array (_ BitVec 32) (_ BitVec 64))) (size!44005 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89985)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89985 (_ BitVec 32)) Bool)

(assert (=> b!1329906 (= res!882522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329907 () Bool)

(declare-fun res!882519 () Bool)

(assert (=> b!1329907 (=> (not res!882519) (not e!758087))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1329907 (= res!882519 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44005 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!882527 () Bool)

(assert (=> start!112296 (=> (not res!882527) (not e!758087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112296 (= res!882527 (validMask!0 mask!1998))))

(assert (=> start!112296 e!758087))

(declare-datatypes ((V!53857 0))(
  ( (V!53858 (val!18357 Int)) )
))
(declare-datatypes ((ValueCell!17384 0))(
  ( (ValueCellFull!17384 (v!20992 V!53857)) (EmptyCell!17384) )
))
(declare-datatypes ((array!89987 0))(
  ( (array!89988 (arr!43455 (Array (_ BitVec 32) ValueCell!17384)) (size!44006 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89987)

(declare-fun e!758089 () Bool)

(declare-fun array_inv!32735 (array!89987) Bool)

(assert (=> start!112296 (and (array_inv!32735 _values!1320) e!758089)))

(assert (=> start!112296 true))

(declare-fun array_inv!32736 (array!89985) Bool)

(assert (=> start!112296 (array_inv!32736 _keys!1590)))

(assert (=> start!112296 tp!107602))

(declare-fun tp_is_empty!36565 () Bool)

(assert (=> start!112296 tp_is_empty!36565))

(declare-fun b!1329908 () Bool)

(declare-fun e!758088 () Bool)

(assert (=> b!1329908 (= e!758088 tp_is_empty!36565)))

(declare-fun b!1329909 () Bool)

(declare-fun res!882521 () Bool)

(assert (=> b!1329909 (=> (not res!882521) (not e!758087))))

(assert (=> b!1329909 (= res!882521 (not (= (select (arr!43454 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1329910 () Bool)

(declare-fun res!882520 () Bool)

(assert (=> b!1329910 (=> (not res!882520) (not e!758087))))

(declare-datatypes ((List!30972 0))(
  ( (Nil!30969) (Cons!30968 (h!32177 (_ BitVec 64)) (t!45047 List!30972)) )
))
(declare-fun arrayNoDuplicates!0 (array!89985 (_ BitVec 32) List!30972) Bool)

(assert (=> b!1329910 (= res!882520 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30969))))

(declare-fun b!1329911 () Bool)

(assert (=> b!1329911 (= e!758087 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!23782 0))(
  ( (tuple2!23783 (_1!11901 (_ BitVec 64)) (_2!11901 V!53857)) )
))
(declare-datatypes ((List!30973 0))(
  ( (Nil!30970) (Cons!30969 (h!32178 tuple2!23782) (t!45048 List!30973)) )
))
(declare-datatypes ((ListLongMap!21451 0))(
  ( (ListLongMap!21452 (toList!10741 List!30973)) )
))
(declare-fun lt!590977 () ListLongMap!21451)

(declare-fun contains!8841 (ListLongMap!21451 (_ BitVec 64)) Bool)

(assert (=> b!1329911 (contains!8841 lt!590977 k!1153)))

(declare-datatypes ((Unit!43699 0))(
  ( (Unit!43700) )
))
(declare-fun lt!590978 () Unit!43699)

(declare-fun minValue!1262 () V!53857)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!241 ((_ BitVec 64) (_ BitVec 64) V!53857 ListLongMap!21451) Unit!43699)

(assert (=> b!1329911 (= lt!590978 (lemmaInListMapAfterAddingDiffThenInBefore!241 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590977))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!53857)

(declare-fun +!4636 (ListLongMap!21451 tuple2!23782) ListLongMap!21451)

(declare-fun getCurrentListMapNoExtraKeys!6354 (array!89985 array!89987 (_ BitVec 32) (_ BitVec 32) V!53857 V!53857 (_ BitVec 32) Int) ListLongMap!21451)

(declare-fun get!21940 (ValueCell!17384 V!53857) V!53857)

(declare-fun dynLambda!3673 (Int (_ BitVec 64)) V!53857)

(assert (=> b!1329911 (= lt!590977 (+!4636 (getCurrentListMapNoExtraKeys!6354 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23783 (select (arr!43454 _keys!1590) from!1980) (get!21940 (select (arr!43455 _values!1320) from!1980) (dynLambda!3673 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329912 () Bool)

(declare-fun res!882525 () Bool)

(assert (=> b!1329912 (=> (not res!882525) (not e!758087))))

(declare-fun getCurrentListMap!5672 (array!89985 array!89987 (_ BitVec 32) (_ BitVec 32) V!53857 V!53857 (_ BitVec 32) Int) ListLongMap!21451)

(assert (=> b!1329912 (= res!882525 (contains!8841 (getCurrentListMap!5672 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1329913 () Bool)

(declare-fun res!882524 () Bool)

(assert (=> b!1329913 (=> (not res!882524) (not e!758087))))

(assert (=> b!1329913 (= res!882524 (and (= (size!44006 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44005 _keys!1590) (size!44006 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329914 () Bool)

(declare-fun res!882526 () Bool)

(assert (=> b!1329914 (=> (not res!882526) (not e!758087))))

(assert (=> b!1329914 (= res!882526 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329915 () Bool)

(declare-fun res!882523 () Bool)

(assert (=> b!1329915 (=> (not res!882523) (not e!758087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329915 (= res!882523 (validKeyInArray!0 (select (arr!43454 _keys!1590) from!1980)))))

(declare-fun b!1329916 () Bool)

(assert (=> b!1329916 (= e!758089 (and e!758088 mapRes!56521))))

(declare-fun condMapEmpty!56521 () Bool)

(declare-fun mapDefault!56521 () ValueCell!17384)

