; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36558 () Bool)

(assert start!36558)

(declare-fun b!364951 () Bool)

(declare-fun e!223418 () Bool)

(declare-fun tp_is_empty!8429 () Bool)

(assert (=> b!364951 (= e!223418 tp_is_empty!8429)))

(declare-fun b!364952 () Bool)

(declare-fun e!223421 () Bool)

(assert (=> b!364952 (= e!223421 tp_is_empty!8429)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12343 0))(
  ( (V!12344 (val!4259 Int)) )
))
(declare-datatypes ((ValueCell!3871 0))(
  ( (ValueCellFull!3871 (v!6450 V!12343)) (EmptyCell!3871) )
))
(declare-datatypes ((array!20783 0))(
  ( (array!20784 (arr!9866 (Array (_ BitVec 32) ValueCell!3871)) (size!10218 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20783)

(declare-fun b!364953 () Bool)

(declare-fun e!223419 () Bool)

(declare-datatypes ((array!20785 0))(
  ( (array!20786 (arr!9867 (Array (_ BitVec 32) (_ BitVec 64))) (size!10219 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20785)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!364953 (= e!223419 (and (= (size!10218 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10219 _keys!658) (size!10218 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011) (not (= (size!10219 _keys!658) (bvadd #b00000000000000000000000000000001 mask!970)))))))

(declare-fun b!364954 () Bool)

(declare-fun e!223420 () Bool)

(declare-fun mapRes!14181 () Bool)

(assert (=> b!364954 (= e!223420 (and e!223421 mapRes!14181))))

(declare-fun condMapEmpty!14181 () Bool)

(declare-fun mapDefault!14181 () ValueCell!3871)

