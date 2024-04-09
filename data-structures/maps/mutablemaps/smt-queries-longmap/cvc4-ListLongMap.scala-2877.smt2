; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41394 () Bool)

(assert start!41394)

(declare-fun mapIsEmpty!20425 () Bool)

(declare-fun mapRes!20425 () Bool)

(assert (=> mapIsEmpty!20425 mapRes!20425))

(declare-fun b!462350 () Bool)

(declare-fun res!276574 () Bool)

(declare-fun e!269828 () Bool)

(assert (=> b!462350 (=> (not res!276574) (not e!269828))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28773 0))(
  ( (array!28774 (arr!13817 (Array (_ BitVec 32) (_ BitVec 64))) (size!14169 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28773)

(declare-datatypes ((V!17775 0))(
  ( (V!17776 (val!6296 Int)) )
))
(declare-datatypes ((ValueCell!5908 0))(
  ( (ValueCellFull!5908 (v!8579 V!17775)) (EmptyCell!5908) )
))
(declare-datatypes ((array!28775 0))(
  ( (array!28776 (arr!13818 (Array (_ BitVec 32) ValueCell!5908)) (size!14170 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28775)

(assert (=> b!462350 (= res!276574 (and (= (size!14170 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14169 _keys!1025) (size!14170 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462351 () Bool)

(assert (=> b!462351 (= e!269828 false)))

(declare-fun lt!209190 () Bool)

(declare-datatypes ((List!8352 0))(
  ( (Nil!8349) (Cons!8348 (h!9204 (_ BitVec 64)) (t!14304 List!8352)) )
))
(declare-fun arrayNoDuplicates!0 (array!28773 (_ BitVec 32) List!8352) Bool)

(assert (=> b!462351 (= lt!209190 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8349))))

(declare-fun mapNonEmpty!20425 () Bool)

(declare-fun tp!39244 () Bool)

(declare-fun e!269829 () Bool)

(assert (=> mapNonEmpty!20425 (= mapRes!20425 (and tp!39244 e!269829))))

(declare-fun mapKey!20425 () (_ BitVec 32))

(declare-fun mapValue!20425 () ValueCell!5908)

(declare-fun mapRest!20425 () (Array (_ BitVec 32) ValueCell!5908))

(assert (=> mapNonEmpty!20425 (= (arr!13818 _values!833) (store mapRest!20425 mapKey!20425 mapValue!20425))))

(declare-fun b!462352 () Bool)

(declare-fun e!269827 () Bool)

(declare-fun tp_is_empty!12503 () Bool)

(assert (=> b!462352 (= e!269827 tp_is_empty!12503)))

(declare-fun res!276573 () Bool)

(assert (=> start!41394 (=> (not res!276573) (not e!269828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41394 (= res!276573 (validMask!0 mask!1365))))

(assert (=> start!41394 e!269828))

(assert (=> start!41394 true))

(declare-fun array_inv!9972 (array!28773) Bool)

(assert (=> start!41394 (array_inv!9972 _keys!1025)))

(declare-fun e!269826 () Bool)

(declare-fun array_inv!9973 (array!28775) Bool)

(assert (=> start!41394 (and (array_inv!9973 _values!833) e!269826)))

(declare-fun b!462353 () Bool)

(declare-fun res!276575 () Bool)

(assert (=> b!462353 (=> (not res!276575) (not e!269828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28773 (_ BitVec 32)) Bool)

(assert (=> b!462353 (= res!276575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462354 () Bool)

(assert (=> b!462354 (= e!269826 (and e!269827 mapRes!20425))))

(declare-fun condMapEmpty!20425 () Bool)

(declare-fun mapDefault!20425 () ValueCell!5908)

