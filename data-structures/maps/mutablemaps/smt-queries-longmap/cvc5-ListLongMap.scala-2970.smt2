; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42084 () Bool)

(assert start!42084)

(declare-fun b_free!11629 () Bool)

(declare-fun b_next!11629 () Bool)

(assert (=> start!42084 (= b_free!11629 (not b_next!11629))))

(declare-fun tp!40905 () Bool)

(declare-fun b_and!20057 () Bool)

(assert (=> start!42084 (= tp!40905 b_and!20057)))

(declare-fun b!469586 () Bool)

(declare-fun res!280695 () Bool)

(declare-fun e!275028 () Bool)

(assert (=> b!469586 (=> (not res!280695) (not e!275028))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29849 0))(
  ( (array!29850 (arr!14346 (Array (_ BitVec 32) (_ BitVec 64))) (size!14698 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29849)

(declare-datatypes ((V!18515 0))(
  ( (V!18516 (val!6573 Int)) )
))
(declare-datatypes ((ValueCell!6185 0))(
  ( (ValueCellFull!6185 (v!8859 V!18515)) (EmptyCell!6185) )
))
(declare-datatypes ((array!29851 0))(
  ( (array!29852 (arr!14347 (Array (_ BitVec 32) ValueCell!6185)) (size!14699 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29851)

(assert (=> b!469586 (= res!280695 (and (= (size!14699 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14698 _keys!1025) (size!14699 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!469587 () Bool)

(declare-fun e!275030 () Bool)

(declare-fun tp_is_empty!13057 () Bool)

(assert (=> b!469587 (= e!275030 tp_is_empty!13057)))

(declare-fun res!280696 () Bool)

(assert (=> start!42084 (=> (not res!280696) (not e!275028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42084 (= res!280696 (validMask!0 mask!1365))))

(assert (=> start!42084 e!275028))

(assert (=> start!42084 tp_is_empty!13057))

(assert (=> start!42084 tp!40905))

(assert (=> start!42084 true))

(declare-fun array_inv!10344 (array!29849) Bool)

(assert (=> start!42084 (array_inv!10344 _keys!1025)))

(declare-fun e!275031 () Bool)

(declare-fun array_inv!10345 (array!29851) Bool)

(assert (=> start!42084 (and (array_inv!10345 _values!833) e!275031)))

(declare-fun b!469588 () Bool)

(declare-fun e!275029 () Bool)

(assert (=> b!469588 (= e!275029 tp_is_empty!13057)))

(declare-fun b!469589 () Bool)

(declare-fun res!280693 () Bool)

(assert (=> b!469589 (=> (not res!280693) (not e!275028))))

(declare-datatypes ((List!8747 0))(
  ( (Nil!8744) (Cons!8743 (h!9599 (_ BitVec 64)) (t!14715 List!8747)) )
))
(declare-fun arrayNoDuplicates!0 (array!29849 (_ BitVec 32) List!8747) Bool)

(assert (=> b!469589 (= res!280693 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8744))))

(declare-fun b!469590 () Bool)

(declare-fun mapRes!21283 () Bool)

(assert (=> b!469590 (= e!275031 (and e!275029 mapRes!21283))))

(declare-fun condMapEmpty!21283 () Bool)

(declare-fun mapDefault!21283 () ValueCell!6185)

