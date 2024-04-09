; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42060 () Bool)

(assert start!42060)

(declare-fun b_free!11605 () Bool)

(declare-fun b_next!11605 () Bool)

(assert (=> start!42060 (= b_free!11605 (not b_next!11605))))

(declare-fun tp!40834 () Bool)

(declare-fun b_and!20033 () Bool)

(assert (=> start!42060 (= tp!40834 b_and!20033)))

(declare-fun b!469298 () Bool)

(declare-fun res!280515 () Bool)

(declare-fun e!274811 () Bool)

(assert (=> b!469298 (=> (not res!280515) (not e!274811))))

(declare-datatypes ((array!29801 0))(
  ( (array!29802 (arr!14322 (Array (_ BitVec 32) (_ BitVec 64))) (size!14674 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29801)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29801 (_ BitVec 32)) Bool)

(assert (=> b!469298 (= res!280515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21247 () Bool)

(declare-fun mapRes!21247 () Bool)

(assert (=> mapIsEmpty!21247 mapRes!21247))

(declare-fun b!469299 () Bool)

(declare-fun res!280514 () Bool)

(assert (=> b!469299 (=> (not res!280514) (not e!274811))))

(declare-datatypes ((List!8728 0))(
  ( (Nil!8725) (Cons!8724 (h!9580 (_ BitVec 64)) (t!14696 List!8728)) )
))
(declare-fun arrayNoDuplicates!0 (array!29801 (_ BitVec 32) List!8728) Bool)

(assert (=> b!469299 (= res!280514 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8725))))

(declare-fun b!469300 () Bool)

(declare-fun e!274816 () Bool)

(declare-fun e!274815 () Bool)

(assert (=> b!469300 (= e!274816 (and e!274815 mapRes!21247))))

(declare-fun condMapEmpty!21247 () Bool)

(declare-datatypes ((V!18483 0))(
  ( (V!18484 (val!6561 Int)) )
))
(declare-datatypes ((ValueCell!6173 0))(
  ( (ValueCellFull!6173 (v!8847 V!18483)) (EmptyCell!6173) )
))
(declare-datatypes ((array!29803 0))(
  ( (array!29804 (arr!14323 (Array (_ BitVec 32) ValueCell!6173)) (size!14675 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29803)

(declare-fun mapDefault!21247 () ValueCell!6173)

