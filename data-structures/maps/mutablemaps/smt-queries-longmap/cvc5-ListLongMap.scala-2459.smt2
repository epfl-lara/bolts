; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38580 () Bool)

(assert start!38580)

(declare-fun b_free!9109 () Bool)

(declare-fun b_next!9109 () Bool)

(assert (=> start!38580 (= b_free!9109 (not b_next!9109))))

(declare-fun tp!32450 () Bool)

(declare-fun b_and!16513 () Bool)

(assert (=> start!38580 (= tp!32450 b_and!16513)))

(declare-fun b!399043 () Bool)

(declare-fun res!229489 () Bool)

(declare-fun e!241043 () Bool)

(assert (=> b!399043 (=> (not res!229489) (not e!241043))))

(declare-datatypes ((array!23861 0))(
  ( (array!23862 (arr!11377 (Array (_ BitVec 32) (_ BitVec 64))) (size!11729 (_ BitVec 32))) )
))
(declare-fun lt!187514 () array!23861)

(declare-datatypes ((List!6559 0))(
  ( (Nil!6556) (Cons!6555 (h!7411 (_ BitVec 64)) (t!11741 List!6559)) )
))
(declare-fun arrayNoDuplicates!0 (array!23861 (_ BitVec 32) List!6559) Bool)

(assert (=> b!399043 (= res!229489 (arrayNoDuplicates!0 lt!187514 #b00000000000000000000000000000000 Nil!6556))))

(declare-fun b!399044 () Bool)

(declare-fun res!229500 () Bool)

(declare-fun e!241039 () Bool)

(assert (=> b!399044 (=> (not res!229500) (not e!241039))))

(declare-fun _keys!709 () array!23861)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!399044 (= res!229500 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!399045 () Bool)

(declare-fun e!241045 () Bool)

(declare-fun tp_is_empty!9991 () Bool)

(assert (=> b!399045 (= e!241045 tp_is_empty!9991)))

(declare-fun res!229494 () Bool)

(assert (=> start!38580 (=> (not res!229494) (not e!241039))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38580 (= res!229494 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11729 _keys!709))))))

(assert (=> start!38580 e!241039))

(assert (=> start!38580 tp_is_empty!9991))

(assert (=> start!38580 tp!32450))

(assert (=> start!38580 true))

(declare-datatypes ((V!14427 0))(
  ( (V!14428 (val!5040 Int)) )
))
(declare-datatypes ((ValueCell!4652 0))(
  ( (ValueCellFull!4652 (v!7283 V!14427)) (EmptyCell!4652) )
))
(declare-datatypes ((array!23863 0))(
  ( (array!23864 (arr!11378 (Array (_ BitVec 32) ValueCell!4652)) (size!11730 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23863)

(declare-fun e!241042 () Bool)

(declare-fun array_inv!8326 (array!23863) Bool)

(assert (=> start!38580 (and (array_inv!8326 _values!549) e!241042)))

(declare-fun array_inv!8327 (array!23861) Bool)

(assert (=> start!38580 (array_inv!8327 _keys!709)))

(declare-fun minValue!515 () V!14427)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun bm!27985 () Bool)

(declare-fun zeroValue!515 () V!14427)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun c!54545 () Bool)

(declare-datatypes ((tuple2!6604 0))(
  ( (tuple2!6605 (_1!3312 (_ BitVec 64)) (_2!3312 V!14427)) )
))
(declare-datatypes ((List!6560 0))(
  ( (Nil!6557) (Cons!6556 (h!7412 tuple2!6604) (t!11742 List!6560)) )
))
(declare-datatypes ((ListLongMap!5531 0))(
  ( (ListLongMap!5532 (toList!2781 List!6560)) )
))
(declare-fun call!27989 () ListLongMap!5531)

(declare-fun v!412 () V!14427)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!998 (array!23861 array!23863 (_ BitVec 32) (_ BitVec 32) V!14427 V!14427 (_ BitVec 32) Int) ListLongMap!5531)

(assert (=> bm!27985 (= call!27989 (getCurrentListMapNoExtraKeys!998 (ite c!54545 _keys!709 lt!187514) (ite c!54545 _values!549 (array!23864 (store (arr!11378 _values!549) i!563 (ValueCellFull!4652 v!412)) (size!11730 _values!549))) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!16608 () Bool)

(declare-fun mapRes!16608 () Bool)

(assert (=> mapIsEmpty!16608 mapRes!16608))

(declare-fun b!399046 () Bool)

(declare-fun e!241041 () Bool)

(assert (=> b!399046 (= e!241041 tp_is_empty!9991)))

(declare-fun b!399047 () Bool)

(declare-fun e!241040 () Bool)

(declare-fun call!27988 () ListLongMap!5531)

(assert (=> b!399047 (= e!241040 (= call!27989 call!27988))))

(declare-fun b!399048 () Bool)

(declare-fun res!229499 () Bool)

(assert (=> b!399048 (=> (not res!229499) (not e!241039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!399048 (= res!229499 (validMask!0 mask!1025))))

(declare-fun b!399049 () Bool)

(declare-fun res!229490 () Bool)

(assert (=> b!399049 (=> (not res!229490) (not e!241039))))

(assert (=> b!399049 (= res!229490 (and (= (size!11730 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11729 _keys!709) (size!11730 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!399050 () Bool)

(declare-fun res!229498 () Bool)

(assert (=> b!399050 (=> (not res!229498) (not e!241039))))

(assert (=> b!399050 (= res!229498 (or (= (select (arr!11377 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11377 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!399051 () Bool)

(declare-fun res!229495 () Bool)

(assert (=> b!399051 (=> (not res!229495) (not e!241043))))

(assert (=> b!399051 (= res!229495 (and (bvsgt from!863 i!563) (bvsle (bvadd #b00000000000000000000000000000001 from!863) (size!11729 _keys!709)) (bvsge (bvadd #b00000000000000000000000000000001 from!863) #b00000000000000000000000000000000)))))

(declare-fun bm!27986 () Bool)

(assert (=> bm!27986 (= call!27988 (getCurrentListMapNoExtraKeys!998 (ite c!54545 lt!187514 _keys!709) (ite c!54545 (array!23864 (store (arr!11378 _values!549) i!563 (ValueCellFull!4652 v!412)) (size!11730 _values!549)) _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!399052 () Bool)

(assert (=> b!399052 (= e!241039 e!241043)))

(declare-fun res!229491 () Bool)

(assert (=> b!399052 (=> (not res!229491) (not e!241043))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23861 (_ BitVec 32)) Bool)

(assert (=> b!399052 (= res!229491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187514 mask!1025))))

(assert (=> b!399052 (= lt!187514 (array!23862 (store (arr!11377 _keys!709) i!563 k!794) (size!11729 _keys!709)))))

(declare-fun b!399053 () Bool)

(declare-fun +!1074 (ListLongMap!5531 tuple2!6604) ListLongMap!5531)

(assert (=> b!399053 (= e!241040 (= call!27988 (+!1074 call!27989 (tuple2!6605 k!794 v!412))))))

(declare-fun mapNonEmpty!16608 () Bool)

(declare-fun tp!32451 () Bool)

(assert (=> mapNonEmpty!16608 (= mapRes!16608 (and tp!32451 e!241041))))

(declare-fun mapValue!16608 () ValueCell!4652)

(declare-fun mapKey!16608 () (_ BitVec 32))

(declare-fun mapRest!16608 () (Array (_ BitVec 32) ValueCell!4652))

(assert (=> mapNonEmpty!16608 (= (arr!11378 _values!549) (store mapRest!16608 mapKey!16608 mapValue!16608))))

(declare-fun b!399054 () Bool)

(declare-fun res!229497 () Bool)

(assert (=> b!399054 (=> (not res!229497) (not e!241039))))

(assert (=> b!399054 (= res!229497 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6556))))

(declare-fun b!399055 () Bool)

(declare-fun res!229492 () Bool)

(assert (=> b!399055 (=> (not res!229492) (not e!241039))))

(assert (=> b!399055 (= res!229492 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11729 _keys!709))))))

(declare-fun b!399056 () Bool)

(assert (=> b!399056 (= e!241042 (and e!241045 mapRes!16608))))

(declare-fun condMapEmpty!16608 () Bool)

(declare-fun mapDefault!16608 () ValueCell!4652)

