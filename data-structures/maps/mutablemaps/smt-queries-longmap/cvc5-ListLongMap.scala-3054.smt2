; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43144 () Bool)

(assert start!43144)

(declare-fun mapNonEmpty!22018 () Bool)

(declare-fun mapRes!22018 () Bool)

(declare-fun tp!42493 () Bool)

(declare-fun e!281132 () Bool)

(assert (=> mapNonEmpty!22018 (= mapRes!22018 (and tp!42493 e!281132))))

(declare-datatypes ((V!19145 0))(
  ( (V!19146 (val!6825 Int)) )
))
(declare-datatypes ((ValueCell!6416 0))(
  ( (ValueCellFull!6416 (v!9109 V!19145)) (EmptyCell!6416) )
))
(declare-fun mapRest!22018 () (Array (_ BitVec 32) ValueCell!6416))

(declare-fun mapKey!22018 () (_ BitVec 32))

(declare-fun mapValue!22018 () ValueCell!6416)

(declare-datatypes ((array!30751 0))(
  ( (array!30752 (arr!14783 (Array (_ BitVec 32) ValueCell!6416)) (size!15141 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30751)

(assert (=> mapNonEmpty!22018 (= (arr!14783 _values!1516) (store mapRest!22018 mapKey!22018 mapValue!22018))))

(declare-fun b!478169 () Bool)

(declare-fun res!285370 () Bool)

(declare-fun e!281129 () Bool)

(assert (=> b!478169 (=> (not res!285370) (not e!281129))))

(declare-datatypes ((array!30753 0))(
  ( (array!30754 (arr!14784 (Array (_ BitVec 32) (_ BitVec 64))) (size!15142 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30753)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30753 (_ BitVec 32)) Bool)

(assert (=> b!478169 (= res!285370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478170 () Bool)

(declare-fun e!281128 () Bool)

(declare-fun tp_is_empty!13555 () Bool)

(assert (=> b!478170 (= e!281128 tp_is_empty!13555)))

(declare-fun mapIsEmpty!22018 () Bool)

(assert (=> mapIsEmpty!22018 mapRes!22018))

(declare-fun res!285368 () Bool)

(assert (=> start!43144 (=> (not res!285368) (not e!281129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43144 (= res!285368 (validMask!0 mask!2352))))

(assert (=> start!43144 e!281129))

(assert (=> start!43144 true))

(declare-fun e!281130 () Bool)

(declare-fun array_inv!10656 (array!30751) Bool)

(assert (=> start!43144 (and (array_inv!10656 _values!1516) e!281130)))

(declare-fun array_inv!10657 (array!30753) Bool)

(assert (=> start!43144 (array_inv!10657 _keys!1874)))

(declare-fun b!478171 () Bool)

(assert (=> b!478171 (= e!281132 tp_is_empty!13555)))

(declare-fun b!478172 () Bool)

(assert (=> b!478172 (= e!281129 (and (bvsle #b00000000000000000000000000000000 (size!15142 _keys!1874)) (bvsge (size!15142 _keys!1874) #b01111111111111111111111111111111)))))

(declare-fun b!478173 () Bool)

(assert (=> b!478173 (= e!281130 (and e!281128 mapRes!22018))))

(declare-fun condMapEmpty!22018 () Bool)

(declare-fun mapDefault!22018 () ValueCell!6416)

