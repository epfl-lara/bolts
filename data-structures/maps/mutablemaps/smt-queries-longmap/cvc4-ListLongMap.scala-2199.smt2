; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36564 () Bool)

(assert start!36564)

(declare-fun mapIsEmpty!14190 () Bool)

(declare-fun mapRes!14190 () Bool)

(assert (=> mapIsEmpty!14190 mapRes!14190))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12351 0))(
  ( (V!12352 (val!4262 Int)) )
))
(declare-datatypes ((ValueCell!3874 0))(
  ( (ValueCellFull!3874 (v!6453 V!12351)) (EmptyCell!3874) )
))
(declare-datatypes ((array!20795 0))(
  ( (array!20796 (arr!9872 (Array (_ BitVec 32) ValueCell!3874)) (size!10224 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20795)

(declare-fun b!364987 () Bool)

(declare-fun e!223465 () Bool)

(declare-datatypes ((array!20797 0))(
  ( (array!20798 (arr!9873 (Array (_ BitVec 32) (_ BitVec 64))) (size!10225 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20797)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!364987 (= e!223465 (and (= (size!10224 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10225 _keys!658) (size!10224 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011) (= (size!10225 _keys!658) (bvadd #b00000000000000000000000000000001 mask!970)) (bvsgt #b00000000000000000000000000000000 (size!10225 _keys!658))))))

(declare-fun b!364988 () Bool)

(declare-fun e!223466 () Bool)

(declare-fun tp_is_empty!8435 () Bool)

(assert (=> b!364988 (= e!223466 tp_is_empty!8435)))

(declare-fun b!364989 () Bool)

(declare-fun e!223463 () Bool)

(assert (=> b!364989 (= e!223463 (and e!223466 mapRes!14190))))

(declare-fun condMapEmpty!14190 () Bool)

(declare-fun mapDefault!14190 () ValueCell!3874)

