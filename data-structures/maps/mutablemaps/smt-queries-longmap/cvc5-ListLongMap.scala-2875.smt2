; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41378 () Bool)

(assert start!41378)

(declare-fun b!462206 () Bool)

(declare-fun res!276501 () Bool)

(declare-fun e!269706 () Bool)

(assert (=> b!462206 (=> (not res!276501) (not e!269706))))

(declare-datatypes ((array!28741 0))(
  ( (array!28742 (arr!13801 (Array (_ BitVec 32) (_ BitVec 64))) (size!14153 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28741)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28741 (_ BitVec 32)) Bool)

(assert (=> b!462206 (= res!276501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462207 () Bool)

(declare-fun e!269707 () Bool)

(declare-fun tp_is_empty!12487 () Bool)

(assert (=> b!462207 (= e!269707 tp_is_empty!12487)))

(declare-fun b!462208 () Bool)

(declare-fun e!269709 () Bool)

(assert (=> b!462208 (= e!269709 tp_is_empty!12487)))

(declare-fun res!276502 () Bool)

(assert (=> start!41378 (=> (not res!276502) (not e!269706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41378 (= res!276502 (validMask!0 mask!1365))))

(assert (=> start!41378 e!269706))

(assert (=> start!41378 true))

(declare-fun array_inv!9960 (array!28741) Bool)

(assert (=> start!41378 (array_inv!9960 _keys!1025)))

(declare-datatypes ((V!17755 0))(
  ( (V!17756 (val!6288 Int)) )
))
(declare-datatypes ((ValueCell!5900 0))(
  ( (ValueCellFull!5900 (v!8571 V!17755)) (EmptyCell!5900) )
))
(declare-datatypes ((array!28743 0))(
  ( (array!28744 (arr!13802 (Array (_ BitVec 32) ValueCell!5900)) (size!14154 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28743)

(declare-fun e!269708 () Bool)

(declare-fun array_inv!9961 (array!28743) Bool)

(assert (=> start!41378 (and (array_inv!9961 _values!833) e!269708)))

(declare-fun b!462209 () Bool)

(declare-fun res!276503 () Bool)

(assert (=> b!462209 (=> (not res!276503) (not e!269706))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462209 (= res!276503 (and (= (size!14154 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14153 _keys!1025) (size!14154 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462210 () Bool)

(assert (=> b!462210 (= e!269706 false)))

(declare-fun lt!209166 () Bool)

(declare-datatypes ((List!8345 0))(
  ( (Nil!8342) (Cons!8341 (h!9197 (_ BitVec 64)) (t!14297 List!8345)) )
))
(declare-fun arrayNoDuplicates!0 (array!28741 (_ BitVec 32) List!8345) Bool)

(assert (=> b!462210 (= lt!209166 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8342))))

(declare-fun mapNonEmpty!20401 () Bool)

(declare-fun mapRes!20401 () Bool)

(declare-fun tp!39220 () Bool)

(assert (=> mapNonEmpty!20401 (= mapRes!20401 (and tp!39220 e!269709))))

(declare-fun mapRest!20401 () (Array (_ BitVec 32) ValueCell!5900))

(declare-fun mapValue!20401 () ValueCell!5900)

(declare-fun mapKey!20401 () (_ BitVec 32))

(assert (=> mapNonEmpty!20401 (= (arr!13802 _values!833) (store mapRest!20401 mapKey!20401 mapValue!20401))))

(declare-fun b!462211 () Bool)

(assert (=> b!462211 (= e!269708 (and e!269707 mapRes!20401))))

(declare-fun condMapEmpty!20401 () Bool)

(declare-fun mapDefault!20401 () ValueCell!5900)

