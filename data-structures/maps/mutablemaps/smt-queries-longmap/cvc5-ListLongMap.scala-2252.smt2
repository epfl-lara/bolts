; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36982 () Bool)

(assert start!36982)

(declare-fun b_free!8101 () Bool)

(declare-fun b_next!8101 () Bool)

(assert (=> start!36982 (= b_free!8101 (not b_next!8101))))

(declare-fun tp!29019 () Bool)

(declare-fun b_and!15361 () Bool)

(assert (=> start!36982 (= tp!29019 b_and!15361)))

(declare-fun b!370814 () Bool)

(declare-fun res!208420 () Bool)

(declare-fun e!226415 () Bool)

(assert (=> b!370814 (=> (not res!208420) (not e!226415))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12771 0))(
  ( (V!12772 (val!4419 Int)) )
))
(declare-datatypes ((ValueCell!4031 0))(
  ( (ValueCellFull!4031 (v!6612 V!12771)) (EmptyCell!4031) )
))
(declare-datatypes ((array!21413 0))(
  ( (array!21414 (arr!10172 (Array (_ BitVec 32) ValueCell!4031)) (size!10524 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21413)

(declare-datatypes ((array!21415 0))(
  ( (array!21416 (arr!10173 (Array (_ BitVec 32) (_ BitVec 64))) (size!10525 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21415)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!370814 (= res!208420 (and (= (size!10524 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10525 _keys!658) (size!10524 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!370815 () Bool)

(declare-fun res!208424 () Bool)

(assert (=> b!370815 (=> (not res!208424) (not e!226415))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21415 (_ BitVec 32)) Bool)

(assert (=> b!370815 (= res!208424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!14688 () Bool)

(declare-fun mapRes!14688 () Bool)

(declare-fun tp!29018 () Bool)

(declare-fun e!226414 () Bool)

(assert (=> mapNonEmpty!14688 (= mapRes!14688 (and tp!29018 e!226414))))

(declare-fun mapRest!14688 () (Array (_ BitVec 32) ValueCell!4031))

(declare-fun mapValue!14688 () ValueCell!4031)

(declare-fun mapKey!14688 () (_ BitVec 32))

(assert (=> mapNonEmpty!14688 (= (arr!10172 _values!506) (store mapRest!14688 mapKey!14688 mapValue!14688))))

(declare-fun res!208419 () Bool)

(assert (=> start!36982 (=> (not res!208419) (not e!226415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36982 (= res!208419 (validMask!0 mask!970))))

(assert (=> start!36982 e!226415))

(declare-fun e!226411 () Bool)

(declare-fun array_inv!7512 (array!21413) Bool)

(assert (=> start!36982 (and (array_inv!7512 _values!506) e!226411)))

(assert (=> start!36982 tp!29019))

(assert (=> start!36982 true))

(declare-fun tp_is_empty!8749 () Bool)

(assert (=> start!36982 tp_is_empty!8749))

(declare-fun array_inv!7513 (array!21415) Bool)

(assert (=> start!36982 (array_inv!7513 _keys!658)))

(declare-fun b!370816 () Bool)

(declare-fun res!208417 () Bool)

(assert (=> b!370816 (=> (not res!208417) (not e!226415))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370816 (= res!208417 (validKeyInArray!0 k!778))))

(declare-fun b!370817 () Bool)

(declare-fun res!208416 () Bool)

(assert (=> b!370817 (=> (not res!208416) (not e!226415))))

(declare-datatypes ((List!5712 0))(
  ( (Nil!5709) (Cons!5708 (h!6564 (_ BitVec 64)) (t!10870 List!5712)) )
))
(declare-fun arrayNoDuplicates!0 (array!21415 (_ BitVec 32) List!5712) Bool)

(assert (=> b!370817 (= res!208416 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5709))))

(declare-fun b!370818 () Bool)

(declare-fun e!226413 () Bool)

(assert (=> b!370818 (= e!226415 e!226413)))

(declare-fun res!208418 () Bool)

(assert (=> b!370818 (=> (not res!208418) (not e!226413))))

(declare-fun lt!170082 () array!21415)

(assert (=> b!370818 (= res!208418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170082 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370818 (= lt!170082 (array!21416 (store (arr!10173 _keys!658) i!548 k!778) (size!10525 _keys!658)))))

(declare-fun b!370819 () Bool)

(declare-fun res!208421 () Bool)

(assert (=> b!370819 (=> (not res!208421) (not e!226415))))

(assert (=> b!370819 (= res!208421 (or (= (select (arr!10173 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10173 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!370820 () Bool)

(declare-fun res!208415 () Bool)

(assert (=> b!370820 (=> (not res!208415) (not e!226415))))

(declare-fun arrayContainsKey!0 (array!21415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370820 (= res!208415 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!370821 () Bool)

(declare-fun res!208423 () Bool)

(assert (=> b!370821 (=> (not res!208423) (not e!226415))))

(assert (=> b!370821 (= res!208423 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10525 _keys!658))))))

(declare-fun b!370822 () Bool)

(declare-fun e!226416 () Bool)

(assert (=> b!370822 (= e!226416 tp_is_empty!8749)))

(declare-fun b!370823 () Bool)

(assert (=> b!370823 (= e!226414 tp_is_empty!8749)))

(declare-fun b!370824 () Bool)

(assert (=> b!370824 (= e!226413 (not true))))

(declare-datatypes ((tuple2!5844 0))(
  ( (tuple2!5845 (_1!2932 (_ BitVec 64)) (_2!2932 V!12771)) )
))
(declare-datatypes ((List!5713 0))(
  ( (Nil!5710) (Cons!5709 (h!6565 tuple2!5844) (t!10871 List!5713)) )
))
(declare-datatypes ((ListLongMap!4771 0))(
  ( (ListLongMap!4772 (toList!2401 List!5713)) )
))
(declare-fun lt!170083 () ListLongMap!4771)

(declare-fun lt!170085 () ListLongMap!4771)

(assert (=> b!370824 (and (= lt!170083 lt!170085) (= lt!170085 lt!170083))))

(declare-fun v!373 () V!12771)

(declare-fun lt!170086 () ListLongMap!4771)

(declare-fun +!742 (ListLongMap!4771 tuple2!5844) ListLongMap!4771)

(assert (=> b!370824 (= lt!170085 (+!742 lt!170086 (tuple2!5845 k!778 v!373)))))

(declare-datatypes ((Unit!11389 0))(
  ( (Unit!11390) )
))
(declare-fun lt!170084 () Unit!11389)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12771)

(declare-fun minValue!472 () V!12771)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!2 (array!21415 array!21413 (_ BitVec 32) (_ BitVec 32) V!12771 V!12771 (_ BitVec 32) (_ BitVec 64) V!12771 (_ BitVec 32) Int) Unit!11389)

(assert (=> b!370824 (= lt!170084 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!2 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!669 (array!21415 array!21413 (_ BitVec 32) (_ BitVec 32) V!12771 V!12771 (_ BitVec 32) Int) ListLongMap!4771)

(assert (=> b!370824 (= lt!170083 (getCurrentListMapNoExtraKeys!669 lt!170082 (array!21414 (store (arr!10172 _values!506) i!548 (ValueCellFull!4031 v!373)) (size!10524 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!370824 (= lt!170086 (getCurrentListMapNoExtraKeys!669 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!370825 () Bool)

(declare-fun res!208422 () Bool)

(assert (=> b!370825 (=> (not res!208422) (not e!226413))))

(assert (=> b!370825 (= res!208422 (arrayNoDuplicates!0 lt!170082 #b00000000000000000000000000000000 Nil!5709))))

(declare-fun b!370826 () Bool)

(assert (=> b!370826 (= e!226411 (and e!226416 mapRes!14688))))

(declare-fun condMapEmpty!14688 () Bool)

(declare-fun mapDefault!14688 () ValueCell!4031)

