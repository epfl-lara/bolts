; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37270 () Bool)

(assert start!37270)

(declare-fun b_free!8389 () Bool)

(declare-fun b_next!8389 () Bool)

(assert (=> start!37270 (= b_free!8389 (not b_next!8389))))

(declare-fun tp!29883 () Bool)

(declare-fun b_and!15649 () Bool)

(assert (=> start!37270 (= tp!29883 b_and!15649)))

(declare-fun b!377001 () Bool)

(declare-fun res!213314 () Bool)

(declare-fun e!229556 () Bool)

(assert (=> b!377001 (=> (not res!213314) (not e!229556))))

(declare-datatypes ((array!21973 0))(
  ( (array!21974 (arr!10452 (Array (_ BitVec 32) (_ BitVec 64))) (size!10804 (_ BitVec 32))) )
))
(declare-fun lt!175247 () array!21973)

(declare-datatypes ((List!5925 0))(
  ( (Nil!5922) (Cons!5921 (h!6777 (_ BitVec 64)) (t!11083 List!5925)) )
))
(declare-fun arrayNoDuplicates!0 (array!21973 (_ BitVec 32) List!5925) Bool)

(assert (=> b!377001 (= res!213314 (arrayNoDuplicates!0 lt!175247 #b00000000000000000000000000000000 Nil!5922))))

(declare-fun b!377003 () Bool)

(declare-fun res!213307 () Bool)

(declare-fun e!229559 () Bool)

(assert (=> b!377003 (=> (not res!213307) (not e!229559))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377003 (= res!213307 (validKeyInArray!0 k!778))))

(declare-fun b!377004 () Bool)

(declare-fun res!213308 () Bool)

(assert (=> b!377004 (=> (not res!213308) (not e!229559))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!21973)

(assert (=> b!377004 (= res!213308 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10804 _keys!658))))))

(declare-fun b!377005 () Bool)

(declare-fun res!213309 () Bool)

(assert (=> b!377005 (=> (not res!213309) (not e!229559))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21973 (_ BitVec 32)) Bool)

(assert (=> b!377005 (= res!213309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377002 () Bool)

(declare-fun res!213311 () Bool)

(assert (=> b!377002 (=> (not res!213311) (not e!229559))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13155 0))(
  ( (V!13156 (val!4563 Int)) )
))
(declare-datatypes ((ValueCell!4175 0))(
  ( (ValueCellFull!4175 (v!6756 V!13155)) (EmptyCell!4175) )
))
(declare-datatypes ((array!21975 0))(
  ( (array!21976 (arr!10453 (Array (_ BitVec 32) ValueCell!4175)) (size!10805 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21975)

(assert (=> b!377002 (= res!213311 (and (= (size!10805 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10804 _keys!658) (size!10805 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!213315 () Bool)

(assert (=> start!37270 (=> (not res!213315) (not e!229559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37270 (= res!213315 (validMask!0 mask!970))))

(assert (=> start!37270 e!229559))

(declare-fun e!229562 () Bool)

(declare-fun array_inv!7696 (array!21975) Bool)

(assert (=> start!37270 (and (array_inv!7696 _values!506) e!229562)))

(assert (=> start!37270 tp!29883))

(assert (=> start!37270 true))

(declare-fun tp_is_empty!9037 () Bool)

(assert (=> start!37270 tp_is_empty!9037))

(declare-fun array_inv!7697 (array!21973) Bool)

(assert (=> start!37270 (array_inv!7697 _keys!658)))

(declare-fun b!377006 () Bool)

(declare-fun res!213313 () Bool)

(assert (=> b!377006 (=> (not res!213313) (not e!229559))))

(declare-fun arrayContainsKey!0 (array!21973 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377006 (= res!213313 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15120 () Bool)

(declare-fun mapRes!15120 () Bool)

(assert (=> mapIsEmpty!15120 mapRes!15120))

(declare-fun b!377007 () Bool)

(declare-fun e!229560 () Bool)

(assert (=> b!377007 (= e!229560 true)))

(declare-datatypes ((tuple2!6056 0))(
  ( (tuple2!6057 (_1!3038 (_ BitVec 64)) (_2!3038 V!13155)) )
))
(declare-datatypes ((List!5926 0))(
  ( (Nil!5923) (Cons!5922 (h!6778 tuple2!6056) (t!11084 List!5926)) )
))
(declare-datatypes ((ListLongMap!4983 0))(
  ( (ListLongMap!4984 (toList!2507 List!5926)) )
))
(declare-fun lt!175250 () ListLongMap!4983)

(declare-fun lt!175256 () ListLongMap!4983)

(declare-fun lt!175249 () tuple2!6056)

(declare-fun +!848 (ListLongMap!4983 tuple2!6056) ListLongMap!4983)

(assert (=> b!377007 (= lt!175250 (+!848 lt!175256 lt!175249))))

(declare-fun v!373 () V!13155)

(declare-datatypes ((Unit!11597 0))(
  ( (Unit!11598) )
))
(declare-fun lt!175252 () Unit!11597)

(declare-fun zeroValue!472 () V!13155)

(declare-fun lt!175248 () ListLongMap!4983)

(declare-fun addCommutativeForDiffKeys!270 (ListLongMap!4983 (_ BitVec 64) V!13155 (_ BitVec 64) V!13155) Unit!11597)

(assert (=> b!377007 (= lt!175252 (addCommutativeForDiffKeys!270 lt!175248 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377008 () Bool)

(assert (=> b!377008 (= e!229559 e!229556)))

(declare-fun res!213306 () Bool)

(assert (=> b!377008 (=> (not res!213306) (not e!229556))))

(assert (=> b!377008 (= res!213306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175247 mask!970))))

(assert (=> b!377008 (= lt!175247 (array!21974 (store (arr!10452 _keys!658) i!548 k!778) (size!10804 _keys!658)))))

(declare-fun b!377009 () Bool)

(declare-fun e!229558 () Bool)

(assert (=> b!377009 (= e!229558 e!229560)))

(declare-fun res!213310 () Bool)

(assert (=> b!377009 (=> res!213310 e!229560)))

(assert (=> b!377009 (= res!213310 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!175253 () ListLongMap!4983)

(assert (=> b!377009 (= lt!175253 lt!175250)))

(declare-fun lt!175258 () ListLongMap!4983)

(declare-fun lt!175246 () tuple2!6056)

(assert (=> b!377009 (= lt!175250 (+!848 lt!175258 lt!175246))))

(declare-fun lt!175251 () ListLongMap!4983)

(assert (=> b!377009 (= lt!175251 lt!175256)))

(assert (=> b!377009 (= lt!175256 (+!848 lt!175248 lt!175246))))

(declare-fun lt!175257 () ListLongMap!4983)

(assert (=> b!377009 (= lt!175253 (+!848 lt!175257 lt!175246))))

(assert (=> b!377009 (= lt!175246 (tuple2!6057 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377010 () Bool)

(declare-fun e!229557 () Bool)

(assert (=> b!377010 (= e!229557 tp_is_empty!9037)))

(declare-fun b!377011 () Bool)

(declare-fun e!229561 () Bool)

(assert (=> b!377011 (= e!229561 tp_is_empty!9037)))

(declare-fun b!377012 () Bool)

(declare-fun res!213317 () Bool)

(assert (=> b!377012 (=> (not res!213317) (not e!229559))))

(assert (=> b!377012 (= res!213317 (or (= (select (arr!10452 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10452 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377013 () Bool)

(declare-fun res!213316 () Bool)

(assert (=> b!377013 (=> (not res!213316) (not e!229559))))

(assert (=> b!377013 (= res!213316 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5922))))

(declare-fun b!377014 () Bool)

(assert (=> b!377014 (= e!229556 (not e!229558))))

(declare-fun res!213312 () Bool)

(assert (=> b!377014 (=> res!213312 e!229558)))

(assert (=> b!377014 (= res!213312 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13155)

(declare-fun getCurrentListMap!1944 (array!21973 array!21975 (_ BitVec 32) (_ BitVec 32) V!13155 V!13155 (_ BitVec 32) Int) ListLongMap!4983)

(assert (=> b!377014 (= lt!175251 (getCurrentListMap!1944 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175255 () array!21975)

(assert (=> b!377014 (= lt!175253 (getCurrentListMap!1944 lt!175247 lt!175255 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377014 (and (= lt!175257 lt!175258) (= lt!175258 lt!175257))))

(assert (=> b!377014 (= lt!175258 (+!848 lt!175248 lt!175249))))

(assert (=> b!377014 (= lt!175249 (tuple2!6057 k!778 v!373))))

(declare-fun lt!175254 () Unit!11597)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!95 (array!21973 array!21975 (_ BitVec 32) (_ BitVec 32) V!13155 V!13155 (_ BitVec 32) (_ BitVec 64) V!13155 (_ BitVec 32) Int) Unit!11597)

(assert (=> b!377014 (= lt!175254 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!95 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!762 (array!21973 array!21975 (_ BitVec 32) (_ BitVec 32) V!13155 V!13155 (_ BitVec 32) Int) ListLongMap!4983)

(assert (=> b!377014 (= lt!175257 (getCurrentListMapNoExtraKeys!762 lt!175247 lt!175255 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377014 (= lt!175255 (array!21976 (store (arr!10453 _values!506) i!548 (ValueCellFull!4175 v!373)) (size!10805 _values!506)))))

(assert (=> b!377014 (= lt!175248 (getCurrentListMapNoExtraKeys!762 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!15120 () Bool)

(declare-fun tp!29882 () Bool)

(assert (=> mapNonEmpty!15120 (= mapRes!15120 (and tp!29882 e!229561))))

(declare-fun mapValue!15120 () ValueCell!4175)

(declare-fun mapKey!15120 () (_ BitVec 32))

(declare-fun mapRest!15120 () (Array (_ BitVec 32) ValueCell!4175))

(assert (=> mapNonEmpty!15120 (= (arr!10453 _values!506) (store mapRest!15120 mapKey!15120 mapValue!15120))))

(declare-fun b!377015 () Bool)

(assert (=> b!377015 (= e!229562 (and e!229557 mapRes!15120))))

(declare-fun condMapEmpty!15120 () Bool)

(declare-fun mapDefault!15120 () ValueCell!4175)

