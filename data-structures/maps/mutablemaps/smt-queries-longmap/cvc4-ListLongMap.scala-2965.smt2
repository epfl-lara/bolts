; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42058 () Bool)

(assert start!42058)

(declare-fun b_free!11603 () Bool)

(declare-fun b_next!11603 () Bool)

(assert (=> start!42058 (= b_free!11603 (not b_next!11603))))

(declare-fun tp!40827 () Bool)

(declare-fun b_and!20031 () Bool)

(assert (=> start!42058 (= tp!40827 b_and!20031)))

(declare-fun b!469274 () Bool)

(declare-fun res!280498 () Bool)

(declare-fun e!274796 () Bool)

(assert (=> b!469274 (=> (not res!280498) (not e!274796))))

(declare-datatypes ((array!29797 0))(
  ( (array!29798 (arr!14320 (Array (_ BitVec 32) (_ BitVec 64))) (size!14672 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29797)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29797 (_ BitVec 32)) Bool)

(assert (=> b!469274 (= res!280498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21244 () Bool)

(declare-fun mapRes!21244 () Bool)

(assert (=> mapIsEmpty!21244 mapRes!21244))

(declare-fun b!469275 () Bool)

(declare-fun e!274798 () Bool)

(declare-fun e!274794 () Bool)

(assert (=> b!469275 (= e!274798 (and e!274794 mapRes!21244))))

(declare-fun condMapEmpty!21244 () Bool)

(declare-datatypes ((V!18479 0))(
  ( (V!18480 (val!6560 Int)) )
))
(declare-datatypes ((ValueCell!6172 0))(
  ( (ValueCellFull!6172 (v!8846 V!18479)) (EmptyCell!6172) )
))
(declare-datatypes ((array!29799 0))(
  ( (array!29800 (arr!14321 (Array (_ BitVec 32) ValueCell!6172)) (size!14673 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29799)

(declare-fun mapDefault!21244 () ValueCell!6172)

