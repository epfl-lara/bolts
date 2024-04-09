; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105318 () Bool)

(assert start!105318)

(declare-fun b_free!26977 () Bool)

(declare-fun b_next!26977 () Bool)

(assert (=> start!105318 (= b_free!26977 (not b_next!26977))))

(declare-fun tp!94439 () Bool)

(declare-fun b_and!44813 () Bool)

(assert (=> start!105318 (= tp!94439 b_and!44813)))

(declare-fun b!1254435 () Bool)

(declare-fun res!836498 () Bool)

(declare-fun e!712850 () Bool)

(assert (=> b!1254435 (=> (not res!836498) (not e!712850))))

(declare-datatypes ((array!81391 0))(
  ( (array!81392 (arr!39252 (Array (_ BitVec 32) (_ BitVec 64))) (size!39789 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81391)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81391 (_ BitVec 32)) Bool)

(assert (=> b!1254435 (= res!836498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254436 () Bool)

(declare-fun e!712852 () Bool)

(declare-fun e!712851 () Bool)

(declare-fun mapRes!49597 () Bool)

(assert (=> b!1254436 (= e!712852 (and e!712851 mapRes!49597))))

(declare-fun condMapEmpty!49597 () Bool)

(declare-datatypes ((V!47871 0))(
  ( (V!47872 (val!16002 Int)) )
))
(declare-datatypes ((ValueCell!15176 0))(
  ( (ValueCellFull!15176 (v!18701 V!47871)) (EmptyCell!15176) )
))
(declare-datatypes ((array!81393 0))(
  ( (array!81394 (arr!39253 (Array (_ BitVec 32) ValueCell!15176)) (size!39790 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81393)

(declare-fun mapDefault!49597 () ValueCell!15176)

