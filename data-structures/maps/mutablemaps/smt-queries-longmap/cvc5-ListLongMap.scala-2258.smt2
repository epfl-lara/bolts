; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37018 () Bool)

(assert start!37018)

(declare-fun b_free!8137 () Bool)

(declare-fun b_next!8137 () Bool)

(assert (=> start!37018 (= b_free!8137 (not b_next!8137))))

(declare-fun tp!29126 () Bool)

(declare-fun b_and!15397 () Bool)

(assert (=> start!37018 (= tp!29126 b_and!15397)))

(declare-fun b!371516 () Bool)

(declare-fun e!226736 () Bool)

(declare-fun e!226737 () Bool)

(assert (=> b!371516 (= e!226736 e!226737)))

(declare-fun res!208955 () Bool)

(assert (=> b!371516 (=> (not res!208955) (not e!226737))))

(declare-datatypes ((array!21481 0))(
  ( (array!21482 (arr!10206 (Array (_ BitVec 32) (_ BitVec 64))) (size!10558 (_ BitVec 32))) )
))
(declare-fun lt!170355 () array!21481)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21481 (_ BitVec 32)) Bool)

(assert (=> b!371516 (= res!208955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170355 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21481)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371516 (= lt!170355 (array!21482 (store (arr!10206 _keys!658) i!548 k!778) (size!10558 _keys!658)))))

(declare-fun mapNonEmpty!14742 () Bool)

(declare-fun mapRes!14742 () Bool)

(declare-fun tp!29127 () Bool)

(declare-fun e!226735 () Bool)

(assert (=> mapNonEmpty!14742 (= mapRes!14742 (and tp!29127 e!226735))))

(declare-datatypes ((V!12819 0))(
  ( (V!12820 (val!4437 Int)) )
))
(declare-datatypes ((ValueCell!4049 0))(
  ( (ValueCellFull!4049 (v!6630 V!12819)) (EmptyCell!4049) )
))
(declare-datatypes ((array!21483 0))(
  ( (array!21484 (arr!10207 (Array (_ BitVec 32) ValueCell!4049)) (size!10559 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21483)

(declare-fun mapKey!14742 () (_ BitVec 32))

(declare-fun mapRest!14742 () (Array (_ BitVec 32) ValueCell!4049))

(declare-fun mapValue!14742 () ValueCell!4049)

(assert (=> mapNonEmpty!14742 (= (arr!10207 _values!506) (store mapRest!14742 mapKey!14742 mapValue!14742))))

(declare-fun b!371517 () Bool)

(assert (=> b!371517 (= e!226737 (not true))))

(declare-datatypes ((tuple2!5860 0))(
  ( (tuple2!5861 (_1!2940 (_ BitVec 64)) (_2!2940 V!12819)) )
))
(declare-datatypes ((List!5732 0))(
  ( (Nil!5729) (Cons!5728 (h!6584 tuple2!5860) (t!10890 List!5732)) )
))
(declare-datatypes ((ListLongMap!4787 0))(
  ( (ListLongMap!4788 (toList!2409 List!5732)) )
))
(declare-fun lt!170352 () ListLongMap!4787)

(declare-fun lt!170354 () ListLongMap!4787)

(assert (=> b!371517 (and (= lt!170352 lt!170354) (= lt!170354 lt!170352))))

(declare-fun v!373 () V!12819)

(declare-fun lt!170353 () ListLongMap!4787)

(declare-fun +!750 (ListLongMap!4787 tuple2!5860) ListLongMap!4787)

(assert (=> b!371517 (= lt!170354 (+!750 lt!170353 (tuple2!5861 k!778 v!373)))))

(declare-datatypes ((Unit!11405 0))(
  ( (Unit!11406) )
))
(declare-fun lt!170356 () Unit!11405)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12819)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun minValue!472 () V!12819)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!10 (array!21481 array!21483 (_ BitVec 32) (_ BitVec 32) V!12819 V!12819 (_ BitVec 32) (_ BitVec 64) V!12819 (_ BitVec 32) Int) Unit!11405)

(assert (=> b!371517 (= lt!170356 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!10 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!677 (array!21481 array!21483 (_ BitVec 32) (_ BitVec 32) V!12819 V!12819 (_ BitVec 32) Int) ListLongMap!4787)

(assert (=> b!371517 (= lt!170352 (getCurrentListMapNoExtraKeys!677 lt!170355 (array!21484 (store (arr!10207 _values!506) i!548 (ValueCellFull!4049 v!373)) (size!10559 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371517 (= lt!170353 (getCurrentListMapNoExtraKeys!677 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371518 () Bool)

(declare-fun tp_is_empty!8785 () Bool)

(assert (=> b!371518 (= e!226735 tp_is_empty!8785)))

(declare-fun b!371519 () Bool)

(declare-fun res!208960 () Bool)

(assert (=> b!371519 (=> (not res!208960) (not e!226736))))

(assert (=> b!371519 (= res!208960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!371520 () Bool)

(declare-fun res!208962 () Bool)

(assert (=> b!371520 (=> (not res!208962) (not e!226736))))

(assert (=> b!371520 (= res!208962 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10558 _keys!658))))))

(declare-fun b!371521 () Bool)

(declare-fun res!208961 () Bool)

(assert (=> b!371521 (=> (not res!208961) (not e!226737))))

(declare-datatypes ((List!5733 0))(
  ( (Nil!5730) (Cons!5729 (h!6585 (_ BitVec 64)) (t!10891 List!5733)) )
))
(declare-fun arrayNoDuplicates!0 (array!21481 (_ BitVec 32) List!5733) Bool)

(assert (=> b!371521 (= res!208961 (arrayNoDuplicates!0 lt!170355 #b00000000000000000000000000000000 Nil!5730))))

(declare-fun b!371522 () Bool)

(declare-fun res!208957 () Bool)

(assert (=> b!371522 (=> (not res!208957) (not e!226736))))

(declare-fun arrayContainsKey!0 (array!21481 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371522 (= res!208957 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!371523 () Bool)

(declare-fun res!208958 () Bool)

(assert (=> b!371523 (=> (not res!208958) (not e!226736))))

(assert (=> b!371523 (= res!208958 (and (= (size!10559 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10558 _keys!658) (size!10559 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371524 () Bool)

(declare-fun res!208956 () Bool)

(assert (=> b!371524 (=> (not res!208956) (not e!226736))))

(assert (=> b!371524 (= res!208956 (or (= (select (arr!10206 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10206 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!371526 () Bool)

(declare-fun res!208959 () Bool)

(assert (=> b!371526 (=> (not res!208959) (not e!226736))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371526 (= res!208959 (validKeyInArray!0 k!778))))

(declare-fun b!371527 () Bool)

(declare-fun e!226740 () Bool)

(declare-fun e!226739 () Bool)

(assert (=> b!371527 (= e!226740 (and e!226739 mapRes!14742))))

(declare-fun condMapEmpty!14742 () Bool)

(declare-fun mapDefault!14742 () ValueCell!4049)

