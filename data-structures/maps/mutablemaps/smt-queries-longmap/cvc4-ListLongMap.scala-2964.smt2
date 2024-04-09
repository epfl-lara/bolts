; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42052 () Bool)

(assert start!42052)

(declare-fun b_free!11597 () Bool)

(declare-fun b_next!11597 () Bool)

(assert (=> start!42052 (= b_free!11597 (not b_next!11597))))

(declare-fun tp!40810 () Bool)

(declare-fun b_and!20025 () Bool)

(assert (=> start!42052 (= tp!40810 b_and!20025)))

(declare-fun b!469202 () Bool)

(declare-fun res!280456 () Bool)

(declare-fun e!274741 () Bool)

(assert (=> b!469202 (=> (not res!280456) (not e!274741))))

(declare-datatypes ((array!29785 0))(
  ( (array!29786 (arr!14314 (Array (_ BitVec 32) (_ BitVec 64))) (size!14666 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29785)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29785 (_ BitVec 32)) Bool)

(assert (=> b!469202 (= res!280456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469203 () Bool)

(declare-fun e!274740 () Bool)

(declare-fun e!274739 () Bool)

(declare-fun mapRes!21235 () Bool)

(assert (=> b!469203 (= e!274740 (and e!274739 mapRes!21235))))

(declare-fun condMapEmpty!21235 () Bool)

(declare-datatypes ((V!18471 0))(
  ( (V!18472 (val!6557 Int)) )
))
(declare-datatypes ((ValueCell!6169 0))(
  ( (ValueCellFull!6169 (v!8843 V!18471)) (EmptyCell!6169) )
))
(declare-datatypes ((array!29787 0))(
  ( (array!29788 (arr!14315 (Array (_ BitVec 32) ValueCell!6169)) (size!14667 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29787)

(declare-fun mapDefault!21235 () ValueCell!6169)

