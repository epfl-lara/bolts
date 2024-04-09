; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35296 () Bool)

(assert start!35296)

(declare-fun b!353384 () Bool)

(declare-fun e!216455 () Bool)

(declare-datatypes ((array!19117 0))(
  ( (array!19118 (arr!9053 (Array (_ BitVec 32) (_ BitVec 64))) (size!9405 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19117)

(assert (=> b!353384 (= e!216455 (and (bvsle #b00000000000000000000000000000000 (size!9405 _keys!1456)) (bvsge (size!9405 _keys!1456) #b01111111111111111111111111111111)))))

(declare-fun b!353385 () Bool)

(declare-fun e!216458 () Bool)

(declare-fun tp_is_empty!7783 () Bool)

(assert (=> b!353385 (= e!216458 tp_is_empty!7783)))

(declare-fun b!353386 () Bool)

(declare-fun res!195986 () Bool)

(assert (=> b!353386 (=> (not res!195986) (not e!216455))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11355 0))(
  ( (V!11356 (val!3936 Int)) )
))
(declare-datatypes ((ValueCell!3548 0))(
  ( (ValueCellFull!3548 (v!6125 V!11355)) (EmptyCell!3548) )
))
(declare-datatypes ((array!19119 0))(
  ( (array!19120 (arr!9054 (Array (_ BitVec 32) ValueCell!3548)) (size!9406 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19119)

(assert (=> b!353386 (= res!195986 (and (= (size!9406 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9405 _keys!1456) (size!9406 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!353387 () Bool)

(declare-fun res!195985 () Bool)

(assert (=> b!353387 (=> (not res!195985) (not e!216455))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19117 (_ BitVec 32)) Bool)

(assert (=> b!353387 (= res!195985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!353388 () Bool)

(declare-fun e!216459 () Bool)

(declare-fun e!216456 () Bool)

(declare-fun mapRes!13170 () Bool)

(assert (=> b!353388 (= e!216459 (and e!216456 mapRes!13170))))

(declare-fun condMapEmpty!13170 () Bool)

(declare-fun mapDefault!13170 () ValueCell!3548)

