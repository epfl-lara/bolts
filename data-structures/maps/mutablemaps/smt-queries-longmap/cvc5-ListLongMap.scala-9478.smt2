; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112512 () Bool)

(assert start!112512)

(declare-fun b_free!30871 () Bool)

(declare-fun b_next!30871 () Bool)

(assert (=> start!112512 (= b_free!30871 (not b_next!30871))))

(declare-fun tp!108251 () Bool)

(declare-fun b_and!49753 () Bool)

(assert (=> start!112512 (= tp!108251 b_and!49753)))

(declare-fun b!1333717 () Bool)

(declare-fun e!759736 () Bool)

(declare-fun tp_is_empty!36781 () Bool)

(assert (=> b!1333717 (= e!759736 tp_is_empty!36781)))

(declare-fun b!1333718 () Bool)

(declare-fun res!885198 () Bool)

(declare-fun e!759735 () Bool)

(assert (=> b!1333718 (=> (not res!885198) (not e!759735))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90409 0))(
  ( (array!90410 (arr!43666 (Array (_ BitVec 32) (_ BitVec 64))) (size!44217 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90409)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1333718 (= res!885198 (not (= (select (arr!43666 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1333719 () Bool)

(declare-fun res!885204 () Bool)

(assert (=> b!1333719 (=> (not res!885204) (not e!759735))))

(declare-datatypes ((V!54145 0))(
  ( (V!54146 (val!18465 Int)) )
))
(declare-datatypes ((ValueCell!17492 0))(
  ( (ValueCellFull!17492 (v!21100 V!54145)) (EmptyCell!17492) )
))
(declare-datatypes ((array!90411 0))(
  ( (array!90412 (arr!43667 (Array (_ BitVec 32) ValueCell!17492)) (size!44218 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90411)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1333719 (= res!885204 (and (= (size!44218 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44217 _keys!1590) (size!44218 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333720 () Bool)

(declare-fun e!759739 () Bool)

(assert (=> b!1333720 (= e!759739 tp_is_empty!36781)))

(declare-fun b!1333721 () Bool)

(declare-fun e!759738 () Bool)

(assert (=> b!1333721 (= e!759738 (not true))))

(declare-datatypes ((tuple2!23960 0))(
  ( (tuple2!23961 (_1!11990 (_ BitVec 64)) (_2!11990 V!54145)) )
))
(declare-datatypes ((List!31135 0))(
  ( (Nil!31132) (Cons!31131 (h!32340 tuple2!23960) (t!45372 List!31135)) )
))
(declare-datatypes ((ListLongMap!21629 0))(
  ( (ListLongMap!21630 (toList!10830 List!31135)) )
))
(declare-fun lt!592141 () ListLongMap!21629)

(declare-fun contains!8930 (ListLongMap!21629 (_ BitVec 64)) Bool)

(assert (=> b!1333721 (contains!8930 lt!592141 k!1153)))

(declare-fun lt!592142 () V!54145)

(declare-datatypes ((Unit!43807 0))(
  ( (Unit!43808) )
))
(declare-fun lt!592140 () Unit!43807)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!295 ((_ BitVec 64) (_ BitVec 64) V!54145 ListLongMap!21629) Unit!43807)

(assert (=> b!1333721 (= lt!592140 (lemmaInListMapAfterAddingDiffThenInBefore!295 k!1153 (select (arr!43666 _keys!1590) from!1980) lt!592142 lt!592141))))

(declare-fun b!1333722 () Bool)

(declare-fun res!885200 () Bool)

(assert (=> b!1333722 (=> (not res!885200) (not e!759735))))

(declare-datatypes ((List!31136 0))(
  ( (Nil!31133) (Cons!31132 (h!32341 (_ BitVec 64)) (t!45373 List!31136)) )
))
(declare-fun arrayNoDuplicates!0 (array!90409 (_ BitVec 32) List!31136) Bool)

(assert (=> b!1333722 (= res!885200 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31133))))

(declare-fun b!1333723 () Bool)

(declare-fun res!885196 () Bool)

(assert (=> b!1333723 (=> (not res!885196) (not e!759735))))

(assert (=> b!1333723 (= res!885196 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333724 () Bool)

(declare-fun res!885202 () Bool)

(assert (=> b!1333724 (=> (not res!885202) (not e!759735))))

(assert (=> b!1333724 (= res!885202 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44217 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333725 () Bool)

(declare-fun e!759737 () Bool)

(declare-fun mapRes!56845 () Bool)

(assert (=> b!1333725 (= e!759737 (and e!759736 mapRes!56845))))

(declare-fun condMapEmpty!56845 () Bool)

(declare-fun mapDefault!56845 () ValueCell!17492)

