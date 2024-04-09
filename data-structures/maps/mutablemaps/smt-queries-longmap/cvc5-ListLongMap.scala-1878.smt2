; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33710 () Bool)

(assert start!33710)

(declare-fun b_free!6937 () Bool)

(declare-fun b_next!6937 () Bool)

(assert (=> start!33710 (= b_free!6937 (not b_next!6937))))

(declare-fun tp!24314 () Bool)

(declare-fun b_and!14135 () Bool)

(assert (=> start!33710 (= tp!24314 b_and!14135)))

(declare-fun b!334762 () Bool)

(declare-fun res!184717 () Bool)

(declare-fun e!205492 () Bool)

(assert (=> b!334762 (=> (not res!184717) (not e!205492))))

(declare-datatypes ((array!17363 0))(
  ( (array!17364 (arr!8209 (Array (_ BitVec 32) (_ BitVec 64))) (size!8561 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17363)

(declare-datatypes ((List!4711 0))(
  ( (Nil!4708) (Cons!4707 (h!5563 (_ BitVec 64)) (t!9807 List!4711)) )
))
(declare-fun arrayNoDuplicates!0 (array!17363 (_ BitVec 32) List!4711) Bool)

(assert (=> b!334762 (= res!184717 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4708))))

(declare-fun b!334763 () Bool)

(declare-fun res!184716 () Bool)

(assert (=> b!334763 (=> (not res!184716) (not e!205492))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17363 (_ BitVec 32)) Bool)

(assert (=> b!334763 (= res!184716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334764 () Bool)

(declare-fun res!184715 () Bool)

(assert (=> b!334764 (=> (not res!184715) (not e!205492))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334764 (= res!184715 (validKeyInArray!0 k!1348))))

(declare-fun b!334765 () Bool)

(declare-fun e!205496 () Bool)

(declare-fun e!205493 () Bool)

(declare-fun mapRes!11730 () Bool)

(assert (=> b!334765 (= e!205496 (and e!205493 mapRes!11730))))

(declare-fun condMapEmpty!11730 () Bool)

(declare-datatypes ((V!10163 0))(
  ( (V!10164 (val!3489 Int)) )
))
(declare-datatypes ((ValueCell!3101 0))(
  ( (ValueCellFull!3101 (v!5647 V!10163)) (EmptyCell!3101) )
))
(declare-datatypes ((array!17365 0))(
  ( (array!17366 (arr!8210 (Array (_ BitVec 32) ValueCell!3101)) (size!8562 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17365)

(declare-fun mapDefault!11730 () ValueCell!3101)

