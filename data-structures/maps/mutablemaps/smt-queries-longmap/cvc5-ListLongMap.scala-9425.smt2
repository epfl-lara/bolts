; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112194 () Bool)

(assert start!112194)

(declare-fun b_free!30553 () Bool)

(declare-fun b_next!30553 () Bool)

(assert (=> start!112194 (= b_free!30553 (not b_next!30553))))

(declare-fun tp!107296 () Bool)

(declare-fun b_and!49213 () Bool)

(assert (=> start!112194 (= tp!107296 b_and!49213)))

(declare-fun b!1328227 () Bool)

(declare-fun e!757320 () Bool)

(declare-fun tp_is_empty!36463 () Bool)

(assert (=> b!1328227 (= e!757320 tp_is_empty!36463)))

(declare-fun mapNonEmpty!56368 () Bool)

(declare-fun mapRes!56368 () Bool)

(declare-fun tp!107297 () Bool)

(declare-fun e!757322 () Bool)

(assert (=> mapNonEmpty!56368 (= mapRes!56368 (and tp!107297 e!757322))))

(declare-datatypes ((V!53721 0))(
  ( (V!53722 (val!18306 Int)) )
))
(declare-datatypes ((ValueCell!17333 0))(
  ( (ValueCellFull!17333 (v!20941 V!53721)) (EmptyCell!17333) )
))
(declare-datatypes ((array!89789 0))(
  ( (array!89790 (arr!43356 (Array (_ BitVec 32) ValueCell!17333)) (size!43907 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89789)

(declare-fun mapRest!56368 () (Array (_ BitVec 32) ValueCell!17333))

(declare-fun mapKey!56368 () (_ BitVec 32))

(declare-fun mapValue!56368 () ValueCell!17333)

(assert (=> mapNonEmpty!56368 (= (arr!43356 _values!1320) (store mapRest!56368 mapKey!56368 mapValue!56368))))

(declare-fun b!1328229 () Bool)

(declare-fun res!881360 () Bool)

(declare-fun e!757323 () Bool)

(assert (=> b!1328229 (=> (not res!881360) (not e!757323))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89791 0))(
  ( (array!89792 (arr!43357 (Array (_ BitVec 32) (_ BitVec 64))) (size!43908 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89791)

(assert (=> b!1328229 (= res!881360 (and (= (size!43907 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43908 _keys!1590) (size!43907 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1328230 () Bool)

(assert (=> b!1328230 (= e!757323 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun lt!590759 () Bool)

(declare-fun minValue!1262 () V!53721)

(declare-fun zeroValue!1262 () V!53721)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23712 0))(
  ( (tuple2!23713 (_1!11866 (_ BitVec 64)) (_2!11866 V!53721)) )
))
(declare-datatypes ((List!30898 0))(
  ( (Nil!30895) (Cons!30894 (h!32103 tuple2!23712) (t!44911 List!30898)) )
))
(declare-datatypes ((ListLongMap!21381 0))(
  ( (ListLongMap!21382 (toList!10706 List!30898)) )
))
(declare-fun contains!8806 (ListLongMap!21381 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5638 (array!89791 array!89789 (_ BitVec 32) (_ BitVec 32) V!53721 V!53721 (_ BitVec 32) Int) ListLongMap!21381)

(assert (=> b!1328230 (= lt!590759 (contains!8806 (getCurrentListMap!5638 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1328231 () Bool)

(declare-fun res!881363 () Bool)

(assert (=> b!1328231 (=> (not res!881363) (not e!757323))))

(assert (=> b!1328231 (= res!881363 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43908 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328232 () Bool)

(declare-fun res!881362 () Bool)

(assert (=> b!1328232 (=> (not res!881362) (not e!757323))))

(declare-datatypes ((List!30899 0))(
  ( (Nil!30896) (Cons!30895 (h!32104 (_ BitVec 64)) (t!44912 List!30899)) )
))
(declare-fun arrayNoDuplicates!0 (array!89791 (_ BitVec 32) List!30899) Bool)

(assert (=> b!1328232 (= res!881362 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30896))))

(declare-fun b!1328233 () Bool)

(declare-fun res!881359 () Bool)

(assert (=> b!1328233 (=> (not res!881359) (not e!757323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89791 (_ BitVec 32)) Bool)

(assert (=> b!1328233 (= res!881359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328228 () Bool)

(assert (=> b!1328228 (= e!757322 tp_is_empty!36463)))

(declare-fun res!881361 () Bool)

(assert (=> start!112194 (=> (not res!881361) (not e!757323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112194 (= res!881361 (validMask!0 mask!1998))))

(assert (=> start!112194 e!757323))

(declare-fun e!757324 () Bool)

(declare-fun array_inv!32665 (array!89789) Bool)

(assert (=> start!112194 (and (array_inv!32665 _values!1320) e!757324)))

(assert (=> start!112194 true))

(declare-fun array_inv!32666 (array!89791) Bool)

(assert (=> start!112194 (array_inv!32666 _keys!1590)))

(assert (=> start!112194 tp!107296))

(assert (=> start!112194 tp_is_empty!36463))

(declare-fun b!1328234 () Bool)

(assert (=> b!1328234 (= e!757324 (and e!757320 mapRes!56368))))

(declare-fun condMapEmpty!56368 () Bool)

(declare-fun mapDefault!56368 () ValueCell!17333)

