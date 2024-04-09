; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41848 () Bool)

(assert start!41848)

(declare-fun b_free!11443 () Bool)

(declare-fun b_next!11443 () Bool)

(assert (=> start!41848 (= b_free!11443 (not b_next!11443))))

(declare-fun tp!40338 () Bool)

(declare-fun b_and!19841 () Bool)

(assert (=> start!41848 (= tp!40338 b_and!19841)))

(declare-fun b!467003 () Bool)

(declare-fun e!273157 () Bool)

(declare-fun tp_is_empty!12871 () Bool)

(assert (=> b!467003 (= e!273157 tp_is_empty!12871)))

(declare-fun b!467004 () Bool)

(declare-fun res!279194 () Bool)

(declare-fun e!273156 () Bool)

(assert (=> b!467004 (=> (not res!279194) (not e!273156))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29477 0))(
  ( (array!29478 (arr!14163 (Array (_ BitVec 32) (_ BitVec 64))) (size!14515 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29477)

(declare-datatypes ((V!18267 0))(
  ( (V!18268 (val!6480 Int)) )
))
(declare-datatypes ((ValueCell!6092 0))(
  ( (ValueCellFull!6092 (v!8765 V!18267)) (EmptyCell!6092) )
))
(declare-datatypes ((array!29479 0))(
  ( (array!29480 (arr!14164 (Array (_ BitVec 32) ValueCell!6092)) (size!14516 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29479)

(assert (=> b!467004 (= res!279194 (and (= (size!14516 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14515 _keys!1025) (size!14516 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467005 () Bool)

(declare-fun res!279195 () Bool)

(assert (=> b!467005 (=> (not res!279195) (not e!273156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29477 (_ BitVec 32)) Bool)

(assert (=> b!467005 (= res!279195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20995 () Bool)

(declare-fun mapRes!20995 () Bool)

(declare-fun tp!40339 () Bool)

(assert (=> mapNonEmpty!20995 (= mapRes!20995 (and tp!40339 e!273157))))

(declare-fun mapKey!20995 () (_ BitVec 32))

(declare-fun mapValue!20995 () ValueCell!6092)

(declare-fun mapRest!20995 () (Array (_ BitVec 32) ValueCell!6092))

(assert (=> mapNonEmpty!20995 (= (arr!14164 _values!833) (store mapRest!20995 mapKey!20995 mapValue!20995))))

(declare-fun b!467006 () Bool)

(declare-fun res!279192 () Bool)

(assert (=> b!467006 (=> (not res!279192) (not e!273156))))

(declare-datatypes ((List!8609 0))(
  ( (Nil!8606) (Cons!8605 (h!9461 (_ BitVec 64)) (t!14571 List!8609)) )
))
(declare-fun arrayNoDuplicates!0 (array!29477 (_ BitVec 32) List!8609) Bool)

(assert (=> b!467006 (= res!279192 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8606))))

(declare-fun b!467007 () Bool)

(assert (=> b!467007 (= e!273156 (not true))))

(declare-datatypes ((tuple2!8492 0))(
  ( (tuple2!8493 (_1!4256 (_ BitVec 64)) (_2!4256 V!18267)) )
))
(declare-datatypes ((List!8610 0))(
  ( (Nil!8607) (Cons!8606 (h!9462 tuple2!8492) (t!14572 List!8610)) )
))
(declare-datatypes ((ListLongMap!7419 0))(
  ( (ListLongMap!7420 (toList!3725 List!8610)) )
))
(declare-fun lt!211209 () ListLongMap!7419)

(declare-fun lt!211207 () ListLongMap!7419)

(assert (=> b!467007 (= lt!211209 lt!211207)))

(declare-fun minValueBefore!38 () V!18267)

(declare-fun zeroValue!794 () V!18267)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13571 0))(
  ( (Unit!13572) )
))
(declare-fun lt!211208 () Unit!13571)

(declare-fun minValueAfter!38 () V!18267)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!86 (array!29477 array!29479 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18267 V!18267 V!18267 V!18267 (_ BitVec 32) Int) Unit!13571)

(assert (=> b!467007 (= lt!211208 (lemmaNoChangeToArrayThenSameMapNoExtras!86 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1891 (array!29477 array!29479 (_ BitVec 32) (_ BitVec 32) V!18267 V!18267 (_ BitVec 32) Int) ListLongMap!7419)

(assert (=> b!467007 (= lt!211207 (getCurrentListMapNoExtraKeys!1891 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467007 (= lt!211209 (getCurrentListMapNoExtraKeys!1891 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!279193 () Bool)

(assert (=> start!41848 (=> (not res!279193) (not e!273156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41848 (= res!279193 (validMask!0 mask!1365))))

(assert (=> start!41848 e!273156))

(assert (=> start!41848 tp_is_empty!12871))

(assert (=> start!41848 tp!40338))

(assert (=> start!41848 true))

(declare-fun array_inv!10210 (array!29477) Bool)

(assert (=> start!41848 (array_inv!10210 _keys!1025)))

(declare-fun e!273153 () Bool)

(declare-fun array_inv!10211 (array!29479) Bool)

(assert (=> start!41848 (and (array_inv!10211 _values!833) e!273153)))

(declare-fun b!467008 () Bool)

(declare-fun e!273155 () Bool)

(assert (=> b!467008 (= e!273153 (and e!273155 mapRes!20995))))

(declare-fun condMapEmpty!20995 () Bool)

(declare-fun mapDefault!20995 () ValueCell!6092)

