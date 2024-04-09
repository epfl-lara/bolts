; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41872 () Bool)

(assert start!41872)

(declare-fun b_free!11467 () Bool)

(declare-fun b_next!11467 () Bool)

(assert (=> start!41872 (= b_free!11467 (not b_next!11467))))

(declare-fun tp!40411 () Bool)

(declare-fun b_and!19865 () Bool)

(assert (=> start!41872 (= tp!40411 b_and!19865)))

(declare-fun b!467255 () Bool)

(declare-fun e!273337 () Bool)

(declare-fun tp_is_empty!12895 () Bool)

(assert (=> b!467255 (= e!273337 tp_is_empty!12895)))

(declare-fun b!467256 () Bool)

(declare-fun res!279337 () Bool)

(declare-fun e!273336 () Bool)

(assert (=> b!467256 (=> (not res!279337) (not e!273336))))

(declare-datatypes ((array!29525 0))(
  ( (array!29526 (arr!14187 (Array (_ BitVec 32) (_ BitVec 64))) (size!14539 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29525)

(declare-datatypes ((List!8625 0))(
  ( (Nil!8622) (Cons!8621 (h!9477 (_ BitVec 64)) (t!14587 List!8625)) )
))
(declare-fun arrayNoDuplicates!0 (array!29525 (_ BitVec 32) List!8625) Bool)

(assert (=> b!467256 (= res!279337 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8622))))

(declare-fun res!279338 () Bool)

(assert (=> start!41872 (=> (not res!279338) (not e!273336))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41872 (= res!279338 (validMask!0 mask!1365))))

(assert (=> start!41872 e!273336))

(assert (=> start!41872 tp_is_empty!12895))

(assert (=> start!41872 tp!40411))

(assert (=> start!41872 true))

(declare-fun array_inv!10232 (array!29525) Bool)

(assert (=> start!41872 (array_inv!10232 _keys!1025)))

(declare-datatypes ((V!18299 0))(
  ( (V!18300 (val!6492 Int)) )
))
(declare-datatypes ((ValueCell!6104 0))(
  ( (ValueCellFull!6104 (v!8777 V!18299)) (EmptyCell!6104) )
))
(declare-datatypes ((array!29527 0))(
  ( (array!29528 (arr!14188 (Array (_ BitVec 32) ValueCell!6104)) (size!14540 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29527)

(declare-fun e!273333 () Bool)

(declare-fun array_inv!10233 (array!29527) Bool)

(assert (=> start!41872 (and (array_inv!10233 _values!833) e!273333)))

(declare-fun b!467257 () Bool)

(declare-fun e!273335 () Bool)

(assert (=> b!467257 (= e!273335 tp_is_empty!12895)))

(declare-fun mapIsEmpty!21031 () Bool)

(declare-fun mapRes!21031 () Bool)

(assert (=> mapIsEmpty!21031 mapRes!21031))

(declare-fun b!467258 () Bool)

(assert (=> b!467258 (= e!273333 (and e!273335 mapRes!21031))))

(declare-fun condMapEmpty!21031 () Bool)

(declare-fun mapDefault!21031 () ValueCell!6104)

