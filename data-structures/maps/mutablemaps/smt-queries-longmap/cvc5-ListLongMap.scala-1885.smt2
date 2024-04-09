; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33752 () Bool)

(assert start!33752)

(declare-fun b_free!6979 () Bool)

(declare-fun b_next!6979 () Bool)

(assert (=> start!33752 (= b_free!6979 (not b_next!6979))))

(declare-fun tp!24440 () Bool)

(declare-fun b_and!14177 () Bool)

(assert (=> start!33752 (= tp!24440 b_and!14177)))

(declare-fun b!335455 () Bool)

(declare-fun res!185218 () Bool)

(declare-fun e!205937 () Bool)

(assert (=> b!335455 (=> (not res!185218) (not e!205937))))

(declare-datatypes ((array!17441 0))(
  ( (array!17442 (arr!8248 (Array (_ BitVec 32) (_ BitVec 64))) (size!8600 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17441)

(declare-datatypes ((List!4739 0))(
  ( (Nil!4736) (Cons!4735 (h!5591 (_ BitVec 64)) (t!9835 List!4739)) )
))
(declare-fun arrayNoDuplicates!0 (array!17441 (_ BitVec 32) List!4739) Bool)

(assert (=> b!335455 (= res!185218 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4736))))

(declare-fun res!185215 () Bool)

(assert (=> start!33752 (=> (not res!185215) (not e!205937))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33752 (= res!185215 (validMask!0 mask!2385))))

(assert (=> start!33752 e!205937))

(assert (=> start!33752 true))

(declare-fun tp_is_empty!6931 () Bool)

(assert (=> start!33752 tp_is_empty!6931))

(assert (=> start!33752 tp!24440))

(declare-datatypes ((V!10219 0))(
  ( (V!10220 (val!3510 Int)) )
))
(declare-datatypes ((ValueCell!3122 0))(
  ( (ValueCellFull!3122 (v!5668 V!10219)) (EmptyCell!3122) )
))
(declare-datatypes ((array!17443 0))(
  ( (array!17444 (arr!8249 (Array (_ BitVec 32) ValueCell!3122)) (size!8601 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17443)

(declare-fun e!205934 () Bool)

(declare-fun array_inv!6114 (array!17443) Bool)

(assert (=> start!33752 (and (array_inv!6114 _values!1525) e!205934)))

(declare-fun array_inv!6115 (array!17441) Bool)

(assert (=> start!33752 (array_inv!6115 _keys!1895)))

(declare-fun b!335456 () Bool)

(declare-fun e!205932 () Bool)

(declare-fun mapRes!11793 () Bool)

(assert (=> b!335456 (= e!205934 (and e!205932 mapRes!11793))))

(declare-fun condMapEmpty!11793 () Bool)

(declare-fun mapDefault!11793 () ValueCell!3122)

