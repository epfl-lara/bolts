; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39578 () Bool)

(assert start!39578)

(declare-fun b_free!9837 () Bool)

(declare-fun b_next!9837 () Bool)

(assert (=> start!39578 (= b_free!9837 (not b_next!9837))))

(declare-fun tp!35040 () Bool)

(declare-fun b_and!17511 () Bool)

(assert (=> start!39578 (= tp!35040 b_and!17511)))

(declare-fun b!423384 () Bool)

(declare-fun res!247550 () Bool)

(declare-fun e!251684 () Bool)

(assert (=> b!423384 (=> (not res!247550) (not e!251684))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423384 (= res!247550 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18105 () Bool)

(declare-fun mapRes!18105 () Bool)

(assert (=> mapIsEmpty!18105 mapRes!18105))

(declare-fun b!423385 () Bool)

(declare-fun e!251685 () Bool)

(declare-fun tp_is_empty!10989 () Bool)

(assert (=> b!423385 (= e!251685 tp_is_empty!10989)))

(declare-fun b!423386 () Bool)

(declare-fun res!247551 () Bool)

(declare-fun e!251689 () Bool)

(assert (=> b!423386 (=> (not res!247551) (not e!251689))))

(declare-datatypes ((array!25805 0))(
  ( (array!25806 (arr!12349 (Array (_ BitVec 32) (_ BitVec 64))) (size!12701 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25805)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15757 0))(
  ( (V!15758 (val!5539 Int)) )
))
(declare-datatypes ((ValueCell!5151 0))(
  ( (ValueCellFull!5151 (v!7782 V!15757)) (EmptyCell!5151) )
))
(declare-datatypes ((array!25807 0))(
  ( (array!25808 (arr!12350 (Array (_ BitVec 32) ValueCell!5151)) (size!12702 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25807)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!423386 (= res!247551 (and (= (size!12702 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12701 _keys!709) (size!12702 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423387 () Bool)

(declare-fun res!247545 () Bool)

(assert (=> b!423387 (=> (not res!247545) (not e!251689))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25805 (_ BitVec 32)) Bool)

(assert (=> b!423387 (= res!247545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!423388 () Bool)

(assert (=> b!423388 (= e!251689 e!251684)))

(declare-fun res!247548 () Bool)

(assert (=> b!423388 (=> (not res!247548) (not e!251684))))

(declare-fun lt!194158 () array!25805)

(assert (=> b!423388 (= res!247548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194158 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!423388 (= lt!194158 (array!25806 (store (arr!12349 _keys!709) i!563 k0!794) (size!12701 _keys!709)))))

(declare-fun b!423389 () Bool)

(declare-fun res!247554 () Bool)

(assert (=> b!423389 (=> (not res!247554) (not e!251689))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423389 (= res!247554 (validKeyInArray!0 k0!794))))

(declare-fun res!247552 () Bool)

(assert (=> start!39578 (=> (not res!247552) (not e!251689))))

(assert (=> start!39578 (= res!247552 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12701 _keys!709))))))

(assert (=> start!39578 e!251689))

(assert (=> start!39578 tp_is_empty!10989))

(assert (=> start!39578 tp!35040))

(assert (=> start!39578 true))

(declare-fun e!251687 () Bool)

(declare-fun array_inv!9002 (array!25807) Bool)

(assert (=> start!39578 (and (array_inv!9002 _values!549) e!251687)))

(declare-fun array_inv!9003 (array!25805) Bool)

(assert (=> start!39578 (array_inv!9003 _keys!709)))

(declare-fun b!423390 () Bool)

(declare-fun res!247553 () Bool)

(assert (=> b!423390 (=> (not res!247553) (not e!251689))))

(assert (=> b!423390 (= res!247553 (or (= (select (arr!12349 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12349 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423391 () Bool)

(declare-fun res!247546 () Bool)

(assert (=> b!423391 (=> (not res!247546) (not e!251689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423391 (= res!247546 (validMask!0 mask!1025))))

(declare-fun b!423392 () Bool)

(declare-fun res!247544 () Bool)

(assert (=> b!423392 (=> (not res!247544) (not e!251689))))

(declare-datatypes ((List!7250 0))(
  ( (Nil!7247) (Cons!7246 (h!8102 (_ BitVec 64)) (t!12702 List!7250)) )
))
(declare-fun arrayNoDuplicates!0 (array!25805 (_ BitVec 32) List!7250) Bool)

(assert (=> b!423392 (= res!247544 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7247))))

(declare-fun mapNonEmpty!18105 () Bool)

(declare-fun tp!35039 () Bool)

(declare-fun e!251686 () Bool)

(assert (=> mapNonEmpty!18105 (= mapRes!18105 (and tp!35039 e!251686))))

(declare-fun mapRest!18105 () (Array (_ BitVec 32) ValueCell!5151))

(declare-fun mapKey!18105 () (_ BitVec 32))

(declare-fun mapValue!18105 () ValueCell!5151)

(assert (=> mapNonEmpty!18105 (= (arr!12350 _values!549) (store mapRest!18105 mapKey!18105 mapValue!18105))))

(declare-fun b!423393 () Bool)

(declare-fun res!247547 () Bool)

(assert (=> b!423393 (=> (not res!247547) (not e!251684))))

(assert (=> b!423393 (= res!247547 (arrayNoDuplicates!0 lt!194158 #b00000000000000000000000000000000 Nil!7247))))

(declare-fun b!423394 () Bool)

(assert (=> b!423394 (= e!251684 false)))

(declare-fun minValue!515 () V!15757)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7204 0))(
  ( (tuple2!7205 (_1!3612 (_ BitVec 64)) (_2!3612 V!15757)) )
))
(declare-datatypes ((List!7251 0))(
  ( (Nil!7248) (Cons!7247 (h!8103 tuple2!7204) (t!12703 List!7251)) )
))
(declare-datatypes ((ListLongMap!6131 0))(
  ( (ListLongMap!6132 (toList!3081 List!7251)) )
))
(declare-fun lt!194160 () ListLongMap!6131)

(declare-fun zeroValue!515 () V!15757)

(declare-fun v!412 () V!15757)

(declare-fun getCurrentListMapNoExtraKeys!1282 (array!25805 array!25807 (_ BitVec 32) (_ BitVec 32) V!15757 V!15757 (_ BitVec 32) Int) ListLongMap!6131)

(assert (=> b!423394 (= lt!194160 (getCurrentListMapNoExtraKeys!1282 lt!194158 (array!25808 (store (arr!12350 _values!549) i!563 (ValueCellFull!5151 v!412)) (size!12702 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194159 () ListLongMap!6131)

(assert (=> b!423394 (= lt!194159 (getCurrentListMapNoExtraKeys!1282 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423395 () Bool)

(declare-fun res!247549 () Bool)

(assert (=> b!423395 (=> (not res!247549) (not e!251689))))

(declare-fun arrayContainsKey!0 (array!25805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423395 (= res!247549 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!423396 () Bool)

(assert (=> b!423396 (= e!251686 tp_is_empty!10989)))

(declare-fun b!423397 () Bool)

(declare-fun res!247543 () Bool)

(assert (=> b!423397 (=> (not res!247543) (not e!251689))))

(assert (=> b!423397 (= res!247543 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12701 _keys!709))))))

(declare-fun b!423398 () Bool)

(assert (=> b!423398 (= e!251687 (and e!251685 mapRes!18105))))

(declare-fun condMapEmpty!18105 () Bool)

(declare-fun mapDefault!18105 () ValueCell!5151)

(assert (=> b!423398 (= condMapEmpty!18105 (= (arr!12350 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5151)) mapDefault!18105)))))

(assert (= (and start!39578 res!247552) b!423391))

(assert (= (and b!423391 res!247546) b!423386))

(assert (= (and b!423386 res!247551) b!423387))

(assert (= (and b!423387 res!247545) b!423392))

(assert (= (and b!423392 res!247544) b!423397))

(assert (= (and b!423397 res!247543) b!423389))

(assert (= (and b!423389 res!247554) b!423390))

(assert (= (and b!423390 res!247553) b!423395))

(assert (= (and b!423395 res!247549) b!423388))

(assert (= (and b!423388 res!247548) b!423393))

(assert (= (and b!423393 res!247547) b!423384))

(assert (= (and b!423384 res!247550) b!423394))

(assert (= (and b!423398 condMapEmpty!18105) mapIsEmpty!18105))

(assert (= (and b!423398 (not condMapEmpty!18105)) mapNonEmpty!18105))

(get-info :version)

(assert (= (and mapNonEmpty!18105 ((_ is ValueCellFull!5151) mapValue!18105)) b!423396))

(assert (= (and b!423398 ((_ is ValueCellFull!5151) mapDefault!18105)) b!423385))

(assert (= start!39578 b!423398))

(declare-fun m!412855 () Bool)

(assert (=> b!423392 m!412855))

(declare-fun m!412857 () Bool)

(assert (=> b!423391 m!412857))

(declare-fun m!412859 () Bool)

(assert (=> b!423393 m!412859))

(declare-fun m!412861 () Bool)

(assert (=> mapNonEmpty!18105 m!412861))

(declare-fun m!412863 () Bool)

(assert (=> b!423395 m!412863))

(declare-fun m!412865 () Bool)

(assert (=> b!423387 m!412865))

(declare-fun m!412867 () Bool)

(assert (=> start!39578 m!412867))

(declare-fun m!412869 () Bool)

(assert (=> start!39578 m!412869))

(declare-fun m!412871 () Bool)

(assert (=> b!423388 m!412871))

(declare-fun m!412873 () Bool)

(assert (=> b!423388 m!412873))

(declare-fun m!412875 () Bool)

(assert (=> b!423390 m!412875))

(declare-fun m!412877 () Bool)

(assert (=> b!423394 m!412877))

(declare-fun m!412879 () Bool)

(assert (=> b!423394 m!412879))

(declare-fun m!412881 () Bool)

(assert (=> b!423394 m!412881))

(declare-fun m!412883 () Bool)

(assert (=> b!423389 m!412883))

(check-sat (not b!423392) (not b!423394) b_and!17511 (not b!423388) (not b_next!9837) (not b!423389) (not b!423391) (not b!423393) tp_is_empty!10989 (not b!423387) (not mapNonEmpty!18105) (not b!423395) (not start!39578))
(check-sat b_and!17511 (not b_next!9837))
