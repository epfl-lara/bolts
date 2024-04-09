; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39052 () Bool)

(assert start!39052)

(declare-fun b_free!9311 () Bool)

(declare-fun b_next!9311 () Bool)

(assert (=> start!39052 (= b_free!9311 (not b_next!9311))))

(declare-fun tp!33461 () Bool)

(declare-fun b_and!16715 () Bool)

(assert (=> start!39052 (= tp!33461 b_and!16715)))

(declare-fun b!409407 () Bool)

(declare-fun res!237176 () Bool)

(declare-fun e!245566 () Bool)

(assert (=> b!409407 (=> (not res!237176) (not e!245566))))

(declare-datatypes ((array!24779 0))(
  ( (array!24780 (arr!11836 (Array (_ BitVec 32) (_ BitVec 64))) (size!12188 (_ BitVec 32))) )
))
(declare-fun lt!188931 () array!24779)

(declare-datatypes ((List!6834 0))(
  ( (Nil!6831) (Cons!6830 (h!7686 (_ BitVec 64)) (t!12016 List!6834)) )
))
(declare-fun arrayNoDuplicates!0 (array!24779 (_ BitVec 32) List!6834) Bool)

(assert (=> b!409407 (= res!237176 (arrayNoDuplicates!0 lt!188931 #b00000000000000000000000000000000 Nil!6831))))

(declare-fun b!409408 () Bool)

(declare-fun res!237185 () Bool)

(declare-fun e!245565 () Bool)

(assert (=> b!409408 (=> (not res!237185) (not e!245565))))

(declare-fun _keys!709 () array!24779)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24779 (_ BitVec 32)) Bool)

(assert (=> b!409408 (= res!237185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!409409 () Bool)

(declare-fun res!237175 () Bool)

(assert (=> b!409409 (=> (not res!237175) (not e!245565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!409409 (= res!237175 (validMask!0 mask!1025))))

(declare-fun b!409410 () Bool)

(declare-fun res!237182 () Bool)

(assert (=> b!409410 (=> (not res!237182) (not e!245565))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!409410 (= res!237182 (or (= (select (arr!11836 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11836 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!409411 () Bool)

(assert (=> b!409411 (= e!245566 false)))

(declare-datatypes ((V!15055 0))(
  ( (V!15056 (val!5276 Int)) )
))
(declare-datatypes ((tuple2!6786 0))(
  ( (tuple2!6787 (_1!3403 (_ BitVec 64)) (_2!3403 V!15055)) )
))
(declare-datatypes ((List!6835 0))(
  ( (Nil!6832) (Cons!6831 (h!7687 tuple2!6786) (t!12017 List!6835)) )
))
(declare-datatypes ((ListLongMap!5713 0))(
  ( (ListLongMap!5714 (toList!2872 List!6835)) )
))
(declare-fun lt!188930 () ListLongMap!5713)

(declare-fun minValue!515 () V!15055)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4888 0))(
  ( (ValueCellFull!4888 (v!7519 V!15055)) (EmptyCell!4888) )
))
(declare-datatypes ((array!24781 0))(
  ( (array!24782 (arr!11837 (Array (_ BitVec 32) ValueCell!4888)) (size!12189 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24781)

(declare-fun zeroValue!515 () V!15055)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1082 (array!24779 array!24781 (_ BitVec 32) (_ BitVec 32) V!15055 V!15055 (_ BitVec 32) Int) ListLongMap!5713)

(assert (=> b!409411 (= lt!188930 (getCurrentListMapNoExtraKeys!1082 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!409412 () Bool)

(declare-fun res!237181 () Bool)

(assert (=> b!409412 (=> (not res!237181) (not e!245565))))

(assert (=> b!409412 (= res!237181 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12188 _keys!709))))))

(declare-fun res!237179 () Bool)

(assert (=> start!39052 (=> (not res!237179) (not e!245565))))

(assert (=> start!39052 (= res!237179 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12188 _keys!709))))))

(assert (=> start!39052 e!245565))

(declare-fun tp_is_empty!10463 () Bool)

(assert (=> start!39052 tp_is_empty!10463))

(assert (=> start!39052 tp!33461))

(assert (=> start!39052 true))

(declare-fun e!245564 () Bool)

(declare-fun array_inv!8642 (array!24781) Bool)

(assert (=> start!39052 (and (array_inv!8642 _values!549) e!245564)))

(declare-fun array_inv!8643 (array!24779) Bool)

(assert (=> start!39052 (array_inv!8643 _keys!709)))

(declare-fun b!409413 () Bool)

(declare-fun res!237183 () Bool)

(assert (=> b!409413 (=> (not res!237183) (not e!245565))))

(assert (=> b!409413 (= res!237183 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6831))))

(declare-fun b!409414 () Bool)

(declare-fun res!237184 () Bool)

(assert (=> b!409414 (=> (not res!237184) (not e!245566))))

(assert (=> b!409414 (= res!237184 (bvsle from!863 i!563))))

(declare-fun b!409415 () Bool)

(declare-fun res!237178 () Bool)

(assert (=> b!409415 (=> (not res!237178) (not e!245565))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!409415 (= res!237178 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!409416 () Bool)

(declare-fun e!245568 () Bool)

(declare-fun mapRes!17316 () Bool)

(assert (=> b!409416 (= e!245564 (and e!245568 mapRes!17316))))

(declare-fun condMapEmpty!17316 () Bool)

(declare-fun mapDefault!17316 () ValueCell!4888)

