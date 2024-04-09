; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36664 () Bool)

(assert start!36664)

(declare-fun res!204496 () Bool)

(declare-fun e!223918 () Bool)

(assert (=> start!36664 (=> (not res!204496) (not e!223918))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36664 (= res!204496 (validMask!0 mask!970))))

(assert (=> start!36664 e!223918))

(assert (=> start!36664 true))

(declare-datatypes ((V!12411 0))(
  ( (V!12412 (val!4284 Int)) )
))
(declare-datatypes ((ValueCell!3896 0))(
  ( (ValueCellFull!3896 (v!6476 V!12411)) (EmptyCell!3896) )
))
(declare-datatypes ((array!20891 0))(
  ( (array!20892 (arr!9914 (Array (_ BitVec 32) ValueCell!3896)) (size!10266 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20891)

(declare-fun e!223916 () Bool)

(declare-fun array_inv!7332 (array!20891) Bool)

(assert (=> start!36664 (and (array_inv!7332 _values!506) e!223916)))

(declare-datatypes ((array!20893 0))(
  ( (array!20894 (arr!9915 (Array (_ BitVec 32) (_ BitVec 64))) (size!10267 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20893)

(declare-fun array_inv!7333 (array!20893) Bool)

(assert (=> start!36664 (array_inv!7333 _keys!658)))

(declare-fun mapIsEmpty!14274 () Bool)

(declare-fun mapRes!14274 () Bool)

(assert (=> mapIsEmpty!14274 mapRes!14274))

(declare-fun b!365614 () Bool)

(declare-fun res!204497 () Bool)

(assert (=> b!365614 (=> (not res!204497) (not e!223918))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365614 (= res!204497 (and (= (size!10266 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10267 _keys!658) (size!10266 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365615 () Bool)

(declare-fun e!223917 () Bool)

(assert (=> b!365615 (= e!223916 (and e!223917 mapRes!14274))))

(declare-fun condMapEmpty!14274 () Bool)

(declare-fun mapDefault!14274 () ValueCell!3896)

