; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42344 () Bool)

(assert start!42344)

(declare-fun b_free!11827 () Bool)

(declare-fun b_next!11827 () Bool)

(assert (=> start!42344 (= b_free!11827 (not b_next!11827))))

(declare-fun tp!41512 () Bool)

(declare-fun b_and!20291 () Bool)

(assert (=> start!42344 (= tp!41512 b_and!20291)))

(declare-fun mapNonEmpty!21592 () Bool)

(declare-fun mapRes!21592 () Bool)

(declare-fun tp!41511 () Bool)

(declare-fun e!276845 () Bool)

(assert (=> mapNonEmpty!21592 (= mapRes!21592 (and tp!41511 e!276845))))

(declare-datatypes ((V!18779 0))(
  ( (V!18780 (val!6672 Int)) )
))
(declare-datatypes ((ValueCell!6284 0))(
  ( (ValueCellFull!6284 (v!8959 V!18779)) (EmptyCell!6284) )
))
(declare-fun mapValue!21592 () ValueCell!6284)

(declare-datatypes ((array!30235 0))(
  ( (array!30236 (arr!14535 (Array (_ BitVec 32) ValueCell!6284)) (size!14887 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30235)

(declare-fun mapRest!21592 () (Array (_ BitVec 32) ValueCell!6284))

(declare-fun mapKey!21592 () (_ BitVec 32))

(assert (=> mapNonEmpty!21592 (= (arr!14535 _values!833) (store mapRest!21592 mapKey!21592 mapValue!21592))))

(declare-fun b!472153 () Bool)

(declare-fun e!276846 () Bool)

(declare-fun e!276844 () Bool)

(assert (=> b!472153 (= e!276846 (and e!276844 mapRes!21592))))

(declare-fun condMapEmpty!21592 () Bool)

(declare-fun mapDefault!21592 () ValueCell!6284)

