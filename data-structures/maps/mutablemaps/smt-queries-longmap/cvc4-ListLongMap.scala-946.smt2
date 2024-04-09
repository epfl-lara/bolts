; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20788 () Bool)

(assert start!20788)

(declare-fun b!208060 () Bool)

(declare-fun res!101156 () Bool)

(declare-fun e!135759 () Bool)

(assert (=> b!208060 (=> (not res!101156) (not e!135759))))

(declare-datatypes ((array!9786 0))(
  ( (array!9787 (arr!4643 (Array (_ BitVec 32) (_ BitVec 64))) (size!4968 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9786)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6701 0))(
  ( (V!6702 (val!2690 Int)) )
))
(declare-datatypes ((ValueCell!2302 0))(
  ( (ValueCellFull!2302 (v!4656 V!6701)) (EmptyCell!2302) )
))
(declare-datatypes ((array!9788 0))(
  ( (array!9789 (arr!4644 (Array (_ BitVec 32) ValueCell!2302)) (size!4969 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9788)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!208060 (= res!101156 (and (= (size!4969 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4968 _keys!825) (size!4969 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!101158 () Bool)

(assert (=> start!20788 (=> (not res!101158) (not e!135759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20788 (= res!101158 (validMask!0 mask!1149))))

(assert (=> start!20788 e!135759))

(assert (=> start!20788 true))

(declare-fun e!135756 () Bool)

(declare-fun array_inv!3069 (array!9788) Bool)

(assert (=> start!20788 (and (array_inv!3069 _values!649) e!135756)))

(declare-fun array_inv!3070 (array!9786) Bool)

(assert (=> start!20788 (array_inv!3070 _keys!825)))

(declare-fun mapIsEmpty!9005 () Bool)

(declare-fun mapRes!9005 () Bool)

(assert (=> mapIsEmpty!9005 mapRes!9005))

(declare-fun b!208061 () Bool)

(declare-fun res!101157 () Bool)

(assert (=> b!208061 (=> (not res!101157) (not e!135759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9786 (_ BitVec 32)) Bool)

(assert (=> b!208061 (= res!101157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!208062 () Bool)

(declare-fun e!135757 () Bool)

(declare-fun tp_is_empty!5291 () Bool)

(assert (=> b!208062 (= e!135757 tp_is_empty!5291)))

(declare-fun b!208063 () Bool)

(assert (=> b!208063 (= e!135759 false)))

(declare-fun lt!106750 () Bool)

(declare-datatypes ((List!2992 0))(
  ( (Nil!2989) (Cons!2988 (h!3630 (_ BitVec 64)) (t!7931 List!2992)) )
))
(declare-fun arrayNoDuplicates!0 (array!9786 (_ BitVec 32) List!2992) Bool)

(assert (=> b!208063 (= lt!106750 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2989))))

(declare-fun b!208064 () Bool)

(declare-fun e!135758 () Bool)

(assert (=> b!208064 (= e!135758 tp_is_empty!5291)))

(declare-fun mapNonEmpty!9005 () Bool)

(declare-fun tp!19328 () Bool)

(assert (=> mapNonEmpty!9005 (= mapRes!9005 (and tp!19328 e!135758))))

(declare-fun mapKey!9005 () (_ BitVec 32))

(declare-fun mapRest!9005 () (Array (_ BitVec 32) ValueCell!2302))

(declare-fun mapValue!9005 () ValueCell!2302)

(assert (=> mapNonEmpty!9005 (= (arr!4644 _values!649) (store mapRest!9005 mapKey!9005 mapValue!9005))))

(declare-fun b!208065 () Bool)

(assert (=> b!208065 (= e!135756 (and e!135757 mapRes!9005))))

(declare-fun condMapEmpty!9005 () Bool)

(declare-fun mapDefault!9005 () ValueCell!2302)

