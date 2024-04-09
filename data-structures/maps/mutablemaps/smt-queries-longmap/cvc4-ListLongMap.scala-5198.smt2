; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70230 () Bool)

(assert start!70230)

(declare-fun b_free!12599 () Bool)

(declare-fun b_next!12599 () Bool)

(assert (=> start!70230 (= b_free!12599 (not b_next!12599))))

(declare-fun tp!44518 () Bool)

(declare-fun b_and!21405 () Bool)

(assert (=> start!70230 (= tp!44518 b_and!21405)))

(declare-fun b!815472 () Bool)

(declare-fun res!556945 () Bool)

(declare-fun e!452248 () Bool)

(assert (=> b!815472 (=> (not res!556945) (not e!452248))))

(declare-datatypes ((array!44806 0))(
  ( (array!44807 (arr!21457 (Array (_ BitVec 32) (_ BitVec 64))) (size!21878 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44806)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44806 (_ BitVec 32)) Bool)

(assert (=> b!815472 (= res!556945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!556943 () Bool)

(assert (=> start!70230 (=> (not res!556943) (not e!452248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70230 (= res!556943 (validMask!0 mask!1312))))

(assert (=> start!70230 e!452248))

(declare-fun tp_is_empty!14309 () Bool)

(assert (=> start!70230 tp_is_empty!14309))

(declare-fun array_inv!17149 (array!44806) Bool)

(assert (=> start!70230 (array_inv!17149 _keys!976)))

(assert (=> start!70230 true))

(declare-datatypes ((V!24079 0))(
  ( (V!24080 (val!7202 Int)) )
))
(declare-datatypes ((ValueCell!6739 0))(
  ( (ValueCellFull!6739 (v!9625 V!24079)) (EmptyCell!6739) )
))
(declare-datatypes ((array!44808 0))(
  ( (array!44809 (arr!21458 (Array (_ BitVec 32) ValueCell!6739)) (size!21879 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44808)

(declare-fun e!452246 () Bool)

(declare-fun array_inv!17150 (array!44808) Bool)

(assert (=> start!70230 (and (array_inv!17150 _values!788) e!452246)))

(assert (=> start!70230 tp!44518))

(declare-fun b!815473 () Bool)

(declare-fun e!452247 () Bool)

(declare-fun mapRes!23050 () Bool)

(assert (=> b!815473 (= e!452246 (and e!452247 mapRes!23050))))

(declare-fun condMapEmpty!23050 () Bool)

(declare-fun mapDefault!23050 () ValueCell!6739)

