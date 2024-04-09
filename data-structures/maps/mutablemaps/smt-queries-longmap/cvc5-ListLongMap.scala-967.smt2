; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20992 () Bool)

(assert start!20992)

(declare-fun b_free!5551 () Bool)

(declare-fun b_next!5551 () Bool)

(assert (=> start!20992 (= b_free!5551 (not b_next!5551))))

(declare-fun tp!19706 () Bool)

(declare-fun b_and!12363 () Bool)

(assert (=> start!20992 (= tp!19706 b_and!12363)))

(declare-fun res!102853 () Bool)

(declare-fun e!137223 () Bool)

(assert (=> start!20992 (=> (not res!102853) (not e!137223))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20992 (= res!102853 (validMask!0 mask!1149))))

(assert (=> start!20992 e!137223))

(declare-datatypes ((V!6865 0))(
  ( (V!6866 (val!2751 Int)) )
))
(declare-datatypes ((ValueCell!2363 0))(
  ( (ValueCellFull!2363 (v!4733 V!6865)) (EmptyCell!2363) )
))
(declare-datatypes ((array!10026 0))(
  ( (array!10027 (arr!4759 (Array (_ BitVec 32) ValueCell!2363)) (size!5084 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10026)

(declare-fun e!137222 () Bool)

(declare-fun array_inv!3141 (array!10026) Bool)

(assert (=> start!20992 (and (array_inv!3141 _values!649) e!137222)))

(assert (=> start!20992 true))

(declare-fun tp_is_empty!5413 () Bool)

(assert (=> start!20992 tp_is_empty!5413))

(declare-datatypes ((array!10028 0))(
  ( (array!10029 (arr!4760 (Array (_ BitVec 32) (_ BitVec 64))) (size!5085 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10028)

(declare-fun array_inv!3142 (array!10028) Bool)

(assert (=> start!20992 (array_inv!3142 _keys!825)))

(assert (=> start!20992 tp!19706))

(declare-fun b!210736 () Bool)

(declare-fun res!102855 () Bool)

(assert (=> b!210736 (=> (not res!102855) (not e!137223))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!210736 (= res!102855 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5085 _keys!825))))))

(declare-fun b!210737 () Bool)

(declare-fun e!137224 () Bool)

(assert (=> b!210737 (= e!137224 tp_is_empty!5413)))

(declare-fun b!210738 () Bool)

(declare-fun e!137227 () Bool)

(assert (=> b!210738 (= e!137227 tp_is_empty!5413)))

(declare-fun mapIsEmpty!9200 () Bool)

(declare-fun mapRes!9200 () Bool)

(assert (=> mapIsEmpty!9200 mapRes!9200))

(declare-fun b!210739 () Bool)

(declare-fun res!102854 () Bool)

(assert (=> b!210739 (=> (not res!102854) (not e!137223))))

(declare-datatypes ((List!3071 0))(
  ( (Nil!3068) (Cons!3067 (h!3709 (_ BitVec 64)) (t!8018 List!3071)) )
))
(declare-fun arrayNoDuplicates!0 (array!10028 (_ BitVec 32) List!3071) Bool)

(assert (=> b!210739 (= res!102854 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3068))))

(declare-fun b!210740 () Bool)

(assert (=> b!210740 (= e!137222 (and e!137224 mapRes!9200))))

(declare-fun condMapEmpty!9200 () Bool)

(declare-fun mapDefault!9200 () ValueCell!2363)

