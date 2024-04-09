; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71706 () Bool)

(assert start!71706)

(declare-fun b_free!13515 () Bool)

(declare-fun b_next!13515 () Bool)

(assert (=> start!71706 (= b_free!13515 (not b_next!13515))))

(declare-fun tp!47342 () Bool)

(declare-fun b_and!22619 () Bool)

(assert (=> start!71706 (= tp!47342 b_and!22619)))

(declare-fun b!833456 () Bool)

(declare-fun e!464973 () Bool)

(declare-fun tp_is_empty!15225 () Bool)

(assert (=> b!833456 (= e!464973 tp_is_empty!15225)))

(declare-fun res!566850 () Bool)

(declare-fun e!464970 () Bool)

(assert (=> start!71706 (=> (not res!566850) (not e!464970))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71706 (= res!566850 (validMask!0 mask!1312))))

(assert (=> start!71706 e!464970))

(assert (=> start!71706 tp_is_empty!15225))

(declare-datatypes ((array!46596 0))(
  ( (array!46597 (arr!22328 (Array (_ BitVec 32) (_ BitVec 64))) (size!22749 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46596)

(declare-fun array_inv!17757 (array!46596) Bool)

(assert (=> start!71706 (array_inv!17757 _keys!976)))

(assert (=> start!71706 true))

(declare-datatypes ((V!25301 0))(
  ( (V!25302 (val!7660 Int)) )
))
(declare-datatypes ((ValueCell!7197 0))(
  ( (ValueCellFull!7197 (v!10104 V!25301)) (EmptyCell!7197) )
))
(declare-datatypes ((array!46598 0))(
  ( (array!46599 (arr!22329 (Array (_ BitVec 32) ValueCell!7197)) (size!22750 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46598)

(declare-fun e!464975 () Bool)

(declare-fun array_inv!17758 (array!46598) Bool)

(assert (=> start!71706 (and (array_inv!17758 _values!788) e!464975)))

(assert (=> start!71706 tp!47342))

(declare-fun b!833457 () Bool)

(declare-fun e!464974 () Bool)

(declare-fun mapRes!24500 () Bool)

(assert (=> b!833457 (= e!464975 (and e!464974 mapRes!24500))))

(declare-fun condMapEmpty!24500 () Bool)

(declare-fun mapDefault!24500 () ValueCell!7197)

(assert (=> b!833457 (= condMapEmpty!24500 (= (arr!22329 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7197)) mapDefault!24500)))))

(declare-fun mapNonEmpty!24500 () Bool)

(declare-fun tp!47341 () Bool)

(assert (=> mapNonEmpty!24500 (= mapRes!24500 (and tp!47341 e!464973))))

(declare-fun mapRest!24500 () (Array (_ BitVec 32) ValueCell!7197))

(declare-fun mapValue!24500 () ValueCell!7197)

(declare-fun mapKey!24500 () (_ BitVec 32))

(assert (=> mapNonEmpty!24500 (= (arr!22329 _values!788) (store mapRest!24500 mapKey!24500 mapValue!24500))))

(declare-fun b!833458 () Bool)

(declare-fun e!464972 () Bool)

(assert (=> b!833458 (= e!464970 (not e!464972))))

(declare-fun res!566847 () Bool)

(assert (=> b!833458 (=> res!566847 e!464972)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!833458 (= res!566847 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!10190 0))(
  ( (tuple2!10191 (_1!5105 (_ BitVec 64)) (_2!5105 V!25301)) )
))
(declare-datatypes ((List!16018 0))(
  ( (Nil!16015) (Cons!16014 (h!17145 tuple2!10190) (t!22397 List!16018)) )
))
(declare-datatypes ((ListLongMap!9027 0))(
  ( (ListLongMap!9028 (toList!4529 List!16018)) )
))
(declare-fun lt!378295 () ListLongMap!9027)

(declare-fun lt!378302 () ListLongMap!9027)

(assert (=> b!833458 (= lt!378295 lt!378302)))

(declare-fun zeroValueBefore!34 () V!25301)

(declare-datatypes ((Unit!28567 0))(
  ( (Unit!28568) )
))
(declare-fun lt!378293 () Unit!28567)

(declare-fun zeroValueAfter!34 () V!25301)

(declare-fun minValue!754 () V!25301)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!618 (array!46596 array!46598 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25301 V!25301 V!25301 V!25301 (_ BitVec 32) Int) Unit!28567)

(assert (=> b!833458 (= lt!378293 (lemmaNoChangeToArrayThenSameMapNoExtras!618 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2528 (array!46596 array!46598 (_ BitVec 32) (_ BitVec 32) V!25301 V!25301 (_ BitVec 32) Int) ListLongMap!9027)

(assert (=> b!833458 (= lt!378302 (getCurrentListMapNoExtraKeys!2528 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833458 (= lt!378295 (getCurrentListMapNoExtraKeys!2528 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!833459 () Bool)

(declare-fun res!566849 () Bool)

(assert (=> b!833459 (=> (not res!566849) (not e!464970))))

(assert (=> b!833459 (= res!566849 (and (= (size!22750 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22749 _keys!976) (size!22750 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!833460 () Bool)

(declare-fun res!566846 () Bool)

(assert (=> b!833460 (=> (not res!566846) (not e!464970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46596 (_ BitVec 32)) Bool)

(assert (=> b!833460 (= res!566846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24500 () Bool)

(assert (=> mapIsEmpty!24500 mapRes!24500))

(declare-fun lt!378299 () tuple2!10190)

(declare-fun lt!378291 () ListLongMap!9027)

(declare-fun lt!378300 () tuple2!10190)

(declare-fun e!464969 () Bool)

(declare-fun b!833461 () Bool)

(declare-fun +!1957 (ListLongMap!9027 tuple2!10190) ListLongMap!9027)

(assert (=> b!833461 (= e!464969 (= lt!378291 (+!1957 (+!1957 lt!378302 lt!378299) lt!378300)))))

(declare-fun b!833462 () Bool)

(assert (=> b!833462 (= e!464974 tp_is_empty!15225)))

(declare-fun b!833463 () Bool)

(declare-fun res!566845 () Bool)

(assert (=> b!833463 (=> (not res!566845) (not e!464970))))

(declare-datatypes ((List!16019 0))(
  ( (Nil!16016) (Cons!16015 (h!17146 (_ BitVec 64)) (t!22398 List!16019)) )
))
(declare-fun arrayNoDuplicates!0 (array!46596 (_ BitVec 32) List!16019) Bool)

(assert (=> b!833463 (= res!566845 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16016))))

(declare-fun e!464971 () Bool)

(declare-fun b!833464 () Bool)

(assert (=> b!833464 (= e!464971 (= lt!378291 (+!1957 (+!1957 lt!378302 (tuple2!10191 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!378299)))))

(declare-fun b!833465 () Bool)

(declare-fun lt!378301 () ListLongMap!9027)

(assert (=> b!833465 (= e!464972 (= lt!378291 lt!378301))))

(declare-fun lt!378294 () ListLongMap!9027)

(assert (=> b!833465 (and (= lt!378301 lt!378294) (= lt!378291 lt!378294))))

(declare-fun lt!378297 () ListLongMap!9027)

(assert (=> b!833465 (= lt!378294 (+!1957 lt!378297 lt!378300))))

(declare-fun lt!378303 () ListLongMap!9027)

(assert (=> b!833465 (= lt!378301 (+!1957 lt!378303 lt!378300))))

(declare-fun lt!378296 () Unit!28567)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!251 (ListLongMap!9027 (_ BitVec 64) V!25301 V!25301) Unit!28567)

(assert (=> b!833465 (= lt!378296 (addSameAsAddTwiceSameKeyDiffValues!251 lt!378303 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!833465 e!464969))

(declare-fun res!566848 () Bool)

(assert (=> b!833465 (=> (not res!566848) (not e!464969))))

(declare-fun lt!378298 () ListLongMap!9027)

(assert (=> b!833465 (= res!566848 (= lt!378298 lt!378297))))

(declare-fun lt!378292 () tuple2!10190)

(assert (=> b!833465 (= lt!378297 (+!1957 lt!378303 lt!378292))))

(assert (=> b!833465 (= lt!378303 (+!1957 lt!378295 lt!378299))))

(assert (=> b!833465 (= lt!378300 (tuple2!10191 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!833465 e!464971))

(declare-fun res!566851 () Bool)

(assert (=> b!833465 (=> (not res!566851) (not e!464971))))

(assert (=> b!833465 (= res!566851 (= lt!378298 (+!1957 (+!1957 lt!378295 lt!378292) lt!378299)))))

(assert (=> b!833465 (= lt!378299 (tuple2!10191 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!833465 (= lt!378292 (tuple2!10191 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2598 (array!46596 array!46598 (_ BitVec 32) (_ BitVec 32) V!25301 V!25301 (_ BitVec 32) Int) ListLongMap!9027)

(assert (=> b!833465 (= lt!378291 (getCurrentListMap!2598 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833465 (= lt!378298 (getCurrentListMap!2598 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!71706 res!566850) b!833459))

(assert (= (and b!833459 res!566849) b!833460))

(assert (= (and b!833460 res!566846) b!833463))

(assert (= (and b!833463 res!566845) b!833458))

(assert (= (and b!833458 (not res!566847)) b!833465))

(assert (= (and b!833465 res!566851) b!833464))

(assert (= (and b!833465 res!566848) b!833461))

(assert (= (and b!833457 condMapEmpty!24500) mapIsEmpty!24500))

(assert (= (and b!833457 (not condMapEmpty!24500)) mapNonEmpty!24500))

(get-info :version)

(assert (= (and mapNonEmpty!24500 ((_ is ValueCellFull!7197) mapValue!24500)) b!833456))

(assert (= (and b!833457 ((_ is ValueCellFull!7197) mapDefault!24500)) b!833462))

(assert (= start!71706 b!833457))

(declare-fun m!778389 () Bool)

(assert (=> b!833464 m!778389))

(assert (=> b!833464 m!778389))

(declare-fun m!778391 () Bool)

(assert (=> b!833464 m!778391))

(declare-fun m!778393 () Bool)

(assert (=> b!833458 m!778393))

(declare-fun m!778395 () Bool)

(assert (=> b!833458 m!778395))

(declare-fun m!778397 () Bool)

(assert (=> b!833458 m!778397))

(declare-fun m!778399 () Bool)

(assert (=> b!833460 m!778399))

(declare-fun m!778401 () Bool)

(assert (=> b!833461 m!778401))

(assert (=> b!833461 m!778401))

(declare-fun m!778403 () Bool)

(assert (=> b!833461 m!778403))

(declare-fun m!778405 () Bool)

(assert (=> b!833465 m!778405))

(declare-fun m!778407 () Bool)

(assert (=> b!833465 m!778407))

(declare-fun m!778409 () Bool)

(assert (=> b!833465 m!778409))

(declare-fun m!778411 () Bool)

(assert (=> b!833465 m!778411))

(declare-fun m!778413 () Bool)

(assert (=> b!833465 m!778413))

(declare-fun m!778415 () Bool)

(assert (=> b!833465 m!778415))

(declare-fun m!778417 () Bool)

(assert (=> b!833465 m!778417))

(assert (=> b!833465 m!778415))

(declare-fun m!778419 () Bool)

(assert (=> b!833465 m!778419))

(declare-fun m!778421 () Bool)

(assert (=> b!833465 m!778421))

(declare-fun m!778423 () Bool)

(assert (=> start!71706 m!778423))

(declare-fun m!778425 () Bool)

(assert (=> start!71706 m!778425))

(declare-fun m!778427 () Bool)

(assert (=> start!71706 m!778427))

(declare-fun m!778429 () Bool)

(assert (=> mapNonEmpty!24500 m!778429))

(declare-fun m!778431 () Bool)

(assert (=> b!833463 m!778431))

(check-sat b_and!22619 tp_is_empty!15225 (not b_next!13515) (not mapNonEmpty!24500) (not b!833464) (not start!71706) (not b!833463) (not b!833465) (not b!833461) (not b!833460) (not b!833458))
(check-sat b_and!22619 (not b_next!13515))
