; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36554 () Bool)

(assert start!36554)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12339 0))(
  ( (V!12340 (val!4257 Int)) )
))
(declare-datatypes ((ValueCell!3869 0))(
  ( (ValueCellFull!3869 (v!6448 V!12339)) (EmptyCell!3869) )
))
(declare-datatypes ((array!20775 0))(
  ( (array!20776 (arr!9862 (Array (_ BitVec 32) ValueCell!3869)) (size!10214 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20775)

(declare-fun b!364927 () Bool)

(declare-fun e!223389 () Bool)

(declare-datatypes ((array!20777 0))(
  ( (array!20778 (arr!9863 (Array (_ BitVec 32) (_ BitVec 64))) (size!10215 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20777)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!364927 (= e!223389 (and (= (size!10214 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10215 _keys!658) (size!10214 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011) (not (= (size!10215 _keys!658) (bvadd #b00000000000000000000000000000001 mask!970)))))))

(declare-fun b!364928 () Bool)

(declare-fun e!223388 () Bool)

(declare-fun tp_is_empty!8425 () Bool)

(assert (=> b!364928 (= e!223388 tp_is_empty!8425)))

(declare-fun b!364929 () Bool)

(declare-fun e!223390 () Bool)

(assert (=> b!364929 (= e!223390 tp_is_empty!8425)))

(declare-fun b!364930 () Bool)

(declare-fun e!223391 () Bool)

(declare-fun mapRes!14175 () Bool)

(assert (=> b!364930 (= e!223391 (and e!223388 mapRes!14175))))

(declare-fun condMapEmpty!14175 () Bool)

(declare-fun mapDefault!14175 () ValueCell!3869)

