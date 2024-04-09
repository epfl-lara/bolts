; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41870 () Bool)

(assert start!41870)

(declare-fun b_free!11465 () Bool)

(declare-fun b_next!11465 () Bool)

(assert (=> start!41870 (= b_free!11465 (not b_next!11465))))

(declare-fun tp!40405 () Bool)

(declare-fun b_and!19863 () Bool)

(assert (=> start!41870 (= tp!40405 b_and!19863)))

(declare-fun res!279324 () Bool)

(declare-fun e!273320 () Bool)

(assert (=> start!41870 (=> (not res!279324) (not e!273320))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41870 (= res!279324 (validMask!0 mask!1365))))

(assert (=> start!41870 e!273320))

(declare-fun tp_is_empty!12893 () Bool)

(assert (=> start!41870 tp_is_empty!12893))

(assert (=> start!41870 tp!40405))

(assert (=> start!41870 true))

(declare-datatypes ((array!29521 0))(
  ( (array!29522 (arr!14185 (Array (_ BitVec 32) (_ BitVec 64))) (size!14537 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29521)

(declare-fun array_inv!10230 (array!29521) Bool)

(assert (=> start!41870 (array_inv!10230 _keys!1025)))

(declare-datatypes ((V!18295 0))(
  ( (V!18296 (val!6491 Int)) )
))
(declare-datatypes ((ValueCell!6103 0))(
  ( (ValueCellFull!6103 (v!8776 V!18295)) (EmptyCell!6103) )
))
(declare-datatypes ((array!29523 0))(
  ( (array!29524 (arr!14186 (Array (_ BitVec 32) ValueCell!6103)) (size!14538 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29523)

(declare-fun e!273318 () Bool)

(declare-fun array_inv!10231 (array!29523) Bool)

(assert (=> start!41870 (and (array_inv!10231 _values!833) e!273318)))

(declare-fun b!467234 () Bool)

(declare-fun e!273321 () Bool)

(declare-fun mapRes!21028 () Bool)

(assert (=> b!467234 (= e!273318 (and e!273321 mapRes!21028))))

(declare-fun condMapEmpty!21028 () Bool)

(declare-fun mapDefault!21028 () ValueCell!6103)

