; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34912 () Bool)

(assert start!34912)

(declare-fun b_free!7645 () Bool)

(declare-fun b_next!7645 () Bool)

(assert (=> start!34912 (= b_free!7645 (not b_next!7645))))

(declare-fun tp!26508 () Bool)

(declare-fun b_and!14889 () Bool)

(assert (=> start!34912 (= tp!26508 b_and!14889)))

(declare-fun b!349288 () Bool)

(declare-fun e!213980 () Bool)

(declare-fun e!213977 () Bool)

(declare-fun mapRes!12861 () Bool)

(assert (=> b!349288 (= e!213980 (and e!213977 mapRes!12861))))

(declare-fun condMapEmpty!12861 () Bool)

(declare-datatypes ((V!11107 0))(
  ( (V!11108 (val!3843 Int)) )
))
(declare-datatypes ((ValueCell!3455 0))(
  ( (ValueCellFull!3455 (v!6024 V!11107)) (EmptyCell!3455) )
))
(declare-datatypes ((array!18751 0))(
  ( (array!18752 (arr!8880 (Array (_ BitVec 32) ValueCell!3455)) (size!9232 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18751)

(declare-fun mapDefault!12861 () ValueCell!3455)

