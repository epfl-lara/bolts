; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112428 () Bool)

(assert start!112428)

(declare-fun b_free!30787 () Bool)

(declare-fun b_next!30787 () Bool)

(assert (=> start!112428 (= b_free!30787 (not b_next!30787))))

(declare-fun tp!107999 () Bool)

(declare-fun b_and!49639 () Bool)

(assert (=> start!112428 (= tp!107999 b_and!49639)))

(declare-fun b!1332406 () Bool)

(declare-fun res!884295 () Bool)

(declare-fun e!759077 () Bool)

(assert (=> b!1332406 (=> (not res!884295) (not e!759077))))

(declare-datatypes ((array!90243 0))(
  ( (array!90244 (arr!43583 (Array (_ BitVec 32) (_ BitVec 64))) (size!44134 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90243)

(declare-datatypes ((List!31071 0))(
  ( (Nil!31068) (Cons!31067 (h!32276 (_ BitVec 64)) (t!45276 List!31071)) )
))
(declare-fun arrayNoDuplicates!0 (array!90243 (_ BitVec 32) List!31071) Bool)

(assert (=> b!1332406 (= res!884295 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31068))))

(declare-fun b!1332407 () Bool)

(declare-fun e!759078 () Bool)

(declare-fun tp_is_empty!36697 () Bool)

(assert (=> b!1332407 (= e!759078 tp_is_empty!36697)))

(declare-fun b!1332408 () Bool)

(declare-fun res!884296 () Bool)

(assert (=> b!1332408 (=> (not res!884296) (not e!759077))))

(declare-datatypes ((V!54033 0))(
  ( (V!54034 (val!18423 Int)) )
))
(declare-datatypes ((ValueCell!17450 0))(
  ( (ValueCellFull!17450 (v!21058 V!54033)) (EmptyCell!17450) )
))
(declare-datatypes ((array!90245 0))(
  ( (array!90246 (arr!43584 (Array (_ BitVec 32) ValueCell!17450)) (size!44135 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90245)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1332408 (= res!884296 (and (= (size!44135 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44134 _keys!1590) (size!44135 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332409 () Bool)

(assert (=> b!1332409 (= e!759077 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54033)

(declare-fun zeroValue!1262 () V!54033)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!591965 () Bool)

(declare-fun k!1153 () (_ BitVec 64))

(declare-datatypes ((tuple2!23892 0))(
  ( (tuple2!23893 (_1!11956 (_ BitVec 64)) (_2!11956 V!54033)) )
))
(declare-datatypes ((List!31072 0))(
  ( (Nil!31069) (Cons!31068 (h!32277 tuple2!23892) (t!45277 List!31072)) )
))
(declare-datatypes ((ListLongMap!21561 0))(
  ( (ListLongMap!21562 (toList!10796 List!31072)) )
))
(declare-fun contains!8896 (ListLongMap!21561 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5717 (array!90243 array!90245 (_ BitVec 32) (_ BitVec 32) V!54033 V!54033 (_ BitVec 32) Int) ListLongMap!21561)

(assert (=> b!1332409 (= lt!591965 (contains!8896 (getCurrentListMap!5717 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapNonEmpty!56719 () Bool)

(declare-fun mapRes!56719 () Bool)

(declare-fun tp!107998 () Bool)

(assert (=> mapNonEmpty!56719 (= mapRes!56719 (and tp!107998 e!759078))))

(declare-fun mapValue!56719 () ValueCell!17450)

(declare-fun mapRest!56719 () (Array (_ BitVec 32) ValueCell!17450))

(declare-fun mapKey!56719 () (_ BitVec 32))

(assert (=> mapNonEmpty!56719 (= (arr!43584 _values!1320) (store mapRest!56719 mapKey!56719 mapValue!56719))))

(declare-fun b!1332410 () Bool)

(declare-fun res!884297 () Bool)

(assert (=> b!1332410 (=> (not res!884297) (not e!759077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90243 (_ BitVec 32)) Bool)

(assert (=> b!1332410 (= res!884297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!884294 () Bool)

(assert (=> start!112428 (=> (not res!884294) (not e!759077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112428 (= res!884294 (validMask!0 mask!1998))))

(assert (=> start!112428 e!759077))

(declare-fun e!759075 () Bool)

(declare-fun array_inv!32821 (array!90245) Bool)

(assert (=> start!112428 (and (array_inv!32821 _values!1320) e!759075)))

(assert (=> start!112428 true))

(declare-fun array_inv!32822 (array!90243) Bool)

(assert (=> start!112428 (array_inv!32822 _keys!1590)))

(assert (=> start!112428 tp!107999))

(assert (=> start!112428 tp_is_empty!36697))

(declare-fun b!1332411 () Bool)

(declare-fun e!759076 () Bool)

(assert (=> b!1332411 (= e!759076 tp_is_empty!36697)))

(declare-fun b!1332412 () Bool)

(declare-fun res!884293 () Bool)

(assert (=> b!1332412 (=> (not res!884293) (not e!759077))))

(assert (=> b!1332412 (= res!884293 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44134 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56719 () Bool)

(assert (=> mapIsEmpty!56719 mapRes!56719))

(declare-fun b!1332413 () Bool)

(assert (=> b!1332413 (= e!759075 (and e!759076 mapRes!56719))))

(declare-fun condMapEmpty!56719 () Bool)

(declare-fun mapDefault!56719 () ValueCell!17450)

