; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43408 () Bool)

(assert start!43408)

(declare-fun b_free!12227 () Bool)

(declare-fun b_next!12227 () Bool)

(assert (=> start!43408 (= b_free!12227 (not b_next!12227))))

(declare-fun tp!42957 () Bool)

(declare-fun b_and!21001 () Bool)

(assert (=> start!43408 (= tp!42957 b_and!21001)))

(declare-fun mapIsEmpty!22312 () Bool)

(declare-fun mapRes!22312 () Bool)

(assert (=> mapIsEmpty!22312 mapRes!22312))

(declare-fun b!480762 () Bool)

(declare-fun res!286756 () Bool)

(declare-fun e!282872 () Bool)

(assert (=> b!480762 (=> (not res!286756) (not e!282872))))

(declare-datatypes ((array!31113 0))(
  ( (array!31114 (arr!14958 (Array (_ BitVec 32) (_ BitVec 64))) (size!15316 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31113)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31113 (_ BitVec 32)) Bool)

(assert (=> b!480762 (= res!286756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480763 () Bool)

(declare-fun res!286753 () Bool)

(assert (=> b!480763 (=> (not res!286753) (not e!282872))))

(declare-datatypes ((List!9191 0))(
  ( (Nil!9188) (Cons!9187 (h!10043 (_ BitVec 64)) (t!15409 List!9191)) )
))
(declare-fun arrayNoDuplicates!0 (array!31113 (_ BitVec 32) List!9191) Bool)

(assert (=> b!480763 (= res!286753 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9188))))

(declare-fun b!480764 () Bool)

(declare-fun e!282874 () Bool)

(declare-fun e!282870 () Bool)

(assert (=> b!480764 (= e!282874 (and e!282870 mapRes!22312))))

(declare-fun condMapEmpty!22312 () Bool)

(declare-datatypes ((V!19389 0))(
  ( (V!19390 (val!6917 Int)) )
))
(declare-datatypes ((ValueCell!6508 0))(
  ( (ValueCellFull!6508 (v!9204 V!19389)) (EmptyCell!6508) )
))
(declare-datatypes ((array!31115 0))(
  ( (array!31116 (arr!14959 (Array (_ BitVec 32) ValueCell!6508)) (size!15317 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31115)

(declare-fun mapDefault!22312 () ValueCell!6508)

