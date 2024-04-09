; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112446 () Bool)

(assert start!112446)

(declare-fun b_free!30805 () Bool)

(declare-fun b_next!30805 () Bool)

(assert (=> start!112446 (= b_free!30805 (not b_next!30805))))

(declare-fun tp!108053 () Bool)

(declare-fun b_and!49657 () Bool)

(assert (=> start!112446 (= tp!108053 b_and!49657)))

(declare-fun b!1332622 () Bool)

(declare-fun e!759213 () Bool)

(declare-fun tp_is_empty!36715 () Bool)

(assert (=> b!1332622 (= e!759213 tp_is_empty!36715)))

(declare-fun b!1332623 () Bool)

(declare-fun res!884432 () Bool)

(declare-fun e!759211 () Bool)

(assert (=> b!1332623 (=> (not res!884432) (not e!759211))))

(declare-datatypes ((array!90277 0))(
  ( (array!90278 (arr!43600 (Array (_ BitVec 32) (_ BitVec 64))) (size!44151 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90277)

(declare-datatypes ((List!31084 0))(
  ( (Nil!31081) (Cons!31080 (h!32289 (_ BitVec 64)) (t!45289 List!31084)) )
))
(declare-fun arrayNoDuplicates!0 (array!90277 (_ BitVec 32) List!31084) Bool)

(assert (=> b!1332623 (= res!884432 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31081))))

(declare-fun mapIsEmpty!56746 () Bool)

(declare-fun mapRes!56746 () Bool)

(assert (=> mapIsEmpty!56746 mapRes!56746))

(declare-fun b!1332624 () Bool)

(assert (=> b!1332624 (= e!759211 false)))

(declare-datatypes ((V!54057 0))(
  ( (V!54058 (val!18432 Int)) )
))
(declare-datatypes ((ValueCell!17459 0))(
  ( (ValueCellFull!17459 (v!21067 V!54057)) (EmptyCell!17459) )
))
(declare-datatypes ((array!90279 0))(
  ( (array!90280 (arr!43601 (Array (_ BitVec 32) ValueCell!17459)) (size!44152 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90279)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun lt!591992 () Bool)

(declare-fun minValue!1262 () V!54057)

(declare-fun zeroValue!1262 () V!54057)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23906 0))(
  ( (tuple2!23907 (_1!11963 (_ BitVec 64)) (_2!11963 V!54057)) )
))
(declare-datatypes ((List!31085 0))(
  ( (Nil!31082) (Cons!31081 (h!32290 tuple2!23906) (t!45290 List!31085)) )
))
(declare-datatypes ((ListLongMap!21575 0))(
  ( (ListLongMap!21576 (toList!10803 List!31085)) )
))
(declare-fun contains!8903 (ListLongMap!21575 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5724 (array!90277 array!90279 (_ BitVec 32) (_ BitVec 32) V!54057 V!54057 (_ BitVec 32) Int) ListLongMap!21575)

(assert (=> b!1332624 (= lt!591992 (contains!8903 (getCurrentListMap!5724 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1332625 () Bool)

(declare-fun res!884431 () Bool)

(assert (=> b!1332625 (=> (not res!884431) (not e!759211))))

(assert (=> b!1332625 (= res!884431 (and (= (size!44152 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44151 _keys!1590) (size!44152 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332626 () Bool)

(declare-fun res!884430 () Bool)

(assert (=> b!1332626 (=> (not res!884430) (not e!759211))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90277 (_ BitVec 32)) Bool)

(assert (=> b!1332626 (= res!884430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332627 () Bool)

(declare-fun e!759212 () Bool)

(declare-fun e!759210 () Bool)

(assert (=> b!1332627 (= e!759212 (and e!759210 mapRes!56746))))

(declare-fun condMapEmpty!56746 () Bool)

(declare-fun mapDefault!56746 () ValueCell!17459)

