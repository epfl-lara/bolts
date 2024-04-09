; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39582 () Bool)

(assert start!39582)

(declare-fun b_free!9841 () Bool)

(declare-fun b_next!9841 () Bool)

(assert (=> start!39582 (= b_free!9841 (not b_next!9841))))

(declare-fun tp!35051 () Bool)

(declare-fun b_and!17515 () Bool)

(assert (=> start!39582 (= tp!35051 b_and!17515)))

(declare-fun b!423474 () Bool)

(declare-fun e!251721 () Bool)

(declare-fun e!251720 () Bool)

(assert (=> b!423474 (= e!251721 e!251720)))

(declare-fun res!247616 () Bool)

(assert (=> b!423474 (=> (not res!247616) (not e!251720))))

(declare-datatypes ((array!25813 0))(
  ( (array!25814 (arr!12353 (Array (_ BitVec 32) (_ BitVec 64))) (size!12705 (_ BitVec 32))) )
))
(declare-fun lt!194177 () array!25813)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25813 (_ BitVec 32)) Bool)

(assert (=> b!423474 (= res!247616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194177 mask!1025))))

(declare-fun _keys!709 () array!25813)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423474 (= lt!194177 (array!25814 (store (arr!12353 _keys!709) i!563 k!794) (size!12705 _keys!709)))))

(declare-fun b!423475 () Bool)

(declare-fun res!247623 () Bool)

(assert (=> b!423475 (=> (not res!247623) (not e!251721))))

(declare-fun arrayContainsKey!0 (array!25813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423475 (= res!247623 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!423476 () Bool)

(declare-fun res!247620 () Bool)

(assert (=> b!423476 (=> (not res!247620) (not e!251720))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!423476 (= res!247620 (bvsle from!863 i!563))))

(declare-fun b!423477 () Bool)

(declare-fun res!247626 () Bool)

(assert (=> b!423477 (=> (not res!247626) (not e!251721))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423477 (= res!247626 (validKeyInArray!0 k!794))))

(declare-fun b!423478 () Bool)

(declare-fun res!247617 () Bool)

(assert (=> b!423478 (=> (not res!247617) (not e!251721))))

(assert (=> b!423478 (= res!247617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!423479 () Bool)

(declare-fun res!247625 () Bool)

(assert (=> b!423479 (=> (not res!247625) (not e!251721))))

(assert (=> b!423479 (= res!247625 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12705 _keys!709))))))

(declare-fun b!423480 () Bool)

(assert (=> b!423480 (= e!251720 false)))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15763 0))(
  ( (V!15764 (val!5541 Int)) )
))
(declare-datatypes ((ValueCell!5153 0))(
  ( (ValueCellFull!5153 (v!7784 V!15763)) (EmptyCell!5153) )
))
(declare-datatypes ((array!25815 0))(
  ( (array!25816 (arr!12354 (Array (_ BitVec 32) ValueCell!5153)) (size!12706 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25815)

(declare-fun zeroValue!515 () V!15763)

(declare-fun v!412 () V!15763)

(declare-datatypes ((tuple2!7206 0))(
  ( (tuple2!7207 (_1!3613 (_ BitVec 64)) (_2!3613 V!15763)) )
))
(declare-datatypes ((List!7252 0))(
  ( (Nil!7249) (Cons!7248 (h!8104 tuple2!7206) (t!12704 List!7252)) )
))
(declare-datatypes ((ListLongMap!6133 0))(
  ( (ListLongMap!6134 (toList!3082 List!7252)) )
))
(declare-fun lt!194176 () ListLongMap!6133)

(declare-fun minValue!515 () V!15763)

(declare-fun getCurrentListMapNoExtraKeys!1283 (array!25813 array!25815 (_ BitVec 32) (_ BitVec 32) V!15763 V!15763 (_ BitVec 32) Int) ListLongMap!6133)

(assert (=> b!423480 (= lt!194176 (getCurrentListMapNoExtraKeys!1283 lt!194177 (array!25816 (store (arr!12354 _values!549) i!563 (ValueCellFull!5153 v!412)) (size!12706 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194178 () ListLongMap!6133)

(assert (=> b!423480 (= lt!194178 (getCurrentListMapNoExtraKeys!1283 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423481 () Bool)

(declare-fun res!247619 () Bool)

(assert (=> b!423481 (=> (not res!247619) (not e!251721))))

(assert (=> b!423481 (= res!247619 (or (= (select (arr!12353 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12353 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18111 () Bool)

(declare-fun mapRes!18111 () Bool)

(declare-fun tp!35052 () Bool)

(declare-fun e!251723 () Bool)

(assert (=> mapNonEmpty!18111 (= mapRes!18111 (and tp!35052 e!251723))))

(declare-fun mapKey!18111 () (_ BitVec 32))

(declare-fun mapRest!18111 () (Array (_ BitVec 32) ValueCell!5153))

(declare-fun mapValue!18111 () ValueCell!5153)

(assert (=> mapNonEmpty!18111 (= (arr!12354 _values!549) (store mapRest!18111 mapKey!18111 mapValue!18111))))

(declare-fun b!423482 () Bool)

(declare-fun e!251725 () Bool)

(declare-fun tp_is_empty!10993 () Bool)

(assert (=> b!423482 (= e!251725 tp_is_empty!10993)))

(declare-fun res!247622 () Bool)

(assert (=> start!39582 (=> (not res!247622) (not e!251721))))

(assert (=> start!39582 (= res!247622 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12705 _keys!709))))))

(assert (=> start!39582 e!251721))

(assert (=> start!39582 tp_is_empty!10993))

(assert (=> start!39582 tp!35051))

(assert (=> start!39582 true))

(declare-fun e!251722 () Bool)

(declare-fun array_inv!9006 (array!25815) Bool)

(assert (=> start!39582 (and (array_inv!9006 _values!549) e!251722)))

(declare-fun array_inv!9007 (array!25813) Bool)

(assert (=> start!39582 (array_inv!9007 _keys!709)))

(declare-fun b!423483 () Bool)

(assert (=> b!423483 (= e!251723 tp_is_empty!10993)))

(declare-fun b!423484 () Bool)

(declare-fun res!247624 () Bool)

(assert (=> b!423484 (=> (not res!247624) (not e!251721))))

(assert (=> b!423484 (= res!247624 (and (= (size!12706 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12705 _keys!709) (size!12706 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423485 () Bool)

(declare-fun res!247615 () Bool)

(assert (=> b!423485 (=> (not res!247615) (not e!251720))))

(declare-datatypes ((List!7253 0))(
  ( (Nil!7250) (Cons!7249 (h!8105 (_ BitVec 64)) (t!12705 List!7253)) )
))
(declare-fun arrayNoDuplicates!0 (array!25813 (_ BitVec 32) List!7253) Bool)

(assert (=> b!423485 (= res!247615 (arrayNoDuplicates!0 lt!194177 #b00000000000000000000000000000000 Nil!7250))))

(declare-fun mapIsEmpty!18111 () Bool)

(assert (=> mapIsEmpty!18111 mapRes!18111))

(declare-fun b!423486 () Bool)

(assert (=> b!423486 (= e!251722 (and e!251725 mapRes!18111))))

(declare-fun condMapEmpty!18111 () Bool)

(declare-fun mapDefault!18111 () ValueCell!5153)

