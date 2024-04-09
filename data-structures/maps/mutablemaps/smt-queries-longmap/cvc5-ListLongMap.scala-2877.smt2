; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41390 () Bool)

(assert start!41390)

(declare-fun b!462314 () Bool)

(declare-fun res!276555 () Bool)

(declare-fun e!269799 () Bool)

(assert (=> b!462314 (=> (not res!276555) (not e!269799))))

(declare-datatypes ((array!28765 0))(
  ( (array!28766 (arr!13813 (Array (_ BitVec 32) (_ BitVec 64))) (size!14165 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28765)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28765 (_ BitVec 32)) Bool)

(assert (=> b!462314 (= res!276555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20419 () Bool)

(declare-fun mapRes!20419 () Bool)

(assert (=> mapIsEmpty!20419 mapRes!20419))

(declare-fun b!462316 () Bool)

(assert (=> b!462316 (= e!269799 false)))

(declare-fun lt!209184 () Bool)

(declare-datatypes ((List!8350 0))(
  ( (Nil!8347) (Cons!8346 (h!9202 (_ BitVec 64)) (t!14302 List!8350)) )
))
(declare-fun arrayNoDuplicates!0 (array!28765 (_ BitVec 32) List!8350) Bool)

(assert (=> b!462316 (= lt!209184 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8347))))

(declare-fun b!462317 () Bool)

(declare-fun e!269797 () Bool)

(declare-fun tp_is_empty!12499 () Bool)

(assert (=> b!462317 (= e!269797 tp_is_empty!12499)))

(declare-fun b!462318 () Bool)

(declare-fun res!276557 () Bool)

(assert (=> b!462318 (=> (not res!276557) (not e!269799))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!17771 0))(
  ( (V!17772 (val!6294 Int)) )
))
(declare-datatypes ((ValueCell!5906 0))(
  ( (ValueCellFull!5906 (v!8577 V!17771)) (EmptyCell!5906) )
))
(declare-datatypes ((array!28767 0))(
  ( (array!28768 (arr!13814 (Array (_ BitVec 32) ValueCell!5906)) (size!14166 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28767)

(assert (=> b!462318 (= res!276557 (and (= (size!14166 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14165 _keys!1025) (size!14166 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20419 () Bool)

(declare-fun tp!39238 () Bool)

(assert (=> mapNonEmpty!20419 (= mapRes!20419 (and tp!39238 e!269797))))

(declare-fun mapValue!20419 () ValueCell!5906)

(declare-fun mapRest!20419 () (Array (_ BitVec 32) ValueCell!5906))

(declare-fun mapKey!20419 () (_ BitVec 32))

(assert (=> mapNonEmpty!20419 (= (arr!13814 _values!833) (store mapRest!20419 mapKey!20419 mapValue!20419))))

(declare-fun b!462319 () Bool)

(declare-fun e!269796 () Bool)

(assert (=> b!462319 (= e!269796 tp_is_empty!12499)))

(declare-fun res!276556 () Bool)

(assert (=> start!41390 (=> (not res!276556) (not e!269799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41390 (= res!276556 (validMask!0 mask!1365))))

(assert (=> start!41390 e!269799))

(assert (=> start!41390 true))

(declare-fun array_inv!9968 (array!28765) Bool)

(assert (=> start!41390 (array_inv!9968 _keys!1025)))

(declare-fun e!269800 () Bool)

(declare-fun array_inv!9969 (array!28767) Bool)

(assert (=> start!41390 (and (array_inv!9969 _values!833) e!269800)))

(declare-fun b!462315 () Bool)

(assert (=> b!462315 (= e!269800 (and e!269796 mapRes!20419))))

(declare-fun condMapEmpty!20419 () Bool)

(declare-fun mapDefault!20419 () ValueCell!5906)

