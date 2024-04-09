; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69858 () Bool)

(assert start!69858)

(declare-fun b!812021 () Bool)

(declare-fun e!449732 () Bool)

(declare-fun tp_is_empty!14009 () Bool)

(assert (=> b!812021 (= e!449732 tp_is_empty!14009)))

(declare-fun b!812022 () Bool)

(declare-fun e!449734 () Bool)

(assert (=> b!812022 (= e!449734 tp_is_empty!14009)))

(declare-fun b!812023 () Bool)

(declare-fun res!555043 () Bool)

(declare-fun e!449736 () Bool)

(assert (=> b!812023 (=> (not res!555043) (not e!449736))))

(declare-datatypes ((array!44216 0))(
  ( (array!44217 (arr!21168 (Array (_ BitVec 32) (_ BitVec 64))) (size!21589 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44216)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44216 (_ BitVec 32)) Bool)

(assert (=> b!812023 (= res!555043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812024 () Bool)

(declare-fun res!555045 () Bool)

(assert (=> b!812024 (=> (not res!555045) (not e!449736))))

(assert (=> b!812024 (= res!555045 (and (bvsle #b00000000000000000000000000000000 (size!21589 _keys!976)) (bvslt (size!21589 _keys!976) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!22582 () Bool)

(declare-fun mapRes!22582 () Bool)

(declare-fun tp!43690 () Bool)

(assert (=> mapNonEmpty!22582 (= mapRes!22582 (and tp!43690 e!449734))))

(declare-fun mapKey!22582 () (_ BitVec 32))

(declare-datatypes ((V!23679 0))(
  ( (V!23680 (val!7052 Int)) )
))
(declare-datatypes ((ValueCell!6589 0))(
  ( (ValueCellFull!6589 (v!9474 V!23679)) (EmptyCell!6589) )
))
(declare-datatypes ((array!44218 0))(
  ( (array!44219 (arr!21169 (Array (_ BitVec 32) ValueCell!6589)) (size!21590 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44218)

(declare-fun mapValue!22582 () ValueCell!6589)

(declare-fun mapRest!22582 () (Array (_ BitVec 32) ValueCell!6589))

(assert (=> mapNonEmpty!22582 (= (arr!21169 _values!788) (store mapRest!22582 mapKey!22582 mapValue!22582))))

(declare-fun b!812025 () Bool)

(declare-datatypes ((List!15126 0))(
  ( (Nil!15123) (Cons!15122 (h!16251 (_ BitVec 64)) (t!21449 List!15126)) )
))
(declare-fun noDuplicate!1293 (List!15126) Bool)

(assert (=> b!812025 (= e!449736 (not (noDuplicate!1293 Nil!15123)))))

(declare-fun mapIsEmpty!22582 () Bool)

(assert (=> mapIsEmpty!22582 mapRes!22582))

(declare-fun b!812026 () Bool)

(declare-fun e!449735 () Bool)

(assert (=> b!812026 (= e!449735 (and e!449732 mapRes!22582))))

(declare-fun condMapEmpty!22582 () Bool)

(declare-fun mapDefault!22582 () ValueCell!6589)

