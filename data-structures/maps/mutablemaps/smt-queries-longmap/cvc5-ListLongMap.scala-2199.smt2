; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36560 () Bool)

(assert start!36560)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12347 0))(
  ( (V!12348 (val!4260 Int)) )
))
(declare-datatypes ((ValueCell!3872 0))(
  ( (ValueCellFull!3872 (v!6451 V!12347)) (EmptyCell!3872) )
))
(declare-datatypes ((array!20787 0))(
  ( (array!20788 (arr!9868 (Array (_ BitVec 32) ValueCell!3872)) (size!10220 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20787)

(declare-fun e!223436 () Bool)

(declare-fun b!364963 () Bool)

(declare-datatypes ((array!20789 0))(
  ( (array!20790 (arr!9869 (Array (_ BitVec 32) (_ BitVec 64))) (size!10221 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20789)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!364963 (= e!223436 (and (= (size!10220 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10221 _keys!658) (size!10220 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011) (= (size!10221 _keys!658) (bvadd #b00000000000000000000000000000001 mask!970)) (bvsgt #b00000000000000000000000000000000 (size!10221 _keys!658))))))

(declare-fun mapIsEmpty!14184 () Bool)

(declare-fun mapRes!14184 () Bool)

(assert (=> mapIsEmpty!14184 mapRes!14184))

(declare-fun res!204145 () Bool)

(assert (=> start!36560 (=> (not res!204145) (not e!223436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36560 (= res!204145 (validMask!0 mask!970))))

(assert (=> start!36560 e!223436))

(assert (=> start!36560 true))

(declare-fun e!223432 () Bool)

(declare-fun array_inv!7302 (array!20787) Bool)

(assert (=> start!36560 (and (array_inv!7302 _values!506) e!223432)))

(declare-fun array_inv!7303 (array!20789) Bool)

(assert (=> start!36560 (array_inv!7303 _keys!658)))

(declare-fun b!364964 () Bool)

(declare-fun e!223435 () Bool)

(declare-fun tp_is_empty!8431 () Bool)

(assert (=> b!364964 (= e!223435 tp_is_empty!8431)))

(declare-fun mapNonEmpty!14184 () Bool)

(declare-fun tp!28260 () Bool)

(assert (=> mapNonEmpty!14184 (= mapRes!14184 (and tp!28260 e!223435))))

(declare-fun mapValue!14184 () ValueCell!3872)

(declare-fun mapKey!14184 () (_ BitVec 32))

(declare-fun mapRest!14184 () (Array (_ BitVec 32) ValueCell!3872))

(assert (=> mapNonEmpty!14184 (= (arr!9868 _values!506) (store mapRest!14184 mapKey!14184 mapValue!14184))))

(declare-fun b!364965 () Bool)

(declare-fun e!223433 () Bool)

(assert (=> b!364965 (= e!223433 tp_is_empty!8431)))

(declare-fun b!364966 () Bool)

(assert (=> b!364966 (= e!223432 (and e!223433 mapRes!14184))))

(declare-fun condMapEmpty!14184 () Bool)

(declare-fun mapDefault!14184 () ValueCell!3872)

