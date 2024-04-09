; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112482 () Bool)

(assert start!112482)

(declare-fun b_free!30841 () Bool)

(declare-fun b_next!30841 () Bool)

(assert (=> start!112482 (= b_free!30841 (not b_next!30841))))

(declare-fun tp!108160 () Bool)

(declare-fun b_and!49693 () Bool)

(assert (=> start!112482 (= tp!108160 b_and!49693)))

(declare-fun b!1333089 () Bool)

(declare-fun res!884736 () Bool)

(declare-fun e!759484 () Bool)

(assert (=> b!1333089 (=> (not res!884736) (not e!759484))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90349 0))(
  ( (array!90350 (arr!43636 (Array (_ BitVec 32) (_ BitVec 64))) (size!44187 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90349)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1333089 (= res!884736 (not (= (select (arr!43636 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1333090 () Bool)

(declare-fun res!884738 () Bool)

(assert (=> b!1333090 (=> (not res!884738) (not e!759484))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1333090 (= res!884738 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333091 () Bool)

(declare-fun res!884740 () Bool)

(assert (=> b!1333091 (=> (not res!884740) (not e!759484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333091 (= res!884740 (validKeyInArray!0 (select (arr!43636 _keys!1590) from!1980)))))

(declare-fun b!1333092 () Bool)

(assert (=> b!1333092 (= e!759484 false)))

(declare-datatypes ((V!54105 0))(
  ( (V!54106 (val!18450 Int)) )
))
(declare-datatypes ((ValueCell!17477 0))(
  ( (ValueCellFull!17477 (v!21085 V!54105)) (EmptyCell!17477) )
))
(declare-datatypes ((array!90351 0))(
  ( (array!90352 (arr!43637 (Array (_ BitVec 32) ValueCell!17477)) (size!44188 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90351)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun lt!592037 () Bool)

(declare-fun zeroValue!1262 () V!54105)

(declare-fun minValue!1262 () V!54105)

(declare-datatypes ((tuple2!23930 0))(
  ( (tuple2!23931 (_1!11975 (_ BitVec 64)) (_2!11975 V!54105)) )
))
(declare-datatypes ((List!31110 0))(
  ( (Nil!31107) (Cons!31106 (h!32315 tuple2!23930) (t!45317 List!31110)) )
))
(declare-datatypes ((ListLongMap!21599 0))(
  ( (ListLongMap!21600 (toList!10815 List!31110)) )
))
(declare-fun contains!8915 (ListLongMap!21599 (_ BitVec 64)) Bool)

(declare-fun +!4683 (ListLongMap!21599 tuple2!23930) ListLongMap!21599)

(declare-fun getCurrentListMapNoExtraKeys!6401 (array!90349 array!90351 (_ BitVec 32) (_ BitVec 32) V!54105 V!54105 (_ BitVec 32) Int) ListLongMap!21599)

(declare-fun get!22049 (ValueCell!17477 V!54105) V!54105)

(declare-fun dynLambda!3720 (Int (_ BitVec 64)) V!54105)

(assert (=> b!1333092 (= lt!592037 (contains!8915 (+!4683 (getCurrentListMapNoExtraKeys!6401 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23931 (select (arr!43636 _keys!1590) from!1980) (get!22049 (select (arr!43637 _values!1320) from!1980) (dynLambda!3720 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) k!1153))))

(declare-fun res!884735 () Bool)

(assert (=> start!112482 (=> (not res!884735) (not e!759484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112482 (= res!884735 (validMask!0 mask!1998))))

(assert (=> start!112482 e!759484))

(declare-fun e!759483 () Bool)

(declare-fun array_inv!32855 (array!90351) Bool)

(assert (=> start!112482 (and (array_inv!32855 _values!1320) e!759483)))

(assert (=> start!112482 true))

(declare-fun array_inv!32856 (array!90349) Bool)

(assert (=> start!112482 (array_inv!32856 _keys!1590)))

(assert (=> start!112482 tp!108160))

(declare-fun tp_is_empty!36751 () Bool)

(assert (=> start!112482 tp_is_empty!36751))

(declare-fun b!1333093 () Bool)

(declare-fun res!884733 () Bool)

(assert (=> b!1333093 (=> (not res!884733) (not e!759484))))

(assert (=> b!1333093 (= res!884733 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44187 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333094 () Bool)

(declare-fun res!884739 () Bool)

(assert (=> b!1333094 (=> (not res!884739) (not e!759484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90349 (_ BitVec 32)) Bool)

(assert (=> b!1333094 (= res!884739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333095 () Bool)

(declare-fun e!759480 () Bool)

(assert (=> b!1333095 (= e!759480 tp_is_empty!36751)))

(declare-fun b!1333096 () Bool)

(declare-fun e!759482 () Bool)

(assert (=> b!1333096 (= e!759482 tp_is_empty!36751)))

(declare-fun b!1333097 () Bool)

(declare-fun res!884737 () Bool)

(assert (=> b!1333097 (=> (not res!884737) (not e!759484))))

(declare-fun getCurrentListMap!5736 (array!90349 array!90351 (_ BitVec 32) (_ BitVec 32) V!54105 V!54105 (_ BitVec 32) Int) ListLongMap!21599)

(assert (=> b!1333097 (= res!884737 (contains!8915 (getCurrentListMap!5736 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapIsEmpty!56800 () Bool)

(declare-fun mapRes!56800 () Bool)

(assert (=> mapIsEmpty!56800 mapRes!56800))

(declare-fun b!1333098 () Bool)

(assert (=> b!1333098 (= e!759483 (and e!759480 mapRes!56800))))

(declare-fun condMapEmpty!56800 () Bool)

(declare-fun mapDefault!56800 () ValueCell!17477)

