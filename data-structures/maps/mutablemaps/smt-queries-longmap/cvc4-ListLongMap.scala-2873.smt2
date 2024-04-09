; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41370 () Bool)

(assert start!41370)

(declare-fun mapNonEmpty!20389 () Bool)

(declare-fun mapRes!20389 () Bool)

(declare-fun tp!39208 () Bool)

(declare-fun e!269649 () Bool)

(assert (=> mapNonEmpty!20389 (= mapRes!20389 (and tp!39208 e!269649))))

(declare-datatypes ((V!17743 0))(
  ( (V!17744 (val!6284 Int)) )
))
(declare-datatypes ((ValueCell!5896 0))(
  ( (ValueCellFull!5896 (v!8567 V!17743)) (EmptyCell!5896) )
))
(declare-datatypes ((array!28727 0))(
  ( (array!28728 (arr!13794 (Array (_ BitVec 32) ValueCell!5896)) (size!14146 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28727)

(declare-fun mapRest!20389 () (Array (_ BitVec 32) ValueCell!5896))

(declare-fun mapValue!20389 () ValueCell!5896)

(declare-fun mapKey!20389 () (_ BitVec 32))

(assert (=> mapNonEmpty!20389 (= (arr!13794 _values!833) (store mapRest!20389 mapKey!20389 mapValue!20389))))

(declare-fun mapIsEmpty!20389 () Bool)

(assert (=> mapIsEmpty!20389 mapRes!20389))

(declare-fun b!462134 () Bool)

(declare-fun tp_is_empty!12479 () Bool)

(assert (=> b!462134 (= e!269649 tp_is_empty!12479)))

(declare-fun b!462135 () Bool)

(declare-fun e!269647 () Bool)

(assert (=> b!462135 (= e!269647 false)))

(declare-fun lt!209154 () Bool)

(declare-datatypes ((array!28729 0))(
  ( (array!28730 (arr!13795 (Array (_ BitVec 32) (_ BitVec 64))) (size!14147 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28729)

(declare-datatypes ((List!8343 0))(
  ( (Nil!8340) (Cons!8339 (h!9195 (_ BitVec 64)) (t!14295 List!8343)) )
))
(declare-fun arrayNoDuplicates!0 (array!28729 (_ BitVec 32) List!8343) Bool)

(assert (=> b!462135 (= lt!209154 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8340))))

(declare-fun b!462136 () Bool)

(declare-fun res!276465 () Bool)

(assert (=> b!462136 (=> (not res!276465) (not e!269647))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28729 (_ BitVec 32)) Bool)

(assert (=> b!462136 (= res!276465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462137 () Bool)

(declare-fun res!276467 () Bool)

(assert (=> b!462137 (=> (not res!276467) (not e!269647))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462137 (= res!276467 (and (= (size!14146 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14147 _keys!1025) (size!14146 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462139 () Bool)

(declare-fun e!269646 () Bool)

(declare-fun e!269650 () Bool)

(assert (=> b!462139 (= e!269646 (and e!269650 mapRes!20389))))

(declare-fun condMapEmpty!20389 () Bool)

(declare-fun mapDefault!20389 () ValueCell!5896)

