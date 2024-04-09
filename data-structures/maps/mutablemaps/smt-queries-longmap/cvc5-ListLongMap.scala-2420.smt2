; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38256 () Bool)

(assert start!38256)

(declare-fun mapNonEmpty!16236 () Bool)

(declare-fun mapRes!16236 () Bool)

(declare-fun tp!32031 () Bool)

(declare-fun e!238791 () Bool)

(assert (=> mapNonEmpty!16236 (= mapRes!16236 (and tp!32031 e!238791))))

(declare-datatypes ((V!14115 0))(
  ( (V!14116 (val!4923 Int)) )
))
(declare-datatypes ((ValueCell!4535 0))(
  ( (ValueCellFull!4535 (v!7164 V!14115)) (EmptyCell!4535) )
))
(declare-fun mapValue!16236 () ValueCell!4535)

(declare-datatypes ((array!23397 0))(
  ( (array!23398 (arr!11152 (Array (_ BitVec 32) ValueCell!4535)) (size!11504 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23397)

(declare-fun mapRest!16236 () (Array (_ BitVec 32) ValueCell!4535))

(declare-fun mapKey!16236 () (_ BitVec 32))

(assert (=> mapNonEmpty!16236 (= (arr!11152 _values!549) (store mapRest!16236 mapKey!16236 mapValue!16236))))

(declare-datatypes ((array!23399 0))(
  ( (array!23400 (arr!11153 (Array (_ BitVec 32) (_ BitVec 64))) (size!11505 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23399)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun e!238794 () Bool)

(declare-fun b!394456 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!394456 (= e!238794 (and (= (size!11504 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11505 _keys!709) (size!11504 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011) (= (size!11505 _keys!709) (bvadd #b00000000000000000000000000000001 mask!1025)) (bvsgt #b00000000000000000000000000000000 (size!11505 _keys!709))))))

(declare-fun b!394457 () Bool)

(declare-fun e!238790 () Bool)

(declare-fun e!238793 () Bool)

(assert (=> b!394457 (= e!238790 (and e!238793 mapRes!16236))))

(declare-fun condMapEmpty!16236 () Bool)

(declare-fun mapDefault!16236 () ValueCell!4535)

