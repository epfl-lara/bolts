; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41876 () Bool)

(assert start!41876)

(declare-fun b_free!11471 () Bool)

(declare-fun b_next!11471 () Bool)

(assert (=> start!41876 (= b_free!11471 (not b_next!11471))))

(declare-fun tp!40422 () Bool)

(declare-fun b_and!19869 () Bool)

(assert (=> start!41876 (= tp!40422 b_and!19869)))

(declare-fun b!467297 () Bool)

(declare-fun res!279363 () Bool)

(declare-fun e!273366 () Bool)

(assert (=> b!467297 (=> (not res!279363) (not e!273366))))

(declare-datatypes ((array!29533 0))(
  ( (array!29534 (arr!14191 (Array (_ BitVec 32) (_ BitVec 64))) (size!14543 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29533)

(declare-datatypes ((List!8628 0))(
  ( (Nil!8625) (Cons!8624 (h!9480 (_ BitVec 64)) (t!14590 List!8628)) )
))
(declare-fun arrayNoDuplicates!0 (array!29533 (_ BitVec 32) List!8628) Bool)

(assert (=> b!467297 (= res!279363 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8625))))

(declare-fun mapNonEmpty!21037 () Bool)

(declare-fun mapRes!21037 () Bool)

(declare-fun tp!40423 () Bool)

(declare-fun e!273365 () Bool)

(assert (=> mapNonEmpty!21037 (= mapRes!21037 (and tp!40423 e!273365))))

(declare-datatypes ((V!18303 0))(
  ( (V!18304 (val!6494 Int)) )
))
(declare-datatypes ((ValueCell!6106 0))(
  ( (ValueCellFull!6106 (v!8779 V!18303)) (EmptyCell!6106) )
))
(declare-fun mapRest!21037 () (Array (_ BitVec 32) ValueCell!6106))

(declare-fun mapValue!21037 () ValueCell!6106)

(declare-datatypes ((array!29535 0))(
  ( (array!29536 (arr!14192 (Array (_ BitVec 32) ValueCell!6106)) (size!14544 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29535)

(declare-fun mapKey!21037 () (_ BitVec 32))

(assert (=> mapNonEmpty!21037 (= (arr!14192 _values!833) (store mapRest!21037 mapKey!21037 mapValue!21037))))

(declare-fun b!467298 () Bool)

(declare-fun e!273363 () Bool)

(declare-fun e!273367 () Bool)

(assert (=> b!467298 (= e!273363 (and e!273367 mapRes!21037))))

(declare-fun condMapEmpty!21037 () Bool)

(declare-fun mapDefault!21037 () ValueCell!6106)

