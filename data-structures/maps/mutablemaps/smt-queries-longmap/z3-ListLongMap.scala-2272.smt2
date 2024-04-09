; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37104 () Bool)

(assert start!37104)

(declare-fun b_free!8223 () Bool)

(declare-fun b_next!8223 () Bool)

(assert (=> start!37104 (= b_free!8223 (not b_next!8223))))

(declare-fun tp!29384 () Bool)

(declare-fun b_and!15483 () Bool)

(assert (=> start!37104 (= tp!29384 b_and!15483)))

(declare-fun b!373257 () Bool)

(declare-fun e!227571 () Bool)

(declare-fun e!227565 () Bool)

(declare-fun mapRes!14871 () Bool)

(assert (=> b!373257 (= e!227571 (and e!227565 mapRes!14871))))

(declare-fun condMapEmpty!14871 () Bool)

(declare-datatypes ((V!12933 0))(
  ( (V!12934 (val!4480 Int)) )
))
(declare-datatypes ((ValueCell!4092 0))(
  ( (ValueCellFull!4092 (v!6673 V!12933)) (EmptyCell!4092) )
))
(declare-datatypes ((array!21649 0))(
  ( (array!21650 (arr!10290 (Array (_ BitVec 32) ValueCell!4092)) (size!10642 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21649)

(declare-fun mapDefault!14871 () ValueCell!4092)

(assert (=> b!373257 (= condMapEmpty!14871 (= (arr!10290 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4092)) mapDefault!14871)))))

(declare-fun b!373258 () Bool)

(declare-fun res!210317 () Bool)

(declare-fun e!227567 () Bool)

(assert (=> b!373258 (=> (not res!210317) (not e!227567))))

(declare-datatypes ((array!21651 0))(
  ( (array!21652 (arr!10291 (Array (_ BitVec 32) (_ BitVec 64))) (size!10643 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21651)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21651 (_ BitVec 32)) Bool)

(assert (=> b!373258 (= res!210317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373259 () Bool)

(declare-fun res!210314 () Bool)

(assert (=> b!373259 (=> (not res!210314) (not e!227567))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!373259 (= res!210314 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10643 _keys!658))))))

(declare-fun mapNonEmpty!14871 () Bool)

(declare-fun tp!29385 () Bool)

(declare-fun e!227566 () Bool)

(assert (=> mapNonEmpty!14871 (= mapRes!14871 (and tp!29385 e!227566))))

(declare-fun mapValue!14871 () ValueCell!4092)

(declare-fun mapKey!14871 () (_ BitVec 32))

(declare-fun mapRest!14871 () (Array (_ BitVec 32) ValueCell!4092))

(assert (=> mapNonEmpty!14871 (= (arr!10290 _values!506) (store mapRest!14871 mapKey!14871 mapValue!14871))))

(declare-fun b!373260 () Bool)

(declare-fun e!227564 () Bool)

(declare-fun e!227569 () Bool)

(assert (=> b!373260 (= e!227564 (not e!227569))))

(declare-fun res!210315 () Bool)

(assert (=> b!373260 (=> res!210315 e!227569)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373260 (= res!210315 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!5924 0))(
  ( (tuple2!5925 (_1!2972 (_ BitVec 64)) (_2!2972 V!12933)) )
))
(declare-datatypes ((List!5800 0))(
  ( (Nil!5797) (Cons!5796 (h!6652 tuple2!5924) (t!10958 List!5800)) )
))
(declare-datatypes ((ListLongMap!4851 0))(
  ( (ListLongMap!4852 (toList!2441 List!5800)) )
))
(declare-fun lt!171458 () ListLongMap!4851)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12933)

(declare-fun minValue!472 () V!12933)

(declare-fun getCurrentListMap!1890 (array!21651 array!21649 (_ BitVec 32) (_ BitVec 32) V!12933 V!12933 (_ BitVec 32) Int) ListLongMap!4851)

(assert (=> b!373260 (= lt!171458 (getCurrentListMap!1890 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171453 () array!21649)

(declare-fun lt!171468 () ListLongMap!4851)

(declare-fun lt!171462 () array!21651)

(assert (=> b!373260 (= lt!171468 (getCurrentListMap!1890 lt!171462 lt!171453 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171467 () ListLongMap!4851)

(declare-fun lt!171463 () ListLongMap!4851)

(assert (=> b!373260 (and (= lt!171467 lt!171463) (= lt!171463 lt!171467))))

(declare-fun lt!171465 () ListLongMap!4851)

(declare-fun lt!171460 () tuple2!5924)

(declare-fun +!782 (ListLongMap!4851 tuple2!5924) ListLongMap!4851)

(assert (=> b!373260 (= lt!171463 (+!782 lt!171465 lt!171460))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!12933)

(assert (=> b!373260 (= lt!171460 (tuple2!5925 k0!778 v!373))))

(declare-datatypes ((Unit!11467 0))(
  ( (Unit!11468) )
))
(declare-fun lt!171455 () Unit!11467)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!41 (array!21651 array!21649 (_ BitVec 32) (_ BitVec 32) V!12933 V!12933 (_ BitVec 32) (_ BitVec 64) V!12933 (_ BitVec 32) Int) Unit!11467)

(assert (=> b!373260 (= lt!171455 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!41 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!708 (array!21651 array!21649 (_ BitVec 32) (_ BitVec 32) V!12933 V!12933 (_ BitVec 32) Int) ListLongMap!4851)

(assert (=> b!373260 (= lt!171467 (getCurrentListMapNoExtraKeys!708 lt!171462 lt!171453 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373260 (= lt!171453 (array!21650 (store (arr!10290 _values!506) i!548 (ValueCellFull!4092 v!373)) (size!10642 _values!506)))))

(assert (=> b!373260 (= lt!171465 (getCurrentListMapNoExtraKeys!708 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373261 () Bool)

(declare-fun res!210310 () Bool)

(assert (=> b!373261 (=> (not res!210310) (not e!227567))))

(declare-datatypes ((List!5801 0))(
  ( (Nil!5798) (Cons!5797 (h!6653 (_ BitVec 64)) (t!10959 List!5801)) )
))
(declare-fun arrayNoDuplicates!0 (array!21651 (_ BitVec 32) List!5801) Bool)

(assert (=> b!373261 (= res!210310 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5798))))

(declare-fun b!373262 () Bool)

(declare-fun res!210312 () Bool)

(assert (=> b!373262 (=> (not res!210312) (not e!227567))))

(assert (=> b!373262 (= res!210312 (or (= (select (arr!10291 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10291 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373263 () Bool)

(declare-fun res!210319 () Bool)

(assert (=> b!373263 (=> (not res!210319) (not e!227567))))

(assert (=> b!373263 (= res!210319 (and (= (size!10642 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10643 _keys!658) (size!10642 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373265 () Bool)

(declare-fun tp_is_empty!8871 () Bool)

(assert (=> b!373265 (= e!227566 tp_is_empty!8871)))

(declare-fun b!373266 () Bool)

(declare-fun res!210311 () Bool)

(assert (=> b!373266 (=> (not res!210311) (not e!227567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373266 (= res!210311 (validKeyInArray!0 k0!778))))

(declare-fun b!373267 () Bool)

(declare-fun e!227568 () Bool)

(assert (=> b!373267 (= e!227569 e!227568)))

(declare-fun res!210318 () Bool)

(assert (=> b!373267 (=> res!210318 e!227568)))

(assert (=> b!373267 (= res!210318 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!171454 () ListLongMap!4851)

(declare-fun lt!171459 () ListLongMap!4851)

(assert (=> b!373267 (= lt!171454 lt!171459)))

(declare-fun lt!171461 () ListLongMap!4851)

(assert (=> b!373267 (= lt!171459 (+!782 lt!171461 lt!171460))))

(declare-fun lt!171466 () Unit!11467)

(declare-fun addCommutativeForDiffKeys!212 (ListLongMap!4851 (_ BitVec 64) V!12933 (_ BitVec 64) V!12933) Unit!11467)

(assert (=> b!373267 (= lt!171466 (addCommutativeForDiffKeys!212 lt!171465 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!171469 () tuple2!5924)

(assert (=> b!373267 (= lt!171468 (+!782 lt!171454 lt!171469))))

(declare-fun lt!171457 () tuple2!5924)

(assert (=> b!373267 (= lt!171454 (+!782 lt!171463 lt!171457))))

(declare-fun lt!171464 () ListLongMap!4851)

(assert (=> b!373267 (= lt!171458 lt!171464)))

(assert (=> b!373267 (= lt!171464 (+!782 lt!171461 lt!171469))))

(assert (=> b!373267 (= lt!171461 (+!782 lt!171465 lt!171457))))

(assert (=> b!373267 (= lt!171468 (+!782 (+!782 lt!171467 lt!171457) lt!171469))))

(assert (=> b!373267 (= lt!171469 (tuple2!5925 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373267 (= lt!171457 (tuple2!5925 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373268 () Bool)

(assert (=> b!373268 (= e!227567 e!227564)))

(declare-fun res!210320 () Bool)

(assert (=> b!373268 (=> (not res!210320) (not e!227564))))

(assert (=> b!373268 (= res!210320 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!171462 mask!970))))

(assert (=> b!373268 (= lt!171462 (array!21652 (store (arr!10291 _keys!658) i!548 k0!778) (size!10643 _keys!658)))))

(declare-fun b!373269 () Bool)

(declare-fun res!210313 () Bool)

(assert (=> b!373269 (=> (not res!210313) (not e!227567))))

(declare-fun arrayContainsKey!0 (array!21651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373269 (= res!210313 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!373270 () Bool)

(assert (=> b!373270 (= e!227568 true)))

(assert (=> b!373270 (= (+!782 lt!171459 lt!171469) (+!782 lt!171464 lt!171460))))

(declare-fun lt!171456 () Unit!11467)

(assert (=> b!373270 (= lt!171456 (addCommutativeForDiffKeys!212 lt!171461 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373264 () Bool)

(declare-fun res!210316 () Bool)

(assert (=> b!373264 (=> (not res!210316) (not e!227564))))

(assert (=> b!373264 (= res!210316 (arrayNoDuplicates!0 lt!171462 #b00000000000000000000000000000000 Nil!5798))))

(declare-fun res!210309 () Bool)

(assert (=> start!37104 (=> (not res!210309) (not e!227567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37104 (= res!210309 (validMask!0 mask!970))))

(assert (=> start!37104 e!227567))

(declare-fun array_inv!7594 (array!21649) Bool)

(assert (=> start!37104 (and (array_inv!7594 _values!506) e!227571)))

(assert (=> start!37104 tp!29384))

(assert (=> start!37104 true))

(assert (=> start!37104 tp_is_empty!8871))

(declare-fun array_inv!7595 (array!21651) Bool)

(assert (=> start!37104 (array_inv!7595 _keys!658)))

(declare-fun b!373271 () Bool)

(assert (=> b!373271 (= e!227565 tp_is_empty!8871)))

(declare-fun mapIsEmpty!14871 () Bool)

(assert (=> mapIsEmpty!14871 mapRes!14871))

(assert (= (and start!37104 res!210309) b!373263))

(assert (= (and b!373263 res!210319) b!373258))

(assert (= (and b!373258 res!210317) b!373261))

(assert (= (and b!373261 res!210310) b!373259))

(assert (= (and b!373259 res!210314) b!373266))

(assert (= (and b!373266 res!210311) b!373262))

(assert (= (and b!373262 res!210312) b!373269))

(assert (= (and b!373269 res!210313) b!373268))

(assert (= (and b!373268 res!210320) b!373264))

(assert (= (and b!373264 res!210316) b!373260))

(assert (= (and b!373260 (not res!210315)) b!373267))

(assert (= (and b!373267 (not res!210318)) b!373270))

(assert (= (and b!373257 condMapEmpty!14871) mapIsEmpty!14871))

(assert (= (and b!373257 (not condMapEmpty!14871)) mapNonEmpty!14871))

(get-info :version)

(assert (= (and mapNonEmpty!14871 ((_ is ValueCellFull!4092) mapValue!14871)) b!373265))

(assert (= (and b!373257 ((_ is ValueCellFull!4092) mapDefault!14871)) b!373271))

(assert (= start!37104 b!373257))

(declare-fun m!369221 () Bool)

(assert (=> b!373262 m!369221))

(declare-fun m!369223 () Bool)

(assert (=> b!373261 m!369223))

(declare-fun m!369225 () Bool)

(assert (=> mapNonEmpty!14871 m!369225))

(declare-fun m!369227 () Bool)

(assert (=> b!373260 m!369227))

(declare-fun m!369229 () Bool)

(assert (=> b!373260 m!369229))

(declare-fun m!369231 () Bool)

(assert (=> b!373260 m!369231))

(declare-fun m!369233 () Bool)

(assert (=> b!373260 m!369233))

(declare-fun m!369235 () Bool)

(assert (=> b!373260 m!369235))

(declare-fun m!369237 () Bool)

(assert (=> b!373260 m!369237))

(declare-fun m!369239 () Bool)

(assert (=> b!373260 m!369239))

(declare-fun m!369241 () Bool)

(assert (=> start!37104 m!369241))

(declare-fun m!369243 () Bool)

(assert (=> start!37104 m!369243))

(declare-fun m!369245 () Bool)

(assert (=> start!37104 m!369245))

(declare-fun m!369247 () Bool)

(assert (=> b!373268 m!369247))

(declare-fun m!369249 () Bool)

(assert (=> b!373268 m!369249))

(declare-fun m!369251 () Bool)

(assert (=> b!373267 m!369251))

(declare-fun m!369253 () Bool)

(assert (=> b!373267 m!369253))

(declare-fun m!369255 () Bool)

(assert (=> b!373267 m!369255))

(declare-fun m!369257 () Bool)

(assert (=> b!373267 m!369257))

(declare-fun m!369259 () Bool)

(assert (=> b!373267 m!369259))

(assert (=> b!373267 m!369259))

(declare-fun m!369261 () Bool)

(assert (=> b!373267 m!369261))

(declare-fun m!369263 () Bool)

(assert (=> b!373267 m!369263))

(declare-fun m!369265 () Bool)

(assert (=> b!373267 m!369265))

(declare-fun m!369267 () Bool)

(assert (=> b!373264 m!369267))

(declare-fun m!369269 () Bool)

(assert (=> b!373269 m!369269))

(declare-fun m!369271 () Bool)

(assert (=> b!373266 m!369271))

(declare-fun m!369273 () Bool)

(assert (=> b!373258 m!369273))

(declare-fun m!369275 () Bool)

(assert (=> b!373270 m!369275))

(declare-fun m!369277 () Bool)

(assert (=> b!373270 m!369277))

(declare-fun m!369279 () Bool)

(assert (=> b!373270 m!369279))

(check-sat (not b!373269) (not b_next!8223) (not b!373258) (not b!373266) (not mapNonEmpty!14871) b_and!15483 (not b!373264) (not b!373261) (not b!373260) (not b!373268) (not b!373270) (not b!373267) tp_is_empty!8871 (not start!37104))
(check-sat b_and!15483 (not b_next!8223))
