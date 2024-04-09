; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40638 () Bool)

(assert start!40638)

(declare-fun b_free!10641 () Bool)

(declare-fun b_next!10641 () Bool)

(assert (=> start!40638 (= b_free!10641 (not b_next!10641))))

(declare-fun tp!37743 () Bool)

(declare-fun b_and!18667 () Bool)

(assert (=> start!40638 (= tp!37743 b_and!18667)))

(declare-fun mapNonEmpty!19602 () Bool)

(declare-fun mapRes!19602 () Bool)

(declare-fun tp!37742 () Bool)

(declare-fun e!263081 () Bool)

(assert (=> mapNonEmpty!19602 (= mapRes!19602 (and tp!37742 e!263081))))

(declare-datatypes ((V!17077 0))(
  ( (V!17078 (val!6034 Int)) )
))
(declare-datatypes ((ValueCell!5646 0))(
  ( (ValueCellFull!5646 (v!8285 V!17077)) (EmptyCell!5646) )
))
(declare-fun mapValue!19602 () ValueCell!5646)

(declare-datatypes ((array!27725 0))(
  ( (array!27726 (arr!13305 (Array (_ BitVec 32) ValueCell!5646)) (size!13657 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27725)

(declare-fun mapRest!19602 () (Array (_ BitVec 32) ValueCell!5646))

(declare-fun mapKey!19602 () (_ BitVec 32))

(assert (=> mapNonEmpty!19602 (= (arr!13305 _values!549) (store mapRest!19602 mapKey!19602 mapValue!19602))))

(declare-fun b!448397 () Bool)

(declare-fun res!266611 () Bool)

(declare-fun e!263084 () Bool)

(assert (=> b!448397 (=> (not res!266611) (not e!263084))))

(declare-datatypes ((array!27727 0))(
  ( (array!27728 (arr!13306 (Array (_ BitVec 32) (_ BitVec 64))) (size!13658 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27727)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!448397 (= res!266611 (and (= (size!13657 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13658 _keys!709) (size!13657 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448398 () Bool)

(declare-fun res!266616 () Bool)

(assert (=> b!448398 (=> (not res!266616) (not e!263084))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448398 (= res!266616 (validKeyInArray!0 k0!794))))

(declare-fun b!448400 () Bool)

(declare-fun e!263083 () Bool)

(declare-fun tp_is_empty!11979 () Bool)

(assert (=> b!448400 (= e!263083 tp_is_empty!11979)))

(declare-fun b!448401 () Bool)

(declare-fun e!263082 () Bool)

(assert (=> b!448401 (= e!263084 e!263082)))

(declare-fun res!266617 () Bool)

(assert (=> b!448401 (=> (not res!266617) (not e!263082))))

(declare-fun lt!204158 () array!27727)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27727 (_ BitVec 32)) Bool)

(assert (=> b!448401 (= res!266617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204158 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448401 (= lt!204158 (array!27728 (store (arr!13306 _keys!709) i!563 k0!794) (size!13658 _keys!709)))))

(declare-fun b!448402 () Bool)

(declare-fun res!266621 () Bool)

(assert (=> b!448402 (=> (not res!266621) (not e!263082))))

(declare-datatypes ((List!7959 0))(
  ( (Nil!7956) (Cons!7955 (h!8811 (_ BitVec 64)) (t!13729 List!7959)) )
))
(declare-fun arrayNoDuplicates!0 (array!27727 (_ BitVec 32) List!7959) Bool)

(assert (=> b!448402 (= res!266621 (arrayNoDuplicates!0 lt!204158 #b00000000000000000000000000000000 Nil!7956))))

(declare-fun b!448403 () Bool)

(declare-fun res!266614 () Bool)

(assert (=> b!448403 (=> (not res!266614) (not e!263084))))

(assert (=> b!448403 (= res!266614 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7956))))

(declare-fun b!448404 () Bool)

(declare-fun res!266618 () Bool)

(assert (=> b!448404 (=> (not res!266618) (not e!263084))))

(assert (=> b!448404 (= res!266618 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13658 _keys!709))))))

(declare-fun mapIsEmpty!19602 () Bool)

(assert (=> mapIsEmpty!19602 mapRes!19602))

(declare-fun b!448405 () Bool)

(assert (=> b!448405 (= e!263081 tp_is_empty!11979)))

(declare-fun b!448406 () Bool)

(declare-fun e!263085 () Bool)

(assert (=> b!448406 (= e!263085 (and e!263083 mapRes!19602))))

(declare-fun condMapEmpty!19602 () Bool)

(declare-fun mapDefault!19602 () ValueCell!5646)

(assert (=> b!448406 (= condMapEmpty!19602 (= (arr!13305 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5646)) mapDefault!19602)))))

(declare-fun b!448407 () Bool)

(declare-fun res!266615 () Bool)

(assert (=> b!448407 (=> (not res!266615) (not e!263082))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!448407 (= res!266615 (bvsle from!863 i!563))))

(declare-fun res!266613 () Bool)

(assert (=> start!40638 (=> (not res!266613) (not e!263084))))

(assert (=> start!40638 (= res!266613 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13658 _keys!709))))))

(assert (=> start!40638 e!263084))

(assert (=> start!40638 tp_is_empty!11979))

(assert (=> start!40638 tp!37743))

(assert (=> start!40638 true))

(declare-fun array_inv!9634 (array!27725) Bool)

(assert (=> start!40638 (and (array_inv!9634 _values!549) e!263085)))

(declare-fun array_inv!9635 (array!27727) Bool)

(assert (=> start!40638 (array_inv!9635 _keys!709)))

(declare-fun b!448399 () Bool)

(declare-fun res!266619 () Bool)

(assert (=> b!448399 (=> (not res!266619) (not e!263084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448399 (= res!266619 (validMask!0 mask!1025))))

(declare-fun b!448408 () Bool)

(assert (=> b!448408 (= e!263082 false)))

(declare-fun minValue!515 () V!17077)

(declare-fun zeroValue!515 () V!17077)

(declare-fun v!412 () V!17077)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7848 0))(
  ( (tuple2!7849 (_1!3934 (_ BitVec 64)) (_2!3934 V!17077)) )
))
(declare-datatypes ((List!7960 0))(
  ( (Nil!7957) (Cons!7956 (h!8812 tuple2!7848) (t!13730 List!7960)) )
))
(declare-datatypes ((ListLongMap!6775 0))(
  ( (ListLongMap!6776 (toList!3403 List!7960)) )
))
(declare-fun lt!204160 () ListLongMap!6775)

(declare-fun getCurrentListMapNoExtraKeys!1583 (array!27727 array!27725 (_ BitVec 32) (_ BitVec 32) V!17077 V!17077 (_ BitVec 32) Int) ListLongMap!6775)

(assert (=> b!448408 (= lt!204160 (getCurrentListMapNoExtraKeys!1583 lt!204158 (array!27726 (store (arr!13305 _values!549) i!563 (ValueCellFull!5646 v!412)) (size!13657 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204159 () ListLongMap!6775)

(assert (=> b!448408 (= lt!204159 (getCurrentListMapNoExtraKeys!1583 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448409 () Bool)

(declare-fun res!266622 () Bool)

(assert (=> b!448409 (=> (not res!266622) (not e!263084))))

(assert (=> b!448409 (= res!266622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448410 () Bool)

(declare-fun res!266620 () Bool)

(assert (=> b!448410 (=> (not res!266620) (not e!263084))))

(assert (=> b!448410 (= res!266620 (or (= (select (arr!13306 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13306 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448411 () Bool)

(declare-fun res!266612 () Bool)

(assert (=> b!448411 (=> (not res!266612) (not e!263084))))

(declare-fun arrayContainsKey!0 (array!27727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!448411 (= res!266612 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(assert (= (and start!40638 res!266613) b!448399))

(assert (= (and b!448399 res!266619) b!448397))

(assert (= (and b!448397 res!266611) b!448409))

(assert (= (and b!448409 res!266622) b!448403))

(assert (= (and b!448403 res!266614) b!448404))

(assert (= (and b!448404 res!266618) b!448398))

(assert (= (and b!448398 res!266616) b!448410))

(assert (= (and b!448410 res!266620) b!448411))

(assert (= (and b!448411 res!266612) b!448401))

(assert (= (and b!448401 res!266617) b!448402))

(assert (= (and b!448402 res!266621) b!448407))

(assert (= (and b!448407 res!266615) b!448408))

(assert (= (and b!448406 condMapEmpty!19602) mapIsEmpty!19602))

(assert (= (and b!448406 (not condMapEmpty!19602)) mapNonEmpty!19602))

(get-info :version)

(assert (= (and mapNonEmpty!19602 ((_ is ValueCellFull!5646) mapValue!19602)) b!448405))

(assert (= (and b!448406 ((_ is ValueCellFull!5646) mapDefault!19602)) b!448400))

(assert (= start!40638 b!448406))

(declare-fun m!432935 () Bool)

(assert (=> b!448402 m!432935))

(declare-fun m!432937 () Bool)

(assert (=> b!448409 m!432937))

(declare-fun m!432939 () Bool)

(assert (=> b!448408 m!432939))

(declare-fun m!432941 () Bool)

(assert (=> b!448408 m!432941))

(declare-fun m!432943 () Bool)

(assert (=> b!448408 m!432943))

(declare-fun m!432945 () Bool)

(assert (=> mapNonEmpty!19602 m!432945))

(declare-fun m!432947 () Bool)

(assert (=> b!448411 m!432947))

(declare-fun m!432949 () Bool)

(assert (=> b!448401 m!432949))

(declare-fun m!432951 () Bool)

(assert (=> b!448401 m!432951))

(declare-fun m!432953 () Bool)

(assert (=> b!448398 m!432953))

(declare-fun m!432955 () Bool)

(assert (=> b!448410 m!432955))

(declare-fun m!432957 () Bool)

(assert (=> start!40638 m!432957))

(declare-fun m!432959 () Bool)

(assert (=> start!40638 m!432959))

(declare-fun m!432961 () Bool)

(assert (=> b!448403 m!432961))

(declare-fun m!432963 () Bool)

(assert (=> b!448399 m!432963))

(check-sat (not b!448409) (not start!40638) (not b!448401) (not b!448403) (not mapNonEmpty!19602) (not b!448398) (not b_next!10641) (not b!448399) b_and!18667 (not b!448408) tp_is_empty!11979 (not b!448411) (not b!448402))
(check-sat b_and!18667 (not b_next!10641))
