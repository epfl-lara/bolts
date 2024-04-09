; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39522 () Bool)

(assert start!39522)

(declare-fun b_free!9781 () Bool)

(declare-fun b_next!9781 () Bool)

(assert (=> start!39522 (= b_free!9781 (not b_next!9781))))

(declare-fun tp!34871 () Bool)

(declare-fun b_and!17455 () Bool)

(assert (=> start!39522 (= tp!34871 b_and!17455)))

(declare-fun b!422124 () Bool)

(declare-fun res!246545 () Bool)

(declare-fun e!251181 () Bool)

(assert (=> b!422124 (=> (not res!246545) (not e!251181))))

(declare-datatypes ((array!25693 0))(
  ( (array!25694 (arr!12293 (Array (_ BitVec 32) (_ BitVec 64))) (size!12645 (_ BitVec 32))) )
))
(declare-fun lt!193908 () array!25693)

(declare-datatypes ((List!7206 0))(
  ( (Nil!7203) (Cons!7202 (h!8058 (_ BitVec 64)) (t!12658 List!7206)) )
))
(declare-fun arrayNoDuplicates!0 (array!25693 (_ BitVec 32) List!7206) Bool)

(assert (=> b!422124 (= res!246545 (arrayNoDuplicates!0 lt!193908 #b00000000000000000000000000000000 Nil!7203))))

(declare-fun b!422125 () Bool)

(declare-fun e!251183 () Bool)

(declare-fun tp_is_empty!10933 () Bool)

(assert (=> b!422125 (= e!251183 tp_is_empty!10933)))

(declare-fun b!422126 () Bool)

(declare-fun e!251180 () Bool)

(assert (=> b!422126 (= e!251180 e!251181)))

(declare-fun res!246546 () Bool)

(assert (=> b!422126 (=> (not res!246546) (not e!251181))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25693 (_ BitVec 32)) Bool)

(assert (=> b!422126 (= res!246546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193908 mask!1025))))

(declare-fun _keys!709 () array!25693)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422126 (= lt!193908 (array!25694 (store (arr!12293 _keys!709) i!563 k!794) (size!12645 _keys!709)))))

(declare-fun res!246540 () Bool)

(assert (=> start!39522 (=> (not res!246540) (not e!251180))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39522 (= res!246540 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12645 _keys!709))))))

(assert (=> start!39522 e!251180))

(assert (=> start!39522 tp_is_empty!10933))

(assert (=> start!39522 tp!34871))

(assert (=> start!39522 true))

(declare-datatypes ((V!15683 0))(
  ( (V!15684 (val!5511 Int)) )
))
(declare-datatypes ((ValueCell!5123 0))(
  ( (ValueCellFull!5123 (v!7754 V!15683)) (EmptyCell!5123) )
))
(declare-datatypes ((array!25695 0))(
  ( (array!25696 (arr!12294 (Array (_ BitVec 32) ValueCell!5123)) (size!12646 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25695)

(declare-fun e!251185 () Bool)

(declare-fun array_inv!8952 (array!25695) Bool)

(assert (=> start!39522 (and (array_inv!8952 _values!549) e!251185)))

(declare-fun array_inv!8953 (array!25693) Bool)

(assert (=> start!39522 (array_inv!8953 _keys!709)))

(declare-fun b!422127 () Bool)

(declare-fun res!246544 () Bool)

(assert (=> b!422127 (=> (not res!246544) (not e!251180))))

(assert (=> b!422127 (= res!246544 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12645 _keys!709))))))

(declare-fun b!422128 () Bool)

(declare-fun res!246542 () Bool)

(assert (=> b!422128 (=> (not res!246542) (not e!251180))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!422128 (= res!246542 (and (= (size!12646 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12645 _keys!709) (size!12646 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!422129 () Bool)

(declare-fun res!246543 () Bool)

(assert (=> b!422129 (=> (not res!246543) (not e!251181))))

(assert (=> b!422129 (= res!246543 (bvsle from!863 i!563))))

(declare-fun b!422130 () Bool)

(declare-fun res!246536 () Bool)

(assert (=> b!422130 (=> (not res!246536) (not e!251180))))

(assert (=> b!422130 (= res!246536 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7203))))

(declare-fun b!422131 () Bool)

(declare-fun mapRes!18021 () Bool)

(assert (=> b!422131 (= e!251185 (and e!251183 mapRes!18021))))

(declare-fun condMapEmpty!18021 () Bool)

(declare-fun mapDefault!18021 () ValueCell!5123)

