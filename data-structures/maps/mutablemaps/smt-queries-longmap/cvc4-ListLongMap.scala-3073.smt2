; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43302 () Bool)

(assert start!43302)

(declare-fun b_free!12161 () Bool)

(declare-fun b_next!12161 () Bool)

(assert (=> start!43302 (= b_free!12161 (not b_next!12161))))

(declare-fun tp!42754 () Bool)

(declare-fun b_and!20931 () Bool)

(assert (=> start!43302 (= tp!42754 b_and!20931)))

(declare-fun b!479462 () Bool)

(declare-fun e!282116 () Bool)

(declare-fun tp_is_empty!13673 () Bool)

(assert (=> b!479462 (= e!282116 tp_is_empty!13673)))

(declare-fun b!479463 () Bool)

(declare-fun res!286068 () Bool)

(declare-fun e!282118 () Bool)

(assert (=> b!479463 (=> (not res!286068) (not e!282118))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!30983 0))(
  ( (array!30984 (arr!14895 (Array (_ BitVec 32) (_ BitVec 64))) (size!15253 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30983)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-datatypes ((V!19301 0))(
  ( (V!19302 (val!6884 Int)) )
))
(declare-datatypes ((ValueCell!6475 0))(
  ( (ValueCellFull!6475 (v!9169 V!19301)) (EmptyCell!6475) )
))
(declare-datatypes ((array!30985 0))(
  ( (array!30986 (arr!14896 (Array (_ BitVec 32) ValueCell!6475)) (size!15254 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30985)

(assert (=> b!479463 (= res!286068 (and (= (size!15254 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15253 _keys!1874) (size!15254 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479464 () Bool)

(declare-fun e!282114 () Bool)

(assert (=> b!479464 (= e!282114 tp_is_empty!13673)))

(declare-fun mapNonEmpty!22207 () Bool)

(declare-fun mapRes!22207 () Bool)

(declare-fun tp!42753 () Bool)

(assert (=> mapNonEmpty!22207 (= mapRes!22207 (and tp!42753 e!282116))))

(declare-fun mapKey!22207 () (_ BitVec 32))

(declare-fun mapValue!22207 () ValueCell!6475)

(declare-fun mapRest!22207 () (Array (_ BitVec 32) ValueCell!6475))

(assert (=> mapNonEmpty!22207 (= (arr!14896 _values!1516) (store mapRest!22207 mapKey!22207 mapValue!22207))))

(declare-fun res!286071 () Bool)

(assert (=> start!43302 (=> (not res!286071) (not e!282118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43302 (= res!286071 (validMask!0 mask!2352))))

(assert (=> start!43302 e!282118))

(assert (=> start!43302 true))

(assert (=> start!43302 tp_is_empty!13673))

(declare-fun e!282115 () Bool)

(declare-fun array_inv!10730 (array!30985) Bool)

(assert (=> start!43302 (and (array_inv!10730 _values!1516) e!282115)))

(assert (=> start!43302 tp!42754))

(declare-fun array_inv!10731 (array!30983) Bool)

(assert (=> start!43302 (array_inv!10731 _keys!1874)))

(declare-fun mapIsEmpty!22207 () Bool)

(assert (=> mapIsEmpty!22207 mapRes!22207))

(declare-fun b!479465 () Bool)

(declare-fun res!286070 () Bool)

(assert (=> b!479465 (=> (not res!286070) (not e!282118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30983 (_ BitVec 32)) Bool)

(assert (=> b!479465 (= res!286070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479466 () Bool)

(declare-fun res!286069 () Bool)

(assert (=> b!479466 (=> (not res!286069) (not e!282118))))

(declare-datatypes ((List!9142 0))(
  ( (Nil!9139) (Cons!9138 (h!9994 (_ BitVec 64)) (t!15356 List!9142)) )
))
(declare-fun arrayNoDuplicates!0 (array!30983 (_ BitVec 32) List!9142) Bool)

(assert (=> b!479466 (= res!286069 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9139))))

(declare-fun b!479467 () Bool)

(assert (=> b!479467 (= e!282115 (and e!282114 mapRes!22207))))

(declare-fun condMapEmpty!22207 () Bool)

(declare-fun mapDefault!22207 () ValueCell!6475)

