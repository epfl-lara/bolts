; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33594 () Bool)

(assert start!33594)

(declare-fun b_free!6839 () Bool)

(declare-fun b_next!6839 () Bool)

(assert (=> start!33594 (= b_free!6839 (not b_next!6839))))

(declare-fun tp!24017 () Bool)

(declare-fun b_and!14035 () Bool)

(assert (=> start!33594 (= tp!24017 b_and!14035)))

(declare-fun b!333092 () Bool)

(declare-fun e!204547 () Bool)

(declare-fun tp_is_empty!6791 () Bool)

(assert (=> b!333092 (= e!204547 tp_is_empty!6791)))

(declare-fun b!333093 () Bool)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun e!204546 () Bool)

(declare-datatypes ((SeekEntryResult!3150 0))(
  ( (MissingZero!3150 (index!14779 (_ BitVec 32))) (Found!3150 (index!14780 (_ BitVec 32))) (Intermediate!3150 (undefined!3962 Bool) (index!14781 (_ BitVec 32)) (x!33205 (_ BitVec 32))) (Undefined!3150) (MissingVacant!3150 (index!14782 (_ BitVec 32))) )
))
(declare-fun lt!159225 () SeekEntryResult!3150)

(declare-datatypes ((array!17177 0))(
  ( (array!17178 (arr!8117 (Array (_ BitVec 32) (_ BitVec 64))) (size!8469 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17177)

(assert (=> b!333093 (= e!204546 (and (is-Found!3150 lt!159225) (= (select (arr!8117 _keys!1895) (index!14780 lt!159225)) k!1348) (bvsge (index!14780 lt!159225) #b00000000000000000000000000000000) (bvslt (index!14780 lt!159225) (size!8469 _keys!1895)) (bvsge (size!8469 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17177 (_ BitVec 32)) SeekEntryResult!3150)

(assert (=> b!333093 (= lt!159225 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!333094 () Bool)

(declare-fun e!204545 () Bool)

(assert (=> b!333094 (= e!204545 tp_is_empty!6791)))

(declare-fun b!333095 () Bool)

(declare-fun res!183566 () Bool)

(assert (=> b!333095 (=> (not res!183566) (not e!204546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333095 (= res!183566 (validKeyInArray!0 k!1348))))

(declare-fun b!333096 () Bool)

(declare-fun res!183564 () Bool)

(assert (=> b!333096 (=> (not res!183564) (not e!204546))))

(declare-datatypes ((List!4647 0))(
  ( (Nil!4644) (Cons!4643 (h!5499 (_ BitVec 64)) (t!9741 List!4647)) )
))
(declare-fun arrayNoDuplicates!0 (array!17177 (_ BitVec 32) List!4647) Bool)

(assert (=> b!333096 (= res!183564 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4644))))

(declare-fun b!333097 () Bool)

(declare-fun res!183565 () Bool)

(assert (=> b!333097 (=> (not res!183565) (not e!204546))))

(declare-datatypes ((V!10031 0))(
  ( (V!10032 (val!3440 Int)) )
))
(declare-datatypes ((ValueCell!3052 0))(
  ( (ValueCellFull!3052 (v!5597 V!10031)) (EmptyCell!3052) )
))
(declare-datatypes ((array!17179 0))(
  ( (array!17180 (arr!8118 (Array (_ BitVec 32) ValueCell!3052)) (size!8470 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17179)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!333097 (= res!183565 (and (= (size!8470 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8469 _keys!1895) (size!8470 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333098 () Bool)

(declare-fun e!204548 () Bool)

(declare-fun mapRes!11580 () Bool)

(assert (=> b!333098 (= e!204548 (and e!204547 mapRes!11580))))

(declare-fun condMapEmpty!11580 () Bool)

(declare-fun mapDefault!11580 () ValueCell!3052)

