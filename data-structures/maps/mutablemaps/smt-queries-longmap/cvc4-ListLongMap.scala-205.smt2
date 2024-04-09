; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3914 () Bool)

(assert start!3914)

(declare-fun b_free!821 () Bool)

(declare-fun b_next!821 () Bool)

(assert (=> start!3914 (= b_free!821 (not b_next!821))))

(declare-fun tp!3882 () Bool)

(declare-fun b_and!1633 () Bool)

(assert (=> start!3914 (= tp!3882 b_and!1633)))

(declare-fun b!27725 () Bool)

(declare-fun res!16425 () Bool)

(declare-fun e!18022 () Bool)

(assert (=> b!27725 (=> (not res!16425) (not e!18022))))

(declare-datatypes ((array!1579 0))(
  ( (array!1580 (arr!743 (Array (_ BitVec 32) (_ BitVec 64))) (size!844 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1579)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1579 (_ BitVec 32)) Bool)

(assert (=> b!27725 (= res!16425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!27726 () Bool)

(declare-fun res!16423 () Bool)

(assert (=> b!27726 (=> (not res!16423) (not e!18022))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!1391 0))(
  ( (V!1392 (val!614 Int)) )
))
(declare-datatypes ((ValueCell!388 0))(
  ( (ValueCellFull!388 (v!1703 V!1391)) (EmptyCell!388) )
))
(declare-datatypes ((array!1581 0))(
  ( (array!1582 (arr!744 (Array (_ BitVec 32) ValueCell!388)) (size!845 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1581)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun zeroValue!1443 () V!1391)

(declare-fun minValue!1443 () V!1391)

(declare-datatypes ((tuple2!1010 0))(
  ( (tuple2!1011 (_1!515 (_ BitVec 64)) (_2!515 V!1391)) )
))
(declare-datatypes ((List!626 0))(
  ( (Nil!623) (Cons!622 (h!1189 tuple2!1010) (t!3321 List!626)) )
))
(declare-datatypes ((ListLongMap!591 0))(
  ( (ListLongMap!592 (toList!311 List!626)) )
))
(declare-fun contains!248 (ListLongMap!591 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!139 (array!1579 array!1581 (_ BitVec 32) (_ BitVec 32) V!1391 V!1391 (_ BitVec 32) Int) ListLongMap!591)

(assert (=> b!27726 (= res!16423 (not (contains!248 (getCurrentListMap!139 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304)))))

(declare-fun b!27727 () Bool)

(assert (=> b!27727 (= e!18022 false)))

(declare-fun lt!10716 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1579 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!27727 (= lt!10716 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!27728 () Bool)

(declare-fun res!16420 () Bool)

(assert (=> b!27728 (=> (not res!16420) (not e!18022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!27728 (= res!16420 (validKeyInArray!0 k!1304))))

(declare-fun b!27729 () Bool)

(declare-fun res!16424 () Bool)

(assert (=> b!27729 (=> (not res!16424) (not e!18022))))

(declare-datatypes ((List!627 0))(
  ( (Nil!624) (Cons!623 (h!1190 (_ BitVec 64)) (t!3322 List!627)) )
))
(declare-fun arrayNoDuplicates!0 (array!1579 (_ BitVec 32) List!627) Bool)

(assert (=> b!27729 (= res!16424 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!624))))

(declare-fun b!27731 () Bool)

(declare-fun res!16422 () Bool)

(assert (=> b!27731 (=> (not res!16422) (not e!18022))))

(declare-fun arrayContainsKey!0 (array!1579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!27731 (= res!16422 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!27732 () Bool)

(declare-fun e!18023 () Bool)

(declare-fun tp_is_empty!1175 () Bool)

(assert (=> b!27732 (= e!18023 tp_is_empty!1175)))

(declare-fun mapNonEmpty!1291 () Bool)

(declare-fun mapRes!1291 () Bool)

(declare-fun tp!3883 () Bool)

(assert (=> mapNonEmpty!1291 (= mapRes!1291 (and tp!3883 e!18023))))

(declare-fun mapRest!1291 () (Array (_ BitVec 32) ValueCell!388))

(declare-fun mapValue!1291 () ValueCell!388)

(declare-fun mapKey!1291 () (_ BitVec 32))

(assert (=> mapNonEmpty!1291 (= (arr!744 _values!1501) (store mapRest!1291 mapKey!1291 mapValue!1291))))

(declare-fun b!27733 () Bool)

(declare-fun e!18025 () Bool)

(assert (=> b!27733 (= e!18025 tp_is_empty!1175)))

(declare-fun b!27734 () Bool)

(declare-fun res!16426 () Bool)

(assert (=> b!27734 (=> (not res!16426) (not e!18022))))

(assert (=> b!27734 (= res!16426 (and (= (size!845 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!844 _keys!1833) (size!845 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!1291 () Bool)

(assert (=> mapIsEmpty!1291 mapRes!1291))

(declare-fun b!27730 () Bool)

(declare-fun e!18024 () Bool)

(assert (=> b!27730 (= e!18024 (and e!18025 mapRes!1291))))

(declare-fun condMapEmpty!1291 () Bool)

(declare-fun mapDefault!1291 () ValueCell!388)

