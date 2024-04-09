; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36668 () Bool)

(assert start!36668)

(declare-fun res!204514 () Bool)

(declare-fun e!223945 () Bool)

(assert (=> start!36668 (=> (not res!204514) (not e!223945))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36668 (= res!204514 (validMask!0 mask!970))))

(assert (=> start!36668 e!223945))

(assert (=> start!36668 true))

(declare-datatypes ((V!12415 0))(
  ( (V!12416 (val!4286 Int)) )
))
(declare-datatypes ((ValueCell!3898 0))(
  ( (ValueCellFull!3898 (v!6478 V!12415)) (EmptyCell!3898) )
))
(declare-datatypes ((array!20899 0))(
  ( (array!20900 (arr!9918 (Array (_ BitVec 32) ValueCell!3898)) (size!10270 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20899)

(declare-fun e!223946 () Bool)

(declare-fun array_inv!7336 (array!20899) Bool)

(assert (=> start!36668 (and (array_inv!7336 _values!506) e!223946)))

(declare-datatypes ((array!20901 0))(
  ( (array!20902 (arr!9919 (Array (_ BitVec 32) (_ BitVec 64))) (size!10271 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20901)

(declare-fun array_inv!7337 (array!20901) Bool)

(assert (=> start!36668 (array_inv!7337 _keys!658)))

(declare-fun b!365650 () Bool)

(declare-fun res!204516 () Bool)

(assert (=> b!365650 (=> (not res!204516) (not e!223945))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!365650 (= res!204516 (and (= (size!10270 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10271 _keys!658) (size!10270 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365651 () Bool)

(declare-fun e!223948 () Bool)

(declare-fun tp_is_empty!8483 () Bool)

(assert (=> b!365651 (= e!223948 tp_is_empty!8483)))

(declare-fun b!365652 () Bool)

(declare-fun e!223947 () Bool)

(assert (=> b!365652 (= e!223947 tp_is_empty!8483)))

(declare-fun b!365653 () Bool)

(declare-fun mapRes!14280 () Bool)

(assert (=> b!365653 (= e!223946 (and e!223947 mapRes!14280))))

(declare-fun condMapEmpty!14280 () Bool)

(declare-fun mapDefault!14280 () ValueCell!3898)

