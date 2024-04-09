; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38980 () Bool)

(assert start!38980)

(declare-fun b!407951 () Bool)

(declare-fun res!236047 () Bool)

(declare-fun e!244919 () Bool)

(assert (=> b!407951 (=> (not res!236047) (not e!244919))))

(declare-datatypes ((array!24637 0))(
  ( (array!24638 (arr!11765 (Array (_ BitVec 32) (_ BitVec 64))) (size!12117 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24637)

(declare-datatypes ((List!6799 0))(
  ( (Nil!6796) (Cons!6795 (h!7651 (_ BitVec 64)) (t!11981 List!6799)) )
))
(declare-fun arrayNoDuplicates!0 (array!24637 (_ BitVec 32) List!6799) Bool)

(assert (=> b!407951 (= res!236047 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6796))))

(declare-fun res!236045 () Bool)

(assert (=> start!38980 (=> (not res!236045) (not e!244919))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38980 (= res!236045 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12117 _keys!709))))))

(assert (=> start!38980 e!244919))

(assert (=> start!38980 true))

(declare-datatypes ((V!14959 0))(
  ( (V!14960 (val!5240 Int)) )
))
(declare-datatypes ((ValueCell!4852 0))(
  ( (ValueCellFull!4852 (v!7483 V!14959)) (EmptyCell!4852) )
))
(declare-datatypes ((array!24639 0))(
  ( (array!24640 (arr!11766 (Array (_ BitVec 32) ValueCell!4852)) (size!12118 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24639)

(declare-fun e!244921 () Bool)

(declare-fun array_inv!8592 (array!24639) Bool)

(assert (=> start!38980 (and (array_inv!8592 _values!549) e!244921)))

(declare-fun array_inv!8593 (array!24637) Bool)

(assert (=> start!38980 (array_inv!8593 _keys!709)))

(declare-fun b!407952 () Bool)

(declare-fun res!236052 () Bool)

(assert (=> b!407952 (=> (not res!236052) (not e!244919))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!407952 (= res!236052 (and (= (size!12118 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12117 _keys!709) (size!12118 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!407953 () Bool)

(declare-fun res!236050 () Bool)

(assert (=> b!407953 (=> (not res!236050) (not e!244919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24637 (_ BitVec 32)) Bool)

(assert (=> b!407953 (= res!236050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407954 () Bool)

(declare-fun e!244916 () Bool)

(declare-fun tp_is_empty!10391 () Bool)

(assert (=> b!407954 (= e!244916 tp_is_empty!10391)))

(declare-fun b!407955 () Bool)

(declare-fun res!236044 () Bool)

(assert (=> b!407955 (=> (not res!236044) (not e!244919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!407955 (= res!236044 (validMask!0 mask!1025))))

(declare-fun b!407956 () Bool)

(declare-fun e!244918 () Bool)

(assert (=> b!407956 (= e!244918 false)))

(declare-fun lt!188715 () Bool)

(declare-fun lt!188714 () array!24637)

(assert (=> b!407956 (= lt!188715 (arrayNoDuplicates!0 lt!188714 #b00000000000000000000000000000000 Nil!6796))))

(declare-fun b!407957 () Bool)

(declare-fun e!244920 () Bool)

(assert (=> b!407957 (= e!244920 tp_is_empty!10391)))

(declare-fun b!407958 () Bool)

(declare-fun mapRes!17208 () Bool)

(assert (=> b!407958 (= e!244921 (and e!244920 mapRes!17208))))

(declare-fun condMapEmpty!17208 () Bool)

(declare-fun mapDefault!17208 () ValueCell!4852)

