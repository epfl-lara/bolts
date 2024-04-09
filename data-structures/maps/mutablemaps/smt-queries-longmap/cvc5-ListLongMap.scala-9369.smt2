; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111686 () Bool)

(assert start!111686)

(declare-fun b_free!30307 () Bool)

(declare-fun b_next!30307 () Bool)

(assert (=> start!111686 (= b_free!30307 (not b_next!30307))))

(declare-fun tp!106398 () Bool)

(declare-fun b_and!48783 () Bool)

(assert (=> start!111686 (= tp!106398 b_and!48783)))

(declare-fun mapIsEmpty!55838 () Bool)

(declare-fun mapRes!55838 () Bool)

(assert (=> mapIsEmpty!55838 mapRes!55838))

(declare-fun b!1322489 () Bool)

(declare-fun res!877884 () Bool)

(declare-fun e!754114 () Bool)

(assert (=> b!1322489 (=> (not res!877884) (not e!754114))))

(declare-datatypes ((array!89133 0))(
  ( (array!89134 (arr!43036 (Array (_ BitVec 32) (_ BitVec 64))) (size!43587 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89133)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53273 0))(
  ( (V!53274 (val!18138 Int)) )
))
(declare-fun zeroValue!1279 () V!53273)

(declare-fun minValue!1279 () V!53273)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17165 0))(
  ( (ValueCellFull!17165 (v!20766 V!53273)) (EmptyCell!17165) )
))
(declare-datatypes ((array!89135 0))(
  ( (array!89136 (arr!43037 (Array (_ BitVec 32) ValueCell!17165)) (size!43588 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89135)

(declare-datatypes ((tuple2!23532 0))(
  ( (tuple2!23533 (_1!11776 (_ BitVec 64)) (_2!11776 V!53273)) )
))
(declare-datatypes ((List!30706 0))(
  ( (Nil!30703) (Cons!30702 (h!31911 tuple2!23532) (t!44569 List!30706)) )
))
(declare-datatypes ((ListLongMap!21201 0))(
  ( (ListLongMap!21202 (toList!10616 List!30706)) )
))
(declare-fun contains!8707 (ListLongMap!21201 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5556 (array!89133 array!89135 (_ BitVec 32) (_ BitVec 32) V!53273 V!53273 (_ BitVec 32) Int) ListLongMap!21201)

(assert (=> b!1322489 (= res!877884 (contains!8707 (getCurrentListMap!5556 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapNonEmpty!55838 () Bool)

(declare-fun tp!106397 () Bool)

(declare-fun e!754113 () Bool)

(assert (=> mapNonEmpty!55838 (= mapRes!55838 (and tp!106397 e!754113))))

(declare-fun mapRest!55838 () (Array (_ BitVec 32) ValueCell!17165))

(declare-fun mapKey!55838 () (_ BitVec 32))

(declare-fun mapValue!55838 () ValueCell!17165)

(assert (=> mapNonEmpty!55838 (= (arr!43037 _values!1337) (store mapRest!55838 mapKey!55838 mapValue!55838))))

(declare-fun b!1322490 () Bool)

(declare-fun res!877887 () Bool)

(assert (=> b!1322490 (=> (not res!877887) (not e!754114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89133 (_ BitVec 32)) Bool)

(assert (=> b!1322490 (= res!877887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1322491 () Bool)

(declare-fun res!877883 () Bool)

(assert (=> b!1322491 (=> (not res!877883) (not e!754114))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322491 (= res!877883 (validKeyInArray!0 (select (arr!43036 _keys!1609) from!2000)))))

(declare-fun b!1322492 () Bool)

(declare-fun res!877886 () Bool)

(assert (=> b!1322492 (=> (not res!877886) (not e!754114))))

(assert (=> b!1322492 (= res!877886 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43587 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1322493 () Bool)

(declare-fun e!754115 () Bool)

(declare-fun tp_is_empty!36127 () Bool)

(assert (=> b!1322493 (= e!754115 tp_is_empty!36127)))

(declare-fun b!1322494 () Bool)

(declare-fun res!877885 () Bool)

(assert (=> b!1322494 (=> (not res!877885) (not e!754114))))

(declare-datatypes ((List!30707 0))(
  ( (Nil!30704) (Cons!30703 (h!31912 (_ BitVec 64)) (t!44570 List!30707)) )
))
(declare-fun arrayNoDuplicates!0 (array!89133 (_ BitVec 32) List!30707) Bool)

(assert (=> b!1322494 (= res!877885 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30704))))

(declare-fun res!877882 () Bool)

(assert (=> start!111686 (=> (not res!877882) (not e!754114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111686 (= res!877882 (validMask!0 mask!2019))))

(assert (=> start!111686 e!754114))

(declare-fun array_inv!32445 (array!89133) Bool)

(assert (=> start!111686 (array_inv!32445 _keys!1609)))

(assert (=> start!111686 true))

(assert (=> start!111686 tp_is_empty!36127))

(declare-fun e!754116 () Bool)

(declare-fun array_inv!32446 (array!89135) Bool)

(assert (=> start!111686 (and (array_inv!32446 _values!1337) e!754116)))

(assert (=> start!111686 tp!106398))

(declare-fun b!1322495 () Bool)

(assert (=> b!1322495 (= e!754116 (and e!754115 mapRes!55838))))

(declare-fun condMapEmpty!55838 () Bool)

(declare-fun mapDefault!55838 () ValueCell!17165)

