; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41384 () Bool)

(assert start!41384)

(declare-fun b!462260 () Bool)

(declare-fun e!269754 () Bool)

(declare-fun tp_is_empty!12493 () Bool)

(assert (=> b!462260 (= e!269754 tp_is_empty!12493)))

(declare-fun b!462261 () Bool)

(declare-fun e!269755 () Bool)

(assert (=> b!462261 (= e!269755 false)))

(declare-fun lt!209175 () Bool)

(declare-datatypes ((array!28753 0))(
  ( (array!28754 (arr!13807 (Array (_ BitVec 32) (_ BitVec 64))) (size!14159 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28753)

(declare-datatypes ((List!8347 0))(
  ( (Nil!8344) (Cons!8343 (h!9199 (_ BitVec 64)) (t!14299 List!8347)) )
))
(declare-fun arrayNoDuplicates!0 (array!28753 (_ BitVec 32) List!8347) Bool)

(assert (=> b!462261 (= lt!209175 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8344))))

(declare-fun b!462262 () Bool)

(declare-fun res!276529 () Bool)

(assert (=> b!462262 (=> (not res!276529) (not e!269755))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!17763 0))(
  ( (V!17764 (val!6291 Int)) )
))
(declare-datatypes ((ValueCell!5903 0))(
  ( (ValueCellFull!5903 (v!8574 V!17763)) (EmptyCell!5903) )
))
(declare-datatypes ((array!28755 0))(
  ( (array!28756 (arr!13808 (Array (_ BitVec 32) ValueCell!5903)) (size!14160 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28755)

(assert (=> b!462262 (= res!276529 (and (= (size!14160 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14159 _keys!1025) (size!14160 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462263 () Bool)

(declare-fun res!276530 () Bool)

(assert (=> b!462263 (=> (not res!276530) (not e!269755))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28753 (_ BitVec 32)) Bool)

(assert (=> b!462263 (= res!276530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462264 () Bool)

(declare-fun e!269751 () Bool)

(assert (=> b!462264 (= e!269751 tp_is_empty!12493)))

(declare-fun b!462265 () Bool)

(declare-fun e!269753 () Bool)

(declare-fun mapRes!20410 () Bool)

(assert (=> b!462265 (= e!269753 (and e!269751 mapRes!20410))))

(declare-fun condMapEmpty!20410 () Bool)

(declare-fun mapDefault!20410 () ValueCell!5903)

