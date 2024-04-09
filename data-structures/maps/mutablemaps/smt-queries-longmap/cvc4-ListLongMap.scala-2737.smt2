; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40252 () Bool)

(assert start!40252)

(declare-fun b_free!10511 () Bool)

(declare-fun b_next!10511 () Bool)

(assert (=> start!40252 (= b_free!10511 (not b_next!10511))))

(declare-fun tp!37062 () Bool)

(declare-fun b_and!18497 () Bool)

(assert (=> start!40252 (= tp!37062 b_and!18497)))

(declare-fun b!441425 () Bool)

(declare-fun e!259905 () Bool)

(assert (=> b!441425 (= e!259905 (not true))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((V!16655 0))(
  ( (V!16656 (val!5876 Int)) )
))
(declare-datatypes ((ValueCell!5488 0))(
  ( (ValueCellFull!5488 (v!8119 V!16655)) (EmptyCell!5488) )
))
(declare-datatypes ((array!27113 0))(
  ( (array!27114 (arr!13003 (Array (_ BitVec 32) ValueCell!5488)) (size!13355 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27113)

(declare-fun zeroValue!515 () V!16655)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16655)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!27115 0))(
  ( (array!27116 (arr!13004 (Array (_ BitVec 32) (_ BitVec 64))) (size!13356 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27115)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!202917 () array!27115)

(declare-fun minValue!515 () V!16655)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!202913 () array!27113)

(declare-datatypes ((tuple2!7742 0))(
  ( (tuple2!7743 (_1!3881 (_ BitVec 64)) (_2!3881 V!16655)) )
))
(declare-datatypes ((List!7783 0))(
  ( (Nil!7780) (Cons!7779 (h!8635 tuple2!7742) (t!13547 List!7783)) )
))
(declare-datatypes ((ListLongMap!6669 0))(
  ( (ListLongMap!6670 (toList!3350 List!7783)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1532 (array!27115 array!27113 (_ BitVec 32) (_ BitVec 32) V!16655 V!16655 (_ BitVec 32) Int) ListLongMap!6669)

(declare-fun +!1483 (ListLongMap!6669 tuple2!7742) ListLongMap!6669)

(assert (=> b!441425 (= (getCurrentListMapNoExtraKeys!1532 lt!202917 lt!202913 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1483 (getCurrentListMapNoExtraKeys!1532 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7743 k!794 v!412)))))

(declare-datatypes ((Unit!13081 0))(
  ( (Unit!13082) )
))
(declare-fun lt!202915 () Unit!13081)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!661 (array!27115 array!27113 (_ BitVec 32) (_ BitVec 32) V!16655 V!16655 (_ BitVec 32) (_ BitVec 64) V!16655 (_ BitVec 32) Int) Unit!13081)

(assert (=> b!441425 (= lt!202915 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!661 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!441426 () Bool)

(declare-fun res!261414 () Bool)

(declare-fun e!259902 () Bool)

(assert (=> b!441426 (=> (not res!261414) (not e!259902))))

(assert (=> b!441426 (= res!261414 (or (= (select (arr!13004 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13004 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19116 () Bool)

(declare-fun mapRes!19116 () Bool)

(assert (=> mapIsEmpty!19116 mapRes!19116))

(declare-fun mapNonEmpty!19116 () Bool)

(declare-fun tp!37061 () Bool)

(declare-fun e!259906 () Bool)

(assert (=> mapNonEmpty!19116 (= mapRes!19116 (and tp!37061 e!259906))))

(declare-fun mapRest!19116 () (Array (_ BitVec 32) ValueCell!5488))

(declare-fun mapKey!19116 () (_ BitVec 32))

(declare-fun mapValue!19116 () ValueCell!5488)

(assert (=> mapNonEmpty!19116 (= (arr!13003 _values!549) (store mapRest!19116 mapKey!19116 mapValue!19116))))

(declare-fun b!441427 () Bool)

(declare-fun e!259901 () Bool)

(declare-fun tp_is_empty!11663 () Bool)

(assert (=> b!441427 (= e!259901 tp_is_empty!11663)))

(declare-fun b!441428 () Bool)

(declare-fun res!261419 () Bool)

(assert (=> b!441428 (=> (not res!261419) (not e!259902))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!441428 (= res!261419 (validKeyInArray!0 k!794))))

(declare-fun b!441429 () Bool)

(declare-fun res!261415 () Bool)

(assert (=> b!441429 (=> (not res!261415) (not e!259902))))

(assert (=> b!441429 (= res!261415 (and (= (size!13355 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13356 _keys!709) (size!13355 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441430 () Bool)

(declare-fun e!259900 () Bool)

(assert (=> b!441430 (= e!259902 e!259900)))

(declare-fun res!261423 () Bool)

(assert (=> b!441430 (=> (not res!261423) (not e!259900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27115 (_ BitVec 32)) Bool)

(assert (=> b!441430 (= res!261423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202917 mask!1025))))

(assert (=> b!441430 (= lt!202917 (array!27116 (store (arr!13004 _keys!709) i!563 k!794) (size!13356 _keys!709)))))

(declare-fun b!441431 () Bool)

(declare-fun res!261418 () Bool)

(assert (=> b!441431 (=> (not res!261418) (not e!259902))))

(assert (=> b!441431 (= res!261418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!441432 () Bool)

(assert (=> b!441432 (= e!259906 tp_is_empty!11663)))

(declare-fun b!441433 () Bool)

(declare-fun res!261412 () Bool)

(assert (=> b!441433 (=> (not res!261412) (not e!259902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441433 (= res!261412 (validMask!0 mask!1025))))

(declare-fun b!441434 () Bool)

(assert (=> b!441434 (= e!259900 e!259905)))

(declare-fun res!261413 () Bool)

(assert (=> b!441434 (=> (not res!261413) (not e!259905))))

(assert (=> b!441434 (= res!261413 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202916 () ListLongMap!6669)

(assert (=> b!441434 (= lt!202916 (getCurrentListMapNoExtraKeys!1532 lt!202917 lt!202913 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!441434 (= lt!202913 (array!27114 (store (arr!13003 _values!549) i!563 (ValueCellFull!5488 v!412)) (size!13355 _values!549)))))

(declare-fun lt!202914 () ListLongMap!6669)

(assert (=> b!441434 (= lt!202914 (getCurrentListMapNoExtraKeys!1532 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!441435 () Bool)

(declare-fun res!261411 () Bool)

(assert (=> b!441435 (=> (not res!261411) (not e!259900))))

(declare-datatypes ((List!7784 0))(
  ( (Nil!7781) (Cons!7780 (h!8636 (_ BitVec 64)) (t!13548 List!7784)) )
))
(declare-fun arrayNoDuplicates!0 (array!27115 (_ BitVec 32) List!7784) Bool)

(assert (=> b!441435 (= res!261411 (arrayNoDuplicates!0 lt!202917 #b00000000000000000000000000000000 Nil!7781))))

(declare-fun b!441436 () Bool)

(declare-fun res!261420 () Bool)

(assert (=> b!441436 (=> (not res!261420) (not e!259902))))

(assert (=> b!441436 (= res!261420 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13356 _keys!709))))))

(declare-fun b!441437 () Bool)

(declare-fun res!261417 () Bool)

(assert (=> b!441437 (=> (not res!261417) (not e!259900))))

(assert (=> b!441437 (= res!261417 (bvsle from!863 i!563))))

(declare-fun b!441438 () Bool)

(declare-fun res!261422 () Bool)

(assert (=> b!441438 (=> (not res!261422) (not e!259902))))

(assert (=> b!441438 (= res!261422 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7781))))

(declare-fun b!441439 () Bool)

(declare-fun res!261421 () Bool)

(assert (=> b!441439 (=> (not res!261421) (not e!259902))))

(declare-fun arrayContainsKey!0 (array!27115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441439 (= res!261421 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!261416 () Bool)

(assert (=> start!40252 (=> (not res!261416) (not e!259902))))

(assert (=> start!40252 (= res!261416 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13356 _keys!709))))))

(assert (=> start!40252 e!259902))

(assert (=> start!40252 tp_is_empty!11663))

(assert (=> start!40252 tp!37062))

(assert (=> start!40252 true))

(declare-fun e!259903 () Bool)

(declare-fun array_inv!9428 (array!27113) Bool)

(assert (=> start!40252 (and (array_inv!9428 _values!549) e!259903)))

(declare-fun array_inv!9429 (array!27115) Bool)

(assert (=> start!40252 (array_inv!9429 _keys!709)))

(declare-fun b!441440 () Bool)

(assert (=> b!441440 (= e!259903 (and e!259901 mapRes!19116))))

(declare-fun condMapEmpty!19116 () Bool)

(declare-fun mapDefault!19116 () ValueCell!5488)

