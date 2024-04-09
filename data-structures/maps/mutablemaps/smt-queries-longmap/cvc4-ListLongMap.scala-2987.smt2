; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42224 () Bool)

(assert start!42224)

(declare-fun b_free!11735 () Bool)

(declare-fun b_next!11735 () Bool)

(assert (=> start!42224 (= b_free!11735 (not b_next!11735))))

(declare-fun tp!41230 () Bool)

(declare-fun b_and!20183 () Bool)

(assert (=> start!42224 (= tp!41230 b_and!20183)))

(declare-fun b!470988 () Bool)

(declare-fun e!276015 () Bool)

(declare-fun tp_is_empty!13163 () Bool)

(assert (=> b!470988 (= e!276015 tp_is_empty!13163)))

(declare-fun res!281463 () Bool)

(declare-fun e!276017 () Bool)

(assert (=> start!42224 (=> (not res!281463) (not e!276017))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42224 (= res!281463 (validMask!0 mask!1365))))

(assert (=> start!42224 e!276017))

(assert (=> start!42224 tp_is_empty!13163))

(assert (=> start!42224 tp!41230))

(assert (=> start!42224 true))

(declare-datatypes ((array!30053 0))(
  ( (array!30054 (arr!14446 (Array (_ BitVec 32) (_ BitVec 64))) (size!14798 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30053)

(declare-fun array_inv!10424 (array!30053) Bool)

(assert (=> start!42224 (array_inv!10424 _keys!1025)))

(declare-datatypes ((V!18655 0))(
  ( (V!18656 (val!6626 Int)) )
))
(declare-datatypes ((ValueCell!6238 0))(
  ( (ValueCellFull!6238 (v!8913 V!18655)) (EmptyCell!6238) )
))
(declare-datatypes ((array!30055 0))(
  ( (array!30056 (arr!14447 (Array (_ BitVec 32) ValueCell!6238)) (size!14799 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30055)

(declare-fun e!276018 () Bool)

(declare-fun array_inv!10425 (array!30055) Bool)

(assert (=> start!42224 (and (array_inv!10425 _values!833) e!276018)))

(declare-fun b!470989 () Bool)

(declare-fun res!281462 () Bool)

(assert (=> b!470989 (=> (not res!281462) (not e!276017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30053 (_ BitVec 32)) Bool)

(assert (=> b!470989 (= res!281462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21448 () Bool)

(declare-fun mapRes!21448 () Bool)

(assert (=> mapIsEmpty!21448 mapRes!21448))

(declare-fun b!470990 () Bool)

(declare-fun e!276014 () Bool)

(assert (=> b!470990 (= e!276014 tp_is_empty!13163)))

(declare-fun b!470991 () Bool)

(declare-fun res!281464 () Bool)

(assert (=> b!470991 (=> (not res!281464) (not e!276017))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!470991 (= res!281464 (and (= (size!14799 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14798 _keys!1025) (size!14799 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470992 () Bool)

(assert (=> b!470992 (= e!276017 (not true))))

(declare-datatypes ((tuple2!8696 0))(
  ( (tuple2!8697 (_1!4358 (_ BitVec 64)) (_2!4358 V!18655)) )
))
(declare-datatypes ((List!8817 0))(
  ( (Nil!8814) (Cons!8813 (h!9669 tuple2!8696) (t!14789 List!8817)) )
))
(declare-datatypes ((ListLongMap!7623 0))(
  ( (ListLongMap!7624 (toList!3827 List!8817)) )
))
(declare-fun lt!213739 () ListLongMap!7623)

(declare-fun lt!213740 () ListLongMap!7623)

(assert (=> b!470992 (= lt!213739 lt!213740)))

(declare-datatypes ((Unit!13780 0))(
  ( (Unit!13781) )
))
(declare-fun lt!213738 () Unit!13780)

(declare-fun minValueBefore!38 () V!18655)

(declare-fun zeroValue!794 () V!18655)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18655)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!184 (array!30053 array!30055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18655 V!18655 V!18655 V!18655 (_ BitVec 32) Int) Unit!13780)

(assert (=> b!470992 (= lt!213738 (lemmaNoChangeToArrayThenSameMapNoExtras!184 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1989 (array!30053 array!30055 (_ BitVec 32) (_ BitVec 32) V!18655 V!18655 (_ BitVec 32) Int) ListLongMap!7623)

(assert (=> b!470992 (= lt!213740 (getCurrentListMapNoExtraKeys!1989 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470992 (= lt!213739 (getCurrentListMapNoExtraKeys!1989 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21448 () Bool)

(declare-fun tp!41229 () Bool)

(assert (=> mapNonEmpty!21448 (= mapRes!21448 (and tp!41229 e!276015))))

(declare-fun mapRest!21448 () (Array (_ BitVec 32) ValueCell!6238))

(declare-fun mapValue!21448 () ValueCell!6238)

(declare-fun mapKey!21448 () (_ BitVec 32))

(assert (=> mapNonEmpty!21448 (= (arr!14447 _values!833) (store mapRest!21448 mapKey!21448 mapValue!21448))))

(declare-fun b!470993 () Bool)

(declare-fun res!281461 () Bool)

(assert (=> b!470993 (=> (not res!281461) (not e!276017))))

(declare-datatypes ((List!8818 0))(
  ( (Nil!8815) (Cons!8814 (h!9670 (_ BitVec 64)) (t!14790 List!8818)) )
))
(declare-fun arrayNoDuplicates!0 (array!30053 (_ BitVec 32) List!8818) Bool)

(assert (=> b!470993 (= res!281461 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8815))))

(declare-fun b!470994 () Bool)

(assert (=> b!470994 (= e!276018 (and e!276014 mapRes!21448))))

(declare-fun condMapEmpty!21448 () Bool)

(declare-fun mapDefault!21448 () ValueCell!6238)

