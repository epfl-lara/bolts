; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82500 () Bool)

(assert start!82500)

(declare-fun b!961147 () Bool)

(declare-fun res!643412 () Bool)

(declare-fun e!541934 () Bool)

(assert (=> b!961147 (=> (not res!643412) (not e!541934))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33541 0))(
  ( (V!33542 (val!10760 Int)) )
))
(declare-datatypes ((ValueCell!10228 0))(
  ( (ValueCellFull!10228 (v!13317 V!33541)) (EmptyCell!10228) )
))
(declare-datatypes ((array!58935 0))(
  ( (array!58936 (arr!28333 (Array (_ BitVec 32) ValueCell!10228)) (size!28813 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58935)

(declare-datatypes ((array!58937 0))(
  ( (array!58938 (arr!28334 (Array (_ BitVec 32) (_ BitVec 64))) (size!28814 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58937)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!961147 (= res!643412 (and (= (size!28813 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28814 _keys!1686) (size!28813 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun res!643414 () Bool)

(assert (=> start!82500 (=> (not res!643414) (not e!541934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82500 (= res!643414 (validMask!0 mask!2110))))

(assert (=> start!82500 e!541934))

(assert (=> start!82500 true))

(declare-fun e!541932 () Bool)

(declare-fun array_inv!21885 (array!58935) Bool)

(assert (=> start!82500 (and (array_inv!21885 _values!1400) e!541932)))

(declare-fun array_inv!21886 (array!58937) Bool)

(assert (=> start!82500 (array_inv!21886 _keys!1686)))

(declare-fun b!961148 () Bool)

(declare-fun res!643411 () Bool)

(assert (=> b!961148 (=> (not res!643411) (not e!541934))))

(declare-datatypes ((List!19805 0))(
  ( (Nil!19802) (Cons!19801 (h!20963 (_ BitVec 64)) (t!28176 List!19805)) )
))
(declare-fun noDuplicate!1375 (List!19805) Bool)

(assert (=> b!961148 (= res!643411 (noDuplicate!1375 Nil!19802))))

(declare-fun b!961149 () Bool)

(declare-fun e!541929 () Bool)

(assert (=> b!961149 (= e!541934 e!541929)))

(declare-fun res!643415 () Bool)

(assert (=> b!961149 (=> res!643415 e!541929)))

(declare-fun contains!5396 (List!19805 (_ BitVec 64)) Bool)

(assert (=> b!961149 (= res!643415 (contains!5396 Nil!19802 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!961150 () Bool)

(declare-fun res!643413 () Bool)

(assert (=> b!961150 (=> (not res!643413) (not e!541934))))

(assert (=> b!961150 (= res!643413 (and (bvsle #b00000000000000000000000000000000 (size!28814 _keys!1686)) (bvslt (size!28814 _keys!1686) #b01111111111111111111111111111111)))))

(declare-fun b!961151 () Bool)

(declare-fun res!643416 () Bool)

(assert (=> b!961151 (=> (not res!643416) (not e!541934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58937 (_ BitVec 32)) Bool)

(assert (=> b!961151 (= res!643416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961152 () Bool)

(declare-fun e!541931 () Bool)

(declare-fun tp_is_empty!21419 () Bool)

(assert (=> b!961152 (= e!541931 tp_is_empty!21419)))

(declare-fun mapIsEmpty!34120 () Bool)

(declare-fun mapRes!34120 () Bool)

(assert (=> mapIsEmpty!34120 mapRes!34120))

(declare-fun mapNonEmpty!34120 () Bool)

(declare-fun tp!65050 () Bool)

(declare-fun e!541933 () Bool)

(assert (=> mapNonEmpty!34120 (= mapRes!34120 (and tp!65050 e!541933))))

(declare-fun mapRest!34120 () (Array (_ BitVec 32) ValueCell!10228))

(declare-fun mapKey!34120 () (_ BitVec 32))

(declare-fun mapValue!34120 () ValueCell!10228)

(assert (=> mapNonEmpty!34120 (= (arr!28333 _values!1400) (store mapRest!34120 mapKey!34120 mapValue!34120))))

(declare-fun b!961153 () Bool)

(assert (=> b!961153 (= e!541933 tp_is_empty!21419)))

(declare-fun b!961154 () Bool)

(assert (=> b!961154 (= e!541929 (contains!5396 Nil!19802 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!961155 () Bool)

(assert (=> b!961155 (= e!541932 (and e!541931 mapRes!34120))))

(declare-fun condMapEmpty!34120 () Bool)

(declare-fun mapDefault!34120 () ValueCell!10228)

