; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40688 () Bool)

(assert start!40688)

(declare-fun b_free!10691 () Bool)

(declare-fun b_next!10691 () Bool)

(assert (=> start!40688 (= b_free!10691 (not b_next!10691))))

(declare-fun tp!37892 () Bool)

(declare-fun b_and!18717 () Bool)

(assert (=> start!40688 (= tp!37892 b_and!18717)))

(declare-fun res!267512 () Bool)

(declare-fun e!263530 () Bool)

(assert (=> start!40688 (=> (not res!267512) (not e!263530))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27825 0))(
  ( (array!27826 (arr!13355 (Array (_ BitVec 32) (_ BitVec 64))) (size!13707 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27825)

(assert (=> start!40688 (= res!267512 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13707 _keys!709))))))

(assert (=> start!40688 e!263530))

(declare-fun tp_is_empty!12029 () Bool)

(assert (=> start!40688 tp_is_empty!12029))

(assert (=> start!40688 tp!37892))

(assert (=> start!40688 true))

(declare-datatypes ((V!17143 0))(
  ( (V!17144 (val!6059 Int)) )
))
(declare-datatypes ((ValueCell!5671 0))(
  ( (ValueCellFull!5671 (v!8310 V!17143)) (EmptyCell!5671) )
))
(declare-datatypes ((array!27827 0))(
  ( (array!27828 (arr!13356 (Array (_ BitVec 32) ValueCell!5671)) (size!13708 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27827)

(declare-fun e!263533 () Bool)

(declare-fun array_inv!9664 (array!27827) Bool)

(assert (=> start!40688 (and (array_inv!9664 _values!549) e!263533)))

(declare-fun array_inv!9665 (array!27825) Bool)

(assert (=> start!40688 (array_inv!9665 _keys!709)))

(declare-fun mapNonEmpty!19677 () Bool)

(declare-fun mapRes!19677 () Bool)

(declare-fun tp!37893 () Bool)

(declare-fun e!263531 () Bool)

(assert (=> mapNonEmpty!19677 (= mapRes!19677 (and tp!37893 e!263531))))

(declare-fun mapRest!19677 () (Array (_ BitVec 32) ValueCell!5671))

(declare-fun mapKey!19677 () (_ BitVec 32))

(declare-fun mapValue!19677 () ValueCell!5671)

(assert (=> mapNonEmpty!19677 (= (arr!13356 _values!549) (store mapRest!19677 mapKey!19677 mapValue!19677))))

(declare-fun b!449522 () Bool)

(declare-fun e!263535 () Bool)

(assert (=> b!449522 (= e!263535 false)))

(declare-fun minValue!515 () V!17143)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17143)

(declare-datatypes ((tuple2!7894 0))(
  ( (tuple2!7895 (_1!3957 (_ BitVec 64)) (_2!3957 V!17143)) )
))
(declare-datatypes ((List!8004 0))(
  ( (Nil!8001) (Cons!8000 (h!8856 tuple2!7894) (t!13774 List!8004)) )
))
(declare-datatypes ((ListLongMap!6821 0))(
  ( (ListLongMap!6822 (toList!3426 List!8004)) )
))
(declare-fun lt!204384 () ListLongMap!6821)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun v!412 () V!17143)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!204383 () array!27825)

(declare-fun getCurrentListMapNoExtraKeys!1606 (array!27825 array!27827 (_ BitVec 32) (_ BitVec 32) V!17143 V!17143 (_ BitVec 32) Int) ListLongMap!6821)

(assert (=> b!449522 (= lt!204384 (getCurrentListMapNoExtraKeys!1606 lt!204383 (array!27828 (store (arr!13356 _values!549) i!563 (ValueCellFull!5671 v!412)) (size!13708 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204385 () ListLongMap!6821)

(assert (=> b!449522 (= lt!204385 (getCurrentListMapNoExtraKeys!1606 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!449523 () Bool)

(declare-fun res!267522 () Bool)

(assert (=> b!449523 (=> (not res!267522) (not e!263530))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27825 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!449523 (= res!267522 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!449524 () Bool)

(declare-fun res!267520 () Bool)

(assert (=> b!449524 (=> (not res!267520) (not e!263535))))

(declare-datatypes ((List!8005 0))(
  ( (Nil!8002) (Cons!8001 (h!8857 (_ BitVec 64)) (t!13775 List!8005)) )
))
(declare-fun arrayNoDuplicates!0 (array!27825 (_ BitVec 32) List!8005) Bool)

(assert (=> b!449524 (= res!267520 (arrayNoDuplicates!0 lt!204383 #b00000000000000000000000000000000 Nil!8002))))

(declare-fun b!449525 () Bool)

(declare-fun e!263532 () Bool)

(assert (=> b!449525 (= e!263532 tp_is_empty!12029)))

(declare-fun b!449526 () Bool)

(declare-fun res!267519 () Bool)

(assert (=> b!449526 (=> (not res!267519) (not e!263530))))

(assert (=> b!449526 (= res!267519 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8002))))

(declare-fun b!449527 () Bool)

(declare-fun res!267516 () Bool)

(assert (=> b!449527 (=> (not res!267516) (not e!263530))))

(assert (=> b!449527 (= res!267516 (or (= (select (arr!13355 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13355 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!449528 () Bool)

(declare-fun res!267521 () Bool)

(assert (=> b!449528 (=> (not res!267521) (not e!263530))))

(assert (=> b!449528 (= res!267521 (and (= (size!13708 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13707 _keys!709) (size!13708 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!449529 () Bool)

(assert (=> b!449529 (= e!263530 e!263535)))

(declare-fun res!267515 () Bool)

(assert (=> b!449529 (=> (not res!267515) (not e!263535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27825 (_ BitVec 32)) Bool)

(assert (=> b!449529 (= res!267515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204383 mask!1025))))

(assert (=> b!449529 (= lt!204383 (array!27826 (store (arr!13355 _keys!709) i!563 k!794) (size!13707 _keys!709)))))

(declare-fun b!449530 () Bool)

(declare-fun res!267517 () Bool)

(assert (=> b!449530 (=> (not res!267517) (not e!263530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!449530 (= res!267517 (validKeyInArray!0 k!794))))

(declare-fun b!449531 () Bool)

(declare-fun res!267511 () Bool)

(assert (=> b!449531 (=> (not res!267511) (not e!263535))))

(assert (=> b!449531 (= res!267511 (bvsle from!863 i!563))))

(declare-fun b!449532 () Bool)

(declare-fun res!267514 () Bool)

(assert (=> b!449532 (=> (not res!267514) (not e!263530))))

(assert (=> b!449532 (= res!267514 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13707 _keys!709))))))

(declare-fun b!449533 () Bool)

(declare-fun res!267518 () Bool)

(assert (=> b!449533 (=> (not res!267518) (not e!263530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!449533 (= res!267518 (validMask!0 mask!1025))))

(declare-fun b!449534 () Bool)

(assert (=> b!449534 (= e!263531 tp_is_empty!12029)))

(declare-fun b!449535 () Bool)

(assert (=> b!449535 (= e!263533 (and e!263532 mapRes!19677))))

(declare-fun condMapEmpty!19677 () Bool)

(declare-fun mapDefault!19677 () ValueCell!5671)

