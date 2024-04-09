; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112290 () Bool)

(assert start!112290)

(declare-fun b_free!30649 () Bool)

(declare-fun b_next!30649 () Bool)

(assert (=> start!112290 (= b_free!30649 (not b_next!30649))))

(declare-fun tp!107584 () Bool)

(declare-fun b_and!49363 () Bool)

(assert (=> start!112290 (= tp!107584 b_and!49363)))

(declare-fun b!1329792 () Bool)

(declare-fun res!882442 () Bool)

(declare-fun e!758043 () Bool)

(assert (=> b!1329792 (=> (not res!882442) (not e!758043))))

(declare-datatypes ((V!53849 0))(
  ( (V!53850 (val!18354 Int)) )
))
(declare-datatypes ((ValueCell!17381 0))(
  ( (ValueCellFull!17381 (v!20989 V!53849)) (EmptyCell!17381) )
))
(declare-datatypes ((array!89973 0))(
  ( (array!89974 (arr!43448 (Array (_ BitVec 32) ValueCell!17381)) (size!43999 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89973)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89975 0))(
  ( (array!89976 (arr!43449 (Array (_ BitVec 32) (_ BitVec 64))) (size!44000 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89975)

(assert (=> b!1329792 (= res!882442 (and (= (size!43999 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44000 _keys!1590) (size!43999 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329793 () Bool)

(declare-fun res!882444 () Bool)

(assert (=> b!1329793 (=> (not res!882444) (not e!758043))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun zeroValue!1262 () V!53849)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun minValue!1262 () V!53849)

(declare-datatypes ((tuple2!23776 0))(
  ( (tuple2!23777 (_1!11898 (_ BitVec 64)) (_2!11898 V!53849)) )
))
(declare-datatypes ((List!30967 0))(
  ( (Nil!30964) (Cons!30963 (h!32172 tuple2!23776) (t!45036 List!30967)) )
))
(declare-datatypes ((ListLongMap!21445 0))(
  ( (ListLongMap!21446 (toList!10738 List!30967)) )
))
(declare-fun contains!8838 (ListLongMap!21445 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5670 (array!89975 array!89973 (_ BitVec 32) (_ BitVec 32) V!53849 V!53849 (_ BitVec 32) Int) ListLongMap!21445)

(assert (=> b!1329793 (= res!882444 (contains!8838 (getCurrentListMap!5670 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1329794 () Bool)

(declare-fun res!882446 () Bool)

(assert (=> b!1329794 (=> (not res!882446) (not e!758043))))

(assert (=> b!1329794 (= res!882446 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44000 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1329795 () Bool)

(declare-fun res!882439 () Bool)

(assert (=> b!1329795 (=> (not res!882439) (not e!758043))))

(assert (=> b!1329795 (= res!882439 (not (= (select (arr!43449 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1329796 () Bool)

(declare-fun res!882440 () Bool)

(assert (=> b!1329796 (=> (not res!882440) (not e!758043))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89975 (_ BitVec 32)) Bool)

(assert (=> b!1329796 (= res!882440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!882441 () Bool)

(assert (=> start!112290 (=> (not res!882441) (not e!758043))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112290 (= res!882441 (validMask!0 mask!1998))))

(assert (=> start!112290 e!758043))

(declare-fun e!758042 () Bool)

(declare-fun array_inv!32731 (array!89973) Bool)

(assert (=> start!112290 (and (array_inv!32731 _values!1320) e!758042)))

(assert (=> start!112290 true))

(declare-fun array_inv!32732 (array!89975) Bool)

(assert (=> start!112290 (array_inv!32732 _keys!1590)))

(assert (=> start!112290 tp!107584))

(declare-fun tp_is_empty!36559 () Bool)

(assert (=> start!112290 tp_is_empty!36559))

(declare-fun mapIsEmpty!56512 () Bool)

(declare-fun mapRes!56512 () Bool)

(assert (=> mapIsEmpty!56512 mapRes!56512))

(declare-fun b!1329797 () Bool)

(declare-fun e!758041 () Bool)

(assert (=> b!1329797 (= e!758041 tp_is_empty!36559)))

(declare-fun b!1329798 () Bool)

(assert (=> b!1329798 (= e!758043 (not true))))

(declare-fun lt!590960 () ListLongMap!21445)

(assert (=> b!1329798 (contains!8838 lt!590960 k!1153)))

(declare-datatypes ((Unit!43693 0))(
  ( (Unit!43694) )
))
(declare-fun lt!590959 () Unit!43693)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!238 ((_ BitVec 64) (_ BitVec 64) V!53849 ListLongMap!21445) Unit!43693)

(assert (=> b!1329798 (= lt!590959 (lemmaInListMapAfterAddingDiffThenInBefore!238 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590960))))

(declare-fun +!4633 (ListLongMap!21445 tuple2!23776) ListLongMap!21445)

(declare-fun getCurrentListMapNoExtraKeys!6351 (array!89975 array!89973 (_ BitVec 32) (_ BitVec 32) V!53849 V!53849 (_ BitVec 32) Int) ListLongMap!21445)

(declare-fun get!21935 (ValueCell!17381 V!53849) V!53849)

(declare-fun dynLambda!3670 (Int (_ BitVec 64)) V!53849)

(assert (=> b!1329798 (= lt!590960 (+!4633 (getCurrentListMapNoExtraKeys!6351 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23777 (select (arr!43449 _keys!1590) from!1980) (get!21935 (select (arr!43448 _values!1320) from!1980) (dynLambda!3670 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329799 () Bool)

(declare-fun res!882445 () Bool)

(assert (=> b!1329799 (=> (not res!882445) (not e!758043))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329799 (= res!882445 (validKeyInArray!0 (select (arr!43449 _keys!1590) from!1980)))))

(declare-fun b!1329800 () Bool)

(declare-fun e!758044 () Bool)

(assert (=> b!1329800 (= e!758044 tp_is_empty!36559)))

(declare-fun mapNonEmpty!56512 () Bool)

(declare-fun tp!107585 () Bool)

(assert (=> mapNonEmpty!56512 (= mapRes!56512 (and tp!107585 e!758044))))

(declare-fun mapRest!56512 () (Array (_ BitVec 32) ValueCell!17381))

(declare-fun mapValue!56512 () ValueCell!17381)

(declare-fun mapKey!56512 () (_ BitVec 32))

(assert (=> mapNonEmpty!56512 (= (arr!43448 _values!1320) (store mapRest!56512 mapKey!56512 mapValue!56512))))

(declare-fun b!1329801 () Bool)

(declare-fun res!882438 () Bool)

(assert (=> b!1329801 (=> (not res!882438) (not e!758043))))

(assert (=> b!1329801 (= res!882438 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1329802 () Bool)

(declare-fun res!882443 () Bool)

(assert (=> b!1329802 (=> (not res!882443) (not e!758043))))

(declare-datatypes ((List!30968 0))(
  ( (Nil!30965) (Cons!30964 (h!32173 (_ BitVec 64)) (t!45037 List!30968)) )
))
(declare-fun arrayNoDuplicates!0 (array!89975 (_ BitVec 32) List!30968) Bool)

(assert (=> b!1329802 (= res!882443 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30965))))

(declare-fun b!1329803 () Bool)

(assert (=> b!1329803 (= e!758042 (and e!758041 mapRes!56512))))

(declare-fun condMapEmpty!56512 () Bool)

(declare-fun mapDefault!56512 () ValueCell!17381)

