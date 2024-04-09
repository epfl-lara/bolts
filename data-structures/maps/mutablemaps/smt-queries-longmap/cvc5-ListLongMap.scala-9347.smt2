; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111554 () Bool)

(assert start!111554)

(declare-fun b_free!30175 () Bool)

(declare-fun b_next!30175 () Bool)

(assert (=> start!111554 (= b_free!30175 (not b_next!30175))))

(declare-fun tp!106001 () Bool)

(declare-fun b_and!48519 () Bool)

(assert (=> start!111554 (= tp!106001 b_and!48519)))

(declare-fun b!1320179 () Bool)

(declare-fun res!876302 () Bool)

(declare-fun e!753126 () Bool)

(assert (=> b!1320179 (=> (not res!876302) (not e!753126))))

(declare-datatypes ((array!88885 0))(
  ( (array!88886 (arr!42912 (Array (_ BitVec 32) (_ BitVec 64))) (size!43463 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88885)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53097 0))(
  ( (V!53098 (val!18072 Int)) )
))
(declare-fun zeroValue!1279 () V!53097)

(declare-datatypes ((ValueCell!17099 0))(
  ( (ValueCellFull!17099 (v!20700 V!53097)) (EmptyCell!17099) )
))
(declare-datatypes ((array!88887 0))(
  ( (array!88888 (arr!42913 (Array (_ BitVec 32) ValueCell!17099)) (size!43464 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88887)

(declare-fun minValue!1279 () V!53097)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23432 0))(
  ( (tuple2!23433 (_1!11726 (_ BitVec 64)) (_2!11726 V!53097)) )
))
(declare-datatypes ((List!30614 0))(
  ( (Nil!30611) (Cons!30610 (h!31819 tuple2!23432) (t!44345 List!30614)) )
))
(declare-datatypes ((ListLongMap!21101 0))(
  ( (ListLongMap!21102 (toList!10566 List!30614)) )
))
(declare-fun contains!8657 (ListLongMap!21101 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5509 (array!88885 array!88887 (_ BitVec 32) (_ BitVec 32) V!53097 V!53097 (_ BitVec 32) Int) ListLongMap!21101)

(assert (=> b!1320179 (= res!876302 (contains!8657 (getCurrentListMap!5509 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1320180 () Bool)

(declare-fun res!876297 () Bool)

(assert (=> b!1320180 (=> (not res!876297) (not e!753126))))

(assert (=> b!1320180 (= res!876297 (not (= (select (arr!42912 _keys!1609) from!2000) k!1164)))))

(declare-fun res!876301 () Bool)

(assert (=> start!111554 (=> (not res!876301) (not e!753126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111554 (= res!876301 (validMask!0 mask!2019))))

(assert (=> start!111554 e!753126))

(declare-fun array_inv!32351 (array!88885) Bool)

(assert (=> start!111554 (array_inv!32351 _keys!1609)))

(assert (=> start!111554 true))

(declare-fun tp_is_empty!35995 () Bool)

(assert (=> start!111554 tp_is_empty!35995))

(declare-fun e!753127 () Bool)

(declare-fun array_inv!32352 (array!88887) Bool)

(assert (=> start!111554 (and (array_inv!32352 _values!1337) e!753127)))

(assert (=> start!111554 tp!106001))

(declare-fun b!1320181 () Bool)

(declare-fun res!876299 () Bool)

(assert (=> b!1320181 (=> (not res!876299) (not e!753126))))

(declare-datatypes ((List!30615 0))(
  ( (Nil!30612) (Cons!30611 (h!31820 (_ BitVec 64)) (t!44346 List!30615)) )
))
(declare-fun arrayNoDuplicates!0 (array!88885 (_ BitVec 32) List!30615) Bool)

(assert (=> b!1320181 (= res!876299 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30612))))

(declare-fun b!1320182 () Bool)

(declare-fun e!753125 () Bool)

(assert (=> b!1320182 (= e!753125 tp_is_empty!35995)))

(declare-fun mapNonEmpty!55640 () Bool)

(declare-fun mapRes!55640 () Bool)

(declare-fun tp!106002 () Bool)

(declare-fun e!753123 () Bool)

(assert (=> mapNonEmpty!55640 (= mapRes!55640 (and tp!106002 e!753123))))

(declare-fun mapValue!55640 () ValueCell!17099)

(declare-fun mapKey!55640 () (_ BitVec 32))

(declare-fun mapRest!55640 () (Array (_ BitVec 32) ValueCell!17099))

(assert (=> mapNonEmpty!55640 (= (arr!42913 _values!1337) (store mapRest!55640 mapKey!55640 mapValue!55640))))

(declare-fun b!1320183 () Bool)

(declare-fun res!876300 () Bool)

(assert (=> b!1320183 (=> (not res!876300) (not e!753126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320183 (= res!876300 (validKeyInArray!0 (select (arr!42912 _keys!1609) from!2000)))))

(declare-fun b!1320184 () Bool)

(declare-fun res!876304 () Bool)

(assert (=> b!1320184 (=> (not res!876304) (not e!753126))))

(assert (=> b!1320184 (= res!876304 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43463 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320185 () Bool)

(assert (=> b!1320185 (= e!753127 (and e!753125 mapRes!55640))))

(declare-fun condMapEmpty!55640 () Bool)

(declare-fun mapDefault!55640 () ValueCell!17099)

