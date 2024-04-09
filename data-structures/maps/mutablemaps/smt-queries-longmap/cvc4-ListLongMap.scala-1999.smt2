; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34960 () Bool)

(assert start!34960)

(declare-fun b_free!7667 () Bool)

(declare-fun b_next!7667 () Bool)

(assert (=> start!34960 (= b_free!7667 (not b_next!7667))))

(declare-fun tp!26576 () Bool)

(declare-fun b_and!14913 () Bool)

(assert (=> start!34960 (= tp!26576 b_and!14913)))

(declare-fun mapNonEmpty!12897 () Bool)

(declare-fun mapRes!12897 () Bool)

(declare-fun tp!26577 () Bool)

(declare-fun e!214302 () Bool)

(assert (=> mapNonEmpty!12897 (= mapRes!12897 (and tp!26577 e!214302))))

(declare-fun mapKey!12897 () (_ BitVec 32))

(declare-datatypes ((V!11135 0))(
  ( (V!11136 (val!3854 Int)) )
))
(declare-datatypes ((ValueCell!3466 0))(
  ( (ValueCellFull!3466 (v!6036 V!11135)) (EmptyCell!3466) )
))
(declare-fun mapValue!12897 () ValueCell!3466)

(declare-fun mapRest!12897 () (Array (_ BitVec 32) ValueCell!3466))

(declare-datatypes ((array!18791 0))(
  ( (array!18792 (arr!8899 (Array (_ BitVec 32) ValueCell!3466)) (size!9251 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18791)

(assert (=> mapNonEmpty!12897 (= (arr!8899 _values!1525) (store mapRest!12897 mapKey!12897 mapValue!12897))))

(declare-fun b!349834 () Bool)

(declare-fun tp_is_empty!7619 () Bool)

(assert (=> b!349834 (= e!214302 tp_is_empty!7619)))

(declare-fun mapIsEmpty!12897 () Bool)

(assert (=> mapIsEmpty!12897 mapRes!12897))

(declare-fun b!349835 () Bool)

(declare-fun res!193947 () Bool)

(declare-fun e!214301 () Bool)

(assert (=> b!349835 (=> (not res!193947) (not e!214301))))

(declare-datatypes ((array!18793 0))(
  ( (array!18794 (arr!8900 (Array (_ BitVec 32) (_ BitVec 64))) (size!9252 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18793)

(declare-datatypes ((List!5201 0))(
  ( (Nil!5198) (Cons!5197 (h!6053 (_ BitVec 64)) (t!10345 List!5201)) )
))
(declare-fun arrayNoDuplicates!0 (array!18793 (_ BitVec 32) List!5201) Bool)

(assert (=> b!349835 (= res!193947 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5198))))

(declare-fun b!349836 () Bool)

(declare-fun res!193949 () Bool)

(assert (=> b!349836 (=> (not res!193949) (not e!214301))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349836 (= res!193949 (validKeyInArray!0 k!1348))))

(declare-fun b!349837 () Bool)

(declare-fun e!214303 () Bool)

(assert (=> b!349837 (= e!214301 e!214303)))

(declare-fun res!193948 () Bool)

(assert (=> b!349837 (=> (not res!193948) (not e!214303))))

(declare-datatypes ((SeekEntryResult!3427 0))(
  ( (MissingZero!3427 (index!15887 (_ BitVec 32))) (Found!3427 (index!15888 (_ BitVec 32))) (Intermediate!3427 (undefined!4239 Bool) (index!15889 (_ BitVec 32)) (x!34836 (_ BitVec 32))) (Undefined!3427) (MissingVacant!3427 (index!15890 (_ BitVec 32))) )
))
(declare-fun lt!164387 () SeekEntryResult!3427)

(assert (=> b!349837 (= res!193948 (and (not (is-Found!3427 lt!164387)) (is-MissingZero!3427 lt!164387)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18793 (_ BitVec 32)) SeekEntryResult!3427)

(assert (=> b!349837 (= lt!164387 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!349839 () Bool)

(declare-datatypes ((Unit!10839 0))(
  ( (Unit!10840) )
))
(declare-fun e!214300 () Unit!10839)

(declare-fun Unit!10841 () Unit!10839)

(assert (=> b!349839 (= e!214300 Unit!10841)))

(declare-fun b!349840 () Bool)

(declare-fun res!193950 () Bool)

(assert (=> b!349840 (=> (not res!193950) (not e!214301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18793 (_ BitVec 32)) Bool)

(assert (=> b!349840 (= res!193950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!349841 () Bool)

(declare-fun e!214305 () Bool)

(declare-fun e!214306 () Bool)

(assert (=> b!349841 (= e!214305 (and e!214306 mapRes!12897))))

(declare-fun condMapEmpty!12897 () Bool)

(declare-fun mapDefault!12897 () ValueCell!3466)

