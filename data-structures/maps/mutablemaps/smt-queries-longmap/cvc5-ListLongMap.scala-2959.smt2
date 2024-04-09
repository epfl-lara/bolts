; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41998 () Bool)

(assert start!41998)

(declare-fun b_free!11563 () Bool)

(declare-fun b_next!11563 () Bool)

(assert (=> start!41998 (= b_free!11563 (not b_next!11563))))

(declare-fun tp!40705 () Bool)

(declare-fun b_and!19979 () Bool)

(assert (=> start!41998 (= tp!40705 b_and!19979)))

(declare-fun b!468615 () Bool)

(declare-fun res!280121 () Bool)

(declare-fun e!274323 () Bool)

(assert (=> b!468615 (=> (not res!280121) (not e!274323))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29715 0))(
  ( (array!29716 (arr!14280 (Array (_ BitVec 32) (_ BitVec 64))) (size!14632 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29715)

(declare-datatypes ((V!18427 0))(
  ( (V!18428 (val!6540 Int)) )
))
(declare-datatypes ((ValueCell!6152 0))(
  ( (ValueCellFull!6152 (v!8825 V!18427)) (EmptyCell!6152) )
))
(declare-datatypes ((array!29717 0))(
  ( (array!29718 (arr!14281 (Array (_ BitVec 32) ValueCell!6152)) (size!14633 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29717)

(assert (=> b!468615 (= res!280121 (and (= (size!14633 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14632 _keys!1025) (size!14633 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!280122 () Bool)

(assert (=> start!41998 (=> (not res!280122) (not e!274323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41998 (= res!280122 (validMask!0 mask!1365))))

(assert (=> start!41998 e!274323))

(declare-fun tp_is_empty!12991 () Bool)

(assert (=> start!41998 tp_is_empty!12991))

(assert (=> start!41998 tp!40705))

(assert (=> start!41998 true))

(declare-fun array_inv!10300 (array!29715) Bool)

(assert (=> start!41998 (array_inv!10300 _keys!1025)))

(declare-fun e!274321 () Bool)

(declare-fun array_inv!10301 (array!29717) Bool)

(assert (=> start!41998 (and (array_inv!10301 _values!833) e!274321)))

(declare-fun b!468616 () Bool)

(declare-fun res!280123 () Bool)

(assert (=> b!468616 (=> (not res!280123) (not e!274323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29715 (_ BitVec 32)) Bool)

(assert (=> b!468616 (= res!280123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468617 () Bool)

(declare-fun res!280124 () Bool)

(assert (=> b!468617 (=> (not res!280124) (not e!274323))))

(declare-datatypes ((List!8698 0))(
  ( (Nil!8695) (Cons!8694 (h!9550 (_ BitVec 64)) (t!14664 List!8698)) )
))
(declare-fun arrayNoDuplicates!0 (array!29715 (_ BitVec 32) List!8698) Bool)

(assert (=> b!468617 (= res!280124 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8695))))

(declare-fun mapNonEmpty!21181 () Bool)

(declare-fun mapRes!21181 () Bool)

(declare-fun tp!40704 () Bool)

(declare-fun e!274326 () Bool)

(assert (=> mapNonEmpty!21181 (= mapRes!21181 (and tp!40704 e!274326))))

(declare-fun mapKey!21181 () (_ BitVec 32))

(declare-fun mapRest!21181 () (Array (_ BitVec 32) ValueCell!6152))

(declare-fun mapValue!21181 () ValueCell!6152)

(assert (=> mapNonEmpty!21181 (= (arr!14281 _values!833) (store mapRest!21181 mapKey!21181 mapValue!21181))))

(declare-fun b!468618 () Bool)

(declare-fun e!274324 () Bool)

(assert (=> b!468618 (= e!274321 (and e!274324 mapRes!21181))))

(declare-fun condMapEmpty!21181 () Bool)

(declare-fun mapDefault!21181 () ValueCell!6152)

