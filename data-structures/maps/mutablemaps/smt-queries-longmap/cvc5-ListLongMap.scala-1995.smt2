; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34884 () Bool)

(assert start!34884)

(declare-fun b_free!7639 () Bool)

(declare-fun b_next!7639 () Bool)

(assert (=> start!34884 (= b_free!7639 (not b_next!7639))))

(declare-fun tp!26487 () Bool)

(declare-fun b_and!14881 () Bool)

(assert (=> start!34884 (= tp!26487 b_and!14881)))

(declare-fun b!349041 () Bool)

(declare-fun res!193505 () Bool)

(declare-fun e!213825 () Bool)

(assert (=> b!349041 (=> (not res!193505) (not e!213825))))

(declare-datatypes ((array!18737 0))(
  ( (array!18738 (arr!8874 (Array (_ BitVec 32) (_ BitVec 64))) (size!9226 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18737)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18737 (_ BitVec 32)) Bool)

(assert (=> b!349041 (= res!193505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!349042 () Bool)

(declare-fun e!213829 () Bool)

(declare-fun tp_is_empty!7591 () Bool)

(assert (=> b!349042 (= e!213829 tp_is_empty!7591)))

(declare-fun lt!164057 () (_ BitVec 32))

(declare-fun e!213826 () Bool)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun b!349043 () Bool)

(declare-fun arrayContainsKey!0 (array!18737 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!349043 (= e!213826 (not (arrayContainsKey!0 _keys!1895 k!1348 lt!164057)))))

(declare-fun b!349044 () Bool)

(declare-fun res!193511 () Bool)

(assert (=> b!349044 (=> (not res!193511) (not e!213825))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!349044 (= res!193511 (validKeyInArray!0 k!1348))))

(declare-fun b!349045 () Bool)

(declare-fun res!193512 () Bool)

(declare-fun e!213828 () Bool)

(assert (=> b!349045 (=> (not res!193512) (not e!213828))))

(assert (=> b!349045 (= res!193512 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!349046 () Bool)

(declare-fun e!213824 () Bool)

(assert (=> b!349046 (= e!213824 tp_is_empty!7591)))

(declare-fun b!349047 () Bool)

(declare-fun e!213830 () Bool)

(declare-fun mapRes!12849 () Bool)

(assert (=> b!349047 (= e!213830 (and e!213824 mapRes!12849))))

(declare-fun condMapEmpty!12849 () Bool)

(declare-datatypes ((V!11099 0))(
  ( (V!11100 (val!3840 Int)) )
))
(declare-datatypes ((ValueCell!3452 0))(
  ( (ValueCellFull!3452 (v!6020 V!11099)) (EmptyCell!3452) )
))
(declare-datatypes ((array!18739 0))(
  ( (array!18740 (arr!8875 (Array (_ BitVec 32) ValueCell!3452)) (size!9227 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18739)

(declare-fun mapDefault!12849 () ValueCell!3452)

