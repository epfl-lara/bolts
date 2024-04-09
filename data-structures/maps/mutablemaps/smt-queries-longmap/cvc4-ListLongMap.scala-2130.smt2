; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36030 () Bool)

(assert start!36030)

(declare-fun mapIsEmpty!14136 () Bool)

(declare-fun mapRes!14136 () Bool)

(assert (=> mapIsEmpty!14136 mapRes!14136))

(declare-fun b!361593 () Bool)

(declare-fun e!221468 () Bool)

(declare-fun tp_is_empty!8405 () Bool)

(assert (=> b!361593 (= e!221468 tp_is_empty!8405)))

(declare-fun b!361594 () Bool)

(declare-fun res!201232 () Bool)

(declare-fun e!221471 () Bool)

(assert (=> b!361594 (=> (not res!201232) (not e!221471))))

(declare-datatypes ((array!20337 0))(
  ( (array!20338 (arr!9652 (Array (_ BitVec 32) (_ BitVec 64))) (size!10004 (_ BitVec 32))) )
))
(declare-fun _keys!1541 () array!20337)

(declare-fun extraKeys!1198 () (_ BitVec 32))

(declare-fun mask!1943 () (_ BitVec 32))

(declare-datatypes ((V!12183 0))(
  ( (V!12184 (val!4247 Int)) )
))
(declare-datatypes ((ValueCell!3859 0))(
  ( (ValueCellFull!3859 (v!6438 V!12183)) (EmptyCell!3859) )
))
(declare-datatypes ((array!20339 0))(
  ( (array!20340 (arr!9653 (Array (_ BitVec 32) ValueCell!3859)) (size!10005 (_ BitVec 32))) )
))
(declare-fun _values!1277 () array!20339)

(assert (=> b!361594 (= res!201232 (and (= (size!10005 _values!1277) (bvadd #b00000000000000000000000000000001 mask!1943)) (= (size!10004 _keys!1541) (size!10005 _values!1277)) (bvsge mask!1943 #b00000000000000000000000000000000) (bvsge extraKeys!1198 #b00000000000000000000000000000000) (bvsle extraKeys!1198 #b00000000000000000000000000000011)))))

(declare-fun b!361595 () Bool)

(declare-fun e!221470 () Bool)

(declare-fun e!221469 () Bool)

(assert (=> b!361595 (= e!221470 (and e!221469 mapRes!14136))))

(declare-fun condMapEmpty!14136 () Bool)

(declare-fun mapDefault!14136 () ValueCell!3859)

