; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40482 () Bool)

(assert start!40482)

(declare-fun b_free!10545 () Bool)

(declare-fun b_next!10545 () Bool)

(assert (=> start!40482 (= b_free!10545 (not b_next!10545))))

(declare-fun tp!37413 () Bool)

(declare-fun b_and!18547 () Bool)

(assert (=> start!40482 (= tp!37413 b_and!18547)))

(declare-fun b!445459 () Bool)

(declare-fun e!261813 () Bool)

(declare-fun e!261810 () Bool)

(assert (=> b!445459 (= e!261813 e!261810)))

(declare-fun res!264421 () Bool)

(assert (=> b!445459 (=> (not res!264421) (not e!261810))))

(declare-datatypes ((array!27487 0))(
  ( (array!27488 (arr!13188 (Array (_ BitVec 32) (_ BitVec 64))) (size!13540 (_ BitVec 32))) )
))
(declare-fun lt!203621 () array!27487)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27487 (_ BitVec 32)) Bool)

(assert (=> b!445459 (= res!264421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203621 mask!1025))))

(declare-fun _keys!709 () array!27487)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445459 (= lt!203621 (array!27488 (store (arr!13188 _keys!709) i!563 k0!794) (size!13540 _keys!709)))))

(declare-fun b!445460 () Bool)

(declare-fun res!264419 () Bool)

(assert (=> b!445460 (=> (not res!264419) (not e!261810))))

(declare-datatypes ((List!7868 0))(
  ( (Nil!7865) (Cons!7864 (h!8720 (_ BitVec 64)) (t!13634 List!7868)) )
))
(declare-fun arrayNoDuplicates!0 (array!27487 (_ BitVec 32) List!7868) Bool)

(assert (=> b!445460 (= res!264419 (arrayNoDuplicates!0 lt!203621 #b00000000000000000000000000000000 Nil!7865))))

(declare-fun b!445461 () Bool)

(declare-fun res!264424 () Bool)

(assert (=> b!445461 (=> (not res!264424) (not e!261813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!445461 (= res!264424 (validMask!0 mask!1025))))

(declare-fun b!445462 () Bool)

(declare-fun e!261815 () Bool)

(declare-fun e!261811 () Bool)

(declare-fun mapRes!19416 () Bool)

(assert (=> b!445462 (= e!261815 (and e!261811 mapRes!19416))))

(declare-fun condMapEmpty!19416 () Bool)

(declare-datatypes ((V!16917 0))(
  ( (V!16918 (val!5974 Int)) )
))
(declare-datatypes ((ValueCell!5586 0))(
  ( (ValueCellFull!5586 (v!8221 V!16917)) (EmptyCell!5586) )
))
(declare-datatypes ((array!27489 0))(
  ( (array!27490 (arr!13189 (Array (_ BitVec 32) ValueCell!5586)) (size!13541 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27489)

(declare-fun mapDefault!19416 () ValueCell!5586)

(assert (=> b!445462 (= condMapEmpty!19416 (= (arr!13189 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5586)) mapDefault!19416)))))

(declare-fun b!445463 () Bool)

(declare-fun res!264422 () Bool)

(assert (=> b!445463 (=> (not res!264422) (not e!261813))))

(assert (=> b!445463 (= res!264422 (or (= (select (arr!13188 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13188 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!445464 () Bool)

(declare-fun res!264418 () Bool)

(assert (=> b!445464 (=> (not res!264418) (not e!261813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!445464 (= res!264418 (validKeyInArray!0 k0!794))))

(declare-fun bm!29585 () Bool)

(declare-fun minValue!515 () V!16917)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16917)

(declare-fun c!55788 () Bool)

(declare-fun v!412 () V!16917)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7768 0))(
  ( (tuple2!7769 (_1!3894 (_ BitVec 64)) (_2!3894 V!16917)) )
))
(declare-datatypes ((List!7869 0))(
  ( (Nil!7866) (Cons!7865 (h!8721 tuple2!7768) (t!13635 List!7869)) )
))
(declare-datatypes ((ListLongMap!6695 0))(
  ( (ListLongMap!6696 (toList!3363 List!7869)) )
))
(declare-fun call!29588 () ListLongMap!6695)

(declare-fun getCurrentListMapNoExtraKeys!1545 (array!27487 array!27489 (_ BitVec 32) (_ BitVec 32) V!16917 V!16917 (_ BitVec 32) Int) ListLongMap!6695)

(assert (=> bm!29585 (= call!29588 (getCurrentListMapNoExtraKeys!1545 (ite c!55788 _keys!709 lt!203621) (ite c!55788 _values!549 (array!27490 (store (arr!13189 _values!549) i!563 (ValueCellFull!5586 v!412)) (size!13541 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445465 () Bool)

(declare-fun tp_is_empty!11859 () Bool)

(assert (=> b!445465 (= e!261811 tp_is_empty!11859)))

(declare-fun mapNonEmpty!19416 () Bool)

(declare-fun tp!37412 () Bool)

(declare-fun e!261816 () Bool)

(assert (=> mapNonEmpty!19416 (= mapRes!19416 (and tp!37412 e!261816))))

(declare-fun mapRest!19416 () (Array (_ BitVec 32) ValueCell!5586))

(declare-fun mapValue!19416 () ValueCell!5586)

(declare-fun mapKey!19416 () (_ BitVec 32))

(assert (=> mapNonEmpty!19416 (= (arr!13189 _values!549) (store mapRest!19416 mapKey!19416 mapValue!19416))))

(declare-fun b!445466 () Bool)

(declare-fun res!264415 () Bool)

(assert (=> b!445466 (=> (not res!264415) (not e!261813))))

(assert (=> b!445466 (= res!264415 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13540 _keys!709))))))

(declare-fun e!261812 () Bool)

(declare-fun call!29589 () ListLongMap!6695)

(declare-fun b!445467 () Bool)

(declare-fun +!1493 (ListLongMap!6695 tuple2!7768) ListLongMap!6695)

(assert (=> b!445467 (= e!261812 (= call!29589 (+!1493 call!29588 (tuple2!7769 k0!794 v!412))))))

(declare-fun mapIsEmpty!19416 () Bool)

(assert (=> mapIsEmpty!19416 mapRes!19416))

(declare-fun b!445468 () Bool)

(assert (=> b!445468 (= e!261810 (not true))))

(assert (=> b!445468 e!261812))

(assert (=> b!445468 (= c!55788 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!13101 0))(
  ( (Unit!13102) )
))
(declare-fun lt!203622 () Unit!13101)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!670 (array!27487 array!27489 (_ BitVec 32) (_ BitVec 32) V!16917 V!16917 (_ BitVec 32) (_ BitVec 64) V!16917 (_ BitVec 32) Int) Unit!13101)

(assert (=> b!445468 (= lt!203622 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!670 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445469 () Bool)

(declare-fun res!264420 () Bool)

(assert (=> b!445469 (=> (not res!264420) (not e!261813))))

(assert (=> b!445469 (= res!264420 (and (= (size!13541 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13540 _keys!709) (size!13541 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!445470 () Bool)

(assert (=> b!445470 (= e!261812 (= call!29588 call!29589))))

(declare-fun res!264416 () Bool)

(assert (=> start!40482 (=> (not res!264416) (not e!261813))))

(assert (=> start!40482 (= res!264416 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13540 _keys!709))))))

(assert (=> start!40482 e!261813))

(assert (=> start!40482 tp_is_empty!11859))

(assert (=> start!40482 tp!37413))

(assert (=> start!40482 true))

(declare-fun array_inv!9554 (array!27489) Bool)

(assert (=> start!40482 (and (array_inv!9554 _values!549) e!261815)))

(declare-fun array_inv!9555 (array!27487) Bool)

(assert (=> start!40482 (array_inv!9555 _keys!709)))

(declare-fun b!445471 () Bool)

(declare-fun res!264414 () Bool)

(assert (=> b!445471 (=> (not res!264414) (not e!261810))))

(assert (=> b!445471 (= res!264414 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!13540 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun bm!29586 () Bool)

(assert (=> bm!29586 (= call!29589 (getCurrentListMapNoExtraKeys!1545 (ite c!55788 lt!203621 _keys!709) (ite c!55788 (array!27490 (store (arr!13189 _values!549) i!563 (ValueCellFull!5586 v!412)) (size!13541 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!445472 () Bool)

(assert (=> b!445472 (= e!261816 tp_is_empty!11859)))

(declare-fun b!445473 () Bool)

(declare-fun res!264413 () Bool)

(assert (=> b!445473 (=> (not res!264413) (not e!261813))))

(assert (=> b!445473 (= res!264413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!445474 () Bool)

(declare-fun res!264417 () Bool)

(assert (=> b!445474 (=> (not res!264417) (not e!261813))))

(assert (=> b!445474 (= res!264417 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7865))))

(declare-fun b!445475 () Bool)

(declare-fun res!264423 () Bool)

(assert (=> b!445475 (=> (not res!264423) (not e!261813))))

(declare-fun arrayContainsKey!0 (array!27487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445475 (= res!264423 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!40482 res!264416) b!445461))

(assert (= (and b!445461 res!264424) b!445469))

(assert (= (and b!445469 res!264420) b!445473))

(assert (= (and b!445473 res!264413) b!445474))

(assert (= (and b!445474 res!264417) b!445466))

(assert (= (and b!445466 res!264415) b!445464))

(assert (= (and b!445464 res!264418) b!445463))

(assert (= (and b!445463 res!264422) b!445475))

(assert (= (and b!445475 res!264423) b!445459))

(assert (= (and b!445459 res!264421) b!445460))

(assert (= (and b!445460 res!264419) b!445471))

(assert (= (and b!445471 res!264414) b!445468))

(assert (= (and b!445468 c!55788) b!445467))

(assert (= (and b!445468 (not c!55788)) b!445470))

(assert (= (or b!445467 b!445470) bm!29586))

(assert (= (or b!445467 b!445470) bm!29585))

(assert (= (and b!445462 condMapEmpty!19416) mapIsEmpty!19416))

(assert (= (and b!445462 (not condMapEmpty!19416)) mapNonEmpty!19416))

(get-info :version)

(assert (= (and mapNonEmpty!19416 ((_ is ValueCellFull!5586) mapValue!19416)) b!445472))

(assert (= (and b!445462 ((_ is ValueCellFull!5586) mapDefault!19416)) b!445465))

(assert (= start!40482 b!445462))

(declare-fun m!430911 () Bool)

(assert (=> b!445463 m!430911))

(declare-fun m!430913 () Bool)

(assert (=> b!445461 m!430913))

(declare-fun m!430915 () Bool)

(assert (=> b!445474 m!430915))

(declare-fun m!430917 () Bool)

(assert (=> b!445459 m!430917))

(declare-fun m!430919 () Bool)

(assert (=> b!445459 m!430919))

(declare-fun m!430921 () Bool)

(assert (=> start!40482 m!430921))

(declare-fun m!430923 () Bool)

(assert (=> start!40482 m!430923))

(declare-fun m!430925 () Bool)

(assert (=> bm!29586 m!430925))

(declare-fun m!430927 () Bool)

(assert (=> bm!29586 m!430927))

(declare-fun m!430929 () Bool)

(assert (=> b!445467 m!430929))

(declare-fun m!430931 () Bool)

(assert (=> b!445473 m!430931))

(declare-fun m!430933 () Bool)

(assert (=> b!445464 m!430933))

(declare-fun m!430935 () Bool)

(assert (=> b!445475 m!430935))

(declare-fun m!430937 () Bool)

(assert (=> b!445460 m!430937))

(declare-fun m!430939 () Bool)

(assert (=> mapNonEmpty!19416 m!430939))

(assert (=> bm!29585 m!430925))

(declare-fun m!430941 () Bool)

(assert (=> bm!29585 m!430941))

(declare-fun m!430943 () Bool)

(assert (=> b!445468 m!430943))

(check-sat (not b!445467) (not b!445464) (not b!445468) (not b!445461) (not b!445459) (not b!445473) (not bm!29586) (not b_next!10545) (not bm!29585) (not b!445460) (not b!445475) (not mapNonEmpty!19416) b_and!18547 (not start!40482) tp_is_empty!11859 (not b!445474))
(check-sat b_and!18547 (not b_next!10545))
