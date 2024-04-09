; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40934 () Bool)

(assert start!40934)

(declare-fun b_free!10861 () Bool)

(declare-fun b_next!10861 () Bool)

(assert (=> start!40934 (= b_free!10861 (not b_next!10861))))

(declare-fun tp!38409 () Bool)

(declare-fun b_and!19021 () Bool)

(assert (=> start!40934 (= tp!38409 b_and!19021)))

(declare-fun b!454802 () Bool)

(declare-fun res!271169 () Bool)

(declare-fun e!265995 () Bool)

(assert (=> b!454802 (=> (not res!271169) (not e!265995))))

(declare-datatypes ((array!28167 0))(
  ( (array!28168 (arr!13524 (Array (_ BitVec 32) (_ BitVec 64))) (size!13876 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28167)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28167 (_ BitVec 32)) Bool)

(assert (=> b!454802 (= res!271169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!454803 () Bool)

(declare-fun res!271173 () Bool)

(assert (=> b!454803 (=> (not res!271173) (not e!265995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!454803 (= res!271173 (validMask!0 mask!1025))))

(declare-fun b!454804 () Bool)

(declare-fun e!266000 () Bool)

(assert (=> b!454804 (= e!265995 e!266000)))

(declare-fun res!271167 () Bool)

(assert (=> b!454804 (=> (not res!271167) (not e!266000))))

(declare-fun lt!206211 () array!28167)

(assert (=> b!454804 (= res!271167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206211 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!454804 (= lt!206211 (array!28168 (store (arr!13524 _keys!709) i!563 k!794) (size!13876 _keys!709)))))

(declare-fun b!454805 () Bool)

(declare-fun res!271170 () Bool)

(assert (=> b!454805 (=> (not res!271170) (not e!265995))))

(declare-fun arrayContainsKey!0 (array!28167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!454805 (= res!271170 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!19939 () Bool)

(declare-fun mapRes!19939 () Bool)

(declare-fun tp!38410 () Bool)

(declare-fun e!265998 () Bool)

(assert (=> mapNonEmpty!19939 (= mapRes!19939 (and tp!38410 e!265998))))

(declare-datatypes ((V!17371 0))(
  ( (V!17372 (val!6144 Int)) )
))
(declare-datatypes ((ValueCell!5756 0))(
  ( (ValueCellFull!5756 (v!8406 V!17371)) (EmptyCell!5756) )
))
(declare-fun mapRest!19939 () (Array (_ BitVec 32) ValueCell!5756))

(declare-datatypes ((array!28169 0))(
  ( (array!28170 (arr!13525 (Array (_ BitVec 32) ValueCell!5756)) (size!13877 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28169)

(declare-fun mapKey!19939 () (_ BitVec 32))

(declare-fun mapValue!19939 () ValueCell!5756)

(assert (=> mapNonEmpty!19939 (= (arr!13525 _values!549) (store mapRest!19939 mapKey!19939 mapValue!19939))))

(declare-fun b!454806 () Bool)

(declare-fun e!265997 () Bool)

(declare-fun e!265996 () Bool)

(assert (=> b!454806 (= e!265997 (and e!265996 mapRes!19939))))

(declare-fun condMapEmpty!19939 () Bool)

(declare-fun mapDefault!19939 () ValueCell!5756)

