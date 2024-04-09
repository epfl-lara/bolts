; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69892 () Bool)

(assert start!69892)

(declare-fun b!812217 () Bool)

(declare-fun e!449881 () Bool)

(declare-fun tp_is_empty!14021 () Bool)

(assert (=> b!812217 (= e!449881 tp_is_empty!14021)))

(declare-fun b!812218 () Bool)

(declare-fun e!449883 () Bool)

(assert (=> b!812218 (= e!449883 false)))

(declare-fun lt!364073 () Bool)

(declare-datatypes ((array!44242 0))(
  ( (array!44243 (arr!21179 (Array (_ BitVec 32) (_ BitVec 64))) (size!21600 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44242)

(declare-datatypes ((List!15130 0))(
  ( (Nil!15127) (Cons!15126 (h!16255 (_ BitVec 64)) (t!21453 List!15130)) )
))
(declare-fun arrayNoDuplicates!0 (array!44242 (_ BitVec 32) List!15130) Bool)

(assert (=> b!812218 (= lt!364073 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15127))))

(declare-fun b!812219 () Bool)

(declare-fun e!449882 () Bool)

(declare-fun mapRes!22606 () Bool)

(assert (=> b!812219 (= e!449882 (and e!449881 mapRes!22606))))

(declare-fun condMapEmpty!22606 () Bool)

(declare-datatypes ((V!23695 0))(
  ( (V!23696 (val!7058 Int)) )
))
(declare-datatypes ((ValueCell!6595 0))(
  ( (ValueCellFull!6595 (v!9481 V!23695)) (EmptyCell!6595) )
))
(declare-datatypes ((array!44244 0))(
  ( (array!44245 (arr!21180 (Array (_ BitVec 32) ValueCell!6595)) (size!21601 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44244)

(declare-fun mapDefault!22606 () ValueCell!6595)

