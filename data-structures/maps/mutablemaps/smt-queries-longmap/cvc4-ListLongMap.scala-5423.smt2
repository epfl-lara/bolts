; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72354 () Bool)

(assert start!72354)

(declare-fun mapNonEmpty!24665 () Bool)

(declare-fun mapRes!24665 () Bool)

(declare-fun tp!47660 () Bool)

(declare-fun e!467690 () Bool)

(assert (=> mapNonEmpty!24665 (= mapRes!24665 (and tp!47660 e!467690))))

(declare-datatypes ((V!25549 0))(
  ( (V!25550 (val!7736 Int)) )
))
(declare-datatypes ((ValueCell!7249 0))(
  ( (ValueCellFull!7249 (v!10157 V!25549)) (EmptyCell!7249) )
))
(declare-fun mapValue!24665 () ValueCell!7249)

(declare-fun mapKey!24665 () (_ BitVec 32))

(declare-datatypes ((array!47014 0))(
  ( (array!47015 (arr!22534 (Array (_ BitVec 32) ValueCell!7249)) (size!22975 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47014)

(declare-fun mapRest!24665 () (Array (_ BitVec 32) ValueCell!7249))

(assert (=> mapNonEmpty!24665 (= (arr!22534 _values!688) (store mapRest!24665 mapKey!24665 mapValue!24665))))

(declare-fun b!837794 () Bool)

(declare-fun res!569849 () Bool)

(declare-fun e!467691 () Bool)

(assert (=> b!837794 (=> (not res!569849) (not e!467691))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837794 (= res!569849 (validMask!0 mask!1196))))

(declare-fun b!837795 () Bool)

(declare-fun res!569848 () Bool)

(assert (=> b!837795 (=> (not res!569848) (not e!467691))))

(declare-datatypes ((array!47016 0))(
  ( (array!47017 (arr!22535 (Array (_ BitVec 32) (_ BitVec 64))) (size!22976 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47016)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47016 (_ BitVec 32)) Bool)

(assert (=> b!837795 (= res!569848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!24665 () Bool)

(assert (=> mapIsEmpty!24665 mapRes!24665))

(declare-fun b!837796 () Bool)

(declare-fun e!467688 () Bool)

(declare-fun tp_is_empty!15377 () Bool)

(assert (=> b!837796 (= e!467688 tp_is_empty!15377)))

(declare-fun b!837797 () Bool)

(declare-fun e!467687 () Bool)

(assert (=> b!837797 (= e!467687 (and e!467688 mapRes!24665))))

(declare-fun condMapEmpty!24665 () Bool)

(declare-fun mapDefault!24665 () ValueCell!7249)

