; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37902 () Bool)

(assert start!37902)

(declare-fun b_free!8931 () Bool)

(declare-fun b_next!8931 () Bool)

(assert (=> start!37902 (= b_free!8931 (not b_next!8931))))

(declare-fun tp!31553 () Bool)

(declare-fun b_and!16227 () Bool)

(assert (=> start!37902 (= tp!31553 b_and!16227)))

(declare-fun b!389353 () Bool)

(declare-fun e!235902 () Bool)

(declare-fun tp_is_empty!9603 () Bool)

(assert (=> b!389353 (= e!235902 tp_is_empty!9603)))

(declare-fun b!389354 () Bool)

(declare-fun e!235899 () Bool)

(declare-fun e!235898 () Bool)

(assert (=> b!389354 (= e!235899 e!235898)))

(declare-fun res!222775 () Bool)

(assert (=> b!389354 (=> (not res!222775) (not e!235898))))

(declare-datatypes ((array!23079 0))(
  ( (array!23080 (arr!11002 (Array (_ BitVec 32) (_ BitVec 64))) (size!11354 (_ BitVec 32))) )
))
(declare-fun lt!183156 () array!23079)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23079 (_ BitVec 32)) Bool)

(assert (=> b!389354 (= res!222775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183156 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!23079)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!389354 (= lt!183156 (array!23080 (store (arr!11002 _keys!658) i!548 k0!778) (size!11354 _keys!658)))))

(declare-fun b!389355 () Bool)

(declare-fun res!222782 () Bool)

(assert (=> b!389355 (=> (not res!222782) (not e!235899))))

(declare-fun arrayContainsKey!0 (array!23079 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!389355 (= res!222782 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!389356 () Bool)

(declare-fun res!222776 () Bool)

(assert (=> b!389356 (=> (not res!222776) (not e!235898))))

(declare-datatypes ((List!6346 0))(
  ( (Nil!6343) (Cons!6342 (h!7198 (_ BitVec 64)) (t!11510 List!6346)) )
))
(declare-fun arrayNoDuplicates!0 (array!23079 (_ BitVec 32) List!6346) Bool)

(assert (=> b!389356 (= res!222776 (arrayNoDuplicates!0 lt!183156 #b00000000000000000000000000000000 Nil!6343))))

(declare-fun b!389357 () Bool)

(declare-fun res!222780 () Bool)

(assert (=> b!389357 (=> (not res!222780) (not e!235899))))

(assert (=> b!389357 (= res!222780 (or (= (select (arr!11002 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11002 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15978 () Bool)

(declare-fun mapRes!15978 () Bool)

(assert (=> mapIsEmpty!15978 mapRes!15978))

(declare-fun b!389358 () Bool)

(declare-fun res!222778 () Bool)

(assert (=> b!389358 (=> (not res!222778) (not e!235899))))

(assert (=> b!389358 (= res!222778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!389360 () Bool)

(declare-fun res!222783 () Bool)

(assert (=> b!389360 (=> (not res!222783) (not e!235899))))

(declare-datatypes ((V!13909 0))(
  ( (V!13910 (val!4846 Int)) )
))
(declare-datatypes ((ValueCell!4458 0))(
  ( (ValueCellFull!4458 (v!7051 V!13909)) (EmptyCell!4458) )
))
(declare-datatypes ((array!23081 0))(
  ( (array!23082 (arr!11003 (Array (_ BitVec 32) ValueCell!4458)) (size!11355 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23081)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!389360 (= res!222783 (and (= (size!11355 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11354 _keys!658) (size!11355 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!389361 () Bool)

(declare-fun e!235900 () Bool)

(assert (=> b!389361 (= e!235900 (and e!235902 mapRes!15978))))

(declare-fun condMapEmpty!15978 () Bool)

(declare-fun mapDefault!15978 () ValueCell!4458)

(assert (=> b!389361 (= condMapEmpty!15978 (= (arr!11003 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4458)) mapDefault!15978)))))

(declare-fun b!389362 () Bool)

(declare-fun res!222784 () Bool)

(assert (=> b!389362 (=> (not res!222784) (not e!235899))))

(assert (=> b!389362 (= res!222784 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11354 _keys!658))))))

(declare-fun mapNonEmpty!15978 () Bool)

(declare-fun tp!31554 () Bool)

(declare-fun e!235897 () Bool)

(assert (=> mapNonEmpty!15978 (= mapRes!15978 (and tp!31554 e!235897))))

(declare-fun mapRest!15978 () (Array (_ BitVec 32) ValueCell!4458))

(declare-fun mapValue!15978 () ValueCell!4458)

(declare-fun mapKey!15978 () (_ BitVec 32))

(assert (=> mapNonEmpty!15978 (= (arr!11003 _values!506) (store mapRest!15978 mapKey!15978 mapValue!15978))))

(declare-fun res!222781 () Bool)

(assert (=> start!37902 (=> (not res!222781) (not e!235899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37902 (= res!222781 (validMask!0 mask!970))))

(assert (=> start!37902 e!235899))

(declare-fun array_inv!8066 (array!23081) Bool)

(assert (=> start!37902 (and (array_inv!8066 _values!506) e!235900)))

(assert (=> start!37902 tp!31553))

(assert (=> start!37902 true))

(assert (=> start!37902 tp_is_empty!9603))

(declare-fun array_inv!8067 (array!23079) Bool)

(assert (=> start!37902 (array_inv!8067 _keys!658)))

(declare-fun b!389359 () Bool)

(declare-fun e!235901 () Bool)

(assert (=> b!389359 (= e!235901 (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6464 0))(
  ( (tuple2!6465 (_1!3242 (_ BitVec 64)) (_2!3242 V!13909)) )
))
(declare-datatypes ((List!6347 0))(
  ( (Nil!6344) (Cons!6343 (h!7199 tuple2!6464) (t!11511 List!6347)) )
))
(declare-datatypes ((ListLongMap!5391 0))(
  ( (ListLongMap!5392 (toList!2711 List!6347)) )
))
(declare-fun lt!183148 () ListLongMap!5391)

(declare-fun lt!183153 () ListLongMap!5391)

(declare-fun lt!183151 () tuple2!6464)

(declare-fun +!1009 (ListLongMap!5391 tuple2!6464) ListLongMap!5391)

(assert (=> b!389359 (= lt!183148 (+!1009 lt!183153 lt!183151))))

(declare-fun v!373 () V!13909)

(declare-datatypes ((Unit!11905 0))(
  ( (Unit!11906) )
))
(declare-fun lt!183160 () Unit!11905)

(declare-fun zeroValue!472 () V!13909)

(declare-fun lt!183154 () ListLongMap!5391)

(declare-fun addCommutativeForDiffKeys!326 (ListLongMap!5391 (_ BitVec 64) V!13909 (_ BitVec 64) V!13909) Unit!11905)

(assert (=> b!389359 (= lt!183160 (addCommutativeForDiffKeys!326 lt!183154 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!183155 () ListLongMap!5391)

(declare-fun lt!183152 () tuple2!6464)

(assert (=> b!389359 (= lt!183155 (+!1009 lt!183148 lt!183152))))

(declare-fun lt!183147 () ListLongMap!5391)

(declare-fun lt!183159 () tuple2!6464)

(assert (=> b!389359 (= lt!183148 (+!1009 lt!183147 lt!183159))))

(declare-fun lt!183157 () ListLongMap!5391)

(assert (=> b!389359 (= lt!183157 (+!1009 lt!183153 lt!183152))))

(assert (=> b!389359 (= lt!183153 (+!1009 lt!183154 lt!183159))))

(declare-fun lt!183150 () ListLongMap!5391)

(assert (=> b!389359 (= lt!183155 (+!1009 (+!1009 lt!183150 lt!183159) lt!183152))))

(declare-fun minValue!472 () V!13909)

(assert (=> b!389359 (= lt!183152 (tuple2!6465 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!389359 (= lt!183159 (tuple2!6465 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!389363 () Bool)

(assert (=> b!389363 (= e!235898 (not e!235901))))

(declare-fun res!222785 () Bool)

(assert (=> b!389363 (=> res!222785 e!235901)))

(assert (=> b!389363 (= res!222785 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!2079 (array!23079 array!23081 (_ BitVec 32) (_ BitVec 32) V!13909 V!13909 (_ BitVec 32) Int) ListLongMap!5391)

(assert (=> b!389363 (= lt!183157 (getCurrentListMap!2079 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183149 () array!23081)

(assert (=> b!389363 (= lt!183155 (getCurrentListMap!2079 lt!183156 lt!183149 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389363 (and (= lt!183150 lt!183147) (= lt!183147 lt!183150))))

(assert (=> b!389363 (= lt!183147 (+!1009 lt!183154 lt!183151))))

(assert (=> b!389363 (= lt!183151 (tuple2!6465 k0!778 v!373))))

(declare-fun lt!183158 () Unit!11905)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!236 (array!23079 array!23081 (_ BitVec 32) (_ BitVec 32) V!13909 V!13909 (_ BitVec 32) (_ BitVec 64) V!13909 (_ BitVec 32) Int) Unit!11905)

(assert (=> b!389363 (= lt!183158 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!236 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!941 (array!23079 array!23081 (_ BitVec 32) (_ BitVec 32) V!13909 V!13909 (_ BitVec 32) Int) ListLongMap!5391)

(assert (=> b!389363 (= lt!183150 (getCurrentListMapNoExtraKeys!941 lt!183156 lt!183149 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389363 (= lt!183149 (array!23082 (store (arr!11003 _values!506) i!548 (ValueCellFull!4458 v!373)) (size!11355 _values!506)))))

(assert (=> b!389363 (= lt!183154 (getCurrentListMapNoExtraKeys!941 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389364 () Bool)

(declare-fun res!222777 () Bool)

(assert (=> b!389364 (=> (not res!222777) (not e!235899))))

(assert (=> b!389364 (= res!222777 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6343))))

(declare-fun b!389365 () Bool)

(declare-fun res!222779 () Bool)

(assert (=> b!389365 (=> (not res!222779) (not e!235899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!389365 (= res!222779 (validKeyInArray!0 k0!778))))

(declare-fun b!389366 () Bool)

(assert (=> b!389366 (= e!235897 tp_is_empty!9603)))

(assert (= (and start!37902 res!222781) b!389360))

(assert (= (and b!389360 res!222783) b!389358))

(assert (= (and b!389358 res!222778) b!389364))

(assert (= (and b!389364 res!222777) b!389362))

(assert (= (and b!389362 res!222784) b!389365))

(assert (= (and b!389365 res!222779) b!389357))

(assert (= (and b!389357 res!222780) b!389355))

(assert (= (and b!389355 res!222782) b!389354))

(assert (= (and b!389354 res!222775) b!389356))

(assert (= (and b!389356 res!222776) b!389363))

(assert (= (and b!389363 (not res!222785)) b!389359))

(assert (= (and b!389361 condMapEmpty!15978) mapIsEmpty!15978))

(assert (= (and b!389361 (not condMapEmpty!15978)) mapNonEmpty!15978))

(get-info :version)

(assert (= (and mapNonEmpty!15978 ((_ is ValueCellFull!4458) mapValue!15978)) b!389366))

(assert (= (and b!389361 ((_ is ValueCellFull!4458) mapDefault!15978)) b!389353))

(assert (= start!37902 b!389361))

(declare-fun m!385487 () Bool)

(assert (=> b!389356 m!385487))

(declare-fun m!385489 () Bool)

(assert (=> mapNonEmpty!15978 m!385489))

(declare-fun m!385491 () Bool)

(assert (=> b!389358 m!385491))

(declare-fun m!385493 () Bool)

(assert (=> b!389354 m!385493))

(declare-fun m!385495 () Bool)

(assert (=> b!389354 m!385495))

(declare-fun m!385497 () Bool)

(assert (=> b!389364 m!385497))

(declare-fun m!385499 () Bool)

(assert (=> b!389363 m!385499))

(declare-fun m!385501 () Bool)

(assert (=> b!389363 m!385501))

(declare-fun m!385503 () Bool)

(assert (=> b!389363 m!385503))

(declare-fun m!385505 () Bool)

(assert (=> b!389363 m!385505))

(declare-fun m!385507 () Bool)

(assert (=> b!389363 m!385507))

(declare-fun m!385509 () Bool)

(assert (=> b!389363 m!385509))

(declare-fun m!385511 () Bool)

(assert (=> b!389363 m!385511))

(declare-fun m!385513 () Bool)

(assert (=> start!37902 m!385513))

(declare-fun m!385515 () Bool)

(assert (=> start!37902 m!385515))

(declare-fun m!385517 () Bool)

(assert (=> start!37902 m!385517))

(declare-fun m!385519 () Bool)

(assert (=> b!389365 m!385519))

(declare-fun m!385521 () Bool)

(assert (=> b!389355 m!385521))

(declare-fun m!385523 () Bool)

(assert (=> b!389359 m!385523))

(declare-fun m!385525 () Bool)

(assert (=> b!389359 m!385525))

(declare-fun m!385527 () Bool)

(assert (=> b!389359 m!385527))

(declare-fun m!385529 () Bool)

(assert (=> b!389359 m!385529))

(declare-fun m!385531 () Bool)

(assert (=> b!389359 m!385531))

(declare-fun m!385533 () Bool)

(assert (=> b!389359 m!385533))

(declare-fun m!385535 () Bool)

(assert (=> b!389359 m!385535))

(assert (=> b!389359 m!385535))

(declare-fun m!385537 () Bool)

(assert (=> b!389359 m!385537))

(declare-fun m!385539 () Bool)

(assert (=> b!389357 m!385539))

(check-sat (not mapNonEmpty!15978) (not b!389364) b_and!16227 (not b!389354) (not b!389365) (not b!389363) (not start!37902) (not b_next!8931) (not b!389356) tp_is_empty!9603 (not b!389359) (not b!389355) (not b!389358))
(check-sat b_and!16227 (not b_next!8931))
(get-model)

(declare-fun b!389433 () Bool)

(declare-fun lt!183219 () Unit!11905)

(declare-fun lt!183220 () Unit!11905)

(assert (=> b!389433 (= lt!183219 lt!183220)))

(declare-fun lt!183222 () (_ BitVec 64))

(declare-fun lt!183223 () ListLongMap!5391)

(declare-fun lt!183221 () V!13909)

(declare-fun lt!183217 () (_ BitVec 64))

(declare-fun contains!2450 (ListLongMap!5391 (_ BitVec 64)) Bool)

(assert (=> b!389433 (not (contains!2450 (+!1009 lt!183223 (tuple2!6465 lt!183217 lt!183221)) lt!183222))))

(declare-fun addStillNotContains!135 (ListLongMap!5391 (_ BitVec 64) V!13909 (_ BitVec 64)) Unit!11905)

(assert (=> b!389433 (= lt!183220 (addStillNotContains!135 lt!183223 lt!183217 lt!183221 lt!183222))))

(assert (=> b!389433 (= lt!183222 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!5575 (ValueCell!4458 V!13909) V!13909)

(declare-fun dynLambda!638 (Int (_ BitVec 64)) V!13909)

(assert (=> b!389433 (= lt!183221 (get!5575 (select (arr!11003 _values!506) #b00000000000000000000000000000000) (dynLambda!638 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!389433 (= lt!183217 (select (arr!11002 _keys!658) #b00000000000000000000000000000000))))

(declare-fun call!27446 () ListLongMap!5391)

(assert (=> b!389433 (= lt!183223 call!27446)))

(declare-fun e!235941 () ListLongMap!5391)

(assert (=> b!389433 (= e!235941 (+!1009 call!27446 (tuple2!6465 (select (arr!11002 _keys!658) #b00000000000000000000000000000000) (get!5575 (select (arr!11003 _values!506) #b00000000000000000000000000000000) (dynLambda!638 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!389434 () Bool)

(declare-fun e!235943 () ListLongMap!5391)

(assert (=> b!389434 (= e!235943 (ListLongMap!5392 Nil!6344))))

(declare-fun b!389435 () Bool)

(declare-fun e!235940 () Bool)

(declare-fun e!235939 () Bool)

(assert (=> b!389435 (= e!235940 e!235939)))

(declare-fun c!54014 () Bool)

(assert (=> b!389435 (= c!54014 (bvslt #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(declare-fun b!389436 () Bool)

(assert (=> b!389436 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(assert (=> b!389436 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11355 _values!506)))))

(declare-fun lt!183218 () ListLongMap!5391)

(declare-fun e!235938 () Bool)

(declare-fun apply!300 (ListLongMap!5391 (_ BitVec 64)) V!13909)

(assert (=> b!389436 (= e!235938 (= (apply!300 lt!183218 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)) (get!5575 (select (arr!11003 _values!506) #b00000000000000000000000000000000) (dynLambda!638 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!389437 () Bool)

(assert (=> b!389437 (= e!235939 (= lt!183218 (getCurrentListMapNoExtraKeys!941 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!389438 () Bool)

(assert (=> b!389438 (= e!235941 call!27446)))

(declare-fun d!72793 () Bool)

(declare-fun e!235942 () Bool)

(assert (=> d!72793 e!235942))

(declare-fun res!222828 () Bool)

(assert (=> d!72793 (=> (not res!222828) (not e!235942))))

(assert (=> d!72793 (= res!222828 (not (contains!2450 lt!183218 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72793 (= lt!183218 e!235943)))

(declare-fun c!54013 () Bool)

(assert (=> d!72793 (= c!54013 (bvsge #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(assert (=> d!72793 (validMask!0 mask!970)))

(assert (=> d!72793 (= (getCurrentListMapNoExtraKeys!941 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!183218)))

(declare-fun bm!27443 () Bool)

(assert (=> bm!27443 (= call!27446 (getCurrentListMapNoExtraKeys!941 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!389439 () Bool)

(assert (=> b!389439 (= e!235943 e!235941)))

(declare-fun c!54012 () Bool)

(assert (=> b!389439 (= c!54012 (validKeyInArray!0 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!389440 () Bool)

(assert (=> b!389440 (= e!235940 e!235938)))

(assert (=> b!389440 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(declare-fun res!222830 () Bool)

(assert (=> b!389440 (= res!222830 (contains!2450 lt!183218 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!389440 (=> (not res!222830) (not e!235938))))

(declare-fun b!389441 () Bool)

(declare-fun isEmpty!551 (ListLongMap!5391) Bool)

(assert (=> b!389441 (= e!235939 (isEmpty!551 lt!183218))))

(declare-fun b!389442 () Bool)

(declare-fun res!222829 () Bool)

(assert (=> b!389442 (=> (not res!222829) (not e!235942))))

(assert (=> b!389442 (= res!222829 (not (contains!2450 lt!183218 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!389443 () Bool)

(declare-fun e!235944 () Bool)

(assert (=> b!389443 (= e!235944 (validKeyInArray!0 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!389443 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!389444 () Bool)

(assert (=> b!389444 (= e!235942 e!235940)))

(declare-fun c!54011 () Bool)

(assert (=> b!389444 (= c!54011 e!235944)))

(declare-fun res!222827 () Bool)

(assert (=> b!389444 (=> (not res!222827) (not e!235944))))

(assert (=> b!389444 (= res!222827 (bvslt #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(assert (= (and d!72793 c!54013) b!389434))

(assert (= (and d!72793 (not c!54013)) b!389439))

(assert (= (and b!389439 c!54012) b!389433))

(assert (= (and b!389439 (not c!54012)) b!389438))

(assert (= (or b!389433 b!389438) bm!27443))

(assert (= (and d!72793 res!222828) b!389442))

(assert (= (and b!389442 res!222829) b!389444))

(assert (= (and b!389444 res!222827) b!389443))

(assert (= (and b!389444 c!54011) b!389440))

(assert (= (and b!389444 (not c!54011)) b!389435))

(assert (= (and b!389440 res!222830) b!389436))

(assert (= (and b!389435 c!54014) b!389437))

(assert (= (and b!389435 (not c!54014)) b!389441))

(declare-fun b_lambda!8629 () Bool)

(assert (=> (not b_lambda!8629) (not b!389433)))

(declare-fun t!11514 () Bool)

(declare-fun tb!3123 () Bool)

(assert (=> (and start!37902 (= defaultEntry!514 defaultEntry!514) t!11514) tb!3123))

(declare-fun result!5733 () Bool)

(assert (=> tb!3123 (= result!5733 tp_is_empty!9603)))

(assert (=> b!389433 t!11514))

(declare-fun b_and!16231 () Bool)

(assert (= b_and!16227 (and (=> t!11514 result!5733) b_and!16231)))

(declare-fun b_lambda!8631 () Bool)

(assert (=> (not b_lambda!8631) (not b!389436)))

(assert (=> b!389436 t!11514))

(declare-fun b_and!16233 () Bool)

(assert (= b_and!16231 (and (=> t!11514 result!5733) b_and!16233)))

(declare-fun m!385595 () Bool)

(assert (=> b!389439 m!385595))

(assert (=> b!389439 m!385595))

(declare-fun m!385597 () Bool)

(assert (=> b!389439 m!385597))

(declare-fun m!385599 () Bool)

(assert (=> d!72793 m!385599))

(assert (=> d!72793 m!385513))

(assert (=> b!389436 m!385595))

(declare-fun m!385601 () Bool)

(assert (=> b!389436 m!385601))

(assert (=> b!389436 m!385595))

(declare-fun m!385603 () Bool)

(assert (=> b!389436 m!385603))

(declare-fun m!385605 () Bool)

(assert (=> b!389436 m!385605))

(declare-fun m!385607 () Bool)

(assert (=> b!389436 m!385607))

(assert (=> b!389436 m!385603))

(assert (=> b!389436 m!385605))

(assert (=> b!389443 m!385595))

(assert (=> b!389443 m!385595))

(assert (=> b!389443 m!385597))

(declare-fun m!385609 () Bool)

(assert (=> b!389437 m!385609))

(assert (=> b!389440 m!385595))

(assert (=> b!389440 m!385595))

(declare-fun m!385611 () Bool)

(assert (=> b!389440 m!385611))

(declare-fun m!385613 () Bool)

(assert (=> b!389433 m!385613))

(assert (=> b!389433 m!385595))

(assert (=> b!389433 m!385603))

(assert (=> b!389433 m!385605))

(assert (=> b!389433 m!385607))

(declare-fun m!385615 () Bool)

(assert (=> b!389433 m!385615))

(assert (=> b!389433 m!385615))

(declare-fun m!385617 () Bool)

(assert (=> b!389433 m!385617))

(assert (=> b!389433 m!385603))

(declare-fun m!385619 () Bool)

(assert (=> b!389433 m!385619))

(assert (=> b!389433 m!385605))

(assert (=> bm!27443 m!385609))

(declare-fun m!385621 () Bool)

(assert (=> b!389442 m!385621))

(declare-fun m!385623 () Bool)

(assert (=> b!389441 m!385623))

(assert (=> b!389363 d!72793))

(declare-fun b!389489 () Bool)

(declare-fun e!235981 () Unit!11905)

(declare-fun lt!183285 () Unit!11905)

(assert (=> b!389489 (= e!235981 lt!183285)))

(declare-fun lt!183279 () ListLongMap!5391)

(assert (=> b!389489 (= lt!183279 (getCurrentListMapNoExtraKeys!941 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183286 () (_ BitVec 64))

(assert (=> b!389489 (= lt!183286 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183275 () (_ BitVec 64))

(assert (=> b!389489 (= lt!183275 (select (arr!11002 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!183282 () Unit!11905)

(declare-fun addStillContains!276 (ListLongMap!5391 (_ BitVec 64) V!13909 (_ BitVec 64)) Unit!11905)

(assert (=> b!389489 (= lt!183282 (addStillContains!276 lt!183279 lt!183286 zeroValue!472 lt!183275))))

(assert (=> b!389489 (contains!2450 (+!1009 lt!183279 (tuple2!6465 lt!183286 zeroValue!472)) lt!183275)))

(declare-fun lt!183284 () Unit!11905)

(assert (=> b!389489 (= lt!183284 lt!183282)))

(declare-fun lt!183272 () ListLongMap!5391)

(assert (=> b!389489 (= lt!183272 (getCurrentListMapNoExtraKeys!941 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183269 () (_ BitVec 64))

(assert (=> b!389489 (= lt!183269 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183268 () (_ BitVec 64))

(assert (=> b!389489 (= lt!183268 (select (arr!11002 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!183280 () Unit!11905)

(declare-fun addApplyDifferent!276 (ListLongMap!5391 (_ BitVec 64) V!13909 (_ BitVec 64)) Unit!11905)

(assert (=> b!389489 (= lt!183280 (addApplyDifferent!276 lt!183272 lt!183269 minValue!472 lt!183268))))

(assert (=> b!389489 (= (apply!300 (+!1009 lt!183272 (tuple2!6465 lt!183269 minValue!472)) lt!183268) (apply!300 lt!183272 lt!183268))))

(declare-fun lt!183273 () Unit!11905)

(assert (=> b!389489 (= lt!183273 lt!183280)))

(declare-fun lt!183276 () ListLongMap!5391)

(assert (=> b!389489 (= lt!183276 (getCurrentListMapNoExtraKeys!941 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183277 () (_ BitVec 64))

(assert (=> b!389489 (= lt!183277 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183274 () (_ BitVec 64))

(assert (=> b!389489 (= lt!183274 (select (arr!11002 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!183287 () Unit!11905)

(assert (=> b!389489 (= lt!183287 (addApplyDifferent!276 lt!183276 lt!183277 zeroValue!472 lt!183274))))

(assert (=> b!389489 (= (apply!300 (+!1009 lt!183276 (tuple2!6465 lt!183277 zeroValue!472)) lt!183274) (apply!300 lt!183276 lt!183274))))

(declare-fun lt!183271 () Unit!11905)

(assert (=> b!389489 (= lt!183271 lt!183287)))

(declare-fun lt!183278 () ListLongMap!5391)

(assert (=> b!389489 (= lt!183278 (getCurrentListMapNoExtraKeys!941 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183288 () (_ BitVec 64))

(assert (=> b!389489 (= lt!183288 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183283 () (_ BitVec 64))

(assert (=> b!389489 (= lt!183283 (select (arr!11002 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!389489 (= lt!183285 (addApplyDifferent!276 lt!183278 lt!183288 minValue!472 lt!183283))))

(assert (=> b!389489 (= (apply!300 (+!1009 lt!183278 (tuple2!6465 lt!183288 minValue!472)) lt!183283) (apply!300 lt!183278 lt!183283))))

(declare-fun b!389490 () Bool)

(declare-fun res!222857 () Bool)

(declare-fun e!235973 () Bool)

(assert (=> b!389490 (=> (not res!222857) (not e!235973))))

(declare-fun e!235979 () Bool)

(assert (=> b!389490 (= res!222857 e!235979)))

(declare-fun res!222851 () Bool)

(assert (=> b!389490 (=> res!222851 e!235979)))

(declare-fun e!235974 () Bool)

(assert (=> b!389490 (= res!222851 (not e!235974))))

(declare-fun res!222853 () Bool)

(assert (=> b!389490 (=> (not res!222853) (not e!235974))))

(assert (=> b!389490 (= res!222853 (bvslt #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(declare-fun b!389491 () Bool)

(declare-fun e!235980 () Bool)

(assert (=> b!389491 (= e!235973 e!235980)))

(declare-fun c!54030 () Bool)

(assert (=> b!389491 (= c!54030 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!389492 () Bool)

(declare-fun c!54027 () Bool)

(assert (=> b!389492 (= c!54027 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!235978 () ListLongMap!5391)

(declare-fun e!235977 () ListLongMap!5391)

(assert (=> b!389492 (= e!235978 e!235977)))

(declare-fun call!27461 () ListLongMap!5391)

(declare-fun bm!27458 () Bool)

(assert (=> bm!27458 (= call!27461 (getCurrentListMapNoExtraKeys!941 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389493 () Bool)

(declare-fun e!235983 () Bool)

(declare-fun lt!183270 () ListLongMap!5391)

(assert (=> b!389493 (= e!235983 (= (apply!300 lt!183270 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!389494 () Bool)

(declare-fun call!27466 () Bool)

(assert (=> b!389494 (= e!235980 (not call!27466))))

(declare-fun b!389495 () Bool)

(declare-fun e!235976 () Bool)

(assert (=> b!389495 (= e!235976 (= (apply!300 lt!183270 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun bm!27459 () Bool)

(declare-fun call!27463 () ListLongMap!5391)

(assert (=> bm!27459 (= call!27463 call!27461)))

(declare-fun b!389496 () Bool)

(declare-fun call!27462 () ListLongMap!5391)

(assert (=> b!389496 (= e!235977 call!27462)))

(declare-fun b!389497 () Bool)

(declare-fun res!222854 () Bool)

(assert (=> b!389497 (=> (not res!222854) (not e!235973))))

(declare-fun e!235972 () Bool)

(assert (=> b!389497 (= res!222854 e!235972)))

(declare-fun c!54031 () Bool)

(assert (=> b!389497 (= c!54031 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!389498 () Bool)

(declare-fun e!235982 () Bool)

(assert (=> b!389498 (= e!235982 (= (apply!300 lt!183270 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)) (get!5575 (select (arr!11003 _values!506) #b00000000000000000000000000000000) (dynLambda!638 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!389498 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11355 _values!506)))))

(assert (=> b!389498 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(declare-fun b!389499 () Bool)

(assert (=> b!389499 (= e!235974 (validKeyInArray!0 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!389500 () Bool)

(declare-fun e!235975 () ListLongMap!5391)

(assert (=> b!389500 (= e!235975 e!235978)))

(declare-fun c!54028 () Bool)

(assert (=> b!389500 (= c!54028 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!389501 () Bool)

(declare-fun call!27467 () ListLongMap!5391)

(assert (=> b!389501 (= e!235975 (+!1009 call!27467 (tuple2!6465 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!389502 () Bool)

(declare-fun call!27464 () Bool)

(assert (=> b!389502 (= e!235972 (not call!27464))))

(declare-fun b!389503 () Bool)

(declare-fun call!27465 () ListLongMap!5391)

(assert (=> b!389503 (= e!235977 call!27465)))

(declare-fun bm!27460 () Bool)

(assert (=> bm!27460 (= call!27462 call!27463)))

(declare-fun b!389504 () Bool)

(assert (=> b!389504 (= e!235972 e!235983)))

(declare-fun res!222855 () Bool)

(assert (=> b!389504 (= res!222855 call!27464)))

(assert (=> b!389504 (=> (not res!222855) (not e!235983))))

(declare-fun b!389505 () Bool)

(assert (=> b!389505 (= e!235978 call!27465)))

(declare-fun b!389506 () Bool)

(assert (=> b!389506 (= e!235980 e!235976)))

(declare-fun res!222850 () Bool)

(assert (=> b!389506 (= res!222850 call!27466)))

(assert (=> b!389506 (=> (not res!222850) (not e!235976))))

(declare-fun b!389507 () Bool)

(declare-fun e!235971 () Bool)

(assert (=> b!389507 (= e!235971 (validKeyInArray!0 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!389508 () Bool)

(declare-fun Unit!11907 () Unit!11905)

(assert (=> b!389508 (= e!235981 Unit!11907)))

(declare-fun d!72795 () Bool)

(assert (=> d!72795 e!235973))

(declare-fun res!222856 () Bool)

(assert (=> d!72795 (=> (not res!222856) (not e!235973))))

(assert (=> d!72795 (= res!222856 (or (bvsge #b00000000000000000000000000000000 (size!11354 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11354 _keys!658)))))))

(declare-fun lt!183281 () ListLongMap!5391)

(assert (=> d!72795 (= lt!183270 lt!183281)))

(declare-fun lt!183289 () Unit!11905)

(assert (=> d!72795 (= lt!183289 e!235981)))

(declare-fun c!54032 () Bool)

(assert (=> d!72795 (= c!54032 e!235971)))

(declare-fun res!222849 () Bool)

(assert (=> d!72795 (=> (not res!222849) (not e!235971))))

(assert (=> d!72795 (= res!222849 (bvslt #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(assert (=> d!72795 (= lt!183281 e!235975)))

(declare-fun c!54029 () Bool)

(assert (=> d!72795 (= c!54029 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72795 (validMask!0 mask!970)))

(assert (=> d!72795 (= (getCurrentListMap!2079 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!183270)))

(declare-fun bm!27461 () Bool)

(assert (=> bm!27461 (= call!27464 (contains!2450 lt!183270 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27462 () Bool)

(assert (=> bm!27462 (= call!27465 call!27467)))

(declare-fun b!389509 () Bool)

(assert (=> b!389509 (= e!235979 e!235982)))

(declare-fun res!222852 () Bool)

(assert (=> b!389509 (=> (not res!222852) (not e!235982))))

(assert (=> b!389509 (= res!222852 (contains!2450 lt!183270 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!389509 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(declare-fun bm!27463 () Bool)

(assert (=> bm!27463 (= call!27467 (+!1009 (ite c!54029 call!27461 (ite c!54028 call!27463 call!27462)) (ite (or c!54029 c!54028) (tuple2!6465 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6465 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun bm!27464 () Bool)

(assert (=> bm!27464 (= call!27466 (contains!2450 lt!183270 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!72795 c!54029) b!389501))

(assert (= (and d!72795 (not c!54029)) b!389500))

(assert (= (and b!389500 c!54028) b!389505))

(assert (= (and b!389500 (not c!54028)) b!389492))

(assert (= (and b!389492 c!54027) b!389503))

(assert (= (and b!389492 (not c!54027)) b!389496))

(assert (= (or b!389503 b!389496) bm!27460))

(assert (= (or b!389505 bm!27460) bm!27459))

(assert (= (or b!389505 b!389503) bm!27462))

(assert (= (or b!389501 bm!27459) bm!27458))

(assert (= (or b!389501 bm!27462) bm!27463))

(assert (= (and d!72795 res!222849) b!389507))

(assert (= (and d!72795 c!54032) b!389489))

(assert (= (and d!72795 (not c!54032)) b!389508))

(assert (= (and d!72795 res!222856) b!389490))

(assert (= (and b!389490 res!222853) b!389499))

(assert (= (and b!389490 (not res!222851)) b!389509))

(assert (= (and b!389509 res!222852) b!389498))

(assert (= (and b!389490 res!222857) b!389497))

(assert (= (and b!389497 c!54031) b!389504))

(assert (= (and b!389497 (not c!54031)) b!389502))

(assert (= (and b!389504 res!222855) b!389493))

(assert (= (or b!389504 b!389502) bm!27461))

(assert (= (and b!389497 res!222854) b!389491))

(assert (= (and b!389491 c!54030) b!389506))

(assert (= (and b!389491 (not c!54030)) b!389494))

(assert (= (and b!389506 res!222850) b!389495))

(assert (= (or b!389506 b!389494) bm!27464))

(declare-fun b_lambda!8633 () Bool)

(assert (=> (not b_lambda!8633) (not b!389498)))

(assert (=> b!389498 t!11514))

(declare-fun b_and!16235 () Bool)

(assert (= b_and!16233 (and (=> t!11514 result!5733) b_and!16235)))

(declare-fun m!385625 () Bool)

(assert (=> b!389501 m!385625))

(declare-fun m!385627 () Bool)

(assert (=> b!389495 m!385627))

(declare-fun m!385629 () Bool)

(assert (=> b!389489 m!385629))

(declare-fun m!385631 () Bool)

(assert (=> b!389489 m!385631))

(assert (=> b!389489 m!385595))

(declare-fun m!385633 () Bool)

(assert (=> b!389489 m!385633))

(declare-fun m!385635 () Bool)

(assert (=> b!389489 m!385635))

(declare-fun m!385637 () Bool)

(assert (=> b!389489 m!385637))

(declare-fun m!385639 () Bool)

(assert (=> b!389489 m!385639))

(declare-fun m!385641 () Bool)

(assert (=> b!389489 m!385641))

(declare-fun m!385643 () Bool)

(assert (=> b!389489 m!385643))

(assert (=> b!389489 m!385639))

(assert (=> b!389489 m!385637))

(declare-fun m!385645 () Bool)

(assert (=> b!389489 m!385645))

(declare-fun m!385647 () Bool)

(assert (=> b!389489 m!385647))

(assert (=> b!389489 m!385509))

(declare-fun m!385649 () Bool)

(assert (=> b!389489 m!385649))

(assert (=> b!389489 m!385649))

(declare-fun m!385651 () Bool)

(assert (=> b!389489 m!385651))

(declare-fun m!385653 () Bool)

(assert (=> b!389489 m!385653))

(assert (=> b!389489 m!385635))

(declare-fun m!385655 () Bool)

(assert (=> b!389489 m!385655))

(declare-fun m!385657 () Bool)

(assert (=> b!389489 m!385657))

(declare-fun m!385659 () Bool)

(assert (=> bm!27463 m!385659))

(declare-fun m!385661 () Bool)

(assert (=> b!389493 m!385661))

(assert (=> b!389509 m!385595))

(assert (=> b!389509 m!385595))

(declare-fun m!385663 () Bool)

(assert (=> b!389509 m!385663))

(assert (=> b!389507 m!385595))

(assert (=> b!389507 m!385595))

(assert (=> b!389507 m!385597))

(assert (=> d!72795 m!385513))

(assert (=> b!389498 m!385603))

(assert (=> b!389498 m!385595))

(assert (=> b!389498 m!385603))

(assert (=> b!389498 m!385605))

(assert (=> b!389498 m!385607))

(assert (=> b!389498 m!385605))

(assert (=> b!389498 m!385595))

(declare-fun m!385665 () Bool)

(assert (=> b!389498 m!385665))

(assert (=> bm!27458 m!385509))

(declare-fun m!385667 () Bool)

(assert (=> bm!27464 m!385667))

(declare-fun m!385669 () Bool)

(assert (=> bm!27461 m!385669))

(assert (=> b!389499 m!385595))

(assert (=> b!389499 m!385595))

(assert (=> b!389499 m!385597))

(assert (=> b!389363 d!72795))

(declare-fun b!389510 () Bool)

(declare-fun e!235994 () Unit!11905)

(declare-fun lt!183307 () Unit!11905)

(assert (=> b!389510 (= e!235994 lt!183307)))

(declare-fun lt!183301 () ListLongMap!5391)

(assert (=> b!389510 (= lt!183301 (getCurrentListMapNoExtraKeys!941 lt!183156 lt!183149 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183308 () (_ BitVec 64))

(assert (=> b!389510 (= lt!183308 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183297 () (_ BitVec 64))

(assert (=> b!389510 (= lt!183297 (select (arr!11002 lt!183156) #b00000000000000000000000000000000))))

(declare-fun lt!183304 () Unit!11905)

(assert (=> b!389510 (= lt!183304 (addStillContains!276 lt!183301 lt!183308 zeroValue!472 lt!183297))))

(assert (=> b!389510 (contains!2450 (+!1009 lt!183301 (tuple2!6465 lt!183308 zeroValue!472)) lt!183297)))

(declare-fun lt!183306 () Unit!11905)

(assert (=> b!389510 (= lt!183306 lt!183304)))

(declare-fun lt!183294 () ListLongMap!5391)

(assert (=> b!389510 (= lt!183294 (getCurrentListMapNoExtraKeys!941 lt!183156 lt!183149 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183291 () (_ BitVec 64))

(assert (=> b!389510 (= lt!183291 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183290 () (_ BitVec 64))

(assert (=> b!389510 (= lt!183290 (select (arr!11002 lt!183156) #b00000000000000000000000000000000))))

(declare-fun lt!183302 () Unit!11905)

(assert (=> b!389510 (= lt!183302 (addApplyDifferent!276 lt!183294 lt!183291 minValue!472 lt!183290))))

(assert (=> b!389510 (= (apply!300 (+!1009 lt!183294 (tuple2!6465 lt!183291 minValue!472)) lt!183290) (apply!300 lt!183294 lt!183290))))

(declare-fun lt!183295 () Unit!11905)

(assert (=> b!389510 (= lt!183295 lt!183302)))

(declare-fun lt!183298 () ListLongMap!5391)

(assert (=> b!389510 (= lt!183298 (getCurrentListMapNoExtraKeys!941 lt!183156 lt!183149 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183299 () (_ BitVec 64))

(assert (=> b!389510 (= lt!183299 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183296 () (_ BitVec 64))

(assert (=> b!389510 (= lt!183296 (select (arr!11002 lt!183156) #b00000000000000000000000000000000))))

(declare-fun lt!183309 () Unit!11905)

(assert (=> b!389510 (= lt!183309 (addApplyDifferent!276 lt!183298 lt!183299 zeroValue!472 lt!183296))))

(assert (=> b!389510 (= (apply!300 (+!1009 lt!183298 (tuple2!6465 lt!183299 zeroValue!472)) lt!183296) (apply!300 lt!183298 lt!183296))))

(declare-fun lt!183293 () Unit!11905)

(assert (=> b!389510 (= lt!183293 lt!183309)))

(declare-fun lt!183300 () ListLongMap!5391)

(assert (=> b!389510 (= lt!183300 (getCurrentListMapNoExtraKeys!941 lt!183156 lt!183149 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183310 () (_ BitVec 64))

(assert (=> b!389510 (= lt!183310 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183305 () (_ BitVec 64))

(assert (=> b!389510 (= lt!183305 (select (arr!11002 lt!183156) #b00000000000000000000000000000000))))

(assert (=> b!389510 (= lt!183307 (addApplyDifferent!276 lt!183300 lt!183310 minValue!472 lt!183305))))

(assert (=> b!389510 (= (apply!300 (+!1009 lt!183300 (tuple2!6465 lt!183310 minValue!472)) lt!183305) (apply!300 lt!183300 lt!183305))))

(declare-fun b!389511 () Bool)

(declare-fun res!222866 () Bool)

(declare-fun e!235986 () Bool)

(assert (=> b!389511 (=> (not res!222866) (not e!235986))))

(declare-fun e!235992 () Bool)

(assert (=> b!389511 (= res!222866 e!235992)))

(declare-fun res!222860 () Bool)

(assert (=> b!389511 (=> res!222860 e!235992)))

(declare-fun e!235987 () Bool)

(assert (=> b!389511 (= res!222860 (not e!235987))))

(declare-fun res!222862 () Bool)

(assert (=> b!389511 (=> (not res!222862) (not e!235987))))

(assert (=> b!389511 (= res!222862 (bvslt #b00000000000000000000000000000000 (size!11354 lt!183156)))))

(declare-fun b!389512 () Bool)

(declare-fun e!235993 () Bool)

(assert (=> b!389512 (= e!235986 e!235993)))

(declare-fun c!54036 () Bool)

(assert (=> b!389512 (= c!54036 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!389513 () Bool)

(declare-fun c!54033 () Bool)

(assert (=> b!389513 (= c!54033 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!235991 () ListLongMap!5391)

(declare-fun e!235990 () ListLongMap!5391)

(assert (=> b!389513 (= e!235991 e!235990)))

(declare-fun bm!27465 () Bool)

(declare-fun call!27468 () ListLongMap!5391)

(assert (=> bm!27465 (= call!27468 (getCurrentListMapNoExtraKeys!941 lt!183156 lt!183149 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389514 () Bool)

(declare-fun e!235996 () Bool)

(declare-fun lt!183292 () ListLongMap!5391)

(assert (=> b!389514 (= e!235996 (= (apply!300 lt!183292 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!389515 () Bool)

(declare-fun call!27473 () Bool)

(assert (=> b!389515 (= e!235993 (not call!27473))))

(declare-fun b!389516 () Bool)

(declare-fun e!235989 () Bool)

(assert (=> b!389516 (= e!235989 (= (apply!300 lt!183292 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun bm!27466 () Bool)

(declare-fun call!27470 () ListLongMap!5391)

(assert (=> bm!27466 (= call!27470 call!27468)))

(declare-fun b!389517 () Bool)

(declare-fun call!27469 () ListLongMap!5391)

(assert (=> b!389517 (= e!235990 call!27469)))

(declare-fun b!389518 () Bool)

(declare-fun res!222863 () Bool)

(assert (=> b!389518 (=> (not res!222863) (not e!235986))))

(declare-fun e!235985 () Bool)

(assert (=> b!389518 (= res!222863 e!235985)))

(declare-fun c!54037 () Bool)

(assert (=> b!389518 (= c!54037 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!389519 () Bool)

(declare-fun e!235995 () Bool)

(assert (=> b!389519 (= e!235995 (= (apply!300 lt!183292 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)) (get!5575 (select (arr!11003 lt!183149) #b00000000000000000000000000000000) (dynLambda!638 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!389519 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11355 lt!183149)))))

(assert (=> b!389519 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11354 lt!183156)))))

(declare-fun b!389520 () Bool)

(assert (=> b!389520 (= e!235987 (validKeyInArray!0 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)))))

(declare-fun b!389521 () Bool)

(declare-fun e!235988 () ListLongMap!5391)

(assert (=> b!389521 (= e!235988 e!235991)))

(declare-fun c!54034 () Bool)

(assert (=> b!389521 (= c!54034 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!389522 () Bool)

(declare-fun call!27474 () ListLongMap!5391)

(assert (=> b!389522 (= e!235988 (+!1009 call!27474 (tuple2!6465 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!389523 () Bool)

(declare-fun call!27471 () Bool)

(assert (=> b!389523 (= e!235985 (not call!27471))))

(declare-fun b!389524 () Bool)

(declare-fun call!27472 () ListLongMap!5391)

(assert (=> b!389524 (= e!235990 call!27472)))

(declare-fun bm!27467 () Bool)

(assert (=> bm!27467 (= call!27469 call!27470)))

(declare-fun b!389525 () Bool)

(assert (=> b!389525 (= e!235985 e!235996)))

(declare-fun res!222864 () Bool)

(assert (=> b!389525 (= res!222864 call!27471)))

(assert (=> b!389525 (=> (not res!222864) (not e!235996))))

(declare-fun b!389526 () Bool)

(assert (=> b!389526 (= e!235991 call!27472)))

(declare-fun b!389527 () Bool)

(assert (=> b!389527 (= e!235993 e!235989)))

(declare-fun res!222859 () Bool)

(assert (=> b!389527 (= res!222859 call!27473)))

(assert (=> b!389527 (=> (not res!222859) (not e!235989))))

(declare-fun b!389528 () Bool)

(declare-fun e!235984 () Bool)

(assert (=> b!389528 (= e!235984 (validKeyInArray!0 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)))))

(declare-fun b!389529 () Bool)

(declare-fun Unit!11908 () Unit!11905)

(assert (=> b!389529 (= e!235994 Unit!11908)))

(declare-fun d!72797 () Bool)

(assert (=> d!72797 e!235986))

(declare-fun res!222865 () Bool)

(assert (=> d!72797 (=> (not res!222865) (not e!235986))))

(assert (=> d!72797 (= res!222865 (or (bvsge #b00000000000000000000000000000000 (size!11354 lt!183156)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11354 lt!183156)))))))

(declare-fun lt!183303 () ListLongMap!5391)

(assert (=> d!72797 (= lt!183292 lt!183303)))

(declare-fun lt!183311 () Unit!11905)

(assert (=> d!72797 (= lt!183311 e!235994)))

(declare-fun c!54038 () Bool)

(assert (=> d!72797 (= c!54038 e!235984)))

(declare-fun res!222858 () Bool)

(assert (=> d!72797 (=> (not res!222858) (not e!235984))))

(assert (=> d!72797 (= res!222858 (bvslt #b00000000000000000000000000000000 (size!11354 lt!183156)))))

(assert (=> d!72797 (= lt!183303 e!235988)))

(declare-fun c!54035 () Bool)

(assert (=> d!72797 (= c!54035 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72797 (validMask!0 mask!970)))

(assert (=> d!72797 (= (getCurrentListMap!2079 lt!183156 lt!183149 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!183292)))

(declare-fun bm!27468 () Bool)

(assert (=> bm!27468 (= call!27471 (contains!2450 lt!183292 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27469 () Bool)

(assert (=> bm!27469 (= call!27472 call!27474)))

(declare-fun b!389530 () Bool)

(assert (=> b!389530 (= e!235992 e!235995)))

(declare-fun res!222861 () Bool)

(assert (=> b!389530 (=> (not res!222861) (not e!235995))))

(assert (=> b!389530 (= res!222861 (contains!2450 lt!183292 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)))))

(assert (=> b!389530 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11354 lt!183156)))))

(declare-fun bm!27470 () Bool)

(assert (=> bm!27470 (= call!27474 (+!1009 (ite c!54035 call!27468 (ite c!54034 call!27470 call!27469)) (ite (or c!54035 c!54034) (tuple2!6465 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6465 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun bm!27471 () Bool)

(assert (=> bm!27471 (= call!27473 (contains!2450 lt!183292 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!72797 c!54035) b!389522))

(assert (= (and d!72797 (not c!54035)) b!389521))

(assert (= (and b!389521 c!54034) b!389526))

(assert (= (and b!389521 (not c!54034)) b!389513))

(assert (= (and b!389513 c!54033) b!389524))

(assert (= (and b!389513 (not c!54033)) b!389517))

(assert (= (or b!389524 b!389517) bm!27467))

(assert (= (or b!389526 bm!27467) bm!27466))

(assert (= (or b!389526 b!389524) bm!27469))

(assert (= (or b!389522 bm!27466) bm!27465))

(assert (= (or b!389522 bm!27469) bm!27470))

(assert (= (and d!72797 res!222858) b!389528))

(assert (= (and d!72797 c!54038) b!389510))

(assert (= (and d!72797 (not c!54038)) b!389529))

(assert (= (and d!72797 res!222865) b!389511))

(assert (= (and b!389511 res!222862) b!389520))

(assert (= (and b!389511 (not res!222860)) b!389530))

(assert (= (and b!389530 res!222861) b!389519))

(assert (= (and b!389511 res!222866) b!389518))

(assert (= (and b!389518 c!54037) b!389525))

(assert (= (and b!389518 (not c!54037)) b!389523))

(assert (= (and b!389525 res!222864) b!389514))

(assert (= (or b!389525 b!389523) bm!27468))

(assert (= (and b!389518 res!222863) b!389512))

(assert (= (and b!389512 c!54036) b!389527))

(assert (= (and b!389512 (not c!54036)) b!389515))

(assert (= (and b!389527 res!222859) b!389516))

(assert (= (or b!389527 b!389515) bm!27471))

(declare-fun b_lambda!8635 () Bool)

(assert (=> (not b_lambda!8635) (not b!389519)))

(assert (=> b!389519 t!11514))

(declare-fun b_and!16237 () Bool)

(assert (= b_and!16235 (and (=> t!11514 result!5733) b_and!16237)))

(declare-fun m!385671 () Bool)

(assert (=> b!389522 m!385671))

(declare-fun m!385673 () Bool)

(assert (=> b!389516 m!385673))

(declare-fun m!385675 () Bool)

(assert (=> b!389510 m!385675))

(declare-fun m!385677 () Bool)

(assert (=> b!389510 m!385677))

(declare-fun m!385679 () Bool)

(assert (=> b!389510 m!385679))

(declare-fun m!385681 () Bool)

(assert (=> b!389510 m!385681))

(declare-fun m!385683 () Bool)

(assert (=> b!389510 m!385683))

(declare-fun m!385685 () Bool)

(assert (=> b!389510 m!385685))

(declare-fun m!385687 () Bool)

(assert (=> b!389510 m!385687))

(declare-fun m!385689 () Bool)

(assert (=> b!389510 m!385689))

(declare-fun m!385691 () Bool)

(assert (=> b!389510 m!385691))

(assert (=> b!389510 m!385687))

(assert (=> b!389510 m!385685))

(declare-fun m!385693 () Bool)

(assert (=> b!389510 m!385693))

(declare-fun m!385695 () Bool)

(assert (=> b!389510 m!385695))

(assert (=> b!389510 m!385511))

(declare-fun m!385697 () Bool)

(assert (=> b!389510 m!385697))

(assert (=> b!389510 m!385697))

(declare-fun m!385699 () Bool)

(assert (=> b!389510 m!385699))

(declare-fun m!385701 () Bool)

(assert (=> b!389510 m!385701))

(assert (=> b!389510 m!385683))

(declare-fun m!385703 () Bool)

(assert (=> b!389510 m!385703))

(declare-fun m!385705 () Bool)

(assert (=> b!389510 m!385705))

(declare-fun m!385707 () Bool)

(assert (=> bm!27470 m!385707))

(declare-fun m!385709 () Bool)

(assert (=> b!389514 m!385709))

(assert (=> b!389530 m!385679))

(assert (=> b!389530 m!385679))

(declare-fun m!385711 () Bool)

(assert (=> b!389530 m!385711))

(assert (=> b!389528 m!385679))

(assert (=> b!389528 m!385679))

(declare-fun m!385713 () Bool)

(assert (=> b!389528 m!385713))

(assert (=> d!72797 m!385513))

(declare-fun m!385715 () Bool)

(assert (=> b!389519 m!385715))

(assert (=> b!389519 m!385679))

(assert (=> b!389519 m!385715))

(assert (=> b!389519 m!385605))

(declare-fun m!385717 () Bool)

(assert (=> b!389519 m!385717))

(assert (=> b!389519 m!385605))

(assert (=> b!389519 m!385679))

(declare-fun m!385719 () Bool)

(assert (=> b!389519 m!385719))

(assert (=> bm!27465 m!385511))

(declare-fun m!385721 () Bool)

(assert (=> bm!27471 m!385721))

(declare-fun m!385723 () Bool)

(assert (=> bm!27468 m!385723))

(assert (=> b!389520 m!385679))

(assert (=> b!389520 m!385679))

(assert (=> b!389520 m!385713))

(assert (=> b!389363 d!72797))

(declare-fun b!389531 () Bool)

(declare-fun lt!183314 () Unit!11905)

(declare-fun lt!183315 () Unit!11905)

(assert (=> b!389531 (= lt!183314 lt!183315)))

(declare-fun lt!183316 () V!13909)

(declare-fun lt!183317 () (_ BitVec 64))

(declare-fun lt!183318 () ListLongMap!5391)

(declare-fun lt!183312 () (_ BitVec 64))

(assert (=> b!389531 (not (contains!2450 (+!1009 lt!183318 (tuple2!6465 lt!183312 lt!183316)) lt!183317))))

(assert (=> b!389531 (= lt!183315 (addStillNotContains!135 lt!183318 lt!183312 lt!183316 lt!183317))))

(assert (=> b!389531 (= lt!183317 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!389531 (= lt!183316 (get!5575 (select (arr!11003 lt!183149) #b00000000000000000000000000000000) (dynLambda!638 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!389531 (= lt!183312 (select (arr!11002 lt!183156) #b00000000000000000000000000000000))))

(declare-fun call!27475 () ListLongMap!5391)

(assert (=> b!389531 (= lt!183318 call!27475)))

(declare-fun e!236000 () ListLongMap!5391)

(assert (=> b!389531 (= e!236000 (+!1009 call!27475 (tuple2!6465 (select (arr!11002 lt!183156) #b00000000000000000000000000000000) (get!5575 (select (arr!11003 lt!183149) #b00000000000000000000000000000000) (dynLambda!638 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!389532 () Bool)

(declare-fun e!236002 () ListLongMap!5391)

(assert (=> b!389532 (= e!236002 (ListLongMap!5392 Nil!6344))))

(declare-fun b!389533 () Bool)

(declare-fun e!235999 () Bool)

(declare-fun e!235998 () Bool)

(assert (=> b!389533 (= e!235999 e!235998)))

(declare-fun c!54042 () Bool)

(assert (=> b!389533 (= c!54042 (bvslt #b00000000000000000000000000000000 (size!11354 lt!183156)))))

(declare-fun b!389534 () Bool)

(assert (=> b!389534 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11354 lt!183156)))))

(assert (=> b!389534 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11355 lt!183149)))))

(declare-fun lt!183313 () ListLongMap!5391)

(declare-fun e!235997 () Bool)

(assert (=> b!389534 (= e!235997 (= (apply!300 lt!183313 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)) (get!5575 (select (arr!11003 lt!183149) #b00000000000000000000000000000000) (dynLambda!638 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!389535 () Bool)

(assert (=> b!389535 (= e!235998 (= lt!183313 (getCurrentListMapNoExtraKeys!941 lt!183156 lt!183149 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!389536 () Bool)

(assert (=> b!389536 (= e!236000 call!27475)))

(declare-fun d!72799 () Bool)

(declare-fun e!236001 () Bool)

(assert (=> d!72799 e!236001))

(declare-fun res!222868 () Bool)

(assert (=> d!72799 (=> (not res!222868) (not e!236001))))

(assert (=> d!72799 (= res!222868 (not (contains!2450 lt!183313 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72799 (= lt!183313 e!236002)))

(declare-fun c!54041 () Bool)

(assert (=> d!72799 (= c!54041 (bvsge #b00000000000000000000000000000000 (size!11354 lt!183156)))))

(assert (=> d!72799 (validMask!0 mask!970)))

(assert (=> d!72799 (= (getCurrentListMapNoExtraKeys!941 lt!183156 lt!183149 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!183313)))

(declare-fun bm!27472 () Bool)

(assert (=> bm!27472 (= call!27475 (getCurrentListMapNoExtraKeys!941 lt!183156 lt!183149 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!389537 () Bool)

(assert (=> b!389537 (= e!236002 e!236000)))

(declare-fun c!54040 () Bool)

(assert (=> b!389537 (= c!54040 (validKeyInArray!0 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)))))

(declare-fun b!389538 () Bool)

(assert (=> b!389538 (= e!235999 e!235997)))

(assert (=> b!389538 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11354 lt!183156)))))

(declare-fun res!222870 () Bool)

(assert (=> b!389538 (= res!222870 (contains!2450 lt!183313 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)))))

(assert (=> b!389538 (=> (not res!222870) (not e!235997))))

(declare-fun b!389539 () Bool)

(assert (=> b!389539 (= e!235998 (isEmpty!551 lt!183313))))

(declare-fun b!389540 () Bool)

(declare-fun res!222869 () Bool)

(assert (=> b!389540 (=> (not res!222869) (not e!236001))))

(assert (=> b!389540 (= res!222869 (not (contains!2450 lt!183313 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!389541 () Bool)

(declare-fun e!236003 () Bool)

(assert (=> b!389541 (= e!236003 (validKeyInArray!0 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)))))

(assert (=> b!389541 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!389542 () Bool)

(assert (=> b!389542 (= e!236001 e!235999)))

(declare-fun c!54039 () Bool)

(assert (=> b!389542 (= c!54039 e!236003)))

(declare-fun res!222867 () Bool)

(assert (=> b!389542 (=> (not res!222867) (not e!236003))))

(assert (=> b!389542 (= res!222867 (bvslt #b00000000000000000000000000000000 (size!11354 lt!183156)))))

(assert (= (and d!72799 c!54041) b!389532))

(assert (= (and d!72799 (not c!54041)) b!389537))

(assert (= (and b!389537 c!54040) b!389531))

(assert (= (and b!389537 (not c!54040)) b!389536))

(assert (= (or b!389531 b!389536) bm!27472))

(assert (= (and d!72799 res!222868) b!389540))

(assert (= (and b!389540 res!222869) b!389542))

(assert (= (and b!389542 res!222867) b!389541))

(assert (= (and b!389542 c!54039) b!389538))

(assert (= (and b!389542 (not c!54039)) b!389533))

(assert (= (and b!389538 res!222870) b!389534))

(assert (= (and b!389533 c!54042) b!389535))

(assert (= (and b!389533 (not c!54042)) b!389539))

(declare-fun b_lambda!8637 () Bool)

(assert (=> (not b_lambda!8637) (not b!389531)))

(assert (=> b!389531 t!11514))

(declare-fun b_and!16239 () Bool)

(assert (= b_and!16237 (and (=> t!11514 result!5733) b_and!16239)))

(declare-fun b_lambda!8639 () Bool)

(assert (=> (not b_lambda!8639) (not b!389534)))

(assert (=> b!389534 t!11514))

(declare-fun b_and!16241 () Bool)

(assert (= b_and!16239 (and (=> t!11514 result!5733) b_and!16241)))

(assert (=> b!389537 m!385679))

(assert (=> b!389537 m!385679))

(assert (=> b!389537 m!385713))

(declare-fun m!385725 () Bool)

(assert (=> d!72799 m!385725))

(assert (=> d!72799 m!385513))

(assert (=> b!389534 m!385679))

(declare-fun m!385727 () Bool)

(assert (=> b!389534 m!385727))

(assert (=> b!389534 m!385679))

(assert (=> b!389534 m!385715))

(assert (=> b!389534 m!385605))

(assert (=> b!389534 m!385717))

(assert (=> b!389534 m!385715))

(assert (=> b!389534 m!385605))

(assert (=> b!389541 m!385679))

(assert (=> b!389541 m!385679))

(assert (=> b!389541 m!385713))

(declare-fun m!385729 () Bool)

(assert (=> b!389535 m!385729))

(assert (=> b!389538 m!385679))

(assert (=> b!389538 m!385679))

(declare-fun m!385731 () Bool)

(assert (=> b!389538 m!385731))

(declare-fun m!385733 () Bool)

(assert (=> b!389531 m!385733))

(assert (=> b!389531 m!385679))

(assert (=> b!389531 m!385715))

(assert (=> b!389531 m!385605))

(assert (=> b!389531 m!385717))

(declare-fun m!385735 () Bool)

(assert (=> b!389531 m!385735))

(assert (=> b!389531 m!385735))

(declare-fun m!385737 () Bool)

(assert (=> b!389531 m!385737))

(assert (=> b!389531 m!385715))

(declare-fun m!385739 () Bool)

(assert (=> b!389531 m!385739))

(assert (=> b!389531 m!385605))

(assert (=> bm!27472 m!385729))

(declare-fun m!385741 () Bool)

(assert (=> b!389540 m!385741))

(declare-fun m!385743 () Bool)

(assert (=> b!389539 m!385743))

(assert (=> b!389363 d!72799))

(declare-fun d!72801 () Bool)

(declare-fun e!236009 () Bool)

(assert (=> d!72801 e!236009))

(declare-fun res!222873 () Bool)

(assert (=> d!72801 (=> (not res!222873) (not e!236009))))

(assert (=> d!72801 (= res!222873 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11354 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11355 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11354 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11355 _values!506))))))))

(declare-fun lt!183321 () Unit!11905)

(declare-fun choose!1322 (array!23079 array!23081 (_ BitVec 32) (_ BitVec 32) V!13909 V!13909 (_ BitVec 32) (_ BitVec 64) V!13909 (_ BitVec 32) Int) Unit!11905)

(assert (=> d!72801 (= lt!183321 (choose!1322 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!72801 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(assert (=> d!72801 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!236 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!183321)))

(declare-fun call!27480 () ListLongMap!5391)

(declare-fun bm!27477 () Bool)

(assert (=> bm!27477 (= call!27480 (getCurrentListMapNoExtraKeys!941 (array!23080 (store (arr!11002 _keys!658) i!548 k0!778) (size!11354 _keys!658)) (array!23082 (store (arr!11003 _values!506) i!548 (ValueCellFull!4458 v!373)) (size!11355 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun call!27481 () ListLongMap!5391)

(declare-fun bm!27478 () Bool)

(assert (=> bm!27478 (= call!27481 (getCurrentListMapNoExtraKeys!941 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389549 () Bool)

(declare-fun e!236008 () Bool)

(assert (=> b!389549 (= e!236008 (= call!27480 call!27481))))

(declare-fun b!389550 () Bool)

(assert (=> b!389550 (= e!236008 (= call!27480 (+!1009 call!27481 (tuple2!6465 k0!778 v!373))))))

(declare-fun b!389551 () Bool)

(assert (=> b!389551 (= e!236009 e!236008)))

(declare-fun c!54045 () Bool)

(assert (=> b!389551 (= c!54045 (bvsle #b00000000000000000000000000000000 i!548))))

(assert (= (and d!72801 res!222873) b!389551))

(assert (= (and b!389551 c!54045) b!389550))

(assert (= (and b!389551 (not c!54045)) b!389549))

(assert (= (or b!389550 b!389549) bm!27478))

(assert (= (or b!389550 b!389549) bm!27477))

(declare-fun m!385745 () Bool)

(assert (=> d!72801 m!385745))

(assert (=> bm!27477 m!385495))

(assert (=> bm!27477 m!385507))

(declare-fun m!385747 () Bool)

(assert (=> bm!27477 m!385747))

(assert (=> bm!27478 m!385509))

(declare-fun m!385749 () Bool)

(assert (=> b!389550 m!385749))

(assert (=> b!389363 d!72801))

(declare-fun d!72803 () Bool)

(declare-fun e!236012 () Bool)

(assert (=> d!72803 e!236012))

(declare-fun res!222879 () Bool)

(assert (=> d!72803 (=> (not res!222879) (not e!236012))))

(declare-fun lt!183331 () ListLongMap!5391)

(assert (=> d!72803 (= res!222879 (contains!2450 lt!183331 (_1!3242 lt!183151)))))

(declare-fun lt!183333 () List!6347)

(assert (=> d!72803 (= lt!183331 (ListLongMap!5392 lt!183333))))

(declare-fun lt!183330 () Unit!11905)

(declare-fun lt!183332 () Unit!11905)

(assert (=> d!72803 (= lt!183330 lt!183332)))

(declare-datatypes ((Option!363 0))(
  ( (Some!362 (v!7056 V!13909)) (None!361) )
))
(declare-fun getValueByKey!357 (List!6347 (_ BitVec 64)) Option!363)

(assert (=> d!72803 (= (getValueByKey!357 lt!183333 (_1!3242 lt!183151)) (Some!362 (_2!3242 lt!183151)))))

(declare-fun lemmaContainsTupThenGetReturnValue!181 (List!6347 (_ BitVec 64) V!13909) Unit!11905)

(assert (=> d!72803 (= lt!183332 (lemmaContainsTupThenGetReturnValue!181 lt!183333 (_1!3242 lt!183151) (_2!3242 lt!183151)))))

(declare-fun insertStrictlySorted!183 (List!6347 (_ BitVec 64) V!13909) List!6347)

(assert (=> d!72803 (= lt!183333 (insertStrictlySorted!183 (toList!2711 lt!183154) (_1!3242 lt!183151) (_2!3242 lt!183151)))))

(assert (=> d!72803 (= (+!1009 lt!183154 lt!183151) lt!183331)))

(declare-fun b!389556 () Bool)

(declare-fun res!222878 () Bool)

(assert (=> b!389556 (=> (not res!222878) (not e!236012))))

(assert (=> b!389556 (= res!222878 (= (getValueByKey!357 (toList!2711 lt!183331) (_1!3242 lt!183151)) (Some!362 (_2!3242 lt!183151))))))

(declare-fun b!389557 () Bool)

(declare-fun contains!2451 (List!6347 tuple2!6464) Bool)

(assert (=> b!389557 (= e!236012 (contains!2451 (toList!2711 lt!183331) lt!183151))))

(assert (= (and d!72803 res!222879) b!389556))

(assert (= (and b!389556 res!222878) b!389557))

(declare-fun m!385751 () Bool)

(assert (=> d!72803 m!385751))

(declare-fun m!385753 () Bool)

(assert (=> d!72803 m!385753))

(declare-fun m!385755 () Bool)

(assert (=> d!72803 m!385755))

(declare-fun m!385757 () Bool)

(assert (=> d!72803 m!385757))

(declare-fun m!385759 () Bool)

(assert (=> b!389556 m!385759))

(declare-fun m!385761 () Bool)

(assert (=> b!389557 m!385761))

(assert (=> b!389363 d!72803))

(declare-fun b!389566 () Bool)

(declare-fun e!236020 () Bool)

(declare-fun e!236021 () Bool)

(assert (=> b!389566 (= e!236020 e!236021)))

(declare-fun lt!183342 () (_ BitVec 64))

(assert (=> b!389566 (= lt!183342 (select (arr!11002 lt!183156) #b00000000000000000000000000000000))))

(declare-fun lt!183340 () Unit!11905)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23079 (_ BitVec 64) (_ BitVec 32)) Unit!11905)

(assert (=> b!389566 (= lt!183340 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!183156 lt!183342 #b00000000000000000000000000000000))))

(assert (=> b!389566 (arrayContainsKey!0 lt!183156 lt!183342 #b00000000000000000000000000000000)))

(declare-fun lt!183341 () Unit!11905)

(assert (=> b!389566 (= lt!183341 lt!183340)))

(declare-fun res!222884 () Bool)

(declare-datatypes ((SeekEntryResult!3499 0))(
  ( (MissingZero!3499 (index!16175 (_ BitVec 32))) (Found!3499 (index!16176 (_ BitVec 32))) (Intermediate!3499 (undefined!4311 Bool) (index!16177 (_ BitVec 32)) (x!38232 (_ BitVec 32))) (Undefined!3499) (MissingVacant!3499 (index!16178 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23079 (_ BitVec 32)) SeekEntryResult!3499)

(assert (=> b!389566 (= res!222884 (= (seekEntryOrOpen!0 (select (arr!11002 lt!183156) #b00000000000000000000000000000000) lt!183156 mask!970) (Found!3499 #b00000000000000000000000000000000)))))

(assert (=> b!389566 (=> (not res!222884) (not e!236021))))

(declare-fun bm!27481 () Bool)

(declare-fun call!27484 () Bool)

(assert (=> bm!27481 (= call!27484 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!183156 mask!970))))

(declare-fun b!389567 () Bool)

(declare-fun e!236019 () Bool)

(assert (=> b!389567 (= e!236019 e!236020)))

(declare-fun c!54048 () Bool)

(assert (=> b!389567 (= c!54048 (validKeyInArray!0 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)))))

(declare-fun b!389568 () Bool)

(assert (=> b!389568 (= e!236021 call!27484)))

(declare-fun b!389569 () Bool)

(assert (=> b!389569 (= e!236020 call!27484)))

(declare-fun d!72805 () Bool)

(declare-fun res!222885 () Bool)

(assert (=> d!72805 (=> res!222885 e!236019)))

(assert (=> d!72805 (= res!222885 (bvsge #b00000000000000000000000000000000 (size!11354 lt!183156)))))

(assert (=> d!72805 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!183156 mask!970) e!236019)))

(assert (= (and d!72805 (not res!222885)) b!389567))

(assert (= (and b!389567 c!54048) b!389566))

(assert (= (and b!389567 (not c!54048)) b!389569))

(assert (= (and b!389566 res!222884) b!389568))

(assert (= (or b!389568 b!389569) bm!27481))

(assert (=> b!389566 m!385679))

(declare-fun m!385763 () Bool)

(assert (=> b!389566 m!385763))

(declare-fun m!385765 () Bool)

(assert (=> b!389566 m!385765))

(assert (=> b!389566 m!385679))

(declare-fun m!385767 () Bool)

(assert (=> b!389566 m!385767))

(declare-fun m!385769 () Bool)

(assert (=> bm!27481 m!385769))

(assert (=> b!389567 m!385679))

(assert (=> b!389567 m!385679))

(assert (=> b!389567 m!385713))

(assert (=> b!389354 d!72805))

(declare-fun d!72807 () Bool)

(declare-fun res!222890 () Bool)

(declare-fun e!236026 () Bool)

(assert (=> d!72807 (=> res!222890 e!236026)))

(assert (=> d!72807 (= res!222890 (= (select (arr!11002 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!72807 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!236026)))

(declare-fun b!389574 () Bool)

(declare-fun e!236027 () Bool)

(assert (=> b!389574 (= e!236026 e!236027)))

(declare-fun res!222891 () Bool)

(assert (=> b!389574 (=> (not res!222891) (not e!236027))))

(assert (=> b!389574 (= res!222891 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11354 _keys!658)))))

(declare-fun b!389575 () Bool)

(assert (=> b!389575 (= e!236027 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!72807 (not res!222890)) b!389574))

(assert (= (and b!389574 res!222891) b!389575))

(assert (=> d!72807 m!385595))

(declare-fun m!385771 () Bool)

(assert (=> b!389575 m!385771))

(assert (=> b!389355 d!72807))

(declare-fun d!72809 () Bool)

(declare-fun e!236028 () Bool)

(assert (=> d!72809 e!236028))

(declare-fun res!222893 () Bool)

(assert (=> d!72809 (=> (not res!222893) (not e!236028))))

(declare-fun lt!183344 () ListLongMap!5391)

(assert (=> d!72809 (= res!222893 (contains!2450 lt!183344 (_1!3242 lt!183159)))))

(declare-fun lt!183346 () List!6347)

(assert (=> d!72809 (= lt!183344 (ListLongMap!5392 lt!183346))))

(declare-fun lt!183343 () Unit!11905)

(declare-fun lt!183345 () Unit!11905)

(assert (=> d!72809 (= lt!183343 lt!183345)))

(assert (=> d!72809 (= (getValueByKey!357 lt!183346 (_1!3242 lt!183159)) (Some!362 (_2!3242 lt!183159)))))

(assert (=> d!72809 (= lt!183345 (lemmaContainsTupThenGetReturnValue!181 lt!183346 (_1!3242 lt!183159) (_2!3242 lt!183159)))))

(assert (=> d!72809 (= lt!183346 (insertStrictlySorted!183 (toList!2711 lt!183147) (_1!3242 lt!183159) (_2!3242 lt!183159)))))

(assert (=> d!72809 (= (+!1009 lt!183147 lt!183159) lt!183344)))

(declare-fun b!389576 () Bool)

(declare-fun res!222892 () Bool)

(assert (=> b!389576 (=> (not res!222892) (not e!236028))))

(assert (=> b!389576 (= res!222892 (= (getValueByKey!357 (toList!2711 lt!183344) (_1!3242 lt!183159)) (Some!362 (_2!3242 lt!183159))))))

(declare-fun b!389577 () Bool)

(assert (=> b!389577 (= e!236028 (contains!2451 (toList!2711 lt!183344) lt!183159))))

(assert (= (and d!72809 res!222893) b!389576))

(assert (= (and b!389576 res!222892) b!389577))

(declare-fun m!385773 () Bool)

(assert (=> d!72809 m!385773))

(declare-fun m!385775 () Bool)

(assert (=> d!72809 m!385775))

(declare-fun m!385777 () Bool)

(assert (=> d!72809 m!385777))

(declare-fun m!385779 () Bool)

(assert (=> d!72809 m!385779))

(declare-fun m!385781 () Bool)

(assert (=> b!389576 m!385781))

(declare-fun m!385783 () Bool)

(assert (=> b!389577 m!385783))

(assert (=> b!389359 d!72809))

(declare-fun d!72811 () Bool)

(declare-fun e!236029 () Bool)

(assert (=> d!72811 e!236029))

(declare-fun res!222895 () Bool)

(assert (=> d!72811 (=> (not res!222895) (not e!236029))))

(declare-fun lt!183348 () ListLongMap!5391)

(assert (=> d!72811 (= res!222895 (contains!2450 lt!183348 (_1!3242 lt!183159)))))

(declare-fun lt!183350 () List!6347)

(assert (=> d!72811 (= lt!183348 (ListLongMap!5392 lt!183350))))

(declare-fun lt!183347 () Unit!11905)

(declare-fun lt!183349 () Unit!11905)

(assert (=> d!72811 (= lt!183347 lt!183349)))

(assert (=> d!72811 (= (getValueByKey!357 lt!183350 (_1!3242 lt!183159)) (Some!362 (_2!3242 lt!183159)))))

(assert (=> d!72811 (= lt!183349 (lemmaContainsTupThenGetReturnValue!181 lt!183350 (_1!3242 lt!183159) (_2!3242 lt!183159)))))

(assert (=> d!72811 (= lt!183350 (insertStrictlySorted!183 (toList!2711 lt!183154) (_1!3242 lt!183159) (_2!3242 lt!183159)))))

(assert (=> d!72811 (= (+!1009 lt!183154 lt!183159) lt!183348)))

(declare-fun b!389578 () Bool)

(declare-fun res!222894 () Bool)

(assert (=> b!389578 (=> (not res!222894) (not e!236029))))

(assert (=> b!389578 (= res!222894 (= (getValueByKey!357 (toList!2711 lt!183348) (_1!3242 lt!183159)) (Some!362 (_2!3242 lt!183159))))))

(declare-fun b!389579 () Bool)

(assert (=> b!389579 (= e!236029 (contains!2451 (toList!2711 lt!183348) lt!183159))))

(assert (= (and d!72811 res!222895) b!389578))

(assert (= (and b!389578 res!222894) b!389579))

(declare-fun m!385785 () Bool)

(assert (=> d!72811 m!385785))

(declare-fun m!385787 () Bool)

(assert (=> d!72811 m!385787))

(declare-fun m!385789 () Bool)

(assert (=> d!72811 m!385789))

(declare-fun m!385791 () Bool)

(assert (=> d!72811 m!385791))

(declare-fun m!385793 () Bool)

(assert (=> b!389578 m!385793))

(declare-fun m!385795 () Bool)

(assert (=> b!389579 m!385795))

(assert (=> b!389359 d!72811))

(declare-fun d!72813 () Bool)

(declare-fun e!236030 () Bool)

(assert (=> d!72813 e!236030))

(declare-fun res!222897 () Bool)

(assert (=> d!72813 (=> (not res!222897) (not e!236030))))

(declare-fun lt!183352 () ListLongMap!5391)

(assert (=> d!72813 (= res!222897 (contains!2450 lt!183352 (_1!3242 lt!183152)))))

(declare-fun lt!183354 () List!6347)

(assert (=> d!72813 (= lt!183352 (ListLongMap!5392 lt!183354))))

(declare-fun lt!183351 () Unit!11905)

(declare-fun lt!183353 () Unit!11905)

(assert (=> d!72813 (= lt!183351 lt!183353)))

(assert (=> d!72813 (= (getValueByKey!357 lt!183354 (_1!3242 lt!183152)) (Some!362 (_2!3242 lt!183152)))))

(assert (=> d!72813 (= lt!183353 (lemmaContainsTupThenGetReturnValue!181 lt!183354 (_1!3242 lt!183152) (_2!3242 lt!183152)))))

(assert (=> d!72813 (= lt!183354 (insertStrictlySorted!183 (toList!2711 lt!183148) (_1!3242 lt!183152) (_2!3242 lt!183152)))))

(assert (=> d!72813 (= (+!1009 lt!183148 lt!183152) lt!183352)))

(declare-fun b!389580 () Bool)

(declare-fun res!222896 () Bool)

(assert (=> b!389580 (=> (not res!222896) (not e!236030))))

(assert (=> b!389580 (= res!222896 (= (getValueByKey!357 (toList!2711 lt!183352) (_1!3242 lt!183152)) (Some!362 (_2!3242 lt!183152))))))

(declare-fun b!389581 () Bool)

(assert (=> b!389581 (= e!236030 (contains!2451 (toList!2711 lt!183352) lt!183152))))

(assert (= (and d!72813 res!222897) b!389580))

(assert (= (and b!389580 res!222896) b!389581))

(declare-fun m!385797 () Bool)

(assert (=> d!72813 m!385797))

(declare-fun m!385799 () Bool)

(assert (=> d!72813 m!385799))

(declare-fun m!385801 () Bool)

(assert (=> d!72813 m!385801))

(declare-fun m!385803 () Bool)

(assert (=> d!72813 m!385803))

(declare-fun m!385805 () Bool)

(assert (=> b!389580 m!385805))

(declare-fun m!385807 () Bool)

(assert (=> b!389581 m!385807))

(assert (=> b!389359 d!72813))

(declare-fun d!72815 () Bool)

(declare-fun e!236031 () Bool)

(assert (=> d!72815 e!236031))

(declare-fun res!222899 () Bool)

(assert (=> d!72815 (=> (not res!222899) (not e!236031))))

(declare-fun lt!183356 () ListLongMap!5391)

(assert (=> d!72815 (= res!222899 (contains!2450 lt!183356 (_1!3242 lt!183151)))))

(declare-fun lt!183358 () List!6347)

(assert (=> d!72815 (= lt!183356 (ListLongMap!5392 lt!183358))))

(declare-fun lt!183355 () Unit!11905)

(declare-fun lt!183357 () Unit!11905)

(assert (=> d!72815 (= lt!183355 lt!183357)))

(assert (=> d!72815 (= (getValueByKey!357 lt!183358 (_1!3242 lt!183151)) (Some!362 (_2!3242 lt!183151)))))

(assert (=> d!72815 (= lt!183357 (lemmaContainsTupThenGetReturnValue!181 lt!183358 (_1!3242 lt!183151) (_2!3242 lt!183151)))))

(assert (=> d!72815 (= lt!183358 (insertStrictlySorted!183 (toList!2711 lt!183153) (_1!3242 lt!183151) (_2!3242 lt!183151)))))

(assert (=> d!72815 (= (+!1009 lt!183153 lt!183151) lt!183356)))

(declare-fun b!389582 () Bool)

(declare-fun res!222898 () Bool)

(assert (=> b!389582 (=> (not res!222898) (not e!236031))))

(assert (=> b!389582 (= res!222898 (= (getValueByKey!357 (toList!2711 lt!183356) (_1!3242 lt!183151)) (Some!362 (_2!3242 lt!183151))))))

(declare-fun b!389583 () Bool)

(assert (=> b!389583 (= e!236031 (contains!2451 (toList!2711 lt!183356) lt!183151))))

(assert (= (and d!72815 res!222899) b!389582))

(assert (= (and b!389582 res!222898) b!389583))

(declare-fun m!385809 () Bool)

(assert (=> d!72815 m!385809))

(declare-fun m!385811 () Bool)

(assert (=> d!72815 m!385811))

(declare-fun m!385813 () Bool)

(assert (=> d!72815 m!385813))

(declare-fun m!385815 () Bool)

(assert (=> d!72815 m!385815))

(declare-fun m!385817 () Bool)

(assert (=> b!389582 m!385817))

(declare-fun m!385819 () Bool)

(assert (=> b!389583 m!385819))

(assert (=> b!389359 d!72815))

(declare-fun d!72817 () Bool)

(assert (=> d!72817 (= (+!1009 (+!1009 lt!183154 (tuple2!6465 k0!778 v!373)) (tuple2!6465 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)) (+!1009 (+!1009 lt!183154 (tuple2!6465 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472)) (tuple2!6465 k0!778 v!373)))))

(declare-fun lt!183361 () Unit!11905)

(declare-fun choose!1323 (ListLongMap!5391 (_ BitVec 64) V!13909 (_ BitVec 64) V!13909) Unit!11905)

(assert (=> d!72817 (= lt!183361 (choose!1323 lt!183154 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> d!72817 (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!72817 (= (addCommutativeForDiffKeys!326 lt!183154 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) lt!183361)))

(declare-fun bs!13128 () Bool)

(assert (= bs!13128 d!72817))

(declare-fun m!385821 () Bool)

(assert (=> bs!13128 m!385821))

(declare-fun m!385823 () Bool)

(assert (=> bs!13128 m!385823))

(declare-fun m!385825 () Bool)

(assert (=> bs!13128 m!385825))

(declare-fun m!385827 () Bool)

(assert (=> bs!13128 m!385827))

(assert (=> bs!13128 m!385825))

(declare-fun m!385829 () Bool)

(assert (=> bs!13128 m!385829))

(assert (=> bs!13128 m!385821))

(assert (=> b!389359 d!72817))

(declare-fun d!72819 () Bool)

(declare-fun e!236032 () Bool)

(assert (=> d!72819 e!236032))

(declare-fun res!222901 () Bool)

(assert (=> d!72819 (=> (not res!222901) (not e!236032))))

(declare-fun lt!183363 () ListLongMap!5391)

(assert (=> d!72819 (= res!222901 (contains!2450 lt!183363 (_1!3242 lt!183152)))))

(declare-fun lt!183365 () List!6347)

(assert (=> d!72819 (= lt!183363 (ListLongMap!5392 lt!183365))))

(declare-fun lt!183362 () Unit!11905)

(declare-fun lt!183364 () Unit!11905)

(assert (=> d!72819 (= lt!183362 lt!183364)))

(assert (=> d!72819 (= (getValueByKey!357 lt!183365 (_1!3242 lt!183152)) (Some!362 (_2!3242 lt!183152)))))

(assert (=> d!72819 (= lt!183364 (lemmaContainsTupThenGetReturnValue!181 lt!183365 (_1!3242 lt!183152) (_2!3242 lt!183152)))))

(assert (=> d!72819 (= lt!183365 (insertStrictlySorted!183 (toList!2711 (+!1009 lt!183150 lt!183159)) (_1!3242 lt!183152) (_2!3242 lt!183152)))))

(assert (=> d!72819 (= (+!1009 (+!1009 lt!183150 lt!183159) lt!183152) lt!183363)))

(declare-fun b!389584 () Bool)

(declare-fun res!222900 () Bool)

(assert (=> b!389584 (=> (not res!222900) (not e!236032))))

(assert (=> b!389584 (= res!222900 (= (getValueByKey!357 (toList!2711 lt!183363) (_1!3242 lt!183152)) (Some!362 (_2!3242 lt!183152))))))

(declare-fun b!389585 () Bool)

(assert (=> b!389585 (= e!236032 (contains!2451 (toList!2711 lt!183363) lt!183152))))

(assert (= (and d!72819 res!222901) b!389584))

(assert (= (and b!389584 res!222900) b!389585))

(declare-fun m!385831 () Bool)

(assert (=> d!72819 m!385831))

(declare-fun m!385833 () Bool)

(assert (=> d!72819 m!385833))

(declare-fun m!385835 () Bool)

(assert (=> d!72819 m!385835))

(declare-fun m!385837 () Bool)

(assert (=> d!72819 m!385837))

(declare-fun m!385839 () Bool)

(assert (=> b!389584 m!385839))

(declare-fun m!385841 () Bool)

(assert (=> b!389585 m!385841))

(assert (=> b!389359 d!72819))

(declare-fun d!72821 () Bool)

(declare-fun e!236033 () Bool)

(assert (=> d!72821 e!236033))

(declare-fun res!222903 () Bool)

(assert (=> d!72821 (=> (not res!222903) (not e!236033))))

(declare-fun lt!183367 () ListLongMap!5391)

(assert (=> d!72821 (= res!222903 (contains!2450 lt!183367 (_1!3242 lt!183159)))))

(declare-fun lt!183369 () List!6347)

(assert (=> d!72821 (= lt!183367 (ListLongMap!5392 lt!183369))))

(declare-fun lt!183366 () Unit!11905)

(declare-fun lt!183368 () Unit!11905)

(assert (=> d!72821 (= lt!183366 lt!183368)))

(assert (=> d!72821 (= (getValueByKey!357 lt!183369 (_1!3242 lt!183159)) (Some!362 (_2!3242 lt!183159)))))

(assert (=> d!72821 (= lt!183368 (lemmaContainsTupThenGetReturnValue!181 lt!183369 (_1!3242 lt!183159) (_2!3242 lt!183159)))))

(assert (=> d!72821 (= lt!183369 (insertStrictlySorted!183 (toList!2711 lt!183150) (_1!3242 lt!183159) (_2!3242 lt!183159)))))

(assert (=> d!72821 (= (+!1009 lt!183150 lt!183159) lt!183367)))

(declare-fun b!389586 () Bool)

(declare-fun res!222902 () Bool)

(assert (=> b!389586 (=> (not res!222902) (not e!236033))))

(assert (=> b!389586 (= res!222902 (= (getValueByKey!357 (toList!2711 lt!183367) (_1!3242 lt!183159)) (Some!362 (_2!3242 lt!183159))))))

(declare-fun b!389587 () Bool)

(assert (=> b!389587 (= e!236033 (contains!2451 (toList!2711 lt!183367) lt!183159))))

(assert (= (and d!72821 res!222903) b!389586))

(assert (= (and b!389586 res!222902) b!389587))

(declare-fun m!385843 () Bool)

(assert (=> d!72821 m!385843))

(declare-fun m!385845 () Bool)

(assert (=> d!72821 m!385845))

(declare-fun m!385847 () Bool)

(assert (=> d!72821 m!385847))

(declare-fun m!385849 () Bool)

(assert (=> d!72821 m!385849))

(declare-fun m!385851 () Bool)

(assert (=> b!389586 m!385851))

(declare-fun m!385853 () Bool)

(assert (=> b!389587 m!385853))

(assert (=> b!389359 d!72821))

(declare-fun d!72823 () Bool)

(declare-fun e!236034 () Bool)

(assert (=> d!72823 e!236034))

(declare-fun res!222905 () Bool)

(assert (=> d!72823 (=> (not res!222905) (not e!236034))))

(declare-fun lt!183371 () ListLongMap!5391)

(assert (=> d!72823 (= res!222905 (contains!2450 lt!183371 (_1!3242 lt!183152)))))

(declare-fun lt!183373 () List!6347)

(assert (=> d!72823 (= lt!183371 (ListLongMap!5392 lt!183373))))

(declare-fun lt!183370 () Unit!11905)

(declare-fun lt!183372 () Unit!11905)

(assert (=> d!72823 (= lt!183370 lt!183372)))

(assert (=> d!72823 (= (getValueByKey!357 lt!183373 (_1!3242 lt!183152)) (Some!362 (_2!3242 lt!183152)))))

(assert (=> d!72823 (= lt!183372 (lemmaContainsTupThenGetReturnValue!181 lt!183373 (_1!3242 lt!183152) (_2!3242 lt!183152)))))

(assert (=> d!72823 (= lt!183373 (insertStrictlySorted!183 (toList!2711 lt!183153) (_1!3242 lt!183152) (_2!3242 lt!183152)))))

(assert (=> d!72823 (= (+!1009 lt!183153 lt!183152) lt!183371)))

(declare-fun b!389588 () Bool)

(declare-fun res!222904 () Bool)

(assert (=> b!389588 (=> (not res!222904) (not e!236034))))

(assert (=> b!389588 (= res!222904 (= (getValueByKey!357 (toList!2711 lt!183371) (_1!3242 lt!183152)) (Some!362 (_2!3242 lt!183152))))))

(declare-fun b!389589 () Bool)

(assert (=> b!389589 (= e!236034 (contains!2451 (toList!2711 lt!183371) lt!183152))))

(assert (= (and d!72823 res!222905) b!389588))

(assert (= (and b!389588 res!222904) b!389589))

(declare-fun m!385855 () Bool)

(assert (=> d!72823 m!385855))

(declare-fun m!385857 () Bool)

(assert (=> d!72823 m!385857))

(declare-fun m!385859 () Bool)

(assert (=> d!72823 m!385859))

(declare-fun m!385861 () Bool)

(assert (=> d!72823 m!385861))

(declare-fun m!385863 () Bool)

(assert (=> b!389588 m!385863))

(declare-fun m!385865 () Bool)

(assert (=> b!389589 m!385865))

(assert (=> b!389359 d!72823))

(declare-fun b!389600 () Bool)

(declare-fun e!236046 () Bool)

(declare-fun e!236044 () Bool)

(assert (=> b!389600 (= e!236046 e!236044)))

(declare-fun c!54051 () Bool)

(assert (=> b!389600 (= c!54051 (validKeyInArray!0 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!389601 () Bool)

(declare-fun e!236045 () Bool)

(declare-fun contains!2452 (List!6346 (_ BitVec 64)) Bool)

(assert (=> b!389601 (= e!236045 (contains!2452 Nil!6343 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!389602 () Bool)

(declare-fun call!27487 () Bool)

(assert (=> b!389602 (= e!236044 call!27487)))

(declare-fun d!72825 () Bool)

(declare-fun res!222913 () Bool)

(declare-fun e!236043 () Bool)

(assert (=> d!72825 (=> res!222913 e!236043)))

(assert (=> d!72825 (= res!222913 (bvsge #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(assert (=> d!72825 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6343) e!236043)))

(declare-fun b!389603 () Bool)

(assert (=> b!389603 (= e!236044 call!27487)))

(declare-fun bm!27484 () Bool)

(assert (=> bm!27484 (= call!27487 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54051 (Cons!6342 (select (arr!11002 _keys!658) #b00000000000000000000000000000000) Nil!6343) Nil!6343)))))

(declare-fun b!389604 () Bool)

(assert (=> b!389604 (= e!236043 e!236046)))

(declare-fun res!222912 () Bool)

(assert (=> b!389604 (=> (not res!222912) (not e!236046))))

(assert (=> b!389604 (= res!222912 (not e!236045))))

(declare-fun res!222914 () Bool)

(assert (=> b!389604 (=> (not res!222914) (not e!236045))))

(assert (=> b!389604 (= res!222914 (validKeyInArray!0 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)))))

(assert (= (and d!72825 (not res!222913)) b!389604))

(assert (= (and b!389604 res!222914) b!389601))

(assert (= (and b!389604 res!222912) b!389600))

(assert (= (and b!389600 c!54051) b!389602))

(assert (= (and b!389600 (not c!54051)) b!389603))

(assert (= (or b!389602 b!389603) bm!27484))

(assert (=> b!389600 m!385595))

(assert (=> b!389600 m!385595))

(assert (=> b!389600 m!385597))

(assert (=> b!389601 m!385595))

(assert (=> b!389601 m!385595))

(declare-fun m!385867 () Bool)

(assert (=> b!389601 m!385867))

(assert (=> bm!27484 m!385595))

(declare-fun m!385869 () Bool)

(assert (=> bm!27484 m!385869))

(assert (=> b!389604 m!385595))

(assert (=> b!389604 m!385595))

(assert (=> b!389604 m!385597))

(assert (=> b!389364 d!72825))

(declare-fun d!72827 () Bool)

(assert (=> d!72827 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!389365 d!72827))

(declare-fun b!389605 () Bool)

(declare-fun e!236050 () Bool)

(declare-fun e!236048 () Bool)

(assert (=> b!389605 (= e!236050 e!236048)))

(declare-fun c!54052 () Bool)

(assert (=> b!389605 (= c!54052 (validKeyInArray!0 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)))))

(declare-fun b!389606 () Bool)

(declare-fun e!236049 () Bool)

(assert (=> b!389606 (= e!236049 (contains!2452 Nil!6343 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)))))

(declare-fun b!389607 () Bool)

(declare-fun call!27488 () Bool)

(assert (=> b!389607 (= e!236048 call!27488)))

(declare-fun d!72829 () Bool)

(declare-fun res!222916 () Bool)

(declare-fun e!236047 () Bool)

(assert (=> d!72829 (=> res!222916 e!236047)))

(assert (=> d!72829 (= res!222916 (bvsge #b00000000000000000000000000000000 (size!11354 lt!183156)))))

(assert (=> d!72829 (= (arrayNoDuplicates!0 lt!183156 #b00000000000000000000000000000000 Nil!6343) e!236047)))

(declare-fun b!389608 () Bool)

(assert (=> b!389608 (= e!236048 call!27488)))

(declare-fun bm!27485 () Bool)

(assert (=> bm!27485 (= call!27488 (arrayNoDuplicates!0 lt!183156 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54052 (Cons!6342 (select (arr!11002 lt!183156) #b00000000000000000000000000000000) Nil!6343) Nil!6343)))))

(declare-fun b!389609 () Bool)

(assert (=> b!389609 (= e!236047 e!236050)))

(declare-fun res!222915 () Bool)

(assert (=> b!389609 (=> (not res!222915) (not e!236050))))

(assert (=> b!389609 (= res!222915 (not e!236049))))

(declare-fun res!222917 () Bool)

(assert (=> b!389609 (=> (not res!222917) (not e!236049))))

(assert (=> b!389609 (= res!222917 (validKeyInArray!0 (select (arr!11002 lt!183156) #b00000000000000000000000000000000)))))

(assert (= (and d!72829 (not res!222916)) b!389609))

(assert (= (and b!389609 res!222917) b!389606))

(assert (= (and b!389609 res!222915) b!389605))

(assert (= (and b!389605 c!54052) b!389607))

(assert (= (and b!389605 (not c!54052)) b!389608))

(assert (= (or b!389607 b!389608) bm!27485))

(assert (=> b!389605 m!385679))

(assert (=> b!389605 m!385679))

(assert (=> b!389605 m!385713))

(assert (=> b!389606 m!385679))

(assert (=> b!389606 m!385679))

(declare-fun m!385871 () Bool)

(assert (=> b!389606 m!385871))

(assert (=> bm!27485 m!385679))

(declare-fun m!385873 () Bool)

(assert (=> bm!27485 m!385873))

(assert (=> b!389609 m!385679))

(assert (=> b!389609 m!385679))

(assert (=> b!389609 m!385713))

(assert (=> b!389356 d!72829))

(declare-fun d!72831 () Bool)

(assert (=> d!72831 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!37902 d!72831))

(declare-fun d!72833 () Bool)

(assert (=> d!72833 (= (array_inv!8066 _values!506) (bvsge (size!11355 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!37902 d!72833))

(declare-fun d!72835 () Bool)

(assert (=> d!72835 (= (array_inv!8067 _keys!658) (bvsge (size!11354 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!37902 d!72835))

(declare-fun b!389610 () Bool)

(declare-fun e!236052 () Bool)

(declare-fun e!236053 () Bool)

(assert (=> b!389610 (= e!236052 e!236053)))

(declare-fun lt!183376 () (_ BitVec 64))

(assert (=> b!389610 (= lt!183376 (select (arr!11002 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!183374 () Unit!11905)

(assert (=> b!389610 (= lt!183374 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!183376 #b00000000000000000000000000000000))))

(assert (=> b!389610 (arrayContainsKey!0 _keys!658 lt!183376 #b00000000000000000000000000000000)))

(declare-fun lt!183375 () Unit!11905)

(assert (=> b!389610 (= lt!183375 lt!183374)))

(declare-fun res!222918 () Bool)

(assert (=> b!389610 (= res!222918 (= (seekEntryOrOpen!0 (select (arr!11002 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3499 #b00000000000000000000000000000000)))))

(assert (=> b!389610 (=> (not res!222918) (not e!236053))))

(declare-fun bm!27486 () Bool)

(declare-fun call!27489 () Bool)

(assert (=> bm!27486 (= call!27489 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!389611 () Bool)

(declare-fun e!236051 () Bool)

(assert (=> b!389611 (= e!236051 e!236052)))

(declare-fun c!54053 () Bool)

(assert (=> b!389611 (= c!54053 (validKeyInArray!0 (select (arr!11002 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!389612 () Bool)

(assert (=> b!389612 (= e!236053 call!27489)))

(declare-fun b!389613 () Bool)

(assert (=> b!389613 (= e!236052 call!27489)))

(declare-fun d!72837 () Bool)

(declare-fun res!222919 () Bool)

(assert (=> d!72837 (=> res!222919 e!236051)))

(assert (=> d!72837 (= res!222919 (bvsge #b00000000000000000000000000000000 (size!11354 _keys!658)))))

(assert (=> d!72837 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!236051)))

(assert (= (and d!72837 (not res!222919)) b!389611))

(assert (= (and b!389611 c!54053) b!389610))

(assert (= (and b!389611 (not c!54053)) b!389613))

(assert (= (and b!389610 res!222918) b!389612))

(assert (= (or b!389612 b!389613) bm!27486))

(assert (=> b!389610 m!385595))

(declare-fun m!385875 () Bool)

(assert (=> b!389610 m!385875))

(declare-fun m!385877 () Bool)

(assert (=> b!389610 m!385877))

(assert (=> b!389610 m!385595))

(declare-fun m!385879 () Bool)

(assert (=> b!389610 m!385879))

(declare-fun m!385881 () Bool)

(assert (=> bm!27486 m!385881))

(assert (=> b!389611 m!385595))

(assert (=> b!389611 m!385595))

(assert (=> b!389611 m!385597))

(assert (=> b!389358 d!72837))

(declare-fun b!389621 () Bool)

(declare-fun e!236059 () Bool)

(assert (=> b!389621 (= e!236059 tp_is_empty!9603)))

(declare-fun b!389620 () Bool)

(declare-fun e!236058 () Bool)

(assert (=> b!389620 (= e!236058 tp_is_empty!9603)))

(declare-fun mapIsEmpty!15984 () Bool)

(declare-fun mapRes!15984 () Bool)

(assert (=> mapIsEmpty!15984 mapRes!15984))

(declare-fun mapNonEmpty!15984 () Bool)

(declare-fun tp!31563 () Bool)

(assert (=> mapNonEmpty!15984 (= mapRes!15984 (and tp!31563 e!236058))))

(declare-fun mapKey!15984 () (_ BitVec 32))

(declare-fun mapRest!15984 () (Array (_ BitVec 32) ValueCell!4458))

(declare-fun mapValue!15984 () ValueCell!4458)

(assert (=> mapNonEmpty!15984 (= mapRest!15978 (store mapRest!15984 mapKey!15984 mapValue!15984))))

(declare-fun condMapEmpty!15984 () Bool)

(declare-fun mapDefault!15984 () ValueCell!4458)

(assert (=> mapNonEmpty!15978 (= condMapEmpty!15984 (= mapRest!15978 ((as const (Array (_ BitVec 32) ValueCell!4458)) mapDefault!15984)))))

(assert (=> mapNonEmpty!15978 (= tp!31554 (and e!236059 mapRes!15984))))

(assert (= (and mapNonEmpty!15978 condMapEmpty!15984) mapIsEmpty!15984))

(assert (= (and mapNonEmpty!15978 (not condMapEmpty!15984)) mapNonEmpty!15984))

(assert (= (and mapNonEmpty!15984 ((_ is ValueCellFull!4458) mapValue!15984)) b!389620))

(assert (= (and mapNonEmpty!15978 ((_ is ValueCellFull!4458) mapDefault!15984)) b!389621))

(declare-fun m!385883 () Bool)

(assert (=> mapNonEmpty!15984 m!385883))

(declare-fun b_lambda!8641 () Bool)

(assert (= b_lambda!8639 (or (and start!37902 b_free!8931) b_lambda!8641)))

(declare-fun b_lambda!8643 () Bool)

(assert (= b_lambda!8631 (or (and start!37902 b_free!8931) b_lambda!8643)))

(declare-fun b_lambda!8645 () Bool)

(assert (= b_lambda!8635 (or (and start!37902 b_free!8931) b_lambda!8645)))

(declare-fun b_lambda!8647 () Bool)

(assert (= b_lambda!8629 (or (and start!37902 b_free!8931) b_lambda!8647)))

(declare-fun b_lambda!8649 () Bool)

(assert (= b_lambda!8637 (or (and start!37902 b_free!8931) b_lambda!8649)))

(declare-fun b_lambda!8651 () Bool)

(assert (= b_lambda!8633 (or (and start!37902 b_free!8931) b_lambda!8651)))

(check-sat b_and!16241 (not b!389610) (not b!389443) (not b!389581) (not b!389538) (not b!389587) (not b!389440) (not bm!27485) (not b!389604) (not b_lambda!8651) (not b!389493) (not bm!27470) (not d!72795) (not b!389600) (not d!72813) (not d!72823) (not b!389439) (not d!72803) (not bm!27477) (not b_lambda!8649) (not b!389584) (not d!72801) (not b!389579) (not b!389442) (not b!389566) (not bm!27465) (not b!389580) (not bm!27472) (not b!389535) (not bm!27481) (not b!389530) (not bm!27458) (not b!389510) (not b!389509) (not b!389531) (not b!389528) (not mapNonEmpty!15984) (not b!389498) (not bm!27443) (not b!389507) (not b!389601) (not b!389585) (not b!389540) (not b!389578) (not bm!27484) (not d!72793) (not d!72797) (not b!389499) (not bm!27471) (not b!389609) (not b!389520) (not b!389519) (not b!389441) (not b!389522) (not b!389539) (not d!72821) (not d!72809) (not b_next!8931) (not d!72815) (not bm!27464) (not b!389582) (not b!389433) (not b!389437) (not b!389583) (not bm!27486) (not b!389577) (not b!389606) (not b_lambda!8643) (not d!72819) (not d!72811) (not b!389537) (not d!72799) (not bm!27461) (not b!389576) (not b!389534) (not b!389589) (not b!389514) (not b!389575) tp_is_empty!9603 (not b!389550) (not b!389586) (not b_lambda!8641) (not b!389516) (not b!389556) (not b!389501) (not b!389605) (not bm!27478) (not b_lambda!8647) (not b!389611) (not bm!27463) (not bm!27468) (not b!389588) (not b!389436) (not d!72817) (not b!389495) (not b_lambda!8645) (not b!389557) (not b!389567) (not b!389541) (not b!389489))
(check-sat b_and!16241 (not b_next!8931))
