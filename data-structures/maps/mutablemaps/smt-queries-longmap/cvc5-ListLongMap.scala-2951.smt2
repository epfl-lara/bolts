; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41934 () Bool)

(assert start!41934)

(declare-fun b_free!11515 () Bool)

(declare-fun b_next!11515 () Bool)

(assert (=> start!41934 (= b_free!11515 (not b_next!11515))))

(declare-fun tp!40558 () Bool)

(declare-fun b_and!19921 () Bool)

(assert (=> start!41934 (= tp!40558 b_and!19921)))

(declare-fun mapNonEmpty!21106 () Bool)

(declare-fun mapRes!21106 () Bool)

(declare-fun tp!40557 () Bool)

(declare-fun e!273798 () Bool)

(assert (=> mapNonEmpty!21106 (= mapRes!21106 (and tp!40557 e!273798))))

(declare-datatypes ((V!18363 0))(
  ( (V!18364 (val!6516 Int)) )
))
(declare-datatypes ((ValueCell!6128 0))(
  ( (ValueCellFull!6128 (v!8801 V!18363)) (EmptyCell!6128) )
))
(declare-datatypes ((array!29617 0))(
  ( (array!29618 (arr!14232 (Array (_ BitVec 32) ValueCell!6128)) (size!14584 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29617)

(declare-fun mapRest!21106 () (Array (_ BitVec 32) ValueCell!6128))

(declare-fun mapKey!21106 () (_ BitVec 32))

(declare-fun mapValue!21106 () ValueCell!6128)

(assert (=> mapNonEmpty!21106 (= (arr!14232 _values!833) (store mapRest!21106 mapKey!21106 mapValue!21106))))

(declare-fun b!467891 () Bool)

(declare-fun tp_is_empty!12943 () Bool)

(assert (=> b!467891 (= e!273798 tp_is_empty!12943)))

(declare-fun b!467892 () Bool)

(declare-fun e!273800 () Bool)

(assert (=> b!467892 (= e!273800 tp_is_empty!12943)))

(declare-fun b!467893 () Bool)

(declare-fun res!279705 () Bool)

(declare-fun e!273799 () Bool)

(assert (=> b!467893 (=> (not res!279705) (not e!273799))))

(declare-datatypes ((array!29619 0))(
  ( (array!29620 (arr!14233 (Array (_ BitVec 32) (_ BitVec 64))) (size!14585 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29619)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29619 (_ BitVec 32)) Bool)

(assert (=> b!467893 (= res!279705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467894 () Bool)

(declare-fun res!279703 () Bool)

(assert (=> b!467894 (=> (not res!279703) (not e!273799))))

(declare-datatypes ((List!8659 0))(
  ( (Nil!8656) (Cons!8655 (h!9511 (_ BitVec 64)) (t!14623 List!8659)) )
))
(declare-fun arrayNoDuplicates!0 (array!29619 (_ BitVec 32) List!8659) Bool)

(assert (=> b!467894 (= res!279703 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8656))))

(declare-fun res!279706 () Bool)

(assert (=> start!41934 (=> (not res!279706) (not e!273799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41934 (= res!279706 (validMask!0 mask!1365))))

(assert (=> start!41934 e!273799))

(assert (=> start!41934 tp_is_empty!12943))

(assert (=> start!41934 tp!40558))

(assert (=> start!41934 true))

(declare-fun array_inv!10266 (array!29619) Bool)

(assert (=> start!41934 (array_inv!10266 _keys!1025)))

(declare-fun e!273795 () Bool)

(declare-fun array_inv!10267 (array!29617) Bool)

(assert (=> start!41934 (and (array_inv!10267 _values!833) e!273795)))

(declare-fun b!467895 () Bool)

(assert (=> b!467895 (= e!273795 (and e!273800 mapRes!21106))))

(declare-fun condMapEmpty!21106 () Bool)

(declare-fun mapDefault!21106 () ValueCell!6128)

