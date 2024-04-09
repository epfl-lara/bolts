; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41728 () Bool)

(assert start!41728)

(declare-fun b_free!11359 () Bool)

(declare-fun b_next!11359 () Bool)

(assert (=> start!41728 (= b_free!11359 (not b_next!11359))))

(declare-fun tp!40081 () Bool)

(declare-fun b_and!19733 () Bool)

(assert (=> start!41728 (= tp!40081 b_and!19733)))

(declare-fun b!465647 () Bool)

(declare-fun res!278420 () Bool)

(declare-fun e!272202 () Bool)

(assert (=> b!465647 (=> (not res!278420) (not e!272202))))

(declare-datatypes ((array!29311 0))(
  ( (array!29312 (arr!14082 (Array (_ BitVec 32) (_ BitVec 64))) (size!14434 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29311)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29311 (_ BitVec 32)) Bool)

(assert (=> b!465647 (= res!278420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!465648 () Bool)

(declare-fun e!272197 () Bool)

(declare-fun e!272200 () Bool)

(declare-fun mapRes!20863 () Bool)

(assert (=> b!465648 (= e!272197 (and e!272200 mapRes!20863))))

(declare-fun condMapEmpty!20863 () Bool)

(declare-datatypes ((V!18155 0))(
  ( (V!18156 (val!6438 Int)) )
))
(declare-datatypes ((ValueCell!6050 0))(
  ( (ValueCellFull!6050 (v!8721 V!18155)) (EmptyCell!6050) )
))
(declare-datatypes ((array!29313 0))(
  ( (array!29314 (arr!14083 (Array (_ BitVec 32) ValueCell!6050)) (size!14435 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29313)

(declare-fun mapDefault!20863 () ValueCell!6050)

