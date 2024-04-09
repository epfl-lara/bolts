; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41408 () Bool)

(assert start!41408)

(declare-fun b!462478 () Bool)

(declare-fun res!276639 () Bool)

(declare-fun e!269935 () Bool)

(assert (=> b!462478 (=> (not res!276639) (not e!269935))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28801 0))(
  ( (array!28802 (arr!13831 (Array (_ BitVec 32) (_ BitVec 64))) (size!14183 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28801)

(declare-datatypes ((V!17795 0))(
  ( (V!17796 (val!6303 Int)) )
))
(declare-datatypes ((ValueCell!5915 0))(
  ( (ValueCellFull!5915 (v!8586 V!17795)) (EmptyCell!5915) )
))
(declare-datatypes ((array!28803 0))(
  ( (array!28804 (arr!13832 (Array (_ BitVec 32) ValueCell!5915)) (size!14184 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28803)

(assert (=> b!462478 (= res!276639 (and (= (size!14184 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14183 _keys!1025) (size!14184 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462479 () Bool)

(declare-fun e!269931 () Bool)

(declare-fun tp_is_empty!12517 () Bool)

(assert (=> b!462479 (= e!269931 tp_is_empty!12517)))

(declare-fun b!462480 () Bool)

(declare-fun e!269932 () Bool)

(assert (=> b!462480 (= e!269932 tp_is_empty!12517)))

(declare-fun b!462481 () Bool)

(assert (=> b!462481 (= e!269935 (bvsgt #b00000000000000000000000000000000 (size!14183 _keys!1025)))))

(declare-fun res!276641 () Bool)

(assert (=> start!41408 (=> (not res!276641) (not e!269935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41408 (= res!276641 (validMask!0 mask!1365))))

(assert (=> start!41408 e!269935))

(assert (=> start!41408 true))

(declare-fun array_inv!9984 (array!28801) Bool)

(assert (=> start!41408 (array_inv!9984 _keys!1025)))

(declare-fun e!269934 () Bool)

(declare-fun array_inv!9985 (array!28803) Bool)

(assert (=> start!41408 (and (array_inv!9985 _values!833) e!269934)))

(declare-fun b!462482 () Bool)

(declare-fun mapRes!20446 () Bool)

(assert (=> b!462482 (= e!269934 (and e!269932 mapRes!20446))))

(declare-fun condMapEmpty!20446 () Bool)

(declare-fun mapDefault!20446 () ValueCell!5915)

