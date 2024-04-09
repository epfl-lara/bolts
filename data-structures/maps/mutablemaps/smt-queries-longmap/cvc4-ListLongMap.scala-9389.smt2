; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111810 () Bool)

(assert start!111810)

(declare-fun b_free!30431 () Bool)

(declare-fun b_next!30431 () Bool)

(assert (=> start!111810 (= b_free!30431 (not b_next!30431))))

(declare-fun tp!106770 () Bool)

(declare-fun b_and!48979 () Bool)

(assert (=> start!111810 (= tp!106770 b_and!48979)))

(declare-fun b!1324391 () Bool)

(declare-fun res!879155 () Bool)

(declare-fun e!755044 () Bool)

(assert (=> b!1324391 (=> (not res!879155) (not e!755044))))

(declare-datatypes ((array!89371 0))(
  ( (array!89372 (arr!43155 (Array (_ BitVec 32) (_ BitVec 64))) (size!43706 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89371)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1324391 (= res!879155 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43706 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324392 () Bool)

(declare-fun res!879156 () Bool)

(assert (=> b!1324392 (=> (not res!879156) (not e!755044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1324392 (= res!879156 (not (validKeyInArray!0 (select (arr!43155 _keys!1609) from!2000))))))

(declare-fun b!1324393 () Bool)

(declare-fun e!755047 () Bool)

(declare-fun tp_is_empty!36251 () Bool)

(assert (=> b!1324393 (= e!755047 tp_is_empty!36251)))

(declare-fun res!879160 () Bool)

(assert (=> start!111810 (=> (not res!879160) (not e!755044))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111810 (= res!879160 (validMask!0 mask!2019))))

(assert (=> start!111810 e!755044))

(declare-fun array_inv!32519 (array!89371) Bool)

(assert (=> start!111810 (array_inv!32519 _keys!1609)))

(assert (=> start!111810 true))

(assert (=> start!111810 tp_is_empty!36251))

(declare-datatypes ((V!53437 0))(
  ( (V!53438 (val!18200 Int)) )
))
(declare-datatypes ((ValueCell!17227 0))(
  ( (ValueCellFull!17227 (v!20828 V!53437)) (EmptyCell!17227) )
))
(declare-datatypes ((array!89373 0))(
  ( (array!89374 (arr!43156 (Array (_ BitVec 32) ValueCell!17227)) (size!43707 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89373)

(declare-fun e!755045 () Bool)

(declare-fun array_inv!32520 (array!89373) Bool)

(assert (=> start!111810 (and (array_inv!32520 _values!1337) e!755045)))

(assert (=> start!111810 tp!106770))

(declare-fun b!1324394 () Bool)

(declare-fun res!879157 () Bool)

(assert (=> b!1324394 (=> (not res!879157) (not e!755044))))

(assert (=> b!1324394 (= res!879157 (and (= (size!43707 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43706 _keys!1609) (size!43707 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324395 () Bool)

(declare-fun res!879159 () Bool)

(assert (=> b!1324395 (=> (not res!879159) (not e!755044))))

(assert (=> b!1324395 (= res!879159 (not (= (select (arr!43155 _keys!1609) from!2000) k!1164)))))

(declare-fun mapNonEmpty!56024 () Bool)

(declare-fun mapRes!56024 () Bool)

(declare-fun tp!106769 () Bool)

(assert (=> mapNonEmpty!56024 (= mapRes!56024 (and tp!106769 e!755047))))

(declare-fun mapKey!56024 () (_ BitVec 32))

(declare-fun mapValue!56024 () ValueCell!17227)

(declare-fun mapRest!56024 () (Array (_ BitVec 32) ValueCell!17227))

(assert (=> mapNonEmpty!56024 (= (arr!43156 _values!1337) (store mapRest!56024 mapKey!56024 mapValue!56024))))

(declare-fun b!1324396 () Bool)

(declare-fun res!879153 () Bool)

(assert (=> b!1324396 (=> (not res!879153) (not e!755044))))

(declare-fun zeroValue!1279 () V!53437)

(declare-fun minValue!1279 () V!53437)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23618 0))(
  ( (tuple2!23619 (_1!11819 (_ BitVec 64)) (_2!11819 V!53437)) )
))
(declare-datatypes ((List!30790 0))(
  ( (Nil!30787) (Cons!30786 (h!31995 tuple2!23618) (t!44723 List!30790)) )
))
(declare-datatypes ((ListLongMap!21287 0))(
  ( (ListLongMap!21288 (toList!10659 List!30790)) )
))
(declare-fun contains!8750 (ListLongMap!21287 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5596 (array!89371 array!89373 (_ BitVec 32) (_ BitVec 32) V!53437 V!53437 (_ BitVec 32) Int) ListLongMap!21287)

(assert (=> b!1324396 (= res!879153 (contains!8750 (getCurrentListMap!5596 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1324397 () Bool)

(declare-fun res!879154 () Bool)

(assert (=> b!1324397 (=> (not res!879154) (not e!755044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89371 (_ BitVec 32)) Bool)

(assert (=> b!1324397 (= res!879154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!56024 () Bool)

(assert (=> mapIsEmpty!56024 mapRes!56024))

(declare-fun b!1324398 () Bool)

(declare-fun res!879158 () Bool)

(assert (=> b!1324398 (=> (not res!879158) (not e!755044))))

(declare-datatypes ((List!30791 0))(
  ( (Nil!30788) (Cons!30787 (h!31996 (_ BitVec 64)) (t!44724 List!30791)) )
))
(declare-fun arrayNoDuplicates!0 (array!89371 (_ BitVec 32) List!30791) Bool)

(assert (=> b!1324398 (= res!879158 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30788))))

(declare-fun b!1324399 () Bool)

(declare-fun e!755043 () Bool)

(assert (=> b!1324399 (= e!755045 (and e!755043 mapRes!56024))))

(declare-fun condMapEmpty!56024 () Bool)

(declare-fun mapDefault!56024 () ValueCell!17227)

