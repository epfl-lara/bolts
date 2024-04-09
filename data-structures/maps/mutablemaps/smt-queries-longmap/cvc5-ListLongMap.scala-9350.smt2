; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111572 () Bool)

(assert start!111572)

(declare-fun b_free!30193 () Bool)

(declare-fun b_next!30193 () Bool)

(assert (=> start!111572 (= b_free!30193 (not b_next!30193))))

(declare-fun tp!106055 () Bool)

(declare-fun b_and!48555 () Bool)

(assert (=> start!111572 (= tp!106055 b_and!48555)))

(declare-fun b!1320494 () Bool)

(declare-fun res!876513 () Bool)

(declare-fun e!753261 () Bool)

(assert (=> b!1320494 (=> (not res!876513) (not e!753261))))

(declare-datatypes ((array!88921 0))(
  ( (array!88922 (arr!42930 (Array (_ BitVec 32) (_ BitVec 64))) (size!43481 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88921)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53121 0))(
  ( (V!53122 (val!18081 Int)) )
))
(declare-datatypes ((ValueCell!17108 0))(
  ( (ValueCellFull!17108 (v!20709 V!53121)) (EmptyCell!17108) )
))
(declare-datatypes ((array!88923 0))(
  ( (array!88924 (arr!42931 (Array (_ BitVec 32) ValueCell!17108)) (size!43482 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88923)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1320494 (= res!876513 (and (= (size!43482 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43481 _keys!1609) (size!43482 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320495 () Bool)

(declare-fun res!876516 () Bool)

(assert (=> b!1320495 (=> (not res!876516) (not e!753261))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320495 (= res!876516 (validKeyInArray!0 (select (arr!42930 _keys!1609) from!2000)))))

(declare-fun b!1320496 () Bool)

(assert (=> b!1320496 (= e!753261 (not true))))

(declare-datatypes ((tuple2!23446 0))(
  ( (tuple2!23447 (_1!11733 (_ BitVec 64)) (_2!11733 V!53121)) )
))
(declare-datatypes ((List!30628 0))(
  ( (Nil!30625) (Cons!30624 (h!31833 tuple2!23446) (t!44377 List!30628)) )
))
(declare-datatypes ((ListLongMap!21115 0))(
  ( (ListLongMap!21116 (toList!10573 List!30628)) )
))
(declare-fun lt!586939 () ListLongMap!21115)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8664 (ListLongMap!21115 (_ BitVec 64)) Bool)

(assert (=> b!1320496 (contains!8664 lt!586939 k!1164)))

(declare-datatypes ((Unit!43454 0))(
  ( (Unit!43455) )
))
(declare-fun lt!586936 () Unit!43454)

(declare-fun zeroValue!1279 () V!53121)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!142 ((_ BitVec 64) (_ BitVec 64) V!53121 ListLongMap!21115) Unit!43454)

(assert (=> b!1320496 (= lt!586936 (lemmaInListMapAfterAddingDiffThenInBefore!142 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586939))))

(declare-fun lt!586937 () ListLongMap!21115)

(assert (=> b!1320496 (contains!8664 lt!586937 k!1164)))

(declare-fun lt!586938 () Unit!43454)

(declare-fun minValue!1279 () V!53121)

(assert (=> b!1320496 (= lt!586938 (lemmaInListMapAfterAddingDiffThenInBefore!142 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586937))))

(declare-fun +!4527 (ListLongMap!21115 tuple2!23446) ListLongMap!21115)

(assert (=> b!1320496 (= lt!586937 (+!4527 lt!586939 (tuple2!23447 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6242 (array!88921 array!88923 (_ BitVec 32) (_ BitVec 32) V!53121 V!53121 (_ BitVec 32) Int) ListLongMap!21115)

(declare-fun get!21639 (ValueCell!17108 V!53121) V!53121)

(declare-fun dynLambda!3564 (Int (_ BitVec 64)) V!53121)

(assert (=> b!1320496 (= lt!586939 (+!4527 (getCurrentListMapNoExtraKeys!6242 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23447 (select (arr!42930 _keys!1609) from!2000) (get!21639 (select (arr!42931 _values!1337) from!2000) (dynLambda!3564 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320497 () Bool)

(declare-fun res!876519 () Bool)

(assert (=> b!1320497 (=> (not res!876519) (not e!753261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88921 (_ BitVec 32)) Bool)

(assert (=> b!1320497 (= res!876519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320498 () Bool)

(declare-fun res!876515 () Bool)

(assert (=> b!1320498 (=> (not res!876515) (not e!753261))))

(declare-datatypes ((List!30629 0))(
  ( (Nil!30626) (Cons!30625 (h!31834 (_ BitVec 64)) (t!44378 List!30629)) )
))
(declare-fun arrayNoDuplicates!0 (array!88921 (_ BitVec 32) List!30629) Bool)

(assert (=> b!1320498 (= res!876515 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30626))))

(declare-fun res!876518 () Bool)

(assert (=> start!111572 (=> (not res!876518) (not e!753261))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111572 (= res!876518 (validMask!0 mask!2019))))

(assert (=> start!111572 e!753261))

(declare-fun array_inv!32367 (array!88921) Bool)

(assert (=> start!111572 (array_inv!32367 _keys!1609)))

(assert (=> start!111572 true))

(declare-fun tp_is_empty!36013 () Bool)

(assert (=> start!111572 tp_is_empty!36013))

(declare-fun e!753260 () Bool)

(declare-fun array_inv!32368 (array!88923) Bool)

(assert (=> start!111572 (and (array_inv!32368 _values!1337) e!753260)))

(assert (=> start!111572 tp!106055))

(declare-fun mapIsEmpty!55667 () Bool)

(declare-fun mapRes!55667 () Bool)

(assert (=> mapIsEmpty!55667 mapRes!55667))

(declare-fun b!1320499 () Bool)

(declare-fun e!753259 () Bool)

(assert (=> b!1320499 (= e!753259 tp_is_empty!36013)))

(declare-fun b!1320500 () Bool)

(declare-fun res!876514 () Bool)

(assert (=> b!1320500 (=> (not res!876514) (not e!753261))))

(assert (=> b!1320500 (= res!876514 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43481 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320501 () Bool)

(declare-fun res!876517 () Bool)

(assert (=> b!1320501 (=> (not res!876517) (not e!753261))))

(assert (=> b!1320501 (= res!876517 (not (= (select (arr!42930 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1320502 () Bool)

(declare-fun e!753262 () Bool)

(assert (=> b!1320502 (= e!753262 tp_is_empty!36013)))

(declare-fun b!1320503 () Bool)

(declare-fun res!876520 () Bool)

(assert (=> b!1320503 (=> (not res!876520) (not e!753261))))

(declare-fun getCurrentListMap!5516 (array!88921 array!88923 (_ BitVec 32) (_ BitVec 32) V!53121 V!53121 (_ BitVec 32) Int) ListLongMap!21115)

(assert (=> b!1320503 (= res!876520 (contains!8664 (getCurrentListMap!5516 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapNonEmpty!55667 () Bool)

(declare-fun tp!106056 () Bool)

(assert (=> mapNonEmpty!55667 (= mapRes!55667 (and tp!106056 e!753262))))

(declare-fun mapValue!55667 () ValueCell!17108)

(declare-fun mapKey!55667 () (_ BitVec 32))

(declare-fun mapRest!55667 () (Array (_ BitVec 32) ValueCell!17108))

(assert (=> mapNonEmpty!55667 (= (arr!42931 _values!1337) (store mapRest!55667 mapKey!55667 mapValue!55667))))

(declare-fun b!1320504 () Bool)

(assert (=> b!1320504 (= e!753260 (and e!753259 mapRes!55667))))

(declare-fun condMapEmpty!55667 () Bool)

(declare-fun mapDefault!55667 () ValueCell!17108)

